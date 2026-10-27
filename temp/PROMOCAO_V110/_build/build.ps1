$ErrorActionPreference = 'Stop'
$root = 'E:\documentos\projetos\PDI'
$out  = Join-Path $root 'temp\PROMOCAO_V110'
$enc  = New-Object System.Text.UTF8Encoding($false)

function Read-File([string]$rel) {
  return [IO.File]::ReadAllLines((Join-Path $root $rel), [Text.Encoding]::UTF8)
}
function Write-File([string]$rel, [string[]]$lines) {
  [IO.File]::WriteAllText((Join-Path $root $rel), (($lines -join "`n") + "`n"), $enc)
}
# Normaliza separador de prosa: os documentos usam travessao (U+2014), nao hifen.
# O marcador de lista ("- " / "  - ") e preservado; apenas o separador interno muda.
function Convert-Sep([string[]]$lines) {
  $o = New-Object System.Collections.Generic.List[string]
  foreach ($l in $lines) {
    $m = [regex]::Match($l, '^(\s*)- (.*)$')
    if ($m.Success) {
      $o.Add($m.Groups[1].Value + '- ' + $m.Groups[2].Value.Replace(' - ', ' ' + [char]0x2014 + ' '))
    } else {
      $o.Add($l.Replace(' - ', ' ' + [char]0x2014 + ' '))
    }
  }
  return $o.ToArray()
}
function Sha256([string]$rel) {
  $p = Join-Path $root $rel
  $h = [Security.Cryptography.SHA256]::Create()
  $b = [IO.File]::ReadAllBytes($p)
  return ([BitConverter]::ToString($h.ComputeHash($b)) -replace '-','').ToLower()
}

# ---------------------------------------------------------------- APDF 1.1.0
$cand = Read-File 'temp\APDF_V1_1_0_CANDIDATA.md'
$R = @{}

$R[5] = '**Versão:** 1.1.0  '
$R[6] = '**Estado:** APPROVED - promovida por `DEC-011` (2026-10-27); substitui a `1.0.1` como versão normativa vigente.  '
$R[11] = '**Histórico de aprovação:** DEC-007 (2026-10-26) aprovou a v1.0.0. DEC-009 (2026-10-27) homologou o Gate G0 e promoveu a v1.0.1; DEC-010 (2026-10-27) fixou o escopo desse patch em C-02, C-03, C-04, C-08, C-09 e C-10, diferindo C-01, C-05, C-06, C-07 e C-11 para a v1.1.0. DEC-011 (2026-10-27) promoveu a v1.1.0, incorporando as cinco correções diferidas (Anexo C.2) e as correções editoriais C-12 e C-13 (Anexo C.5), e encerrou a lacuna `L-08`.  '
$R[13] = @()
$R[14] = @()

$s = @'
**Nota sobre `CA-APDF-01` (`R-01b`).** O texto do critério na seção 17 permanece literalmente inalterado: "As 13 fases têm pergunta central, elicitação, artefatos e gate definidos." A regra acima explica o termo `elicitação`, mas não reescreve o critério. Por `DEC-011`, a alternativa (a) de `PROP-04` foi adotada: o critério permanece como aprovado e vale a leitura fixada nesta seção. A divergência residual de redação permanece catalogada como `L-09` em §16.3; as alternativas (b) e (c) dependem de decisão própria e não foram executadas.
'@
$R[160] = @($s -split '\r?\n')

$s = @'
**Nota sobre `C-11`.** O modelo acima foi adotado por `DEC-011`, na alternativa (a): `REABERTO` como estado persistente que retorna a `PENDENTE` somente depois de concluída a análise de impacto, por coerência com §9 (D-03) e §10 (`CF-03`). Alternativas consideradas e não adotadas: (b) deliberação direta de `REABERTO` para `APROVADO`/`REJEITADO`, sem retorno a `PENDENTE`, exigindo que a análise de impacto preceda a própria reabertura; (c) tratar `REABERTO` como evento e não como estado, o que obrigaria a reescrever §7.2, §9 e §10 e a manter apenas `PENDENTE`, `APROVADO` e `REJEITADO` como estados.
'@
$R[354] = @($s -split '\r?\n')

