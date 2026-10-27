# Entrega integral — DEEPSEEK — APDF

**ID:** ENT-APDF-DEEPSEEK-001
**Versão:** 1.0.0
**Data:** 2026-10-26
**Executor:** DeepSeek V4.1 Flash (agente), sessão OpenCode
**Lote:** `temp/LOTE_INTEGRAL_DEEPSEEK_APDF.md`
**Resultado:** correções documentais aplicadas **apenas na cópia candidata**; nada promovido, nada commitado.

---

## 1. Escopo e limites declarados

### 1.1 O que foi pedido

Auditar o APDF contra os contratos e decisões vigentes, verificar os achados `F-01` a `F-05`, executar todas as correções seguras, validar o que fosse verificável sem instalar ferramentas e entregar um pacote rastreável, sem declarar conformidade não demonstrada.

### 1.2 O que foi feito

| Atividade | Situação |
|---|---|
| Inspeção de repositório, branch, commit e estado | Executada |
| Identificação da norma vigente e da versão `SUPERSEDED` | Executada |
| Leitura dos cinco contratos, de `DEC-007` e dos artefatos de estado | Executada |
| Verificação de `F-01` a `F-05` com evidência textual | Executada |
| Levantamento complementar (`F-06` a `F-14`, `D-15`) | Executado |
| Correções aplicadas em cópia candidata (`C-01` a `C-11`) | Executadas |
| Propostas isoladas (`PROP-01` a `PROP-03`, `B-01`) | Preparadas, **não aplicadas** |
| Validações documentais (`V-01` a `V-11`) | Executadas |
| Revisão independente, lint, renderização, execução do método | **Não executadas** (`N-01` a `N-07`) |

### 1.3 O que não foi feito, por regra

- Nenhum arquivo em `docs/`, `specs/`, `tests/`, `README.md` ou `MANIFESTO-SHA256.md` foi alterado.
- Nenhum `git add`, `git commit`, `git push` ou abertura de PR.
- Nenhuma dependência instalada, nenhuma integração conectada, nenhum comando destrutivo.
- `G0` não foi aprovado; a baseline não foi promovida; `DEC-007` não foi reescrita.
- Nenhuma versão anterior foi apagada; `apdf.md` v0.1.0 permanece `SUPERSEDED` e rastreável.

---

## 2. Estado do repositório no momento da execução

| Item | Valor verificado |
|---|---|
| Repositório | `E:\documentos\projetos\PDI` |
| `remote.origin.url` | `https://github.com/1305RGP/PDI.git` |
| Branch | `main` |
| `HEAD` | `205bc590a0f8063a6a47afe8e02ef029c205b650` |
| Commits no histórico | 2 (`9f85961`, `205bc59`) |
| `gh` CLI | indisponível no ambiente — consultas de PR/issue não executadas |
| `git diff --stat -- docs specs tests README.md MANIFESTO-SHA256.md` | vazio |
| `git status --porcelain` | apenas `temp/*` não rastreado e deleções **pré-existentes** em `lote-02-gpt/` |

**Fato verificado.** As deleções em `lote-02-gpt/` já existiam no worktree antes desta execução; não foram produzidas por esta rodada. `temp/lote-02-gpt/` é diretório não rastreado também pré-existente. Nada foi restaurado nem removido nesses caminhos.

**Inferência declarada.** O estado do worktree não é limpo. Como o trabalho foi feito em `temp/` e as alterações protegidas estão vazias, a sujeira pré-existente não contamina a candidata — mas impede afirmar que o repositório está íntegro para commit imediato.

---

## 3. Base normativa usada

