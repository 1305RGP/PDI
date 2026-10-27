# Entrega — Lote G1 DeepSeek — APDF

**ID:** `ENT-APDF-DEEPSEEK-G1-001`  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Executor:** DeepSeek V4.1 Flash (agente), sessão OpenCode  
**Lote:** `temp/PDI_LOTE_UNICO_G1_3_IAS/LOTE_G1_DEEPSEEK_APDF_CORRECOES.md`  
**Commit-base analisado:** `bc457538209491d52fe128d5184117d547906d3a` — `main`, `origin/main`, 2026-10-27  
**Objeto auditado:** `docs/01-metodologia/APDF_V01.md` — v1.0.1, 743 linhas, 44.514 bytes, SHA-256 `7AE2D87B9709D05A8EF6AE2359D34DFA789E75E586A171524FA3C6EA268FBCEF`  
**Resultado:** pacote de correções completo em `temp/`. **Nada promovido, nada commitado, nenhum gate aprovado.**

---

## 1. Declaração de escopo e limites

### 1.1 O que foi pedido

Auditar o texto real da APDF v1.0.1, reconciliar `DEC-009`/`DEC-010` sem apagar histórico, mapear os cinco contratos contra o padrão e entregar, **nesta rodada**, o pacote de correções candidatas — com verificação e correção, não apenas diagnóstico.

### 1.2 O que foi executado

| Atividade | Situação |
|---|---|
| Inspeção de repositório, branch, `HEAD` e estado do worktree | Executada (V-01, V-02) |
| Leitura integral da APDF v1.0.1 (743 linhas) | Executada |
| Leitura integral de `CTR-01` a `CTR-05`, `registro-de-decisoes.md`, `CHANGELOG.md`, `README.md` | Executada |
| Leitura integral de `temp/REVISAO_CRITICA_APDF_V101.md` e `temp/VALIDACAO_ESTADO_PROMOVIDO.md` | Executada |
| Verificação de `C-01` a `C-11` contra o texto publicado | Executada |
| Diff v1.0.1 → candidata (`--numstat`, hunks, leitura de cada bloco) | Executada (+111 −41, 25 hunks) |
| Reconstrução da candidata `1.1.0` integral | Executada — 813 linhas |
| Errata cronológica de `DEC-009`/`DEC-010` | Redigida — `PROPOSED` |
| Matriz de conformidade dos cinco contratos | Executada — 76 linhas de dados |
| Registro de alterações antes/depois | Executado |
| Recálculo do manifesto (27 entradas) | Executado — 27/27 |
| Verificação do bloco §17 nas três versões (v1.0.0 / v1.0.1 / candidata) | Executada — byte a byte idêntico |
| Recálculo dos 5 hashes internos do Anexo A | Executado — 5/5 |
| Revisão independente, lint, renderização, execução do método | **Não executadas** |

### 1.3 O que não foi feito, por regra