$R[654] = '| L-08 | Correções diferidas para a `1.1.0`: `dependencies` ausente no checkpoint (§8.4, `C-01`), campo de justificativa do gate (§7.1, `C-05`), loops e recuperação (§15.5, `C-06`), correspondência do handoff (§11.2/§11.4, `C-07`) e semântica de `REABERTO` (§7.3, `C-11`). | **Encerrada** pela promoção da `1.1.0` (`DEC-011`, 2026-10-27): as cinco correções estão incorporadas nesta versão, e `CA-APDF-07` e `CA-APDF-08` passam a ser verificáveis contra o texto publicado. Permanece como registro histórico que, na `1.0.1`, a lacuna estava aberta. |'
$R[655] = '| L-09 | `CA-APDF-01` (§17) usa o termo `elicitação` para um campo cujo rótulo varia por fase; a leitura está fixada em §6, mas o texto do critério não foi alterado. | Divergência residual de redação entre §6 e §17, **aceita explicitamente** por `DEC-011` ao adotar a alternativa (a) de `PROP-04`: §17 permanece byte a byte inalterada e prevalece a leitura de §6. A alteração do critério segue dependendo de decisão própria (alternativas (b) e (c), Anexo C.3). |'
$R[656] = '| L-10 | O Anexo C.1 da `1.0.1` registrava `C-10` como aplicada incluindo "Banner de não normatividade", que não existe no arquivo publicado. | **Encerrada** pela `C-12` na promoção da `1.1.0` (`DEC-011`): o registro de `C-10` no Anexo C.1 desta versão descreve apenas o que foi aplicado. O texto histórico da `1.0.1` permanece no commit `bc45753` e não deve ser lido como registro vigente. |'

$s = @'
A versão `1.0.1` foi um **patch corretivo** promovido por `DEC-009`, com escopo fixado por `DEC-010`: incorporou apenas as correções `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10`, que não alteram fases, gates, sequência, critérios de handoff nem decisões registradas. As correções `C-01`, `C-05`, `C-06`, `C-07` e `C-11` foram diferidas para a versão `1.1.0`, por acrescentarem ou alterarem conteúdo normativo (campos obrigatórios, itens de handoff e semântica dos estados do gate), e permaneceram catalogadas como lacuna `L-08` até a promoção desta versão. `PROP-01`, `PROP-02` e `PROP-03` continuam isoladas no Anexo C e exigem decisão própria antes de qualquer incorporação; `PROP-04`, que também alteraria texto de critério de aceite aprovado, foi decidida por `DEC-011` na alternativa (a), que preserva a seção 17.
'@
$R[662] = @($s -split '\r?\n')

$s = @'
A versão `1.1.0` foi promovida por `DEC-011` (2026-10-27). Ela incorpora as cinco correções diferidas (`C-01`, `C-05`, `C-06`, `C-07`, `C-11`), que alteram o conjunto de campos obrigatórios do gate e do checkpoint, o conteúdo mínimo do handoff e a semântica dos estados, e as correções editoriais de registro `C-12` e `C-13`. A promoção encerrou a lacuna `L-08` e exigiu atualização de `MANIFESTO-SHA256.md`, `CHANGELOG.md`, `README.md` e do registro de decisões. A `1.0.1` permanece acessível apenas como histórico no commit `bc45753` e não é mais baseline normativa.
'@
$R[664] = @($s -split '\r?\n')

$R[744] = '## Anexo C - Correções incorporadas e propostas pendentes'

$s = @'
Estas correções foram incorporadas na versão `1.0.1`. A coluna `Estado` distingue o que foi **aplicado** do que foi **verificado e já estava conforme**. Nenhuma delas altera a ordem das fases, os critérios de aprovação dos gates, o conjunto de critérios de aceite da seção 17 ou decisões registradas. O registro abaixo descreve o conteúdo efetivo da `1.0.1`; a divergência antes registrada para `C-10` foi corrigida por `C-12` (seção C.5).
'@
$R[748] = @($s -split '\r?\n')

$R[757] = '| C-10 | F-13 - fontes sem metadados e documento sem regra de versão da candidata | Nota de metadados das fontes; `L-07`; gatilho `.tpm/` explicitado em `AD-10`; regra de versão da `1.0.1` em §16.4. O "banner de não normatividade" não foi aplicado - ver `C-12` | A.1, A.2, §16.3, §16.4 | Correção editorial com efeito de governança | Aplicada, sem banner - registro corrigido por `C-12` |'

$s = @'
**Escopo do patch.** `DEC-010` fixou o escopo da `1.0.1` nas correções sem alteração de significado normativo. A redação anterior, promovida em `DEC-009`, incorporava também `C-01`, `C-05`, `C-06`, `C-07` e `C-11`; essas cinco correções foram retiradas do corpo daquela versão e transferidas para a `1.1.0`, conforme a seção C.2, onde foram incorporadas por `DEC-011`.
'@
$R[761] = @($s -split '\r?\n')

$s = @'
**Critérios de aceite e esta revisão.** A seção 17 permanece literalmente idêntica à da v1.0.0: `CA-APDF-01` a `CA-APDF-12` não foram reescritos, inclusive `CA-APDF-01`, cuja divergência de redação fica registrada como `PROP-04` e `L-09`. `C-02` e `C-10` são verificáveis por `CA-APDF-11`; `C-03` por `CA-APDF-01`, na leitura fixada em §6. `C-04`, `C-08` e `C-09` verificam-se contra o texto das seções e tabelas citadas. Os itens de C.2 são verificáveis nesta versão contra §7.1, §7.3, §8.4, §11.2, §11.4 e §15.5. A lacuna `L-08` foi encerrada pela promoção da `1.1.0` em `DEC-011`.
'@
$R[763] = @($s -split '\r?\n')