| Objeto | Caminho | Versão/estado | SHA-256 | Uso |
|---|---|---|---|---|
| APDF vigente | `docs/01-metodologia/APDF_V01.md` | 1.0.0, `APPROVED` (`DEC-007`) | `DC68ED05DF9CF5C8546388A55EE413B115FA0CEF9B1E9F7503CE1EEC704D07AE` | Referência normativa |
| APDF anterior | `docs/01-metodologia/apdf.md` | 0.1.0, `SUPERSEDED` | `7E0E97E99BBE444F32C6A486F0294EE121B89C829E5B7DE675DE48E3D1B1D8A5` | Histórico |
| Ciclo | `docs/01-metodologia/ciclo-apdf.md` | `MET-CICLO-001` | `B08F9B0C014A67F96330F7DE48BFBD5AE89A4200FB2B75FDBF11A2EA05C5416E` | Origem de `AD-15` |
| Anti-Surto | `docs/01-metodologia/anti-surto.md` | `MET-SURTO-001` | `E8D6DD8BE893E82C6281B46F4E2B1DA71C2BAFB0354B179A5B4B6586C2BBB7F8` | Base da seção 8 |
| CTR-01 a CTR-05 | `docs/02-contratos/contrato-0{1..5}-*.md` | 0.1.0, "APPROVED - conceitualmente; implementação técnica pendente" (`DEC-002`) | CTR-03 `70BA80E3…28F9`; CTR-05 `0B51D958…938A` | Fonte de requisitos |
| Fonte externa | `E:\documentos\projetos\APDF.md` | não declarada | `973DC2FE122E6A873EAA115222D1004E89D822185992DE7A922D5D8C509B716E` | Comparação limitada |
| Fonte externa | `E:\documentos\projetos\ORQUESTRADOR_APDF.md` | não declarada | `6CAD6D1C9CC11606AECF25A9C26B720D2679D98F4E893B5E290833D10013FD27` | Comparação limitada |
| Fonte de prompts | `E:\documentos\projetos\PROMPTS_POR_FASE.md` | não declarada | `13788599…EC9FE` | **Não incorporada** (`L-07`) |
| Fonte original | `APDF(1).md` | indisponível | — | `L-01`: conformidade externa não demonstrável |

**Fato verificado.** `DEC-007` designou `MET-APDF-001` v1.0.0 como padrão do Núcleo e marcou `docs/01-metodologia/apdf.md` v0.1.0 como `SUPERSEDED`. O APDF v1.0.0 é, portanto, o único texto normativo do método.

**Fato verificado.** `MANIFESTO-SHA256.md` foi recalculado nesta rodada: `TOTAL=27 OK=27 DIVERGENCIAS=0`.

**Limite de conclusão.** Como os cinco contratos estão aprovados apenas conceitualmente, toda conformidade apurada é **conceitual/documental**. Nenhum mecanismo de harness, schema ou teste foi executado.

---

## 4. Verificação dos achados `F-01` a `F-05`

### 4.1 `F-01` — `dependencies` ausente no checkpoint Anti-Surto

| Campo | Conteúdo |
|---|---|
| **Veredito** | **CONFIRMADO** |
| **Evidência (v1.0.0)** | §8.4, tabela de três colunas com 16 linhas. Os campos de `CTR-03` presentes eram 9: `task_id`, `objective`, `apdf_phase`, `approved_baseline`, `allowed_actions`, `prohibited_actions`, `acceptance_criteria`, `execution_state`, `evidence_refs`. `dependencies` não aparecia. |
| **Evidência (CTR-03)** | "Contexto operacional mínimo" enumera **10** campos, incluindo `dependencies`. |
| **Impacto** | O checkpoint não registrava a dependência entre pacotes, e `CA-APDF-07` exige uso dos campos do `CTR-03` "sem substituí-los". Não conformidade objetiva. |
| **Correção** | `C-01` (ver `REGISTRO_ALTERACOES_APDF.md` §4). |
| **Teste de aceitação** | Contar linhas de §8.4 com `Origem = CTR-03` e confirmar 10, incluindo `dependencies`. |
| **Resultado do teste** | `V_CTR03_CAMPOS_CONTRATO=10`, `V_DEPENDENCIES_PRESENTE=True`. **Aprovado documentalmente.** |

### 4.2 `F-02` — Hashes de proveniência não reproduzíveis