- Nenhum arquivo em `docs/`, `specs/`, `tests/`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md` ou `AGENTS.md` foi alterado.
- Nenhum `git add`, `git commit`, `git push` ou abertura de PR.
- Nenhuma dependência instalada, nenhuma integração conectada, nenhum comando destrutivo.
- Nenhuma aprovação de gate, promoção de versão, encerramento de lacuna ou aceite de entrega.
- Nenhum texto de `DEC-009` ou `DEC-010` foi reescrito; a reconciliação é por **adendo**.
- Nenhuma alegação de conformidade com `APDF(1).md`, que não foi lida.

---

## 2. Estado real verificado

### 2.1 Repositório e baseline

| Item | Valor verificado | Como |
|---|---|---|
| Repositório | `E:\documentos\projetos\PDI` | `pwd` / `git rev-parse` |
| `HEAD` | `bc457538209491d52fe128d5184117d547906d3a` | `git rev-parse HEAD` |
| `main` / `origin/main` | idênticos a `HEAD` | `git rev-parse main origin/main` |
| Commits no histórico | 3 — `9f85961`, `205bc59`, `bc45753` | `git log --oneline` |
| APDF vigente | `1.0.1`, `APPROVED` por `DEC-009`, escopo por `DEC-010` | Cabeçalho L5–L11 |
| Manifesto | v0.2.1, **27/27 conferidos**, 0 divergências, 0 ausentes | Recálculo inline (V-03) |
| Arquivos normativos alterados nesta rodada | nenhum — `git status --porcelain` vazio no escopo protegido | V-02 |
| Worktree | não limpo: apenas `temp/` não rastreado, incluindo artefatos de outras IAs e de rodadas anteriores | V-02 |

**Fato verificado.** O commit-base coincide exatamente com o exigido pelo lote. Não houve necessidade de identificar commit descendente.

**Fato verificado.** `DEC-010` (L100–L125) fixou o escopo da `1.0.1` em seis correções e diferiu cinco. O texto publicado corresponde a esse recorte: Anexo C.1 lista `C-02`, `C-03`, `C-04`, `C-08`, `C-09`, `C-10` (L698–L703); Anexo C.2 lista `C-01`, `C-05`, `C-06`, `C-07`, `C-11` (L717–L723); `L-08` (L604) cataloga a lacuna resultante.

### 2.2 Versões comparadas

| Objeto | Linhas | Bytes | SHA-256 | Estado |
|---|---:|---:|---|---|
| `docs/01-metodologia/APDF_V01.md` v1.0.1 | 743 | 44.514 | `7AE2D87B…8FBCEF` | `APPROVED` — vigente |
| `temp/APDF_V1_1_0_CANDIDATA.md` | 813 | 55.805 | `3A91DC61…FA00B1D` | `PENDING_APPROVAL` — fora do manifesto |
| Diff v1.0.1 → candidata | +111 / −41 | — | 25 hunks, saldo +70 | — |

### 2.3 Método de aferição textual

Toda afirmação de conformidade deste pacote compara **texto com texto**. Nenhum controle de harness foi executado, nenhum schema foi validado e nenhum teste automatizado rodou — a APDF não define suíte executável e o lote proíbe instalar dependências. As distinções usadas são:

| Termo | Significado nesta entrega |
|---|---|
| **Especificado** | Enunciado no texto normativo ou contratual. |
| **Implementado** | Existe como arquivo ou código no repositório. |
| **Executado** | Rodou de fato, com comando registrado. |
| **Validado** | Tem evidência vinculada à versão avaliada e revisão que a sustente. |

Nenhuma linha deste documento promove uma afirmação de "especificado" para "validado".

---

## 3. Artefatos entregues

| # | Artefato | Linhas | SHA-256 | Estado |
|---|---|---:|---|---|
| 1 | `temp/ENTREGA_G1_DEEPSEEK_APDF.md` (este) | — (autoreferência) | — (autoreferência) | `DONE` |
| 2 | `temp/APDF_V1_1_0_CANDIDATA.md` | 813 | `3A91DC6165EF32EB0BFFD5F3F3A5DC57F767C878AA67E1E524EE975C4FA00B1D` | `PROPOSED` |
| 3 | `temp/ERRATA_DEC009_DEC010_CANDIDATA.md` | 170 | `9BABF8670A1DAC26CDE4460048C54065893D4D14DDF4BEB7DAF569B5133920E3` | `PROPOSED` |
| 4 | `temp/MATRIZ_CONFORMIDADE_APDF_G1.md` | 242 | `157E18FAEEB62BEB2D64BBD95207A330B1A3747867B530D937532F4CF59DEDD0` | `DONE` |
| 5 | `temp/REGISTRO_ALTERACOES_APDF_G1.md` | 372 | `A61FD0062B060A0868B24573C49B5EE212805DF20E332CD57F3296C930748658` | `DONE` |

**Nota de mensuração.** As métricas de (2), (3), (4) e (5) foram colhidas com `(Get-Content <arq> -Encoding UTF8).Count`, `(Get-Item <arq>).Length` e `Get-FileHash -Algorithm SHA256`, imediatamente antes da redação final desta entrega. O artefato (1) não pode registrar a própria linha e o próprio hash: qualquer edição posterior — inclusive a inserção destes números — altera ambos. O revisor deve medir (1) sobre o arquivo recebido e registrar o resultado no parecer; até lá, a integridade de (1) é **não autoverificável**, não "conferida".

**Leitura dos estados.**

- `DONE` em (1), (4) e (5): o artefato está concluído **como análise**. Não é aprovação de conteúdo normativo e não substitui revisão independente.
- `PROPOSED` em (2) e (3): o conteúdo está completo e verificável, mas **o efeito depende de decisão do proprietário**. A candidata não é versão vigente; a errata não foi aplicada ao registro.

---

## 4. Achados

### 4.1 Resumo

| ID | Achado | Gravidade | Estado |
|---|---|---|---|
| `G1-01` | §8.4 não reproduz os dez campos do `CTR-03`: falta `dependencies` | Alta | **CONFIRMADO** |
| `G1-02` | §7.1 não tem campo de justificativa exigido pelo `CTR-01`, req. 5 | Alta | **CONFIRMADO** |
| `G1-03` | Loops e recuperação sem seção correspondente no padrão | Alta | **CONFIRMADO** |
| `G1-04` | Handoff sem correspondência entre §11.1 e §11.2 e sem dois itens | Média | **CONFIRMADO** |
| `G1-05` | `REABERTO` é, ao mesmo tempo, valor de `decision`, transição e estado | Alta | **CONFIRMADO** |
| `G1-06` | Anexo C.1 registra "banner de não normatividade" inexistente | Baixa | **CONFIRMADO** |
| `G1-07` | Referência a propostas pendentes encerra em `PROP-03` | Baixa | **CONFIRMADO** |
| `G1-08` | `CA-APDF-01` usa `elicitação` para campo de rótulo variável | Média | **PARCIAL** |
| `G1-09` | `DEC-009` descreve como incorporado conteúdo diferido por `DEC-010` | Alta | **PARCIAL** |
| `G1-10` | `DEC-009` afirma conformidade integral dos 27 artefatos | Média | **PARCIAL** |
| `G1-11` | Relatórios anteriores medem versões que não são a vigente | Baixa | **CONFIRMADO** |
| `G1-12` | A prova de `F-02` foi um teste que não testa nada | Baixa | **PARCIAL** |
| `G1-13` | `R-04`: critérios de G0 existiriam só na proposta | Alta | **NÃO CONFIRMADO** |
| `G1-14` | `DH-10`/`DH-11`/`DH-12` citados sem entrada no registro | Baixa | **CONFIRMADO** |
| `G1-15` | Hashes das três fontes externas do Anexo A | Baixa | **NOT_VERIFIED** |
| `G1-16` | Conformidade com `APDF(1).md` | — | **NOT_VERIFIED** |

### 4.2 Detalhe

#### `G1-01` — `dependencies` ausente no checkpoint (§8.4)

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência (v1.0.1)** | §8.4, L373–L390: tabela de três colunas com **16** linhas de campo (`task_id` … `timestamp`). `dependencies` não aparece. |
| **Evidência (CTR-03)** | `contrato-03-harness.md` L19 enumera **dez** campos de contexto operacional, incluindo `dependencies`. |
| **Evidência (contradição interna)** | A §15.2 da própria v1.0.1 (L558) **lista os dez**, inclusive `dependencies`. O padrão se contradiz entre §8.4 e §15.2. |
| **Critério afetado** | `CA-APDF-07` — "usam os campos do `CTR-03`, sem substituí-los". Na v1.0.1: `PARCIAL`. |
| **Correção** | `C-01` — `dependencies` inserida em L401 e tabela convertida para quatro colunas (L392–L410 da candidata). |
| **Estado da correção** | `PROPOSED` — não aplicada à baseline. |
| **Teste de aceite proposto** | Contar campos de §8.4 e confirmar que os dez do `CTR-03` estão presentes, com `dependencies` entre eles. |

#### `G1-02` — Campo de justificativa do gate (§7.1)

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência (v1.0.1)** | §7.1, L312–L323: dez campos — `gate_id`, `artifacts`, `summary`, `open_issues`, `risks`, `decision`, `conditions`, `approver`, `date`, `evidence_refs`. Não há `justification`. |
| **Evidência (CTR-01)** | Requisito 5 (L23) exige que a aprovação identifique artefato/versão, decisor, data, decisão **e justificativa**. |
| **Achado auxiliar** | `summary` descreve o que foi produzido, não o fundamento da decisão — não supre a exigência. |
| **Correção** | `C-05` — `justification` inserido em L324 da candidata, referido ao `CTR-01`, req. 5. |
| **Estado da correção** | `PROPOSED`. |

#### `G1-03` — Loops e recuperação ausentes (§15)

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência (v1.0.1)** | O capítulo 15 encerra na §15.4 (L571–L573), seguida do separador L575. Não há seção sobre repetição, oscilação, regressão ou limite de recursos. |
| **Evidência (CTR-03)** | L43–L45: detectar repetição sem progresso, reaplicação da mesma correção sem nova hipótese, oscilação, regressão e consumo anormal; interromper, preservar estado, escalonar. |
| **Evidência (CTR-04)** | L40–L47: exige prova de teste de capacidade de ferramenta; sem critério de parada, a exigência não é operável. |
| **Critérios afetados** | `CTR-03` L1/L2, `CA-03-05`, `CA-03-06`, `CTR-04` R8 — todos `NÃO CONFORME` na v1.0.1. |
| **Correção** | `C-06` — §15.5 nova (L611–L623 da candidata), remetendo ao `CTR-03` e com procedimento de cinco passos no limite. Não duplica o Anti-Surto: §8 trata `EXPANSAO`; §15.5 trata repetição e limite. |
| **Estado da correção** | `PROPOSED`. |

#### `G1-04` — Handoff sem correspondência (§11)

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência (v1.0.1)** | §11.1 exige cinco confirmações; §11.2 enumera dez itens (L465–L474), sem vínculo entre as duas listas. Faltam "dependências" e "modelo de governança" no conteúdo mínimo. |
| **Critério afetado** | `CA-APDF-08` — `PARCIAL`. |
| **Correção** | `C-07` — dois itens acrescentados (L489, L492) e §11.4 nova (L502–L514) com a tabela de correspondência. |
| **Estado da correção** | `PROPOSED`. |
| **Ressalva** | A tabela de §11.4 não cria requisito de conteúdo novo; vincula listas existentes. A única exigência nova é a prova de correspondência. |

#### `G1-05` — Semântica de `REABERTO` (§7.1, §7.3, §9, §10)

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência 1** | §7.1 L319: `decision` aceita `APROVADO`, `REJEITADO` **ou `REABERTO`** — logo, `REABERTO` seria decisão. |
| **Evidência 2** | §7.3 L335: `PENDENTE → APROVADO \| REJEITADO \| REABERTO` — logo, `REABERTO` seria transição de abertura. |
| **Evidência 3** | §9 (D-03) e §10 (`CF-03`) reabrem gate **já decidido**, não gate pendente. |
| **Consequência** | Duas leituras incompatíveis para o mesmo evento; dois leitores podem registrar estados diferentes. O `CTR-03` e os schemas da Fase B codificariam a ambiguidade. |
| **Correção** | `C-11` — modelo único: `REABERTO` é estado persistente, alcançado só a partir de `APROVADO`/`REJEITADO`, com avanço bloqueado e saída para `PENDENTE` apenas após D-03 completo; `decision` passa a dois valores. |
| **Estado da correção** | `PROPOSED`. |
| **Decisão embutida** | A escolha entre os modelos (a), (b) e (c) é do proprietário. A candidata materializa (a); (b) e (c) estão descritas em §7.3 L354 e não foram redigidas. |

#### `G1-06` — Registro de `C-10` descreve conteúdo ausente

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência** | Anexo C.1, L703: a correção `C-10` é descrita como incluindo "Banner de não normatividade". O arquivo publicado **não contém** aviso de não normatividade no cabeçalho (L1–L13). |
| **Alcance** | As demais partes de `C-10` existem: nota de metadados (L650), `L-07` (L603), gatilho `.tpm/` em `AD-10` (L665), regra de versão em §16.4 (L610). O defeito é de **registro**, não de execução. |
| **Critério afetado** | `CA-05-08` — `PARCIAL`. |
| **Correção** | `C-12` — linha `C-10` reescrita (L757 da candidata), lead de C.1 ajustado (L748) e `L-10` registrada (L656). |
| **Estado da correção** | `PROPOSED`. |

#### `G1-07` — Referência a propostas encerra em `PROP-03`

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência** | §16.4 L610: "(`PROP-01` a `PROP-03`)". Anexo C.3, lead L727: "Os identificadores são `PROP-01` a `PROP-03`". |
| **Contexto** | O achado existe **porque** `PROP-04` foi criada nesta rodada; antes, a referência era completa. Não é defeito da v1.0.1 isolada — é consequência de nova proposta. |
| **Correção** | `C-13` — duas ocorrências atualizadas para `PROP-04` (L662 e L781 da candidata). |
| **Estado da correção** | `PROPOSED`. |
| **Dependência** | Se `PROP-04` for descartada, `C-13` perde o objeto e deve ser revertida junto. |

#### `G1-08` — `CA-APDF-01` versus §6

| Campo | Conteúdo |
|---|---|
| **Estado** | **PARCIAL** |
| **O que se confirma** | A §17 (L663) usa `elicitação` para o segundo campo, cujo rótulo varia por fase (`Elicitar`, `Formalizar`, `Definir`, `Empacotar`, `Entregar`). |
| **O que não se confirma** | Que a §6 reinterprete o critério unilateralmente: a v1.0.1 L156 declara que a leitura incide sobre "presença e conteúdo do segundo campo", mas **não** altera o texto da §17. A divergência é residual, não uma emenda oculta. |
| **Limite intransponível** | A §17 é critério de aceite aprovado. Alterá-la exige decisão própria — vedado neste lote. Por isso a candidata **não** toca a §17 e registra `L-09` + `PROP-04`. |
| **Correção** | `PROP-04` (Anexo C.3, L788) com três alternativas; nota `R-01b` em §6 L160; `L-09` em L655. Nenhuma alternativa (b)/(c) redigida. |
| **Estado da correção** | `PROPOSED` — e a proposta em si está `NÃO APLICADA`. |

#### `G1-09` — `DEC-009` descreve conteúdo que `DEC-010` diferiu

| Campo | Conteúdo |
|---|---|
| **Estado** | **PARCIAL** |
| **Confirmado (`E-01`)** | L78 afirma "incluindo o campo `dependencies` em §8.4 (CTR-03)". Falso na `1.0.1`: §8.4 tem 16 campos, sem `dependencies`; `C-01` está diferida em C.2 (L717) e `L-08` (L604). |
| **Confirmado (`E-02`)** | L78 afirma "a modelagem de `REABERTO` como estado persistente bloqueante em §7.3". Falso: §7.3 L335 traz transição linear; `C-11` está diferida. |
| **Não confirmado como erro (`E-03`, `E-04`)** | "esclarecimento da estrutura de 4 campos nucleares em §6 (R-01)" e "correção da narrativa de proveniência de hashes (R-03)" **estão** na `1.0.1` (§6 L156; Anexo A L648). |
| **Correção** | `ERRATA_DEC009_DEC010_CANDIDATA.md` §5.1 — adendo que declara o Contexto de `DEC-009` como descrição da **cópia candidata examinada**, não do conteúdo final promovido. Preserva o texto original. |
| **Estado da correção** | `PROPOSED`. |

#### `G1-10` — "27 artefatos conformes" em `DEC-009`

| Campo | Conteúdo |
|---|---|
| **Estado** | **PARCIAL** — falsa na origem, verdadeira hoje |
| **Evidência (na data)** | `DEC-010` L102 registra que **quatro** entradas do manifesto divergiam quando `DEC-009` foi emitida. A afirmação de "conformidade integral dos 27 artefatos" (L78) era, portanto, incorreta no momento em que foi escrita. |
| **Evidência (hoje)** | Em `bc45753`, o recálculo dá **27/27 OK**, 0 divergências, 0 ausentes. |
| **Risco** | Ler `DEC-009` como se tivesse validado o que hoje é válido. A errata exige leitura **temporal** explícita. |
| **Correção** | `ERRATA...` §5.2 — adendo com a distinção entre a data da decisão e a verificação atual, sem validação retroativa. |
| **Estado da correção** | `PROPOSED`. |

#### `G1-11` — Relatórios anteriores medem outra versão

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência** | `temp/ENTREGA_INTEGRAL_DEEPSEEK_APDF.md` (L228, L352), `temp/MATRIZ_CONFORMIDADE_APDF.md` (L8) e `temp/REGISTRO_ALTERACOES_APDF.md` (L23, L489) medem a candidata `APDF_V01_CORRIGIDA_CANDIDATA.md` — 775 linhas, 46.821 bytes, `21B9718C…` — e a v1.0.0 — 674 linhas. A versão hoje vigente tem 743 linhas e 44.514 bytes. |
| **Consequência** | Contagens e referências de linha desses relatórios **não valem** para a v1.0.1 publicada. Usá-las como evidência atual produz erro de auditoria. |
| **Tratamento** | Este pacote recalcula tudo contra o arquivo de `bc45753`. Os relatórios anteriores permanecem como registro histórico e **não foram editados**. |

#### `G1-12` — Qualidade probatória de `F-02`

| Campo | Conteúdo |
|---|---|
| **Estado** | **PARCIAL** |
| **Confirmado** | A verificação original de `F-02` usou `git cat-file -e <hash>`, comando que falha para **qualquer** objeto de 64 hex inexistente no Git — logo, não distinguia hash inválido de hash de arquivo não versionado. A prova era vazia. |
| **Não confirmado** | Que o defeito persista na `1.0.1`: a nota do Anexo A (L648) foi reescrita para declarar que "a origem e o momento da divergência não foram determinados" e que a alegação anterior "desde `9f85961`" foi retirada por falta de prova. O texto publicado é epistologicamente correto. |
| **Resíduo** | `R-03` da validação anterior (L39) aponta que a evidência real (`temp/resultado-fase-a.md` L70–L71) não é citada. Isso permanece. |
| **Correção** | Nenhuma aplicada: corrigir a nota exigiria nova referência a arquivo de `temp/`, que não é fonte normativa. Registrado como resíduo aceito. |

#### `G1-13` — `R-04` sobre critérios de G0

| Campo | Conteúdo |
|---|---|
| **Estado** | **NÃO CONFIRMADO** no commit-base |
| **Alegação** | Os critérios `CA-G0-01` a `CA-G0-06` existiriam apenas na proposta que os declara atendidos. |
| **Evidência contrária** | `DEC-008` (registro L54–L74) estabelece e aprova formalmente os seis critérios, **antes** de `DEC-009`. Os seis estão enumerados em L58–L63, com decisão, justificativa e estado `APPROVED`. |
| **Conclusão** | A alegação era verdadeira quando a revisão foi escrita, mas **não é verdadeira** em `bc45753`: `DEC-008` formalizou os critérios. Manter a alegação como atual seria erro de auditoria. |
| **Efeito** | Nenhum sobre o pacote de correções. Registrado para não propagar achado vencido. |

#### `G1-14` — `DH-10`/`DH-11`/`DH-12` sem registro

| Campo | Conteúdo |
|---|---|
| **Estado** | **CONFIRMADO** |
| **Evidência** | Busca por `DH-` em `docs/**/*.md`: nenhuma ocorrência. Em `temp/*.md`: apenas as duas menções **meta** (dossiê L91 e L120), que falam **sobre** os identificadores, sem defini-los. |
| **Consequência** | A candidata anterior dependia, em pontos de decisão, de identificadores que não existem em registro nem em dossiê. Qualquer decisão que os cite fica impossível de rastrear. |
| **Tratamento** | O pacote atual **não** usa `DH-*`: as decisões pendentes estão enumeradas em §5 por conteúdo, não por identificador. |

#### `G1-15` — Hashes das três fontes externas do Anexo A

| Campo | Conteúdo |
|---|---|
| **Estado** | **NOT_VERIFIED** |
| **Escopo** | `APDF.md`, `ORQUESTRADOR_APDF.md` e `PROMPTS_POR_FASE.md` estão em `E:\documentos\projetos\` — fora do diretório autorizado `E:\documentos\projetos\PDI`. O lote restringe o acesso ao projeto. |
| **Verificado** | Os **5** hashes internos (`apdf.md`, `anti-surto.md`, `ciclo-apdf.md`, `CTR-03`, `CTR-05`) recalculam e conferem: 5/5 (V-06). |
| **Consequência** | Não se afirma nem se nega a exatidão dos três hashes externos. `L-07` permanece como lacuna de proveniência. |

#### `G1-16` — Conformidade com `APDF(1).md`

| Campo | Conteúdo |
|---|---|
| **Estado** | **NOT_VERIFIED** |
| **Motivo** | A fonte original não está acessível no repositório nem foi fornecida. |
| **Consequência** | Nada neste pacote — nem na matriz, nem na candidata, nem nesta entrega — afirma ou nega conformidade com `APDF(1).md`. `L-01` permanece. |

---

## 5. Reconciliação `DEC-009` / `DEC-010`

### 5.1 O que foi feito

`temp/ERRATA_DEC009_DEC010_CANDIDATA.md` (170 linhas) propõe **três adendos** ao registro, em campo `Adendo`, sem editar uma linha do texto original:

| Adendo | Objeto | Efeito |
|---|---|---|
| §5.1 | Conteúdo material do patch descrito em `DEC-009` | Declara que o Contexto descrevia a **cópia candidata examinada**, não a versão promovida; lista o que `DEC-010` diferiu; preserva G0, a promoção da `1.0.1`, a baseline `v0.2.1` e a Fase B como válidos. |
| §5.2 | Premissa de conformidade dos 27 artefatos | Separa a data da decisão da verificação atual; não valida retroativamente. |
| §5.3 | Propostas não normativas e versão vigente | Registra `PROP-01`…`PROP-03`/`B-01` na `1.0.1` e `PROP-04` na candidata. |

### 5.2 O que foi rejeitado e por quê

| Alternativa | Motivo da rejeição |
|---|---|
| Reescrever o Contexto de `DEC-009` | Falsificaria a cronologia: apagaria o que foi efetivamente examinado antes de `DEC-010`. Vedado pelo lote e pelo `AGENTS.md`. |
| Marcar `DEC-009` como `SUPERSEDED` | A decisão continua válida em seus efeitos (G0, promoção, baseline, Fase B). Só a **descrição de conteúdo** estava imprecisa. |
| Corrigir apenas no `CHANGELOG` | O erro está no registro de decisões; corrigir em outro artefato fragmentaria a rastreabilidade. |
| Não fazer nada | Deixaria o registro afirmando conteúdo ausente, contra `GOV-DOC-001`. |

### 5.3 Coerência de `DEC-010` com os artefatos

Verificada por leitura integral: Anexo C.1, Anexo C.2, `L-08`, `CHANGELOG.md` (L17) e `README.md` reproduzem o mesmo recorte de seis correções aplicadas e cinco diferidas. **Nenhuma divergência encontrada.** O risco residual é o já registrado em `G1-10`: leitura não temporal de `DEC-009`.

---

## 6. Classificação das correções

### 6.1 O que pode ser patch editorial

| Correção | Natureza | Por que não exige decisão normativa |
|---|---|---|
| `C-12` | Registro | Ajusta a descrição de `C-10` ao conteúdo real; não altera regra, fase, gate ou critério. |
| `C-13` | Consistência | Atualiza referência cruzada para incluir item existente. |
| Envelope (cabeçalho, C.2, C.4) | Identidade do candidato | Existe porque o arquivo é cópia em `temp/`, não baseline. |

**Ressalva.** "Pode ser patch editorial" descreve a **natureza** da mudança, não autoriza aplicá-la. Toda edição em `docs/` continua dependendo de decisão e de atualização do manifesto.

### 6.2 O que exige decisão normativa

| Correção | O que muda | Por que exige decisão |
|---|---|---|
| `C-01` | Acrescenta campo obrigatório ao checkpoint | Cria obrigação nova; altera o conjunto de campos. |
| `C-05` | Acrescenta campo obrigatório ao gate | Idem. |
| `C-06` | Cria seção normativa (§15.5) | Cria controle novo e procedimento de parada. |
| `C-07` | Acrescenta dois itens e uma tabela de correspondência | Altera conteúdo mínimo do handoff. |
| `C-11` | Muda o conjunto de valores de `decision` e a semântica de `REABERTO` | Altera o mecanismo de gate; escolha entre três modelos. |
| `PROP-04` | Emendaria `CA-APDF-01` na §17 | Critério de aceite aprovado — vedado sem decisão própria. |

### 6.3 Limite da candidata

A candidata `1.1.0` **não é versão vigente nem autorizada**. Permanece `PENDING_APPROVAL`, fora do manifesto. O Anexo C.4 (L795–L802) estabelece que, em conflito, prevalece a `1.0.1`. Nenhuma das cinco correções normativas produz efeito enquanto não houver promoção.

---

## 7. Decisões exigidas do proprietário

Nenhuma destas decisões foi tomada, sugerida como aprovada ou antecipada por este executor.

| # | Decisão | Objeto | Consequência de não decidir |
|---|---|---|---|
| **D-1** | Promover ou não a `1.1.0` | `temp/APDF_V1_1_0_CANDIDATA.md` | As cinco correções normativas continuam sem efeito; `L-08` permanece aberta. |
| **D-2** | Escolher o modelo de `REABERTO`: (a) estado persistente com retorno a `PENDENTE`; (b) deliberação direta; (c) tratar como evento | §7.1, §7.2, §7.3 | Persiste a ambiguidade entre §7.3 e §9/§10; a Fase B codificaria estados divergentes. |
| **D-3** | Escolher a alternativa de `PROP-04`: (a) manter critério e leitura de §6 + `L-09`; (b) emendar `CA-APDF-01`; (c) remover a explicação de §6 | §17, §6 | Divergência residual entre §6 e §17 permanece. |
| **D-4** | Aceitar `C-12` e `C-13` (editoriais) e decidir se entram na `1.1.0` ou em correção própria da `1.0.1` | Anexo C.1, §16.4, C.3 | Registro da versão vigente continua descrevendo banner inexistente (`L-10`). |
| **D-5** | Autorizar os três adendos da errata no `registro-de-decisoes.md` | `DEC-009`, `DEC-010` | Registro permanece afirmando conteúdo que não foi promovido. |
| **D-6** | Definir revisor independente | Todo o pacote | `L-05` permanece: o executor não é autoridade de aceite da própria entrega. |

**Se D-1 for negativa**, `C-01`, `C-05`, `C-06`, `C-07` e `C-11` devem ser retirados da candidata, que perde a razão de existir como `1.1.0`; `C-12`/`C-13` poderiam migrar para uma correção editorial isolada.

**Se D-2 escolher (b) ou (c)**, o texto de §7.2/§7.3 (e, em (c), de §9 e §10) precisa ser redigido de novo — a candidata atual materializa apenas (a).

---

## 8. Validações executadas

| # | Verificação | Comando / método | Resultado |
|---|---|---|---|
| V-01 | Commit analisado | `git rev-parse HEAD main origin/main` | `bc457538209491d52fe128d5184117d547906d3a` nos três |
| V-02 | Escopo protegido | `git status --porcelain -- docs README.md CHANGELOG.md MANIFESTO-SHA256.md AGENTS.md specs tests` | saída vazia |
| V-03 | Manifesto | Parsing das 27 linhas `` | `path` | `hash` `` + `Get-FileHash` | **27/27 OK**, 0 divergências, 0 ausentes |
| V-04 | Integridade da v1.0.1 | `Get-Content` / `Get-FileHash` / `Get-Item` | 743 linhas, 44.514 bytes, `7AE2D87B…8FBCEF` |
| V-05 | Integridade da candidata | idem | 813 linhas, 55.805 bytes, `3A91DC61…FA00B1D` |
| V-06 | Hashes internos do Anexo A | Recálculo dos 5 arquivos internos | 5/5 conferem |
| V-07 | Métrica do diff | `git diff --no-index --numstat` | `111 41` |
| V-08 | Hunks | `git diff --no-index --unified=0 \| Select-String '^@@'` | 25 |
| V-09 | Invariância da §17 | Extração do bloco nas três versões + SHA-256 | 19 linhas, 1.035 caracteres, `96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34` nas três; comparação `-ceq` = `True` |
| V-10 | Presença dos campos do `CTR-03` | Contagem em §8.4 e §15.2 | §15.2: 10/10; §8.4: 9/10 (falta `dependencies`) |
| V-11 | Coerência `DEC-010` × artefatos | Leitura integral de C.1, C.2, `L-08`, `CHANGELOG`, `README` | Nenhuma divergência |
| V-12 | Ocorrências de `DH-` | `Select-String` em `docs/**/*.md` e `temp/*.md` | 0 definições; 2 menções meta |
| V-13 | Ocorrências de `CA-G0-` | `Select-String` em `docs/**/*.md` | Enumerados em `DEC-008` (registro L58–L63) |
| V-14 | Identificadores de estado dos 17 artefatos do lote | Leitura desta entrega | Todos dentro do vocabulário permitido |
| V-15 | Reconferência final do manifesto | Repetição de V-03 após a redação dos cinco artefatos | **27/27 OK** novamente; nenhuma entrada do escopo protegido foi tocada |
| V-16 | Extração de §17 com escopo restrito | Bloco L614–L632 (v1.0.1) e L668–L686 (candidata), delimitado pelo separador seguinte | Reproduz exatamente 19 linhas / 1.035 caracteres / `96BCA246…F9B34`; `-ceq` = `True`. Delimitar por "próximo `##`" captura os anexos e produz hash falso — a extração precisa ser fechada no separador imediatamente após a tabela |