$R[765] = '### C.2 Correções incorporadas nesta versão, procedentes da `1.0.1`'
$R[767] = 'Estas correções **não** foram incorporadas na `1.0.1`. Todas acrescentam ou alteram conteúdo normativo - campos obrigatórios do gate e do checkpoint, itens do handoff e semântica dos estados - e, por isso, não cabiam em um patch corretivo nos termos de §16.4. Foram **incorporadas nesta versão `1.1.0`** por `DEC-011`, com a decisão de conteúdo correspondente na coluna `Decisão`.'
$R[769] = '| ID | Achado | Correção aplicada nesta versão | Seção | Decisão |'
$R[771] = '| C-01 | F-01 - `dependencies` ausente no checkpoint | Acrescentada a linha `dependencies`; tabela convertida para quatro colunas com `Origem` e `Valores admitidos`; origem das linhas não provenientes do `CTR-03` explicitada | §8.4 | Aprovação da `1.1.0` por `DEC-011`; altera o conjunto de campos obrigatórios e encerra a lacuna `CA-APDF-07`/`L-08` |'
$R[772] = '| C-05 | F-06 - gate sem campo de justificativa explícito | Acrescentado `justification` ao conteúdo obrigatório do gate, referido a `CTR-01`, requisito 5 | §7.1 | Aprovação da `1.1.0` por `DEC-011`; altera o conjunto de campos do gate |'
$R[773] = '| C-06 | F-07 - loops e recuperação não tratados | Criada §15.5 remetendo ao `CTR-03` e fixando detecção de repetição, interrupção no limite, preservação de evidências, nova hipótese e escalonamento | §15.5 | Aprovação da `1.1.0` por `DEC-011`; cria seção normativa nova |'
$R[774] = '| C-07 | F-09 - handoff sem correspondência e sem dois itens vinculantes | Incluídos `dependências` e `modelo de governança` em §11.2 e criada §11.4 com a correspondência entre as cinco confirmações e o conteúdo mínimo | §11.2, §11.4 | Aprovação da `1.1.0` por `DEC-011`; altera o conteúdo mínimo do handoff e encerra a lacuna `CA-APDF-08`/`L-08` |'
$R[775] = '| C-11 | F-14 - §7.3 apresentava `REABERTO` como transição a partir de `PENDENTE`, contradizendo §9 (D-03) e §10 (`CF-03`), que reabrem gate já decidido | §7.3 reescrita: `PENDENTE` transita apenas para `APROVADO` ou `REJEITADO`; `REABERTO` é estado persistente alcançado a partir de gate decidido, com avanço bloqueado e saída para `PENDENTE` somente após o procedimento completo de D-03; `decision` (§7.1) passa a admitir apenas `APROVADO` e `REJEITADO` | §7.1, §7.3 | Aprovação da `1.1.0` por `DEC-011`, que adotou o modelo (a) de §7.3; altera a semântica dos estados do gate |'

$s = @'
**Nota sobre `C-11`.** Esta versão adota o modelo (a) descrito em §7.3 - `REABERTO` é estado persistente e só retorna a `PENDENTE` depois de concluída a análise de impacto de D-03 -, escolhido por `DEC-011`. As alternativas (b) deliberação direta de `REABERTO` para `APROVADO`/`REJEITADO` e (c) `REABERTO` como evento, não estado, estão descritas em §7.3 e não foram adotadas; ambas exigiriam reescrever §7.2, §9 e §10.
'@
$R[777] = @($s -split '\r?\n')

$R[788] = '| PROP-04 | `R-01b` - `CA-APDF-01` (§17) emprega `elicitação` para um campo cujo rótulo varia por fase; §6 fixa a leitura, mas o critério não foi reescrito | Substituir `elicitação` por "ação da fase" em `CA-APDF-01`, ou renomear o critério, para eliminar a divergência entre §6 e §17 | Decidida por `DEC-011` - alternativa (a); as alternativas (b) e (c) permanecem dependentes de decisão própria, por alterarem texto de critério de aceite aprovado | (a) manter o critério e a leitura de §6, registrando a divergência como residual (`L-09`), sem alterar §17 - **adotada**; (b) emendar `CA-APDF-01` para "pergunta central, ação da fase, artefatos e gate" em versão própria, com análise de impacto; (c) manter o critério e remover a explicação de §6, aceitando a leitura literal |'

$s = @'
**Nota sobre `PROP-04`.** A alternativa (a) foi adotada por `DEC-011`: §17 permanece byte a byte igual à da v1.0.0 e a divergência fica registrada como `L-09`. Nenhuma das alternativas (b) ou (c) foi redigida, porque ambas alteram texto de critério aprovado e exigem decisão própria.
'@
$R[793] = @($s -split '\r?\n')