| Campo | Conteúdo |
|---|---|
| **Veredito** | **CONFIRMADO** (hash inválido); **NÃO VERIFICADO** quanto à causa raiz |
| **Evidência (v1.0.0)** | A.1 registrava `apdf.md` = `DB5FBF1EC16C329EB8C8E0435EB317BBD7AB2D460539B847D08DE489DA28CB15` e `ciclo-apdf.md` = `75CF2E28E9579463A7F2F1210DC37A4D0FF0D90BAE257E9FE023E8704259E612`. Nenhum dos dois corresponde ao arquivo atual nem a objeto Git do repositório. O `MANIFESTO-SHA256.md` usa os hashes correntes. |
| **Evidência (arquivos)** | `apdf.md` = `7E0E97E9…D8A5`; `ciclo-apdf.md` = `B08F9B0C…416E` (recalculados com `Get-FileHash -Algorithm SHA256`). |
| **Impacto** | Proveniência irreprodutível; um terceiro não consegue demonstrar qual conteúdo foi citado. `CTR-05` exige reprodutibilidade lógica e `CA-APDF-11` exige proveniência documentada. |
| **Correção** | `C-02` — hashes correntes em A.1, nota `F-02` preservando os valores antigos, marcador `SUPERSEDED` em `apdf.md` e limitação `L-06` em §16.3. |
| **Teste de aceitação** | Recalcular os 8 hashes do A.1 e comparar. |
| **Resultado do teste** | `A1_HASHES=8`, `confere=True` nos 8. **Aprovado documentalmente** quanto à exatidão; causa raiz segue `NOT_VERIFIED`. |

**Não demonstrado.** É compatível com a hipótese de que `DEC-007` alterou os dois arquivos sem atualizar o A.1, mas não há registro que prove a sequência. O documento declara isso como limitação, não como fato.

### 4.3 `F-03` — Pergunta de reancoragem antes de cada gate

| Campo | Conteúdo |
|---|---|
| **Veredito** | **PARCIALMENTE CONFIRMADO** — a ausência textual é fato; a obrigatoriedade **não** se confirmou |
| **Evidência (v1.0.0)** | §7.2 tem cinco regras (confirmação explícita, `REJEITADO` mantém fase aberta, condições, reabertura por alteração material, agente não aprova o próprio gate). Nenhuma exige pergunta de reancoragem. |
| **Evidência (fontes)** | Nem `CTR-01` a `CTR-05`, nem `anti-surto.md`, nem as fontes externas enunciam essa pergunta. A exigência aparece no critério `C-07` do relatório anterior (`temp/resultado-DEEPSEEK-apdf-rastreabilidade-v2.md`), não em norma do Núcleo. |
| **Impacto** | Se aceita, cria obrigação nova de gate; se dispensada, o critério `C-07` do relatório precisa ser reescrito. Decisão de governança, não de redação. |
| **Correção** | **Não aplicada.** Isolada como `PROP-01` no Anexo C.2 da candidata. |
| **Bloqueio** | `DH-12` — "reancoragem: texto ou dispensa?" |
| **Teste de aceitação (se aprovada)** | Registro de gate contendo confirmação de reancoragem, com remissão à regra. |
| **Estado** | `PROPOSED`. |

### 4.4 `F-04` — Rótulos de ação heterogêneos entre as 13 fases

| Campo | Conteúdo |
|---|---|
| **Veredito** | **CONFIRMADO** como ambiguidade editorial; **não** como defeito de conteúdo |
| **Evidência (v1.0.0)** | Nove fichas usam `**Elicitar:**` (Fases 01–08 e 10); Fase 09 usa `**Formalizar:**`, Fase 11 `**Definir:**`, Fase 12 `**Empacotar:**`, Fase 13 `**Entregar:**`. Nenhuma explicação acompanhava a variação. |
| **Impacto** | Um leitor ou automatizador pode ler o rótulo divergente como campo ausente, gerando falso positivo contra `CA-APDF-01`. |
| **Correção** | `C-03` — parágrafo "Regra de leitura das fichas" antes da Fase 01, declarando quatro campos fixos e variação intencional do verbo. Nenhuma ficha foi reescrita. |
| **Teste de aceitação** | 13/13 fichas com pergunta, ação, artefatos e gate. |
| **Resultado do teste** | `FASES=13`, `PERGUNTA=13`, `ACAO=13`, `ARTEFATOS=13`, `GATE=13`; títulos idênticos à v1.0.0. **Aprovado documentalmente.** |

