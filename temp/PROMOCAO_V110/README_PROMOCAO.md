# Patch de promoção — APDF_V01 1.1.0 e baseline v0.3.0

**ID:** PROMOCAO-V110  
**Tipo:** Pacote de aplicação (não normativo)  
**Versão:** 1.0  
**Estado:** PROPOSTO — revisado, não aplicado e não commitado  
**Data:** 2026-10-27  
**Escopo:** Instruções para aplicar o conteúdo deste diretório sobre `docs/` e os arquivos de raiz do Núcleo Central de Engenharia (PDI).  
**Proprietário:** Proprietário humano do Núcleo.

## 1. O que este pacote é

Este diretório contém o **texto final** de cinco artefatos da promoção `1.1.0`, prontos para cópia. Ele foi produzido por instrução direta do proprietário (`DEC-011`) no modo "preparar patch em `temp/`": nenhum arquivo de `docs/`, nenhum arquivo de raiz e nenhum manifesto foi alterado no lugar.

Nada aqui foi aplicado, promovido ou commitado. A aplicação é ato do proprietário, após revisão.

## 2. Conteúdo do pacote

| Arquivo no pacote | Destino | Ação | Linhas | SHA-256 |
|---|---|---|---:|---|
| `APDF_V01.md` | `docs/01-metodologia/APDF_V01.md` | substituir integralmente | 810 | `c0b5460c75d0d19c96fc30e693976db03c3b2f2b7e2f3907d8f32f2a63d58567` |
| `REGISTRO_DE_DECISOES.md` | `docs/00-governanca/registro-de-decisoes.md` | substituir integralmente | 204 | `4a9b47b20ecd693538cf419201fe591602cb67861e472cf1102c89e0ca26988d` |
| `CHANGELOG.md` | `CHANGELOG.md` | substituir integralmente | 65 | `dfb92deffe27a4a02b29bb2ce2dcebc20832d6968d5b79c838e56f5d5f2ba3bb` |
| `README.md` | `README.md` | substituir integralmente | 54 | `b5850c2947aa2a50a98592d6ca289bbe3fc02a393239a6120491867d8eec6b5a` |
| `MANIFESTO-SHA256.md` | `MANIFESTO-SHA256.md` | substituir integralmente | 39 | `19429c8f548e3c564c46d06b70d7cd0aa5124181e4f8e2f349b3bbf9bdb2b1cd` |

Arquivos de apoio, **não destinados a cópia**:

| Arquivo | Função |
|---|---|
| `DEC-011_PROMOCAO.md` | texto isolado do novo bloco `DEC-011`, para revisão sem abrir o registro inteiro |
| `ADENDOS_DEC009_DEC010.md` | texto isolado dos três adendos `ERR-DEC-009-010-001` |
| `VERIFICACAO.md` | evidências, contagens e estado por artefato |
| `_build/build.ps1` | gerador determinístico do pacote; permite reproduzir cada byte |
| `_build/prev/` | fotografia anterior à normalização tipográfica, usada como prova de diff |

`_build/` é andaime de engenharia. Não integra o patch e não deve ser copiado para `docs/`.

## 3. Pré-condições e ordem

1. **Revisão do proprietário.** O conteúdo precisa ser lido antes da aplicação. O pacote não substitui a leitura final pendente registrada em `DEC-011`.
2. **Confirmação da numeração `v0.3.0`.** A progressão `v0.2.1` → `v0.3.0` foi proposta pelo agente como versão menor; a substância é do proprietário, a forma está registrada como ressalva em `DEC-011` e aguarda confirmação literal. Se a numeração mudar, cinco pontos precisam ser ajustados: cabeçalhos de `MANIFESTO-SHA256.md` (versão, estado, escopo, histórico), `CHANGELOG.md` (versão e entrada), `README.md` (baseline e histórico), `REGISTRO_DE_DECISOES.md` (histórico e `DEC-011`), e os quatro hashes do manifesto precisam ser recalculados.
3. **Ordem de aplicação.** `DEC-011` deve entrar no mesmo commit do `APDF_V01` `1.1.0`, ou antes dele. O cabeçalho da `1.1.0` cita `DEC-011`; aplicar o documento sem o registro cria referência a decisão inexistente.
4. **Estado da baseline.** Os cinco arquivos de origem estão idênticos ao `HEAD` (verificado por `git status --porcelain`, saída vazia). Se houver alteração local nesses caminhos, reconciliar antes de aplicar.