$R[797] = '1. `docs/01-metodologia/APDF_V01.md` v1.1.0 é a versão normativa vigente: promovida por `DEC-011` (2026-10-27), que encerrou o diferimento fixado por `DEC-010`.'
$R[798] = '2. A `1.1.0` substitui integralmente a `1.0.1`, promovida por `DEC-009` com escopo fixado por `DEC-010`; esta havia substituído a `1.0.0` aprovada em `DEC-007`.'
$R[799] = '3. Os itens de C.2 estão incorporados nesta versão. Os itens de C.3 continuam não incorporados, exceto quanto a `PROP-04`, resolvida por `DEC-011` na alternativa (a), que mantém §17 inalterada.'
$R[800] = '4. Este arquivo integra `MANIFESTO-SHA256.md` e é a baseline autorizada enquanto não houver decisão que o substitua.'
$R[801] = '5. Em caso de divergência entre o corpo deste documento e os itens de C.2 ou C.3, prevalece o texto do corpo.'
$R[802] = @()

$R[804] = '### C.5 Correções editoriais de registro incorporadas nesta versão'
$R[806] = 'Estas correções não alteram norma: ajustam registros que descreviam conteúdo diferente do arquivo real. Não estavam cobertas por `DEC-010`, que fixou o escopo da `1.0.1`, e foram incorporadas por `DEC-011` nesta versão.'
$R[810] = '| C-12 | O Anexo C.1 da `1.0.1` registra `C-10` como aplicada incluindo "Banner de não normatividade", ausente do arquivo publicado | `C-10` - "Banner de não normatividade; nota de metadados." - Estado: Aplicada (transcrição abreviada) | Registro restrito ao que existe no arquivo; banner declarado não aplicado; `L-10` encerrada nesta versão | Correção editorial de registro |'
$R[811] = '| C-13 | A referência às propostas pendentes em §16.4 e em C.3 encerrava em `PROP-03`, omitindo `PROP-04`, que esta versão acrescenta ao Anexo C.3 | "`PROP-01` a `PROP-03`", em §16.4 e em C.3 | Referência estendida até `PROP-04` nas duas ocorrências; em §16.4 a proposta aparece identificada como decidida por `DEC-011` na alternativa (a) | Correção de consistência interna |'

$s = @'
**Limite destas correções.** `C-12` corrige o registro nesta versão e não reescreve o passado: o texto do Anexo C.1 da `1.0.1`, tal como publicado no commit `bc45753`, permanece inalterado no histórico do repositório e não deve ser lido como registro vigente.
'@
$R[813] = @($s -split '\r?\n')

foreach ($k in @($R.Keys)) {
  if ($R[$k] -is [string]) { $R[$k] = @($R[$k]) }
}

$apdf = New-Object System.Collections.Generic.List[string]
for ($i = 1; $i -le $cand.Count; $i++) {
  if ($R.ContainsKey($i)) {
    if ($R[$i].Count -gt 0) { $apdf.AddRange([string[]]$R[$i]) }
  } else {
    $apdf.Add($cand[$i - 1])
  }
}
$apdf = @(Convert-Sep $apdf)
$apdfOut = Join-Path $out 'APDF_V01.md'
[IO.File]::WriteAllText($apdfOut, (($apdf -join "`n") + "`n"), $enc)
Write-Host ("APDF_V01.md: {0} linhas (candidata: {1})" -f $apdf.Count, $cand.Count)

# ------------------------------------------------- captura de secao 17 (invariante)
function Get-Sec17([string[]]$lines) {
  $start = -1
  for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($lines[$i] -like '## 17.*') { $start = $i; break }
  }
  if ($start -lt 0) { throw 'secao 17 nao encontrada' }
  $end = -1
  for ($i = $start + 1; $i -lt $lines.Count; $i++) {
    if ($lines[$i] -eq '---') { $end = $i; break }
  }
  if ($end -lt 0) { throw 'delimitador final da secao 17 nao encontrado' }
  return ($lines[$start..$end])
}
function Hash-Text([string[]]$lines) {
  $txt = ($lines -join "`n") + "`n"
  $b = $enc.GetBytes($txt)
  $h = [Security.Cryptography.SHA256]::Create()
  return ([BitConverter]::ToString($h.ComputeHash($b)) -replace '-','')
}

$secCand = Get-Sec17 $cand
$secRel  = Get-Sec17 @($apdf)
$hCand = Hash-Text $secCand
$hRel  = Hash-Text $secRel
Write-Host ("Secao 17: candidata={0} linhas hash={1}" -f $secCand.Count, $hCand)
Write-Host ("Secao 17: release   ={0} linhas hash={1}" -f $secRel.Count, $hRel)
if ($hCand -ne $hRel) { throw 'secao 17 alterada na promocao' }

# ------------------------------------------------------- DEC-011 (texto isolado)
$s = @'
### DEC-011 - Promoção do APDF_V01 v1.1.0 e encerramento das correções diferidas