### 4.5 `F-05` — Origem do ciclo de 6 passos não justificada

| Campo | Conteúdo |
|---|---|
| **Veredito** | **CONFIRMADO** |
| **Evidência (v1.0.0)** | A.2 terminava em `AD-14`; nenhuma linha atribuía o ciclo a uma fonte. §12 descrevia o ciclo sem registro de adaptação, embora o A.1 atribuísse "Ciclo de 6 passos" a `ciclo-apdf.md`. |
| **Impacto** | A proveniência existia só na tabela de fontes; sem `AD`, o ciclo podia ser atribuído incorretamente a `APDF.md` ou `ORQUESTRADOR_APDF.md`, que não o definem. |
| **Correção** | `C-04` — linha `AD-15` em A.2: ciclo incorporado de `MET-CICLO-001`, não das fontes candidatas. |
| **Teste de aceitação** | `AD-15` presente e `MET-CICLO-001` resolvendo para arquivo existente. |
| **Resultado do teste** | Âncora encontrada; hash `B08F9B0C…416E` confere. **Aprovado documentalmente.** |

---

## 5. Achados complementares (`F-06` a `F-14`, `D-15`)

Criados nesta rodada ao comparar o APDF com os contratos. Não estavam na lista original; estão declarados no Anexo C da candidata.

| ID | Achado | Veredito | Correção/estado |
|---|---|---|---|
| `F-06` | §7.1 não exigia `justification` no gate, embora `CTR-01` requisito 5 exija justificativa | Confirmado | `C-05` — linha acrescentada |
| `F-07` | APDF não tratava repetição improdutiva, oscilação, regressão e consumo anormal, exigidos pelo `CTR-03` | Confirmado | `C-06` — §15.5 criada |
| `F-08` | Registro explícito das quatro respostas iniciais não é exigido textualmente | Confirmado como lacuna; mérito pendente | `PROP-02`, `PROPOSED` |
| `F-09` | Conteúdo de handoff não cobria "dependências" nem "modelo de governança" e não tinha mapa de origem | Confirmado | `C-07` — §11.2 ampliada e §11.4 criada |
| `F-10` | Suspeita de que a Fase 12 não declarava dependências | **Não confirmado** | `C-08` — Fase 12 já diz "dependências" |
| `F-11` | Suspeita de que a Fase 13 não listava modelo de governança | **Não confirmado** | `C-09` — Fase 13 já diz "modelo de governança" |
| `F-12` | Limite de 3 perguntas por rodada (`AD-13`, §4.2) convive com quatro perguntas iniciais obrigatórias (§4.1) | Confirmado como ambiguidade | `PROP-03`, `PROPOSED` |
| `F-13` | Fontes candidatas sem versão, data, autor, custódia ou autoridade; risco de a cópia ser lida como norma | Confirmado | `C-10` — cabeçalho, banner, notas, `AD-10`, §16.4, `L-07` |
| `F-14` | §7.3 mostrava `REABERTO` como transição de `PENDENTE`, contradizendo §9 (`D-03`) e §10 (`CF-03`) | Confirmado | `C-11` — transições separadas |
| `D-15` | Parecer `REV-APDF-PROP-001` contém citações imprecisas | Confirmado no relatório anterior | `B-01`, `BLOCKED` por `DH-11` — agente não edita o próprio parecer |

**Nota sobre `F-10` e `F-11`.** Os dois achados foram verificados e **não se sustentaram**: as fichas 12 e 13 da v1.0.0 já contêm os itens apontados. Registrar a verificação evita reabertura sem evidência nova. Nenhuma alteração foi feita nessas fichas.