## 4. Procedimento de aplicação

Executar na raiz do projeto (`E:\documentos\projetos\PDI`), em PowerShell.

### 4.1 Conferir o pacote antes de copiar

```powershell
$pkg = 'temp\PROMOCAO_V110'
$esperado = @{
  'APDF_V01.md'              = 'c0b5460c75d0d19c96fc30e693976db03c3b2f2b7e2f3907d8f32f2a63d58567'
  'REGISTRO_DE_DECISOES.md'  = '4a9b47b20ecd693538cf419201fe591602cb67861e472cf1102c89e0ca26988d'
  'CHANGELOG.md'             = 'dfb92deffe27a4a02b29bb2ce2dcebc20832d6968d5b79c838e56f5d5f2ba3bb'
  'README.md'                = 'b5850c2947aa2a50a98592d6ca289bbe3fc02a393239a6120491867d8eec6b5a'
  'MANIFESTO-SHA256.md'      = '19429c8f548e3c564c46d06b70d7cd0aa5124181e4f8e2f349b3bbf9bdb2b1cd'
}
foreach ($k in $esperado.Keys) {
  $sha = (Get-FileHash (Join-Path $pkg $k) -Algorithm SHA256).Hash.ToLower()
  '{0,-26} {1}' -f $k, $(if ($sha -eq $esperado[$k]) { 'OK' } else { "DIVERGENTE: $sha" })
}
```

Todos os cinco devem retornar `OK`. Qualquer divergência interrompe a aplicação.

### 4.2 Aplicar

```powershell
Copy-Item 'temp\PROMOCAO_V110\REGISTRO_DE_DECISOES.md' 'docs\00-governanca\registro-de-decisoes.md' -Force
Copy-Item 'temp\PROMOCAO_V110\APDF_V01.md'             'docs\01-metodologia\APDF_V01.md'         -Force
Copy-Item 'temp\PROMOCAO_V110\CHANGELOG.md'            'CHANGELOG.md'                            -Force
Copy-Item 'temp\PROMOCAO_V110\README.md'               'README.md'                               -Force
Copy-Item 'temp\PROMOCAO_V110\MANIFESTO-SHA256.md'     'MANIFESTO-SHA256.md'                     -Force
```

O manifesto é copiado por último de propósito: ele contém os hashes dos quatro anteriores. Copiado do pacote, já está consistente; a ordem apenas evita uma janela de manifesto divergente se a aplicação for interrompida.

### 4.3 Conferir o resultado

```powershell
git status --porcelain
git --no-pager diff --stat
```

Esperado: exatamente cinco arquivos modificados, com `+111/-44` (`APDF_V01.md`), `+62/-3` (`registro-de-decisoes.md`), `+14/-1` (`CHANGELOG.md`), `+5/-5` (`README.md`) e `+8/-8` (`MANIFESTO-SHA256.md`).

### 4.4 Commitar

Um único commit, com `DEC-011` e o documento juntos. Não há comando de commit neste pacote: a mensagem e o ato são do proprietário.

## 5. Verificação pós-aplicação

```powershell
# 1) Identidade dos cinco arquivos
foreach ($f in @('docs\01-metodologia\APDF_V01.md','docs\00-governanca\registro-de-decisoes.md','CHANGELOG.md','README.md','MANIFESTO-SHA256.md')) {
  '{0,-46} {1}' -f $f, (Get-FileHash $f -Algorithm SHA256).Hash.ToLower()
}

# 2) Manifesto 27/27 contra a árvore de trabalho
$root = (Get-Location).Path
function Get-Sha([string]$p) { ([BitConverter]::ToString([Security.Cryptography.SHA256]::Create().ComputeHash([IO.File]::ReadAllBytes($p))) -replace '-','').ToLower() }
$rows = 0; $ok = 0; $bad = @()
foreach ($l in [IO.File]::ReadAllLines("$root\MANIFESTO-SHA256.md", [Text.Encoding]::UTF8)) {
  if ($l -match '^\| `([^`]+)` \| `([0-9a-f]{64})` \|$') {
    $rows++; $rel = $Matches[1]; $exp = $Matches[2]
    if (-not (Test-Path (Join-Path $root $rel))) { $bad += "$rel (ausente)"; continue }
    if ((Get-Sha (Join-Path $root $rel)) -eq $exp) { $ok++ } else { $bad += $rel }
  }
}
"linhas=$rows conferem=$ok divergentes=$($bad.Count)"
$bad