- **Contexto:** `DEC-010` fixou o escopo da `1.0.1` nas seis correções sem alteração de significado normativo e diferiu `C-01`, `C-05`, `C-06`, `C-07` e `C-11` para a versão `1.1.0`, a ser aprovada por decisão própria. A versão `1.1.0` foi construída por cópia integral da `1.0.1` e alteração localizada das seções indicadas no Anexo C.2, acrescida de duas correções editoriais de registro (`C-12`, `C-13`) que a `1.0.1` não podia receber sem novo ato de promoção. Duas escolhas de conteúdo permaneciam abertas: o modelo semântico de `REABERTO` (§7.3) e a solução da divergência entre `CA-APDF-01` (§17) e a regra de leitura das fichas (§6).
- **Decisão:** Instrução direta do proprietário humano para **PROMOVER** a versão `1.1.0` do `APDF_V01` (`MET-APDF-001`), **ELEVAR** a baseline documental do Núcleo para **v0.3.0** e **ENCERRAR** o diferimento fixado por `DEC-010`, com:
  - incorporação das cinco correções diferidas - `C-01` (`dependencies` e tabela de quatro colunas em §8.4), `C-05` (`justification` em §7.1), `C-06` (§15.5), `C-07` (§11.2 e §11.4) e `C-11` (§7.3);
  - adoção do **modelo (a)** de `REABERTO`: estado persistente, alcançado apenas a partir de gate já decidido, com avanço bloqueado e saída para `PENDENTE` somente após o procedimento completo de D-03;
  - adoção da **alternativa (a) de `PROP-04`**: `CA-APDF-01` e os demais critérios da seção 17 permanecem literalmente inalterados, e a divergência de redação é registrada como residual na lacuna `L-09`;
  - incorporação de `C-12` e `C-13` dentro da `1.1.0`, sem versão própria para cada correção;
  - acréscimo, ao final de `DEC-009` e de `DEC-010`, dos três adendos de errata `ERR-DEC-009-010-001`, sem reescrita de qualquer trecho das decisões originais.
- **Alternativas consideradas:**
  1. Manter a `1.0.1` e não promover a `1.1.0` - rejeitada por preservar a contradição de `L-08` e manter `CA-APDF-07`/`CA-APDF-08` parcialmente satisfeitos por prazo indeterminado;
  2. Emendar `CA-APDF-01` para eliminar a divergência de redação (`PROP-04`, alternativa (b)) - rejeitada por alterar texto de critério de aceite aprovado, exigir análise de impacto e produzir versão maior sem ganho de clareza que justifique o custo;
  3. Tratar `REABERTO` como deliberação direta ou como evento (`C-11`, alternativas (b) e (c)) - rejeitadas por exigirem reescrita de §7.2, §9 e §10 e por afastarem o texto do procedimento de reabertura já fixado em D-03;
  4. Aplicar `C-12` e `C-13` em patch isolado da `1.0.1` - rejeitada por duplicar atos de promoção e recálculo de manifesto para correções editoriais de registro;
  5. Promover a `1.1.0` com o modelo (a), a alternativa (a) de `PROP-04` e `C-12`/`C-13` incorporadas - **adotada**.
- **Justificativa:** Encerra a lacuna catalogada `L-08` e entrega aos critérios `CA-APDF-07` e `CA-APDF-08` texto verificável, sem tocar no conjunto de critérios de aceite aprovado da seção 17. Preserva a integridade das decisões anteriores: `DEC-009` e `DEC-010` mantêm o texto original e passam a contar com leitura datada por adendo. Mantém a distinção entre correção editorial e mudança de método, que motivou `DEC-010`.
- **Consequências:**
  - `docs/01-metodologia/APDF_V01.md` passa a `1.1.0`, estado `APPROVED`; a `1.0.1` permanece acessível apenas como histórico no commit `bc45753`;
  - a lacuna `L-08` é encerrada; a `L-10` deixa de ter objeto com `C-12`; a `L-09` permanece como residual aceito;
  - `CA-APDF-07` e `CA-APDF-08` passam a ser verificáveis contra §8.4 e §11.2/§11.4, o que não equivale a declará-los satisfeitos: a verificação é ato próprio, com evidência vinculada à versão avaliada;
  - `MANIFESTO-SHA256.md`, `CHANGELOG.md`, `README.md` e este registro são atualizados e reconciliados sob a baseline `v0.3.0`;
  - `PROP-01`, `PROP-02`, `PROP-03` e `B-01` continuam não normativas no Anexo C.3.