**Nota sobre `F-14`.** É desvio de plano declarado: não constava de `F-01`..`F-05` nem do plano inicial. Foi identificado por leitura cruzada entre §7.3, §9 e §10 e está listado como tal no Anexo C da candidata.

---

## 6. Correções aplicadas na candidata

Todas em `temp/APDF_V01_CORRIGIDA_CANDIDATA.md`. Antes/depois, motivo, fonte, impacto e rollback estão em `REGISTRO_ALTERACOES_APDF.md`.

| ID | Achado | Seção | Natureza | Resultado |
|---|---|---|---|---|
| `C-01` | `F-01` | §8.4 | Consistência | 10 campos de `CTR-03` + colunas `Origem`/`Valores admitidos` |
| `C-02` | `F-02` | A.1, §16.3 | Governança | Hashes correntes; originais preservados em nota; `L-06` |
| `C-03` | `F-04` | §6 | Editorial | Regra de leitura das fichas |
| `C-04` | `F-05` | A.2 | Rastreabilidade | `AD-15` |
| `C-05` | `F-06` | §7.1 | Consistência | `justification` obrigatória |
| `C-06` | `F-07` | §15.5 (nova) | Consistência | Loops, interrupção e recuperação |
| `C-07` | `F-09` | §11.2, §11.4 (nova) | Consistência | Dependências, governança e mapa de 11 itens |
| `C-08` | `F-10` | Fase 12 | Verificação | Nenhuma alteração; já conforme |
| `C-09` | `F-11` | Fase 13 | Verificação | Nenhuma alteração; já conforme |
| `C-10` | `F-13` | Cabeçalho, A.1, A.2, §16.3, §16.4 | Governança | Candidata declara-se não normativa; versão rastreável; `L-07` |
| `C-11` | `F-14` | §7.3 | Consistência | Transições de gate coerentes com §9/§10 |

**Nenhuma alteração é normativa nova.** Duas reescrevem texto existente (`C-02`, `C-11`); as demais são aditivas. `CA-APDF-01`..`CA-APDF-12` permanecem idênticos.

---

## 7. Matriz de conformidade

O detalhamento está em `MATRIZ_CONFORMIDADE_APDF.md`. Resumo:

| Bloco | Conteúdo | Resultado |
|---|---|---|
| CTR-01 | Governança, identidade, autoridade | 8 requisitos reproduzidos; `CTR-01.5` corrigido por `C-05` |
| CTR-02 | Qualidade, evidências, revisão | 4 remissões, 5 ressalvas — o APDF delega o detalhe ao contrato |
| CTR-03 | Contexto, permissões, loops | `CTR-03.1` corrigido por `C-01`; `CTR-03.5` e `CA-04-06`/`CA-03-05` a `07` por `C-06` |
| CTR-04 | Ferramentas e orquestração | 3 exigências fora do escopo do APDF; 1 ressalva de revisão independente |
| CTR-05 | Inicialização e reprodutibilidade | 1 ressalva de reprodutibilidade, herdada de `F-02`/`L-06` |
| `CA-APDF-01..12` | Critérios do padrão | 12/12 idênticos à v1.0.0; 11 conformes e `CA-APDF-07` corrigido |
| `E-01..E-09` | Nove elementos do lote | Nenhum ausente; 2 falhas objetivas corrigidas; 4 ressalvas de decisão ou ambiente |
| `OBS-01..09` | Ressalvas transversais | Conformidade textual, não comportamental |

**Leitura correta da matriz.** `CONFORME` significa "exigência textualmente reproduzida e localizável". `CONFORME POR REMISSÃO` não é reprodução. `RESSALVA` é lacuna identificada e não corrigida. Nenhum item equivale a teste executado.

---

## 8. Validações

### 8.1 Executadas

