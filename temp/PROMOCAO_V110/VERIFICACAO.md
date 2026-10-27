# Verificação do patch de promoção — APDF_V01 1.1.0

**ID:** VERIF-PROMOCAO-V110  
**Tipo:** Relatório de verificação (não normativo)  
**Versão:** 1.0  
**Estado:** PROPOSTO — evidências da rodada de preparação  
**Data:** 2026-10-27  
**Escopo:** Evidências de que o pacote `temp/PROMOCAO_V110/` contém a promoção autorizada por `DEC-011`, com os limites do que foi efetivamente executado.  
**Ambiente:** Windows, PowerShell 5.1, `git` local; projeto em `E:\documentos\projetos\PDI`; `HEAD` = `f203bde6ae47f2b1db4929265737322fa15f2eb3`.

## 1. Objeto e método

O objeto verificado é o **conteúdo do pacote**, não o repositório. Nenhum artefato de `docs/` ou de raiz foi alterado, portanto não existe estado aplicado a validar.

Método:

1. O texto normativo foi construído a partir da candidata `temp/APDF_V1_1_0_CANDIDATA.md` por substituição determinística de blocos, com índices de linha explícitos no gerador `_build/build.ps1`. Nenhum trecho antigo foi redigitado à mão.
2. Cada artefato foi gravado em UTF-8 sem BOM, com LF e newline final.
3. As verificações abaixo foram executadas sobre os arquivos produzidos; os números são os resultados reais, não estimativas.
4. A distinção usada é a exigida pela norma: **especificado** (o que `DEC-011` determina), **implementado** (o que existe no pacote), **executado** (o que rodou) e **validado** (o que tem evidência vinculada). Nada foi aplicado.

## 2. Artefatos e estado

| Artefato no pacote | Destino | Linhas | Bytes | SHA-256 | Estado |
|---|---|---:|---:|---|---|
| `APDF_V01.md` | `docs/01-metodologia/APDF_V01.md` | 810 | 55 319 | `c0b5460c75d0d19c96fc30e693976db03c3b2f2b7e2f3907d8f32f2a63d58567` | PROPOSED |
| `REGISTRO_DE_DECISOES.md` | `docs/00-governanca/registro-de-decisoes.md` | 204 | 23 788 | `4a9b47b20ecd693538cf419201fe591602cb67861e472cf1102c89e0ca26988d` | PROPOSED |
| `CHANGELOG.md` | `CHANGELOG.md` | 65 | 8 825 | `dfb92deffe27a4a02b29bb2ce2dcebc20832d6968d5b79c838e56f5d5f2ba3bb` | PROPOSED |
| `README.md` | `README.md` | 54 | 4 240 | `b5850c2947aa2a50a98592d6ca289bbe3fc02a393239a6120491867d8eec6b5a` | PROPOSED |
| `MANIFESTO-SHA256.md` | `MANIFESTO-SHA256.md` | 39 | 4 225 | `19429c8f548e3c564c46d06b70d7cd0aa5124181e4f8e2f349b3bbf9bdb2b1cd` | PROPOSED |
| `DEC-011_PROMOCAO.md` | apoio à revisão | 34 | 5 348 | `2d65f54613d83d58b5be53e53b8ded7742c9df057900d49c56bfa18b449b6ffe` | DONE |
| `ADENDOS_DEC009_DEC010.md` | apoio à revisão | 25 | 1 891 | `9538fa382002b2901e1b29d76fe9037d80ca554559db645f0c9f118a6933496c` | DONE |

`PROPOSED` significa conteúdo completo e verificado no pacote, **sem aplicação**. `DONE` nos dois fragmentos significa entrega concluída como artefato de revisão, sem destino em `docs/`.

## 3. Verificações executadas

### V-01 — Seção 17 byte-idêntica

Extraída de `## 17.` até o primeiro `---`, com hash calculado sobre o texto unido por LF mais newline final.

| Versão | Linhas | SHA-256 |
|---|---:|---|
| `HEAD` (v1.0.1) | 18 | `96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34` |
| Candidata 1.1.0 | 18 | `96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34` |
| Release proposta | 18 | `96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34` |

Resultado: **CONFIRMADO**. `PROP-04` na alternativa (a) foi honrada: nenhum critério de aceite foi tocado.

Ressalva metodológica registrada: a primeira extração desta rodada delimitou a seção sem incluir a linha `---` e produziu 17 linhas e hash diferente. O delimitador correto é o primeiro `---` **posterior** a `## 17.`, incluído no bloco, conforme `Get-Sec17` do gerador. O erro era da medição, não do documento; a medição foi refeita.

### V-02 — Manifesto 27/27

Executado duas vezes, antes e depois da normalização tipográfica, com o helper renomeado para `Get-Sha`:

```
linhas de hash: 27 | conferem: 27 | divergentes: 0
```

As 23 linhas de arquivos não alterados foram conferidas contra a árvore de trabalho; as 4 linhas de arquivos alterados, contra os arquivos do pacote. Resultado: **CONFIRMADO** para o pacote. Observação: 27/27 aqui não é conformidade retroativa da `1.0.1`; é o estado do manifesto proposto.