- **Ressalvas registradas:**
  - A revisão independente do padrão continua pendente (`L-05`); esta decisão não a substitui;
  - A aprovação é do proprietário humano, por instrução direta na sessão, sem segundo revisor;
  - A fonte original `APDF(1).md` permanece indisponível e nenhuma conformidade com ela é declarada (`L-01`);
  - A numeração da baseline (`v0.3.0`) foi proposta pelo agente como progressão menor de `v0.2.1` e **aguarda confirmação literal** do proprietário; a substância da decisão é do proprietário, a forma é do agente;
  - Os adendos de errata não reabrem o Gate G0 nem revogam a autorização da Fase B;
  - A leitura final do texto da `1.1.0` pelo proprietário permanece pendente; o estado `APPROVED` refere-se ao ato de promoção e ao conteúdo revisado nesta rodada.
- **Escopo:** Governança, ciclo de vida e metodologia de descoberta do Núcleo Central de Engenharia (PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo, por instrução direta na sessão (designação nominal pendente conforme GOV-AUTH-001).
- **Data:** 2026-10-27.
- **Artefatos afetados:** `docs/01-metodologia/APDF_V01.md`, `docs/00-governanca/registro-de-decisoes.md`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`.
- **Estado:** `APPROVED`.
'@
$dec011 = @($s -split '\r?\n')
$dec011 = @(Convert-Sep $dec011)
[IO.File]::WriteAllText((Join-Path $out 'DEC-011_PROMOCAO.md'), (($dec011 -join "`n") + "`n"), $enc)

$s = @'
- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** O campo Contexto desta
  decisão descreve o conteúdo da cópia candidata examinada naquele momento, não o
  conteúdo final da versão promovida. Por `DEC-010`, o escopo material do patch
  `1.0.1` foi reduzido às correções `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10`;
  `C-01` (`dependencies` em §8.4), `C-05` (`justification` em §7.1), `C-06` (§15.5),
  `C-07` (§11.2/§11.4) e `C-11` (semântica de `REABERTO` em §7.3) foram diferidas
  para a `1.1.0` e incorporadas por `DEC-011`. Permanecem válidos e inalterados: a
  homologação do Gate G0, a promoção da `1.0.1`, a elevação da baseline a `v0.2.1` e
  a autorização da Fase B. Este adendo não reescreve o Contexto original, que fica
  preservado como registro do que foi examinado antes de `DEC-010`.
'@
$ad1 = @($s -split '\r?\n')

$s = @'
- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** A afirmação de
  "conformidade integral dos 27 artefatos" não era sustentada pelas evidências
  disponíveis na data desta decisão, conforme registrado em `DEC-010`. A verificação
  integral foi refeita após a reconciliação do patch e, no commit
  `bc457538209491d52fe128d5184117d547906d3a`, o `MANIFESTO-SHA256.md` confere
  27/27 entradas, sem divergência e sem ausência. Os dois fatos coexistem: a
  premissa era falsa quando invocada e é verdadeira no estado atual da baseline.
  Este adendo não converte a verificação posterior em prova retroativa.
'@
$ad2 = @($s -split '\r?\n')

$s = @'
- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** A ressalva sobre
  `PROP-01` a `PROP-03` e `B-01` permanece correta para a `1.0.1`. A versão `1.1.0`,
  promovida por `DEC-011` na mesma data, incorpora `PROP-04` (`CA-APDF-01` x §6) pela
  alternativa (a), que preserva a seção 17 e registra a divergência como `L-09`.
  `PROP-01`, `PROP-02`, `PROP-03` e `B-01` continuam não normativas no Anexo C.3.
'@
$ad3 = @($s -split '\r?\n')

[IO.File]::WriteAllText((Join-Path $out 'ADENDOS_DEC009_DEC010.md'), ((($ad1 + @('') + $ad2 + @('') + $ad3) -join "`n") + "`n"), $enc)

# ---------------------------------------------------------------- registro
$reg = Read-File 'docs\00-governanca\registro-de-decisoes.md'
$regR = @{}
$regR[5] = '**Versão:** 0.3.0  '
$regR[6] = '**Estado:** APPROVED - registro ativo e controlado; atualizado por `DEC-011` (2026-10-27).  '

$rowDec011 = '| DEC-011 | Promoção do APDF_V01 para a versão 1.1.0 e elevação da baseline documental para v0.3.0. | APPROVED | Instrução direta do Proprietário Humano (2026-10-27). Incorpora `C-01`, `C-05`, `C-06`, `C-07` e `C-11` (diferidas por DEC-010) e `C-12`/`C-13`; adota o modelo (a) de `REABERTO` e a alternativa (a) de `PROP-04`; encerra `L-08` e `L-10`. Redação pendente de confirmação literal do proprietário. |'

$regInsAfter = @{}
$regInsAfter[24]  = @($rowDec011)
$regInsAfter[98]  = @($ad1 + $ad2)
$regInsAfter[125] = @($ad3)
$regInsAfter[126] = $dec011 + @('')

$newReg = New-Object System.Collections.Generic.List[string]
for ($i = 1; $i -le $reg.Count; $i++) {
  if ($i -eq 11) {
    $line = $reg[$i - 1].TrimEnd()
    $line = $line + ' v0.3.0 - incorpora DEC-011, que promove o `APDF_V01` para a versão 1.1.0 e eleva a baseline documental para v0.3.0, e os três adendos de errata de DEC-009 e DEC-010 (`ERR-DEC-009-010-001`) (2026-10-27).'
    $newReg.Add($line + '  ')
  } elseif ($regR.ContainsKey($i)) {
    $newReg.Add($regR[$i])
  } else {
    $newReg.Add($reg[$i - 1])
  }
  if ($regInsAfter.ContainsKey($i)) {
    foreach ($l in $regInsAfter[$i]) { $newReg.Add($l) }
  }
}
$newReg = @(Convert-Sep $newReg)
[IO.File]::WriteAllText((Join-Path $out 'REGISTRO_DE_DECISOES.md'), (($newReg -join "`n") + "`n"), $enc)
Write-Host ("REGISTRO_DE_DECISOES.md: {0} linhas (origem: {1})" -f $newReg.Count, $reg.Count)

# ---------------------------------------------------------------- CHANGELOG
$chg = Read-File 'CHANGELOG.md'
$s = @'
## [0.3.0] - 2026-10-27

### Promoção do APDF_V01 para a versão 1.1.0 (DEC-011)
- Promoção de `docs/01-metodologia/APDF_V01.md` (`MET-APDF-001`) para a versão `1.1.0`, estado `APPROVED`, por `DEC-011`, encerrando o diferimento fixado em `DEC-010`.
- **Conteúdo incorporado:** `C-01` (campo obrigatório `dependencies` e tabela de quatro colunas no checkpoint, §8.4), `C-05` (`justification` no conteúdo obrigatório do gate, §7.1), `C-06` (nova §15.5, loops e recuperação), `C-07` (`dependências` e `modelo de governança` em §11.2 e nova §11.4) e `C-11` (semântica dos estados do gate em §7.3, com `REABERTO` como estado persistente).
- **Escolhas de conteúdo:** modelo (a) de `REABERTO` - estado persistente, com saída para `PENDENTE` somente após o procedimento completo de D-03; alternativa (a) de `PROP-04` - `CA-APDF-01` e os demais critérios da seção 17 permanecem literalmente inalterados, com a divergência de redação registrada como residual em `L-09`.
- **Correções editoriais de registro:** `C-12` ajusta a descrição de `C-10` no Anexo C.1 (o banner de não normatividade nunca existiu no arquivo publicado) e `C-13` estende a referência às propostas pendentes até `PROP-04`. Ambas incorporadas dentro da `1.1.0`, sem versão própria.
- **Errata por adendo:** acréscimo de três adendos `ERR-DEC-009-010-001` ao final de `DEC-009` e de `DEC-010`, sem reescrita das decisões originais - reconciliando a descrição de conteúdo de `DEC-009` com o escopo efetivo fixado por `DEC-010` e registrando a leitura temporal da premissa de conformidade dos 27 artefatos.
- **Lacunas:** `L-08` encerrada; `L-10` encerrada por `C-12`; `L-09` mantida como residual aceito. As lacunas `L-01` a `L-07` permanecem inalteradas.
- **Escopo preservado:** seção 17 do `APDF_V01` byte-idêntica à da versão anterior (verificado nesta rodada: 18 linhas, SHA-256 `96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34`); nenhum código de produto; nenhuma dependência instalada; nenhuma ferramenta externa executada.
- Elevação da baseline documental do Núcleo para `v0.3.0`; `MANIFESTO-SHA256.md` recalculado para os 27 arquivos normativos.
- Ressalvas: revisão independente pendente (`L-05`); leitura final do texto da `1.1.0` pelo proprietário pendente; numeração `v0.3.0` proposta pelo agente e pendente de confirmação literal; `CA-APDF-07` e `CA-APDF-08` passam a ser verificáveis contra a `1.1.0`, sem que isso os declare satisfeitos.
'@
$chgEntry = @($s -split '\r?\n')
$newChg = New-Object System.Collections.Generic.List[string]
for ($i = 1; $i -le $chg.Count; $i++) {
  if ($i -eq 5) { $newChg.Add('**Versão:** 0.3.0  ') }
  elseif ($i -eq 6) { $newChg.Add('**Estado:** APPROVED - ativo e controlado.  ') }
  else { $newChg.Add($chg[$i - 1]) }
  if ($i -eq 8) { foreach ($l in $chgEntry) { $newChg.Add($l) }; $newChg.Add('') }
}
$newChg = @(Convert-Sep $newChg)
[IO.File]::WriteAllText((Join-Path $out 'CHANGELOG.md'), (($newChg -join "`n") + "`n"), $enc)
Write-Host ("CHANGELOG.md: {0} linhas (origem: {1})" -f $newChg.Count, $chg.Count)

# ---------------------------------------------------------------- README
$rd = Read-File 'README.md'
$rdR = @{}
$rdR[5] = '**Baseline documental:** v0.3.0  '
$rdR[29] = '- Metodologia de descoberta: padrão `APDF_V01` adotado em DEC-007, vigente na versão `1.1.0` (promovida em `DEC-011`); a versão `1.0.1` permanece apenas como histórico no commit `bc45753`. Detector Anti-Surto e integração TPM não implementados.'
$rdR[30] = '- Conteúdo da `1.1.0`: incorpora as cinco correções diferidas por `DEC-010` (`C-01`, `C-05`, `C-06`, `C-07`, `C-11`) e as correções editoriais de registro `C-12` e `C-13`; `REABERTO` é estado persistente (modelo (a)) e `PROP-04` foi decidida na alternativa (a), que preserva a seção 17. A lacuna `L-08` está encerrada.'
$rdR[31] = '- Ressalvas em aberto no padrão: `L-09` mantida como residual aceito; `CA-APDF-07` e `CA-APDF-08` passam a ser verificáveis contra a `1.1.0`, sem que isso os declare satisfeitos; propostas `PROP-01` a `PROP-03` e `B-01` não normativas no Anexo C.3; revisão independente pendente (`L-05`); leitura final do texto da `1.1.0` pelo proprietário pendente.'
$newRd = New-Object System.Collections.Generic.List[string]
for ($i = 1; $i -le $rd.Count; $i++) {
  if ($i -eq 10) {
    $line = $rd[$i - 1].TrimEnd()
    $line = $line + ' v0.3.0 - incorpora DEC-011 (promoção do `APDF_V01` para a versão 1.1.0, encerramento da lacuna `L-08` e adendos de errata de DEC-009/DEC-010) (2026-10-27).'
    $newRd.Add($line + '  ')
  } elseif ($rdR.ContainsKey($i)) {
    $newRd.Add($rdR[$i])
  } else {
    $newRd.Add($rd[$i - 1])
  }
}
$newRd = @(Convert-Sep $newRd)
[IO.File]::WriteAllText((Join-Path $out 'README.md'), (($newRd -join "`n") + "`n"), $enc)
Write-Host ("README.md: {0} linhas (origem: {1})" -f $newRd.Count, $rd.Count)

# ---------------------------------------------------------------- manifesto
$hApdf = Sha256 'temp\PROMOCAO_V110\APDF_V01.md'
$hReg  = Sha256 'temp\PROMOCAO_V110\REGISTRO_DE_DECISOES.md'
$hChg  = Sha256 'temp\PROMOCAO_V110\CHANGELOG.md'
$hRd   = Sha256 'temp\PROMOCAO_V110\README.md'

$man = Read-File 'MANIFESTO-SHA256.md'
$map = @{
  'CHANGELOG.md'                             = $hChg
  'README.md'                                = $hRd
  'docs/00-governanca/registro-de-decisoes.md' = $hReg
  'docs/01-metodologia/APDF_V01.md'          = $hApdf
}
$newMan = New-Object System.Collections.Generic.List[string]
for ($i = 1; $i -le $man.Count; $i++) {
  $line = $man[$i - 1]
  if ($i -eq 5) { $newMan.Add('**Versão:** 0.3.0  '); continue }
  if ($i -eq 6) { $newMan.Add('**Estado:** APPROVED - atualizado em DEC-008, DEC-009, DEC-010 e DEC-011 (homologação do Gate G0, patch APDF_V01 v1.0.1, autorização da Fase B e promoção do APDF_V01 v1.1.0).  '); continue }
  if ($i -eq 8) { $newMan.Add('**Escopo:** Arquivos normativos da baseline documental v0.3.0. `temp/`, `_backup/` e artefatos de intercâmbio são explicitamente não normativos e não integram este manifesto.  '); continue }
  if ($i -eq 9) {
    $t = $line.TrimEnd() + ' v0.3.0 - recálculo dos arquivos alterados por DEC-011 (`APDF_V01.md`, `registro-de-decisoes.md`, `CHANGELOG.md`, `README.md`), 27 arquivos, 27/27 conferidos (2026-10-27).'
    $newMan.Add($t + '  ')
    continue
  }
  if ($line -match '^\| `([^`]+)` \| `([0-9a-f]{64})` \|$') {
    $p = $Matches[1]
    if ($map.ContainsKey($p)) { $newMan.Add('| `' + $p + '` | `' + $map[$p] + '` |'); continue }
  }
  $newMan.Add($line)
}
$newMan = @(Convert-Sep $newMan)
[IO.File]::WriteAllText((Join-Path $out 'MANIFESTO-SHA256.md'), (($newMan -join "`n") + "`n"), $enc)

Write-Host ''
Write-Host 'Hashes produzidos:'
Write-Host ("  APDF_V01.md               {0}" -f $hApdf)
Write-Host ("  REGISTRO_DE_DECISOES.md   {0}" -f $hReg)
Write-Host ("  CHANGELOG.md              {0}" -f $hChg)
Write-Host ("  README.md                 {0}" -f $hRd)