**Não executado.** Nenhum teste automatizado da APDF, nenhum lint de Markdown, nenhuma renderização, nenhuma validação de link externo, nenhuma revisão independente, nenhuma execução de harness. Motivo: a APDF não define suíte executável; o lote proíbe instalação de dependências; e a revisão independente exige segundo revisor (`L-05`).

---

## 9. Limitações

1. **Sem validação externa.** `APDF(1).md` não foi lida (`L-01`, `G1-16`). Nenhuma conformidade com a fonte original é afirmada.
2. **Sem implementação.** As alterações são texto. Nenhum harness aplica checkpoint, gate ou correspondência de handoff.
3. **Sem revisão independente.** A conferência foi feita pelo executor (`L-05`). Este documento não é aceite.
4. **Numeração volátil.** As linhas citadas valem para os arquivos com os hashes de §2.2. Qualquer edição posterior invalida as referências.
5. **Escolha pendente em `C-11`.** A candidata materializa o modelo (a); (b) e (c) podem alterar o esforço de promoção.
6. **Três hashes externos** permanecem `NOT_VERIFIED` por limite de escopo de acesso (`G1-15`).
7. **Documentos históricos não atualizados.** Os relatórios anteriores medem 775/674 linhas e não foram editados (`G1-11`); permanecem válidos como registro do que foi examinado, não como evidência da versão vigente.
8. **Mojibake no terminal.** A renderização de acentos no console desta sessão é imperfeita; os arquivos foram lidos e escritos em UTF-8 e a conferência de conteúdo foi feita sobre o texto, não sobre a saída do console.
9. **Nenhuma decisão de §7 foi tomada.** D-1 a D-6 estão integralmente abertas.