### V-03 — Estrutura do Anexo C

| Seção | Linha no release | Conteúdo |
|---|---:|---|
| C.1 | 744 | correções incorporadas na `1.0.1` (C-02, C-03, C-04, C-08, C-09, C-10) |
| C.2 | 763 | correções incorporadas **nesta versão**, procedentes da `1.0.1` (C-01, C-05, C-06, C-07, C-11) |
| C.3 | 777 | propostas não aplicadas (`PROP-01` a `PROP-04`, `B-01`) |
| C.4 | 793 | regra de precedência e vigência, com 5 itens |
| C.5 | 801 | correções editoriais de registro (`C-12`, `C-13`) |

O cabeçalho e as células de C.2 deixaram de dizer "candidata" e "Decisão exigida"; passaram a "nesta versão" e "Decisão", ambos com `DEC-011`. `C-12` e `C-13` passaram a ter seção própria (C.5) dentro da `1.1.0`, conforme D-4. Resultado: **CONFIRMADO**.

### V-04 — Ausência de linguagem de candidata

Busca por `Documento candidato` e `não normativo` no `APDF_V01.md` proposto: nenhuma ocorrência do bloco de candidata. As seis ocorrências de "candidata"/"candidatas" são legítimas: cinco tratam de `fontes candidatas` (Anexo A.1, A.2, lacunas `L-07`, `C-04`, `C-10`) e uma é a descrição histórica do registro de `C-10`. Resultado: **CONFIRMADO**.

### V-05 — Errata aditiva em `DEC-009` e `DEC-010`

Três adendos `ERR-DEC-009-010-001` no registro proposto:

| Linha | Decisão | Objeto |
|---:|---|---|
| 100 | `DEC-009` | o Contexto descreve a candidata examinada, não o conteúdo final da `1.0.1`; escopo reduzido por `DEC-010` |
| 110 | `DEC-009` | a premissa de "conformidade integral dos 27 artefatos" não era sustentada na data; verificação posterior não é prova retroativa |
| 145 | `DEC-010` | `PROP-04` incorporada pela alternativa (a) na `1.1.0`; `PROP-01` a `PROP-03` e `B-01` seguem não normativas |

Nenhuma linha original de `DEC-009` ou `DEC-010` foi reescrita; os adendos foram acrescentados após o campo `- **Estado:** APPROVED.` de cada decisão. Resultado: **CONFIRMADO**.

### V-06 — `DEC-011` registrada

Bloco `### DEC-011 — Promoção do APDF_V01 v1.1.0 e encerramento das correções diferidas` nas linhas 151 a 185 do registro proposto, com Contexto, Decisão, cinco Alternativas consideradas, Justificativa, Consequências, sete Ressalvas, Escopo, Responsável, Data, Artefatos afetados e Estado `APPROVED`. Linha correspondente na tabela de decisões, após a linha 24. Resultado: **CONFIRMADO**.

### V-07 — Integridade física dos arquivos

| Arquivo | BOM | CRLF | LF | Newline final |
|---|---|---|---|---|
| `APDF_V01.md` | False | 0 | 810 | True |
| `REGISTRO_DE_DECISOES.md` | False | 0 | 204 | True |
| `CHANGELOG.md` | False | 0 | 65 | True |
| `README.md` | False | 0 | 54 | True |
| `MANIFESTO-SHA256.md` | False | 0 | 39 | True |

Resultado: **CONFIRMADO**. Nenhuma linha em branco duplicada. Espaços finais existem apenas onde o Markdown os usa como quebra dura, nos cabeçalhos de campo e em dois pares de linhas do `APDF_V01.md` que já os tinham.

### V-08 — Originais intocados

`git status --porcelain -- docs/01-metodologia/APDF_V01.md docs/00-governanca/registro-de-decisoes.md CHANGELOG.md README.md MANIFESTO-SHA256.md` retornou vazio. `git status --porcelain` global retornou apenas `?? temp/PROMOCAO_V110/`. Resultado: **CONFIRMADO**. Nada foi aplicado, staged ou commitado.

### V-09 — Normalização tipográfica

O estilo da casa usa travessão `—` (U+2014) como separador de prosa. As primeiras versões produzidas usaram hífen `-`, porque o gerador escrevia os blocos novos com hífen enquanto os originais e a candidata usavam travessão. Correção aplicada por `Convert-Sep`, que preserva marcadores de lista (`- ` e `  - `) e troca apenas separadores internos.

Evidência de diff contra a fotografia anterior (`_build/prev/`):

```
linhas alteradas: 40 | apenas troca de separador: 35 | conteúdo: 5
```

As cinco linhas com mudança real de conteúdo são todas do `MANIFESTO-SHA256.md`: linha 8 (escopo `v0.2.1` → `v0.3.0`) e linhas 14, 18, 19 e 34 (quatro hashes recalculados). As outras 35 são exclusivamente ` - ` → ` — `.

Estado final dos separadores:

| Arquivo | ` - ` restantes | Natureza |
|---|---:|---|
| `APDF_V01.md` | 0 | — |
| `CHANGELOG.md` | 0 | — |
| `MANIFESTO-SHA256.md` | 0 | — |
| `README.md` | 1 | linha 44, bullet pré-existente preservado |
| `REGISTRO_DE_DECISOES.md` | 48 | todos marcadores de lista; contagem de bullets 48 → 48 |
| `DEC-011_PROMOCAO.md` | 16 | todos marcadores de lista; 16 → 16 |

Resultado: **CONFIRMADO**, com a ressalva de que a conferência de travessão não pode ser feita por saída de console, que renderiza U+2014 e hífen de forma parecida. A verificação foi feita por comparação de tokens em UTF-8.

## 4. Diff contra a baseline

| Arquivo | Linhas | Adicionadas | Removidas |
|---|---|---:|---:|
| `APDF_V01.md` | 743 → 810 | 111 | 44 |
| `registro-de-decisoes.md` | 145 → 204 | 62 | 3 |
| `CHANGELOG.md` | 52 → 65 | 14 | 1 |
| `README.md` | 54 → 54 | 5 | 5 |
| `MANIFESTO-SHA256.md` | 39 → 39 | 8 | 8 |

Blocos substituídos no `APDF_V01.md`: 39, distribuídos em cabeçalho (5 blocos, incluindo a remoção do banner de candidata), §6 nota `R-01b` (1), §7.3 (1), §16.3 (3), §16.4 (2), cabeçalho do Anexo C (1), C.1 (4), C.2 (9), C.3 (2), C.4 (7) e C.5 (4).

## 5. Achados

| ID | Achado | Veredito |
|---|---|---|
| F-01 | `APDF_V01` proposto está na versão `1.1.0`, estado `APPROVED`, promovido por `DEC-011` | CONFIRMADO |
| F-02 | Seção 17 byte-idêntica à `1.0.1` e à candidata | CONFIRMADO |
| F-03 | `DEC-011` presente no registro, com tabela e seção detalhada | CONFIRMADO |
| F-04 | Três adendos de errata acrescentados sem reescrever `DEC-009`/`DEC-010` | CONFIRMADO |
| F-05 | `C-01`, `C-05`, `C-06`, `C-07`, `C-11` incorporadas ao corpo normativo | CONFIRMADO |
| F-06 | `C-12` e `C-13` incorporadas dentro da `1.1.0`, com seção C.5 | CONFIRMADO |
| F-07 | Manifesto proposto confere 27/27 contra os arquivos do pacote e os 23 não alterados | CONFIRMADO |
| F-08 | Nenhum arquivo de `docs/`, raiz ou manifesto foi alterado no repositório | CONFIRMADO |
| F-09 | Numeração da baseline `v0.3.0` | PARCIAL — proposta pelo agente, aguarda confirmação literal do proprietário |
| F-10 | Conformidade com a fonte original `APDF(1).md` | NOT_VERIFIED — arquivo inacessível no escopo autorizado; nenhuma conformidade é declarada (`L-01`) |
| F-11 | Revisão independente do padrão (`L-05`) | NÃO CONFIRMADO — permanece pendente; este pacote não a substitui |
| F-12 | `CA-APDF-07` e `CA-APDF-08` satisfeitos | NÃO CONFIRMADO — passam a ser verificáveis, o que não equivale a satisfeitos |
| F-13 | Leitura final do texto da `1.1.0` pelo proprietário | NÃO CONFIRMADO — pendente por ressalva registrada em `DEC-011` |
| F-14 | Aplicação do patch no repositório | NOT_VERIFIED por definição — não houve aplicação |

## 6. Limitações e não-afirmações

- O agente executor não é revisor independente da própria entrega. O parecer acima é de conferência mecânica e estrutural, não de aceite.
- Não há parecer sobre correção metodológica do conteúdo: isso exige leitura do proprietário e, quando cabível, revisão independente.
- `APDF(1).md`, `ORQUESTRADOR_APDF.md` e `PROMPTS_POR_FASE.md` estão fora do escopo autorizado; qualquer afirmação sobre eles seria NOT_VERIFIED.
- A contagem de hashes do manifesto comprova integridade, não qualidade editorial.
- Nenhuma ferramenta externa, dependência ou serviço foi usado; nenhum teste automatizado de produto foi executado porque não há código de produto neste pacote.
- O gerador `_build/build.ps1` reescreve o pacote de forma determinística, mas depende de `temp/APDF_V1_1_0_CANDIDATA.md` e dos originais em `HEAD`. Se esses insumos mudarem, o resultado muda.

## 7. Reprodução

```powershell
Get-Content 'temp\PROMOCAO_V110\_build\build.ps1' -Raw -Encoding UTF8 | Invoke-Expression
```

O script imprime as contagens de linha, o hash da seção 17 nas duas versões, a asserção de igualdade e os quatro hashes produzidos. Ele falha explicitamente se a seção 17 divergir.

Ressalva de ambiente: o PowerShell 5.1 lê `.ps1` como ANSI quando não há BOM. Por isso a invocação acima força `-Encoding UTF8`. Chamar `.\build.ps1` diretamente pode corromper acentos e travessões.