# 3) Seção 17 byte-idêntica (18 linhas, hash conhecido)
$enc = New-Object System.Text.UTF8Encoding($false)
$c = [IO.File]::ReadAllLines("$root\docs\01-metodologia\APDF_V01.md", [Text.Encoding]::UTF8)
$s = -1; for ($i = 0; $i -lt $c.Count; $i++) { if ($c[$i] -like '## 17.*') { $s = $i; break } }
$e = -1; for ($i = $s + 1; $i -lt $c.Count; $i++) { if ($c[$i] -eq '---') { $e = $i; break } }
$blk = $c[$s..$e]
$txt = ($blk -join "`n") + "`n"
$h = [Security.Cryptography.SHA256]::Create()
$sha = ([BitConverter]::ToString($h.ComputeHash($enc.GetBytes($txt))) -replace '-','').ToUpper()
"secao17 linhas=$($blk.Count) hash=$sha"
# Esperado: linhas=18 hash=96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34

# 4) Codificação e fim de linha
foreach ($f in @('docs\01-metodologia\APDF_V01.md','docs\00-governanca\registro-de-decisoes.md','CHANGELOG.md','README.md','MANIFESTO-SHA256.md')) {
  $b = [IO.File]::ReadAllBytes($f)
  $bom = ($b.Length -ge 3 -and $b[0] -eq 0xEF -and $b[1] -eq 0xBB -and $b[2] -eq 0xBF)
  $crlf = 0; for ($i = 0; $i -lt $b.Length - 1; $i++) { if ($b[$i] -eq 13 -and $b[$i+1] -eq 10) { $crlf++ } }
  '{0,-46} BOM={1} CRLF={2} newline_final={3}' -f $f, $bom, $crlf, ($b[$b.Length-1] -eq 10)
}
# Esperado: BOM=False CRLF=0 newline_final=True
```

Resultados esperados, medidos neste pacote: manifesto `linhas=27 conferem=27 divergentes=0`; seção 17 com 18 linhas e hash `96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34`; UTF-8 sem BOM, LF puro e newline final em todos os arquivos.

Verificação adicional recomendada, ainda que não substitua revisão: procurar linguagem de candidata no documento normativo.

```powershell
Select-String -Path 'docs\01-metodologia\APDF_V01.md' -Pattern 'Documento candidato|não normativo' -Encoding UTF8
```

Esperado: nenhuma ocorrência do bloco de candidata. As seis ocorrências legítimas de "candidata"/"candidatas" referem-se a fontes (`fontes candidatas`) e ao registro histórico de `C-10`, não ao estado do documento.

## 6. Reversão

Antes do commit:

```powershell
git restore --source=HEAD -- docs/01-metodologia/APDF_V01.md docs/00-governanca/registro-de-decisoes.md CHANGELOG.md README.md MANIFESTO-SHA256.md
```

Depois do commit:

```powershell
git revert <sha-do-commit>
```

A reversão restaura a `1.0.1` e a baseline `v0.2.1` integralmente. Não há migração de dados, schema, dependência ou estado externo a desfazer.

## 7. O que não foi feito

- Nenhum arquivo de `docs/` foi alterado.
- Nenhum arquivo de raiz foi alterado.
- Nada foi staged, commitado, promovido ou publicado.
- Nenhuma dependência foi instalada.
- Nenhuma ferramenta externa foi executada.
- O Gate G0 não foi reaberto; a autorização da Fase B não foi revista.
- Nenhum critério de aceite foi alterado; a seção 17 permanece byte-idêntica.

## 8. Pendências que acompanham o patch

- Leitura final do texto da `1.1.0` pelo proprietário: pendente.
- Confirmação literal da numeração `v0.3.0`: pendente.
- Revisão independente do padrão (`L-05`): pendente, não substituída por este pacote.
- `CA-APDF-07` e `CA-APDF-08`: passam a ser verificáveis contra §8.4 e §11.2/§11.4, o que **não** os declara satisfeitos.
- `L-09`: residual aceito, mantido.
- `PROP-01`, `PROP-02`, `PROP-03` e `B-01`: seguem não normativas no Anexo C.3.