---

## 10. Encerramento

### 10.1 Estado por artefato

| Artefato | Estado | Significado |
|---|---|---|
| `temp/ENTREGA_G1_DEEPSEEK_APDF.md` | `DONE` | Entrega concluída como relatório. |
| `temp/APDF_V1_1_0_CANDIDATA.md` | `PROPOSED` | Texto completo; efeito depende de D-1 e D-2. |
| `temp/ERRATA_DEC009_DEC010_CANDIDATA.md` | `PROPOSED` | Errata redigida; aplicação depende de D-5. |
| `temp/MATRIZ_CONFORMIDADE_APDF_G1.md` | `DONE` | Matriz concluída como análise textual. |
| `temp/REGISTRO_ALTERACOES_APDF_G1.md` | `DONE` | Registro concluído. |
| Promoção da `1.1.0` | `BLOCKED` | Depende de decisão do proprietário. |
| Aplicação da errata | `BLOCKED` | Depende de decisão do proprietário. |
| Revisão independente | `NOT_VERIFIED` | Não executada — exige segundo revisor. |

### 10.2 Contagem dos achados

| Estado | Quantidade | IDs |
|---|---:|---|
| `CONFIRMADO` | 9 | `G1-01`, `G1-02`, `G1-03`, `G1-04`, `G1-05`, `G1-06`, `G1-07`, `G1-11`, `G1-14` |
| `PARCIAL` | 4 | `G1-08`, `G1-09`, `G1-10`, `G1-12` |
| `NÃO CONFIRMADO` | 1 | `G1-13` |
| `NOT_VERIFIED` | 2 | `G1-15`, `G1-16` |
| **Total** | **16** | |

### 10.3 Declaração final

- **Commit analisado:** `bc457538209491d52fe128d5184117d547906d3a`.
- **Norma vigente:** APDF v1.0.1, `APPROVED`, 743 linhas, `7AE2D87B…8FBCEF`.
- **Correções candidatas:** completas em `temp/`, `PENDING_APPROVAL`, fora do manifesto.
- **Baseline:** intacta; manifesto 27/27; `git status` vazio no escopo protegido.
- **§17:** byte a byte idêntica nas três versões.
- **Promoção:** não realizada e não recomendada por este executor — a decisão é do proprietário, com revisão independente.
- **Gate:** nenhum aprovado, reaberto ou encerrado.
- **Commit:** nenhum.

**Critério de reabertura deste lote.** Qualquer uma destas condições obriga nova rodada: edição da candidata (invalida hashes e linhas), decisão D-1 a D-6, alteração de `DEC-009`/`DEC-010` por outro caminho que não a errata, mudança no commit-base, ou revisão independente que conteste um achado.

**O que este documento não é.** Não é aprovação. Não é aceite de entrega. Não é promoção de versão. Não é parecer de conformidade com a fonte original.
