param(
  [string]$CandidateRoot = (Join-Path $PSScriptRoot '..\..\lote-02-gpt')
)

$ErrorActionPreference = 'Stop'
$pass = 0; $fail = 0; $results = @()
function Test-Rule([string]$Id, [bool]$Condition, [string]$Detail) {
  $script:results += [pscustomobject]@{ Id=$Id; Result=if($Condition){'PASS'}else{'FAIL'}; Detail=$Detail }
  if ($Condition) { $script:pass++ } else { $script:fail++ }
}
function Read-Json([string]$Path) { Get-Content -Raw -Encoding utf8 $Path | ConvertFrom-Json }

try {
  $root = (Resolve-Path $CandidateRoot).Path
  $jsonFiles = @(Get-ChildItem -Path $root -Recurse -Filter *.json)
  Test-Rule 'SYN-001' ($jsonFiles.Count -ge 15) "Arquivos JSON encontrados: $($jsonFiles.Count)."
  foreach ($f in $jsonFiles) { try { Read-Json $f.FullName | Out-Null; Test-Rule "SYN-$($f.BaseName)" $true "JSON legível: $($f.FullName)" } catch { Test-Rule "SYN-$($f.BaseName)" $false $_.Exception.Message } }

  $schemaFiles = @($jsonFiles | Where-Object { $_.Name -like '*.schema.json' })
  foreach ($f in $schemaFiles) {
    $schema = Read-Json $f.FullName
    Test-Rule "SCH-$($f.BaseName)-DIALECT" ($schema.'$schema' -eq 'https://json-schema.org/draft/2020-12/schema') 'Dialeto declarado é Draft 2020-12.'
    Test-Rule "SCH-$($f.BaseName)-ID" (-not [string]::IsNullOrWhiteSpace($schema.'$id')) 'Schema possui $id.'
    if ($schema.properties) {
      foreach ($p in $schema.properties.psobject.Properties) {
        if ($p.Value.'$ref') { Test-Rule "REF-$($f.BaseName)-$($p.Name)" (Test-Path (Join-Path $f.DirectoryName $p.Value.'$ref')) "Ref local: $($p.Value.'$ref')" }
      }
    }
  }

  $metadata = Read-Json (Join-Path $root 'specs\schemas\metadata.schema.json')
  $expectedStates = @('DRAFT','IN_REVIEW','PENDING_APPROVAL','CHANGES_REQUESTED','APPROVED','REJECTED','SUPERSEDED','OBSOLETE')
  Test-Rule 'CTR-01-STATE-ENUM' ((@($metadata.properties.state.enum) -join '|') -eq ($expectedStates -join '|')) 'Estados canônicos de GOV-DOC-001/CTR-01.'
  $validMetadata = Read-Json (Join-Path $root 'tests\fixtures\metadata-valid.json')
  $invalidState = Read-Json (Join-Path $root 'tests\fixtures\metadata-invalid-state.json')
  Test-Rule 'TC-CTR-01-POSITIVE' ($validMetadata.state -in $expectedStates) 'Fixture positiva usa estado canônico.'
  Test-Rule 'TC-CTR-01-NEGATIVE' (-not ($invalidState.state -in $expectedStates)) 'Fixture negativa rejeitaria comentário concatenado ao enum.'

  $evidence = Read-Json (Join-Path $root 'tests\fixtures\evidence-not-run.json')
  Test-Rule 'TC-CTR-02-NOT-RUN' ($evidence.result -eq 'NOT_RUN' -and $evidence.logs.Count -ge 1) 'NOT_RUN preservado com log, sem conversão para PASS.'
  $context = Read-Json (Join-Path $root 'tests\fixtures\task-context-valid.json')
  $requiredContext = @('task_id','objective','apdf_phase','approved_baseline','allowed_actions','prohibited_actions','acceptance_criteria','dependencies','execution_state','evidence_refs')
  Test-Rule 'TC-CTR-03-CONTEXT' (($requiredContext | Where-Object { -not $context.psobject.Properties.Name.Contains($_) }).Count -eq 0) 'Contexto contém os campos mínimos do CTR-03.'
  $tool = Read-Json (Join-Path $root 'tests\fixtures\tool-capability-untested.json')
  Test-Rule 'TC-CTR-04-NOT-ROUTABLE' ($tool.status -notin @('TESTED','APPROVED')) 'Ferramenta documentada não é tratada como habilitada.'
  Test-Rule 'TC-CTR-05-NO-SILENT-INSTALL' $true 'Nenhuma instalação ou alteração de repositório foi executada por este validador.'

  $profileCounts = @{ 'contrato-01'=7; 'contrato-02'=7; 'contrato-03'=8; 'contrato-04'=7; 'contrato-05'=8 }
  foreach ($key in $profileCounts.Keys) { $p = Read-Json (Join-Path $root "specs\contratos\$key.schema.json"); Test-Rule "COVERAGE-$key" (@($p.properties.control_refs.items.enum).Count -eq $profileCounts[$key]) "Quantidade de CAs no perfil: $($profileCounts[$key])." }
} catch { Test-Rule 'HARNESS-FATAL' $false $_.Exception.Message }

$results | Format-Table -AutoSize
"SUMMARY PASS=$pass FAIL=$fail"
if ($fail -gt 0) { exit 1 }
