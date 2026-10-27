# Registro de Alterações — APDF v1.0.1 → candidata `1.1.0`

**Missão:** `LOTE_G1_DEEPSEEK_APDF_CORRECOES`  
**Commit-base analisado:** `bc457538209491d52fe128d5184117d547906d3a` (`main`, `origin/main`, 2026-10-27)  
**Versão de origem (vigente):** `docs/01-metodologia/APDF_V01.md` — v1.0.1, 743 linhas, 44.514 bytes, SHA-256 `7AE2D87B9709D05A8EF6AE2359D34DFA789E75E586A171524FA3C6EA268FBCEF`  
**Versão comparada (candidata):** `temp/APDF_V1_1_0_CANDIDATA.md` — 813 linhas, 55.805 bytes, SHA-256 `3A91DC6165EF32EB0BFFD5F3F3A5DC57F767C878AA67E1E524EE975C4FA00B1D`, estado `PENDING_APPROVAL`  
**Referência de escopo:** `DEC-010` (`docs/00-governanca/registro-de-decisoes.md` L100–L125) — `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10` incorporadas na `1.0.1`; `C-01`, `C-05`, `C-06`, `C-07` e `C-11` diferidas para a `1.1.0`.  
**Data da análise:** 2026-10-27  
**Estado do artefato:** `DONE` (registro concluído). Não é aprovação, não promove versão, não substitui revisão independente.

---

## 1. Escopo e método

Este registro descreve **todas** as diferenças de texto entre a v1.0.1 vigente e a candidata `1.1.0` residente em `temp/`, na forma *antes → depois*, com motivo, origem, natureza, impacto, aprovação exigida e reversão.

Método executado:

1. comparação byte a byte dos dois arquivos (`git diff --no-index --numstat`): **+111 −41**, **25 hunks**, saldo **+70 linhas**;
2. leitura integral de cada bloco alterado nos dois arquivos, com conferência de linha citada;
3. verificação de que a seção 17 é **byte a byte idêntica** nas duas versões (bloco de 19 linhas, 1.035 caracteres, SHA-256 `96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34` nas duas);
4. verificação de que nenhum arquivo normativo foi tocado: `git status --porcelain` vazio para `docs/`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`, `AGENTS.md`, `specs/` e `tests/`;
5. recálculo do manifesto: **27/27 conferidos, 0 divergências, 0 ausentes**.

**Distinções mantidas em todo o documento.** *Especificado* é o que o texto enuncia; *implementado* é o que existe em arquivo ou código; *executado* é o que rodou de fato; *validado* é o que tem evidência vinculada à versão avaliada. Nenhuma linha deste registro declara a `1.1.0` aprovada, promovida, implementada ou validada.

### 1.1 Vocabulário de estado das alterações

| Estado | Significado |
|---|---|
| `APLICADA NA CANDIDATA` | O texto existe em `temp/APDF_V1_1_0_CANDIDATA.md` e foi conferido nesta rodada; não produz efeito normativo. |
| `JÁ APLICADA NA 1.0.1` | O texto já está no arquivo vigente por força de `DEC-010`; a candidata apenas o preserva (ou corrige o registro, quando indicado). |
| `NÃO APLICADA` | O texto não existe em nenhuma versão; permanece proposta dependente de decisão. |

### 1.2 Natureza das alterações

| Natureza | Critério | Itens |
|---|---|---|
| **Normativa** | Acrescenta ou altera campo obrigatório, seção normativa, conteúdo mínimo de handoff ou semântica de estado. Exige decisão própria e versão nova. | `C-01`, `C-05`, `C-06`, `C-07`, `C-11` |
| **Editorial de registro** | Corrige descrição de conteúdo que não corresponde ao arquivo real, sem alterar norma. | `C-12` |
| **Consistência interna** | Atualiza referência cruzada para incluir item existente. | `C-13` |
| **Envelope do candidato** | Identidade do documento candidato (versão, estado, banner, Anexo C.2/C.4). Não altera norma; decorre de o arquivo não ser a baseline. | cabeçalho, `C.2`, `C.4` |
| **Proposta não aplicada** | Registrada para decisão, sem texto incorporado. | `PROP-04` |

---

## 2. Resumo das alterações

| ID | Seção afetada | Natureza | Estado | v1.0.1 (linhas) | Candidata (linhas) |
|---|---|---|---|---|---|
| **Envelope** | Cabeçalho — versão, estado, histórico, banner | Envelope | `APLICADA NA CANDIDATA` | L5, L6, L11, L13 | L5, L6, L11, L13 |
| **C-01** | §8.4 Checkpoint | Normativa | `APLICADA NA CANDIDATA` | L373–L390 | L392–L410 |
| **C-05** | §7.1 Conteúdo obrigatório do gate | Normativa | `APLICADA NA CANDIDATA` | L312–L323 | L312–L328 |
| **C-06** | §15.5 Loops e recuperação (seção nova) | Normativa | `APLICADA NA CANDIDATA` | ausente | L611–L623 |
| **C-07** | §11.2 e §11.4 (seção nova) | Normativa | `APLICADA NA CANDIDATA` | L465–L474; ausente | L485–L496; L502–L514 |
| **C-11** | §7.1, §7.2, §7.3 | Normativa | `APLICADA NA CANDIDATA` | L319, L328–L331, L335 | L323, L332–L337, L341–L354 |
| **C-12** | Anexo C.1 (linha `C-10`) | Editorial de registro | `APLICADA NA CANDIDATA` | L703 | L748, L757 |
| **C-13** | §16.4 e Anexo C.3 (referência a propostas) | Consistência interna | `APLICADA NA CANDIDATA` | L610, L727 | L662, L781 |
| **Envelope** | Anexo C.2 (rótulo e coluna) e C.4 (precedência) | Envelope | `APLICADA NA CANDIDATA` | L711–L715, L738–L743 | L765–L769, L795–L802 |
| **PROP-04** | §6, §16.3 (`L-09`), Anexo C.3 | Proposta | `NÃO APLICADA` | ausente | L160, L655, L788, L793 |

**Leitura do resumo.** Cinco alterações são normativas e estão isoladas na candidata — nenhuma delas toca a v1.0.1 publicada. Duas são correções de registro e consistência que o `DEC-010` não cobria e que, por isso, só existem na candidata. Nenhuma alteração modifica a seção 17, a ordem das fases, os critérios de aprovação de gate existentes ou decisões registradas.

---

## 3. Alterações normativas

### 3.1 `C-01` — `dependencies` no checkpoint (§8.4)

**Achado de origem.** `F-01` da revisão crítica: o `CTR-03` enumera dez campos de contexto operacional, inclusive `dependencies` (`docs/02-contratos/contrato-03-harness.md` L19). A §15.2 da APDF já listava os dez (v1.0.1 L558), mas o **checkpoint** da §8.4 reproduzia dezesseis campos e omitia `dependencies`, substituindo o conjunto do contrato.

**Antes (v1.0.1, §8.4 L373–L390).** Tabela de três colunas — `Campo`, `Obrigatório`, `Origem` — com 16 linhas de campo: `task_id`, `objective`, `apdf_phase`, `approved_baseline`, `allowed_actions`, `prohibited_actions`, `acceptance_criteria`, `execution_state`, `evidence_refs`, `scope_classification`, `trigger`, `impact`, `affected_artifacts`, `proposed_option`, `authorizer`, `timestamp`. Não há `dependencies`.

**Depois (candidata L392–L410).** Tabela de quatro colunas — `Campo`, `Obrigatório`, `Origem`, `Valores admitidos` — com **17 linhas de campo**: as 16 anteriores mais `dependencies`, inserida entre `acceptance_criteria` e `execution_state` (L401), com `Origem` = `CTR-03` e valores admitidos "Dependências da tarefa e artefatos externos exigidos".

| Campo | v1.0.1 | Candidata | Observação |
|---|---|---|---|
| `dependencies` | ausente | L401, obrigatório, origem `CTR-03` | Correção central de `C-01` |
| `execution_state` | L382 | L402 | Deslocado por inserção |
| `evidence_refs` | L383 | L403 | Deslocado por inserção |
| `scope_classification` | Origem "DENTRO, ESCLARECIMENTO…" | Origem `§8.5`; valores na 4ª coluna | Origem corrigida: a classificação é definida em §8.5, não no contrato |
| `trigger` | Origem "T-01 a T-10" | Origem `§8.2`; valores "`T-01` a `T-10`" | Origem corrigida |
| `impact`, `affected_artifacts`, `proposed_option` | Origem descritiva | Origem `§8.5` / `§9` | Origem corrigida |
| `authorizer` | "Autoridade que aprovou" | Origem `§9, D-03`; "Autoridade que aprovou a reabertura" | Precisão de origem e semântica |
| `timestamp` | Origem "Data e hora do registro" | Origem `§8.5`; valor "Data e hora do registro" | Origem corrigida |

**Motivo.** Alinhar o checkpoint ao `CTR-03` e tornar verificável o critério `CA-APDF-07` ("as fichas de checkpoint usam os campos do `CTR-03`, sem substituí-los"), hoje `PARCIAL` na v1.0.1.

**Impacto e compatibilidade.** A alteração **acrescenta** um campo obrigatório e **não remove** nenhum dos 16 existentes: checkpoints já registrados continuam legíveis, mas passam a ser incompletos se não trouxerem `dependencies`. A conversão para quatro colunas não cria obrigação nova — apenas torna explícito o valor esperado de cada campo. Não há dependência de implementação: o campo é textual. `L-08` registra que a lacuna só se encerra com aprovação e promoção; a candidata a encerra **no texto**, não na baseline.

**Aprovação exigida.** Decisão do Proprietário Humano criando a `1.1.0` (`GOV-AUTH-001`), com análise de impacto, revisão independente e atualização de `MANIFESTO-SHA256.md`, `CHANGELOG.md` e artefatos dependentes. Nenhuma dessas etapas foi executada.

**Reversão.** Descartar `temp/APDF_V1_1_0_CANDIDATA.md` ou restaurar o bloco L392–L410 pelo texto de v1.0.1 L373–L390. Como a candidata é cópia integral independente, a reversão não afeta a baseline.

---

### 3.2 `C-05` — Campo de justificativa do gate (§7.1)

**Achado de origem.** `F-06`: o `CTR-01`, requisito 5, exige que a aprovação identifique artefato/versão, decisor, data, decisão e **justificativa** (`contrato-01-governanca.md` L23). A §7.1 não tinha campo de justificativa — o `summary` descreve o produzido, não o fundamento da decisão.

**Antes (v1.0.1, L312–L323).** Dez campos: `gate_id`, `artifacts`, `summary`, `open_issues`, `risks`, `decision`, `conditions`, `approver`, `date`, `evidence_refs`. A linha `decision` (L319) admitia três valores:

> `| decision | APROVADO, REJEITADO ou REABERTO. |`

**Depois (candidata L323–L324).** Onze campos, com `justification` inserido imediatamente após `decision`:

> `| justification | Justificativa da decisão, referida à evidência e ao critério aplicado (CTR-01, requisito 5). |`

A linha `decision` passa a admitir dois valores (ver também `C-11`):

> `| decision | APROVADO ou REJEITADO. REABERTO é estado do gate (§7.3), não valor deste campo. |`

**Motivo.** Fechar a lacuna `R5` do `CTR-01` e remover a ambiguidade entre valor de campo e estado do gate.

**Impacto e compatibilidade.** Campo novo obrigatório em todo gate futuro; gates antigos não o possuem e passam a ser incompletos, sem invalidação retroativa — o registro de decisões é artefato de governança separado e não é reescrito por este documento. A restrição de `decision` é detalhada em `C-11`.

**Aprovação exigida.** A mesma da `1.1.0` (§3.1).

**Reversão.** Remover L324 e restaurar L323 pelo texto de v1.0.1 L319.

---

### 3.3 `C-06` — Loops e recuperação (§15.5, seção nova)

**Achado de origem.** `F-07`: o `CTR-03` exige detecção de repetição sem progresso, reaplicação sem hipótese, oscilação, regressão e consumo anormal, além de interrupção, preservação de estado e escalonamento (`contrato-03-harness.md` L43–L45). A v1.0.1 não tinha seção correspondente: o Anti-Surto (§8) trata desvio de escopo, não repetição improdutiva. Efeito: `NÃO CONFORME` em `L1`, `L2`, `CA-03-05`, `CA-03-06` e `R8` do `CTR-04`.

**Antes (v1.0.1).** Inexistente. A §15.4 (L571–L573) encerra o capítulo 15 e é seguida do separador da L575.

**Depois (candidata L611–L623).** Seção nova, íntegra:

> ### 15.5 Loops e recuperação
>
> A condução observa o `CTR-03`: detectar repetição sem progresso, reaplicação da mesma correção sem nova hipótese, oscilação, regressão e consumo anormal de recursos. Limites de tempo, iterações, tokens e chamadas são configuráveis por tarefa e por risco, coerentes com o checkpoint de §8.4.
>
> Ao atingir um limite:
>
> 1. interromper a ação;
> 2. preservar estado, diffs, logs e evidências;
> 3. registrar tentativas e resultados;
> 4. exigir hipótese diferente e justificada para nova tentativa;
> 5. escalar para o proprietário humano se não houver recuperação segura.
>
> Interromper e preservar não equivale a concluir: o resultado deve ser declarado não concluído, com motivo e ponto de retomada. Repetir a mesma tentativa sobre o mesmo estado é vedado, e a interrupção não autoriza alterar baseline, critérios de aceite ou testes para contornar o bloqueio.

**Motivo.** Criar o controle que hoje só existe no contrato, sem duplicar o Anti-Surto: §8 continua tratando `EXPANSAO`; §15.5 trata repetição, oscilação e limite de recursos.

**Impacto e compatibilidade.** Seção normativa nova. Não altera fases, gates ou critérios da seção 17. A redação remete ao `CTR-03` em vez de fixar números de limite — os limites são "configuráveis por tarefa e por risco", o que evita conflito com configuração de harness ainda não implementada (`L-03`, `L-04`). A cláusula final preserva a proibição de alterar critérios aprovados para destravar execução.

**Aprovação exigida.** A mesma da `1.1.0` (§3.1).

**Reversão.** Remover L611–L623 e o separador excedente.

---

### 3.4 `C-07` — Correspondência do handoff (§11.2 e §11.4)

**Achado de origem.** `F-09`: a §11.2 listava dez itens e a §11.1 exigia cinco confirmações, sem vínculo verificável entre as duas listas; faltavam `dependências` e `modelo de governança` no conteúdo mínimo. Efeito: `CA-APDF-08` `PARCIAL`.

**Antes (v1.0.1, L465–L474).** Dez itens: baseline aprovada e versão; ADR Registry e Architecture Baseline; roadmap, waves, epics e features; pacotes de implementação por wave; critérios de aceite e Caderno de Testes; riscos, mitigações e riscos aceitos; permissões e restrições de execução; questões abertas e responsáveis; referências de evidência; próximo passo autorizado.

**Depois (candidata L485–L496).** Doze itens — os dez anteriores mais:

- L489: "dependências entre pacotes, artefatos externos e pré-condições de execução";
- L492: "modelo de governança aplicável à execução".

E nova §11.4 (L502–L514) fixando a correspondência mínima:

| Confirmação (§11.1) | Itens de conteúdo que a comprovam (§11.2) |
|---|---|
| 1. Domínio compreendido | Baseline aprovada e versão; ADR Registry e Architecture Baseline. |
| 2. Arquitetura aprovada | ADR Registry e Architecture Baseline; critérios de aceite e Caderno de Testes. |
| 3. Riscos conhecidos e mitigados ou aceitos | Riscos, mitigações e riscos aceitos. |
| 4. Governança definida | Modelo de governança aplicável à execução; permissões e restrições de execução. |
| 5. Execução planejada | Roadmap, waves, epics e features; pacotes de implementação por wave; dependências; questões abertas e responsáveis; próximo passo autorizado. |

A §11.4 acrescenta ainda a regra de suficiência (L504) e a de transversalidade das referências de evidência (L514).

**Motivo.** Tornar `CA-APDF-08` verificável: cada uma das cinco confirmações passa a ter ao menos um item correspondente, e nenhuma confirmação pode ser declarada sem item.

**Impacto e compatibilidade.** Acrescenta dois itens ao conteúdo mínimo e cria uma seção de correspondência. Handoffs anteriores continuam legíveis, mas incompletos frente ao novo mínimo. A tabela não cria requisito novo de conteúdo — apenas vincula listas já existentes; a única exigência nova é a prova de correspondência.

**Aprovação exigida.** A mesma da `1.1.0` (§3.1).

**Reversão.** Remover L489 e L492; remover §11.4 (L502–L514) e o separador excedente.

---

### 3.5 `C-11` — Semântica de `REABERTO` (§7.1, §7.2, §7.3)

**Achado de origem.** `F-14`: a §7.3 apresentava `PENDENTE → REABERTO` como transição de abertura, enquanto a §9 (D-03) e a §10 (`CF-03`) reabrem gate **já decidido**. A mesma contradição aparecia na §7.1, que admitia `REABERTO` como valor do campo `decision`.

**Antes (v1.0.1).**

- §7.1 L319: `decision` = `APROVADO`, `REJEITADO` ou `REABERTO`.
- §7.2 L328–L331: quatro regras; nenhuma trata do bloqueio durante a reabertura.
- §7.3 L335: linha única — `PENDENTE → APROVADO | REJEITADO | REABERTO`.

**Depois (candidata).**

- §7.1 L323: `decision` = `APROVADO` ou `REJEITADO`; `REABERTO` é estado do gate (§7.3), não valor do campo.
- §7.2 L336: nova regra — gate em `REABERTO` bloqueia o avanço até retornar a `PENDENTE` e receber nova decisão.
- §7.3 L341–L343: transições explícitas:

> `PENDENTE → APROVADO | REJEITADO`
> `APROVADO | REJEITADO → REABERTO` (somente por D-03, §9)
> `REABERTO → PENDENTE` (somente após concluídas a análise de impacto e a autorização de D-03)

- §7.3 L345–L350: tabela de quatro estados com significado e transições admitidas.
- §7.3 L352: regra de invalidade — reabertura sem as etapas de D-03 é inválida e mantém o gate em `APROVADO` ou `REJEITADO`.
- §7.3 L354: nota de decisão que declara o modelo adotado e registra as alternativas (b) e (c), não redigidas.

**Modelo adotado e alternativas.** A candidata adota um **único** modelo coerente: `REABERTO` é estado persistente, alcançado somente a partir de gate decidido, com avanço bloqueado e saída para `PENDENTE` apenas após o procedimento completo de D-03. Alternativas registradas para deliberação: **(b)** deliberação direta de `REABERTO` para `APROVADO`/`REJEITADO`, sem retorno a `PENDENTE`, exigindo que a análise de impacto preceda a reabertura; **(c)** tratar `REABERTO` como evento e não como estado, o que obrigaria a reescrever §7.2, §9 e §10 e reduziria os estados a `PENDENTE`, `APROVADO` e `REJEITADO`. Somente (a) está redigida; (b) e (c) exigiriam texto próprio.

**Motivo.** Eliminar a contradição entre §7.3 e §9/§10 e impedir que uma reabertura registrada sem análise de impacto seja aceita como avanço.

**Impacto e compatibilidade.** É a alteração de maior impacto normativo do conjunto: muda o conjunto de valores de `decision`, acrescenta bloqueio em `REABERTO` e cria uma condição de saída verificável. Gates já encerrados não são reescritos; gates em curso passam a não poder registrar `REABERTO` como decisão. A escolha entre (a), (b) e (c) é decisão do proprietário, não do executor — a candidata apenas materializa (a) para tornar a discussão concreta.

**Aprovação exigida.** A mesma da `1.1.0` (§3.1), com decisão explícita sobre o modelo (a), (b) ou (c).

**Reversão.** Restaurar L323, L336 e L341–L354 pelo texto de v1.0.1 L319, L328–L331 e L335. Reverter apenas parte do bloco reintroduz a contradição; a reversão deve ser integral.

---

## 4. Alterações editoriais e de consistência

### 4.1 `C-12` — Registro de `C-10` no Anexo C.1

**Achado de origem.** A linha `C-10` do Anexo C.1 da v1.0.1 (L703) declara aplicada uma correção que inclui "Banner de não normatividade; nota de metadados das fontes…". O banner **não existe** no arquivo publicado: a v1.0.1 não contém aviso de não normatividade no cabeçalho. O registro descreve, portanto, conteúdo ausente. Não é falha de implementação de `C-10` no que ele efetivamente fez (nota de metadados, `L-07`, gatilho `.tpm/` em `AD-10`, regra de versão em §16.4); é falha de **registro**.

**Antes (v1.0.1 L703, transcrição abreviada).**

> `| C-10 | … | Banner de não normatividade; nota de metadados das fontes; L-07; gatilho .tpm/ explicitado em AD-10; regra de versão da 1.0.1 em §16.4 | … | Correção editorial com efeito de governança | Aplicada |`

**Depois (candidata L757).**

> `| C-10 | … | Nota de metadados das fontes; L-07; gatilho .tpm/ explicitado em AD-10; regra de versão da 1.0.1 em §16.4. O "banner de não normatividade" originalmente atribuído a esta correção não existe no arquivo promovido — ver C-12 | … | Correção editorial com efeito de governança | Aplicada, exceto o banner — registro corrigido por C-12 |`

Complementos: o lead do Anexo C.1 (candidata L748) declara que o registro é o da `1.0.1` e que a divergência é corrigida por `C-12`; a §16.3 ganha `L-10` (candidata L656) descrevendo a lacuna e seu impacto.

**Motivo.** Não deixar o registro afirmar mais do que o arquivo contém. `DEC-010` fixou o escopo da `1.0.1` e não cobria esta correção de registro; por isso ela é declarada como `C-12`, e não como execução de `DEC-010`.

**Impacto e compatibilidade.** Nenhum efeito normativo. A correção **não reescreve** a v1.0.1 publicada: o Anexo C.1 vigente continua com a descrição incorreta até decisão sobre a candidata, e isso está declarado como `L-10`, não como correção retroativa. Fecha `CA-05-08` no texto da candidata.

**Aprovação exigida.** A mesma da `1.1.0` (§3.1). Se o proprietário preferir corrigir o registro na própria `1.0.1`, isso exige decisão e versão próprias, fora do escopo deste lote.

**Reversão.** Restaurar L757 e L748 pelo texto de v1.0.1 L703 e L694; remover `L-10`.

---

### 4.2 `C-13` — Referência a propostas pendentes

**Achado de origem.** `PROP-04` foi criada nesta rodada, mas duas passagens continuavam a encerrar a série em `PROP-03`. Referência incompleta em documento que declara propostas pendentes.

**Antes.** v1.0.1 §16.4 L610: "(`PROP-01` a `PROP-03`)". v1.0.1 Anexo C.3, lead L727: "Os identificadores são `PROP-01` a `PROP-03`".

**Depois.** Candidata §16.4 L662: "(`PROP-01` a `PROP-04`)". Candidata Anexo C.3, lead L781: "Os identificadores são `PROP-01` a `PROP-04`".

**Motivo.** Consistência interna: a série passa a incluir a proposta efetivamente registrada.

**Impacto e compatibilidade.** Nenhum efeito normativo; altera apenas a referência. Não altera a lista de propostas em si (a linha `PROP-04` é objeto do item 6).

**Aprovação exigida.** A mesma da `1.1.0` (§3.1), ou decisão editorial específica, se o proprietário separar correções de registro da decisão normativa.

**Reversão.** Restaurar as duas ocorrências para `PROP-01` a `PROP-03`.

---

## 5. Envelope do documento candidato (não numerado)

Estas alterações não são correções do padrão: existem porque o arquivo é uma **candidata em `temp/`**, não a baseline. São declaradas para que nenhuma diferença fique sem explicação.

| Bloco | v1.0.1 | Candidata | Motivo |
|---|---|---|---|
| `Versão` (L5) | `1.0.1 (APDF_V01)` | `1.1.0 (candidata - não promovida)` | Identificar a versão proposta sem sugerir vigência |
| `Estado` (L6) | `APPROVED - patch corretivo 1.0.1 promovido em DEC-009…` | `PENDING_APPROVAL - candidata; a versão normativa vigente continua sendo a 1.0.1…` | Impedir leitura de aprovação |
| `Histórico de aprovação` (L11) | DEC-007 e DEC-009/DEC-010 | Acrescenta o que a candidata incorpora e declara explicitamente que **não foi aprovada** | Rastreabilidade sem falsificar cronologia |
| Banner (L13) | ausente | "Documento candidato - não normativo…" | Evitar que cópia em `temp/` seja confundida com baseline |
| Anexo C.2 (L765–L769) | "Correções diferidas para a `1.1.0`", coluna "Bloqueio" | "Correções diferidas que esta candidata incorpora", coluna "Decisão exigida" | Descrever o estado real: agora estão redigidas na candidata |
| Anexo C.4 (L795–L802) | Quatro regras de precedência | Seis regras, incluindo não integração ao manifesto, prevalência do corpo e prevalência da `1.0.1` em caso de conflito | Fechar ambiguidade sobre qual texto vence |

O Anexo C.4 da candidata mantém, na primeira regra, que a `1.0.1` é a versão normativa vigente, e acrescenta que a `1.1.0` não está autorizada. Nenhuma dessas linhas altera a baseline.

---

## 6. `PROP-04` — proposta registrada e **não aplicada**

**Achado de origem.** `R-01b` da validação do estado promovido: `CA-APDF-01`, na seção 17, usa o termo `elicitação` para o segundo campo das fichas, cujo rótulo varia por fase (`Elicitar`, `Formalizar`, `Definir`, `Empacotar`, `Entregar`). A §6 fixa a leitura, mas o critério não foi reescrito.

**Texto incorporado (não é a proposta; é o registro dela):**

- candidata §6 L160: nota `R-01b` explicando que o texto da seção 17 permanece literalmente inalterado, que renomear o critério seria alteração de texto normativo aprovado e que a divergência fica como `L-09`;
- candidata §16.3 L655: `L-09` descrevendo a divergência residual;
- candidata Anexo C.3 L788: `PROP-04` com três alternativas — (a) manter o critério e a leitura de §6, registrando `L-09`; (b) emendar `CA-APDF-01` para "pergunta central, ação da fase, artefatos e gate" em versão própria; (c) manter o critério e remover a explicação de §6, aceitando a leitura literal;
- candidata Anexo C.3 L793: nota declarando que a alternativa (a) é a adotada e que (b) e (c) não foram redigidas.

**Estado.** `NÃO APLICADA`. A seção 17 é byte a byte idêntica à da v1.0.1 e à da v1.0.0 (§9). Nenhuma alternativa (b) ou (c) foi redigida, porque ambas alteram texto de critério de aceite aprovado — o que este lote proíbe sem decisão.

**Aprovação exigida.** Decisão humana sobre a alternativa. Se (b) for escolhida, exige análise de impacto sobre `CA-APDF-01` e sobre o Anexo C.1 (`C-03`), que descreve a leitura atual.

**Reversão.** Remover L160, `L-09` e a linha `PROP-04`; nesse caso `C-13` perde o objeto e deve ser revertida junto.

---

## 7. Itens já aplicados na `1.0.1` (contexto, não alterados nesta candidata)

| ID | Objeto | Estado na v1.0.1 | Tratamento na candidata |
|---|---|---|---|
| `C-02` | Hashes de `apdf.md` e `ciclo-apdf.md` no Anexo A | Aplicada | Preservada sem alteração |
| `C-03` | Regra de leitura das fichas (§6) | Aplicada | Preservada; serve de base à nota `R-01b` |
| `C-04` | `AD-15` com origem `MET-CICLO-001` | Aplicada | Preservada |
| `C-08` | Fase 12 já enunciava dependências | Verificada — sem alteração | Preservada |
| `C-09` | Fase 13 já listava modelo de governança | Verificada — sem alteração | Preservada |
| `C-10` | Metadados, `L-07`, `AD-10`, versão em §16.4 | Aplicada, **exceto** o banner declarado | Registro corrigido por `C-12` |

`C-08` e `C-09` não são alterações: são verificações concluídas de que o texto já estava conforme. Permanecem registradas no Anexo C.1 para não serem reabertas como achados.

---

## 8. Métrica e distribuição do diff

| Métrica | Valor |
|---|---|
| Linhas adicionadas | 111 |
| Linhas removidas | 41 |
| Saldo | +70 (743 → 813) |
| Hunks | 25 |
| Seções do corpo tocadas | §6, §7.1, §7.2, §7.3, §8.4, §11.2, §11.4 (nova), §15.5 (nova), §16.3, §16.4 |
| Seções do Anexo tocadas | C.1, C.2, C.3, C.4, C.5 (nova) |
| Seções intocadas | §1–§5, §8.1–§8.6, §9, §10, §12, §13, §14, §15.1–§15.4, **§17**, Anexos A e B |
| Seção 17 | byte a byte idêntica (19 linhas, 1.035 caracteres, SHA-256 `96BCA246…F9B34`) |

Distribuição dos hunks por região: cabeçalho (2), §6 (1), §7 (3), §8.4 (1), §11 (3), §15 (1), §16.3 (1), §16.4 (1), Anexo C (12).

---

## 9. O que este registro não faz

1. **Não altera a baseline.** `docs/01-metodologia/APDF_V01.md` permanece com SHA-256 `7AE2D87B…8FBCEF` e 743 linhas; `git status` não mostra modificação em nenhum arquivo normativo.
2. **Não promove a `1.1.0`.** A candidata permanece `PENDING_APPROVAL`, fora do manifesto, sem decisão registrada.
3. **Não aprova gate.** Nenhum gate é homologado, reaberto ou encerrado por este documento.
4. **Não encerra `L-08`, `L-09` ou `L-10`.** As três lacunas continuam abertas; a candidata muda o texto, não o estado de aprovação.
5. **Não reescreve `DEC-009` nem `DEC-010`.** A reconciliação cronológica é objeto de `temp/ERRATA_DEC009_DEC010_CANDIDATA.md`, por adendo, sem alterar o texto original das decisões.
6. **Não substitui revisão independente** (`L-05`): o executor desta rodada não é autoridade de aceite da própria entrega.

---

## 10. Validações executadas nesta rodada

| # | Comando / verificação | Resultado | Evidência |
|---|---|---|---|
| V-01 | `git rev-parse HEAD` | `bc457538209491d52fe128d5184117d547906d3a` | Commit-base coincide com o exigido pelo lote |
| V-02 | `git status --porcelain -- docs README.md CHANGELOG.md MANIFESTO-SHA256.md AGENTS.md specs tests` | saída vazia | Nenhum artefato normativo alterado |
| V-03 | Recálculo do manifesto (27 entradas) | **27/27 OK**, 0 divergências, 0 ausentes | Manifesto v0.2.1 |
| V-04 | `git diff --no-index --numstat` v1.0.1 → candidata | `111 41` | Métrica do item 8 |
| V-05 | Contagem de hunks | 25 | Distribuição do item 8 |
| V-06 | Hash do bloco §17 nas duas versões | `96BCA246…F9B34` em ambas; `-ceq` = `True` | §17 preservada |
| V-07 | Contagem de linhas | v1.0.1 = 743; candidata = 813 | Delta +70 |
| V-08 | SHA-256 dos arquivos | v1.0.1 = `7AE2D87B…8FBCEF`; candidata = `3A91DC61…FA00B1D` | Identificação da rodada |
| V-09 | Leitura integral dos blocos alterados | Conferida linha a linha nos dois arquivos | Itens 3 a 6 |

Nenhum teste automatizado do padrão foi executado: a APDF não define suíte de testes executável, e o lote proíbe instalar dependências. As validações acima são de integridade textual e de estado do repositório.

---

## 11. Limitações

1. **Sem verificação externa.** `APDF(1).md` permanece indisponível (`L-01`); nada aqui afirma conformidade com a fonte original.
2. **Sem implementação.** As alterações são texto. Nenhum harness aplica o checkpoint, o gate ou a correspondência de handoff.
3. **Sem revisão independente.** A conferência foi feita pelo executor (`L-05`).
4. **Escolha pendente em `C-11`.** A candidata materializa o modelo (a); (b) e (c) não foram redigidos e podem alterar o esforço de promoção.
5. **Numeração volátil.** As linhas da candidata valem para o arquivo com SHA-256 `3A91DC61…FA00B1D`. Qualquer edição posterior invalida as referências.
6. **Estado do artefato.** `DONE` significa registro concluído, não correção aprovada.