| # | Verificação | Método | Resultado |
|---|---|---|---|
| `V-01` | Integridade do manifesto | recálculo de 27 hashes | `TOTAL=27 OK=27 DIVERGENCIAS=0` |
| `V-02` | Estrutura das 13 fases | contagem de cabeçalhos e campos | `FASES=13 PERGUNTA=13 ACAO=13 ARTEFATOS=13 GATE=13` |
| `V-03` | Campos do `CTR-03` em §8.4 | contagem por coluna `Origem` | `10` de contrato + `7` extensões locais; `dependencies` presente |
| `V-04` | Hashes do A.1 | recálculo dos 8 arquivos citados | `8/8` conferem |
| `V-05` | Critérios `CA-APDF-*` | comparação linha a linha com a v1.0.0 | `12/12` idênticos |
| `V-06` | Títulos das 13 fases | comparação com a v1.0.0 | idênticos |
| `V-07` | Referências `§n` | resolução contra títulos existentes | 39 ocorrências, 19 seções distintas, `0` sem destino |
| `V-08` | Cercas de código | contagem de ` ``` ` | `2`, par, sem fence órfã |
| `V-09` | Escopo no Git | `git status --porcelain`, `git diff --stat` | nada fora de `temp/`; proteções vazias |
| `V-10` | Diff v1.0.0 → candidata | `git diff --no-index` | 19 hunks, `126` inserções, `25` deleções |
| `V-11` | Integridade da candidata | `Get-FileHash`, `Get-Item` | `21B9718C…B81B`; 46.821 bytes; 775 linhas |

**Valores de referência.**

| Arquivo | Linhas | Bytes | SHA-256 |
|---|---|---|---|
| `docs/01-metodologia/APDF_V01.md` (v1.0.0) | 674 | 31.746 | `DC68ED05DF9CF5C8546388A55EE413B115FA0CEF9B1E9F7503CE1EEC704D07AE` |
| `temp/APDF_V01_CORRIGIDA_CANDIDATA.md` (1.0.1) | 775 | 46.821 | `21B9718C3A4B42BCDFC77884D2D01735D4B17F081A43BDD77DEE3329BD08B81B` |
| `temp/_diff_v100_para_candidata.diff` | 212 | — | `CD939DB869700775972A017338C800A01B88D7043BA45EE78A20160E21C890AF` |

### 8.2 Não executadas

| # | Verificação | Motivo | Estado |
|---|---|---|---|
| `N-01` | Lint de Markdown | nenhum linter instalado; instalação não autorizada | `NOT_RUN` |
| `N-02` | Links externos | sem verificador dedicado/rede controlada | `NOT_RUN` |
| `N-03` | Renderização visual | sem preview no ambiente | `NOT_RUN` |
| `N-04` | Revisão independente | não há segundo revisor designado (`L-05`) | `NOT_RUN` |
| `N-05` | Comparação com `APDF(1).md` | fonte indisponível (`L-01`) | `NOT_RUN` |
| `N-06` | Execução do método por um agente | fora do escopo da rodada | `NOT_RUN` |
| `N-07` | TPM e instruções por ferramenta | ambiente não verificado (`L-03`, `L-04`) | `NOT_RUN` |

**Regra aplicada.** Nenhuma dessas verificações foi convertida em `PASS`. A ausência delas limita a conclusão a "conformidade documental da candidata", não "método validado".

---

## 9. Limitações

| ID | Limitação | Efeito |
|---|---|---|
| `L-01` | `APDF(1).md` indisponível | Conformidade com a fonte original **não** é declarada |
| `L-02` | Detector Anti-Surto não automatizado | Controle depende de disciplina manual |
| `L-03` | TPM não verificado no ambiente | Integração permanece opcional e não testada |
| `L-04` | Instruções por ferramenta não testadas | §14 é informativa |
| `L-05` | Revisão independente pendente | A matriz é autoavaliação; não é aceite |
| `L-06` | Hashes da v1.0.0 para `apdf.md`/`ciclo-apdf.md` irreprodutíveis | Causa raiz não demonstrável |
| `L-07` | Fontes candidatas sem versão, data, autor, custódia ou autoridade | Proveniência limitada a caminho + hash |

**Acréscimos desta rodada.** `L-06` e `L-07` foram adicionados por `C-02` e `C-10`. `L-01` a `L-05` já existiam.

---

## 10. Compatibilidade e transição

### 10.1 O que muda para consumidores

| Consumidor | Efeito | Ação |
|---|---|---|
| Agente que executa o método | Passa a registrar `dependencies` e `justification`; precisa interromper em loop improdutivo | Nenhuma migração |
| Autor de gate | Precisa preencher justificativa | Campo obrigatório novo |
| Revisor de handoff | Passa a checar dependências e modelo de governança | Lista ampliada |
| Ferramenta que lê o checkpoint | Tabela de §8.4 ganhou coluna | Ler por cabeçalho, não por posição |
| Citador da baseline | A 1.0.1 **não** pode ser citada como norma | Continuar citando a v1.0.0 |
| Revisor de proveniência | Dois hashes mudaram; originais preservados em nota | Usar os valores correntes |

### 10.2 Classificação de versão

A candidata é **patch corretivo** (`1.0.0` → `1.0.1`):

- não altera fases, sequência, gates nem critérios de aceite;
- não cria nem remove obrigação de produto;
- corrige exatidão, completude e rastreabilidade;
- mantém `CA-APDF-01`..`CA-APDF-12` intactos.

O versionamento **não** se efetiva nesta rodada. Depende de `DH-10`, de decisão registrada, de atualização de `MANIFESTO-SHA256.md`, `CHANGELOG.md` e `estado-atual.md`, e de revisão independente.

### 10.3 Sequência de transição proposta

1. Revisão independente da candidata (`L-05`).
2. Decisão sobre `PROP-01`, `PROP-02`, `PROP-03` e `B-01`.
3. Decisão registrada de promoção (`DH-10`).
4. Substituição de `docs/01-metodologia/APDF_V01.md`, preservando a v1.0.0 no histórico Git.
5. Atualização de manifesto, changelog e estado atual na mesma decisão.

Enquanto 1–3 não ocorrerem, `docs/01-metodologia/APDF_V01.md` (1.0.0) permanece a única baseline `APPROVED`.

---

## 11. Riscos e pontos de atenção

| # | Risco | Mitigação aplicada |
|---|---|---|
| R-01 | Candidata ser citada como se fosse a norma | Cabeçalho `PENDING_APPROVAL`, banner de não normatividade e §16.4 |
| R-02 | Correção de hash mascarar a causa raiz | Nota `F-02` preserva os valores originais e `L-06` declara a lacuna |
| R-03 | Proposta ser lida como regra aprovada | `PROP-01`..`PROP-03` e `B-01` isolados no Anexo C.2, fora do corpo normativo |
| R-04 | Identificador inventado (`DH-14`) circular como decisão real | Removido da candidata, da matriz e do registro; substituído por "Decisão de mérito (sem `DH` atribuído)" |
| R-05 | Alteração de critério para fazer implementação passar | §17 intocado; verificações de `C-04`, `C-05`, `C-06`, `C-11` feitas contra `CTR-01`/`CTR-03` |
| R-06 | Worktree sujo pré-existente ser atribuído a esta rodada | Deleções de `lote-02-gpt/` declaradas como anteriores; nenhuma ação nelas |

---

## 12. Fechamento por item

| Item | Estado | Evidência | Próximo responsável |
|---|---|---|---|
| `F-01` — `dependencies` ausente | `DONE` | §8.4 com 10 campos de contrato (`V-03`) | Revisor humano → `DH-10` |
| `F-02` — hashes irreprodutíveis | `DONE` (correção) / `NOT_VERIFIED` (causa) | A.1 8/8 (`V-04`); `L-06` | Proprietário humano (histórico externo) |
| `F-03` — reancoragem | `PROPOSED` | `PROP-01` no Anexo C.2 | Decisor de `DH-12` |
| `F-04` — rótulos heterogêneos | `DONE` | §6, regra de leitura; 13/13 fichas (`V-02`) | Revisor humano |
| `F-05` — ciclo sem `AD` | `DONE` | `AD-15` em A.2 | Revisor humano |
| `F-06` — gate sem justificativa | `DONE` | §7.1 (`C-05`) | Revisor humano |
| `F-07` — loops não tratados | `DONE` | §15.5 (`C-06`) | Revisor humano |
| `F-08` — registro das 4 respostas | `PROPOSED` | `PROP-02` | Decisor de mérito |
| `F-09` — handoff sem correspondência | `DONE` | §11.2/§11.4, mapa de 11 itens (`C-07`) | Revisor humano |
| `F-10` — Fase 12 sem dependências | `DONE` (verificado, sem alteração) | Fase 12 já conforme; `C-08` | — |
| `F-11` — Fase 13 sem governança | `DONE` (verificado, sem alteração) | Fase 13 já conforme; `C-09` | — |
| `F-12` — 3 perguntas × 4 iniciais | `PROPOSED` | `PROP-03` | Decisão de mérito (sem `DH` atribuído) |
| `F-13` — fontes sem metadados | `DONE` | A.1, `L-07`, `AD-10`, §16.4 (`C-10`) | Revisor humano |
| `F-14` — estados do gate | `DONE` | §7.3 (`C-11`) | Revisor humano |
| `D-15` — parecer sem errata | `BLOCKED` | `B-01`; exige autoridade sobre o registro | Decisor de `DH-11` |
| Promoção da `1.0.1` | `BLOCKED` | Depende de `DH-10`, revisão e autoridade humana | Proprietário humano do Núcleo |
| Conformidade com a fonte original | `NOT_VERIFIED` | `L-01`; fonte indisponível | Responsável por obter `APDF(1).md` |
| Revisão independente | `NOT_VERIFIED` | `L-05`; `N-04` | Revisor independente a designar |
| Lint, renderização, execução do método | `NOT_VERIFIED` | `N-01`, `N-03`, `N-06` | Responsável por pipeline de validação |

**Contagem.** `DONE` = 11 itens (9 com alteração, 2 verificados sem alteração). `PROPOSED` = 3. `BLOCKED` = 2. `NOT_VERIFIED` = 3 grupos.

---

## 13. Arquivos entregues

| Arquivo | Papel | Linhas | SHA-256 |
|---|---|---|---|
| `temp/ENTREGA_INTEGRAL_DEEPSEEK_APDF.md` | Este relatório | — | — |
| `temp/APDF_V01_CORRIGIDA_CANDIDATA.md` | Cópia candidata 1.0.1, integral | 775 | `21B9718C3A4B42BCDFC77884D2D01735D4B17F081A43BDD77DEE3329BD08B81B` |
| `temp/MATRIZ_CONFORMIDADE_APDF.md` | Matriz requisito → seção → evidência → estado | 256 | — |
| `temp/REGISTRO_ALTERACOES_APDF.md` | Registro de cada alteração, antes/depois, rollback | 505 | — |
| `temp/_diff_v100_para_candidata.diff` | Auxiliar: diff completo (não é entregável) | 212 | `CD939DB8…90AF` |

**Auxiliares.** `_diff_v100_para_candidata.diff` existe para auditoria do diff e não substitui nenhum dos quatro entregáveis. Hash do próprio relatório não é autodeclarado, para evitar circularidade: deve ser calculado por quem receber a entrega.

---

## 14. Declaração final

O APDF v1.0.0 permanece a única baseline `APPROVED`. A candidata 1.0.1 corrige as não conformidades internas verificáveis e as lacunas documentais com base normativa, isola o que depende de decisão humana e não declara conformidade com a fonte original que não pôde ser lida. As duas falhas objetivas da v1.0.0 (`F-01` e o handoff sem correspondência) estão corrigidas na cópia; dois achados anteriores (`F-10`, `F-11`) não se confirmaram; três propostas e um item de governança aguardam decisão.

Nada foi promovido, commitado ou publicado. A promoção exige `DH-10`, revisão independente e autoridade humana.
