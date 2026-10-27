# Matriz de conformidade do APDF

**ID:** MAT-APDF-CONF-001
**Versão:** 1.0.0
**Data:** 2026-10-26
**Executor:** DeepSeek V4.1 Flash (agente), sessão OpenCode
**Repositório:** `1305RGP/PDI`, branch `main`, `HEAD` `205bc590a0f8063a6a47afe8e02ef029c205b650`
**Objeto avaliado:** `temp/APDF_V01_CORRIGIDA_CANDIDATA.md` — 775 linhas, 46.821 bytes, SHA-256 `21B9718C3A4B42BCDFC77884D2D01735D4B17F081A43BDD77DEE3329BD08B81B`
**Referência normativa:** `docs/01-metodologia/APDF_V01.md` — v1.0.0, `APPROVED` por `DEC-007`, SHA-256 `DC68ED05…D07AE`
**Revisão independente:** não realizada (`L-05`). Esta matriz é autoavaliação do executor e **não** constitui aceite.

> **Como ler esta matriz.** `CONFORME` significa que a exigência está textualmente reproduzida e localizável na candidata. `CONFORME POR REMISSÃO` significa que o APDF delega a exigência ao contrato citado e não a contradiz — não é reprodução. `RESSALVA` significa reprodução parcial ou lacuna textual identificada. Nenhum estado desta matriz é resultado de teste de execução do método; é análise documental. `NÃO VERIFICADO` é usado quando a conclusão dependeria de ferramenta, ambiente ou fonte indisponível.

---

## 1. Base normativa e objetos

| Objeto | Caminho | Versão | Estado | SHA-256 | Papel nesta matriz |
|---|---|---|---|---|---|
| APDF (padrão vigente) | `docs/01-metodologia/APDF_V01.md` | 1.0.0 | `APPROVED` (`DEC-007`) | `DC68ED05…D07AE` | Referência de conformidade |
| APDF (cópia candidata) | `temp/APDF_V01_CORRIGIDA_CANDIDATA.md` | 1.0.1 | `PENDING_APPROVAL` | `21B9718C…B81B` | Objeto corrigido |
| APDF anterior | `docs/01-metodologia/apdf.md` | 0.1.0 | `SUPERSEDED` | `7E0E97E9…D8A5` | Histórico; não normativo |
| Ciclo de execução | `docs/01-metodologia/ciclo-apdf.md` | `MET-CICLO-001` | vigente | `B08F9B0C…416E` | Origem de `AD-15` |
| Anti-Surto | `docs/01-metodologia/anti-surto.md` | `MET-SURTO-001` | vigente | `E8D6DD8B…B7F8` | Base da seção 8 |
| CTR-01 | `docs/02-contratos/contrato-01-governanca.md` | 0.1.0 | `APPROVED` conceitualmente (`DEC-002`) | — | Fonte de requisitos |
| CTR-02 | `docs/02-contratos/contrato-02-qualidade.md` | 0.1.0 | `APPROVED` conceitualmente (`DEC-002`) | — | Fonte de requisitos |
| CTR-03 | `docs/02-contratos/contrato-03-harness.md` | 0.1.0 | `APPROVED` conceitualmente (`DEC-002`) | `70BA80E3…28F9` | Fonte de requisitos |
| CTR-04 | `docs/02-contratos/contrato-04-orquestracao.md` | 0.1.0 | `APPROVED` conceitualmente (`DEC-002`) | — | Fonte de requisitos |
| CTR-05 | `docs/02-contratos/contrato-05-inicializacao.md` | 0.1.0 | `APPROVED` conceitualmente (`DEC-002`) | `0B51D958…938A` | Fonte de requisitos |
| Fonte candidata externa | `E:\documentos\projetos\APDF.md` | não declarada | não controlada | `973DC2FE…B716E` | Comparação limitada |
| Fonte candidata externa | `E:\documentos\projetos\ORQUESTRADOR_APDF.md` | não declarada | não controlada | `6CAD6D1C…3FD27` | Comparação limitada |
| Fonte de prompts | `E:\documentos\projetos\PROMPTS_POR_FASE.md` | não declarada | não controlada | `13788599…EC9FE` | **Não incorporada** (`L-07`) |
| Fonte original | `APDF(1).md` | — | indisponível | — | `L-01`: conformidade externa não demonstrável |

**Fatos verificados.** `DEC-007` designou `MET-APDF-001` v1.0.0 como padrão e marcou `apdf.md` v0.1.0 como `SUPERSEDED`. Os cinco contratos estão em 0.1.0 com estado "APPROVED - conceitualmente; implementação técnica pendente", o que limita qualquer conclusão a conformidade conceitual. `MANIFESTO-SHA256.md` foi revalidado nesta rodada: 27/27 hashes conferem, 0 divergências.

**Inferência declarada.** Como a v1.0.1 é cópia em `temp/` e não foi aprovada, todos os estados "CONFORME" abaixo se referem ao texto candidato, não à baseline. A baseline continua sendo a v1.0.0.

---

## 2. Matriz por contrato

### 2.1 CTR-01 — Governança dos artefatos e autoridade

| ID | Exigência (síntese) | Vínculo | Onde na candidata | Evidência | Estado |
|---|---|---|---|---|---|
| CTR-01.1 | ID, versão, estado, escopo, proprietário e referências | Reproduz | Cabeçalho | Linhas 3–11: ID, tipo, versão, estado, proprietário, escopo, data, dependências, histórico | CONFORME |
| CTR-01.2 | Só a versão vigente `APPROVED` é baseline | Reproduz | §1, §16.4, banner | §1 (hierarquia e conflito); §16.4 fixa que a 1.0.0 permanece a única norma; banner idem | CONFORME |
| CTR-01.3 | Artefato inferior não revoga superior em silêncio | Reproduz | §1 | Precedência Norma Central → contratos → baseline de produto; §16.2 limita o que o padrão afirma | CONFORME |
| CTR-01.4 | Conflito não resolvido bloqueia o gate | Reproduz | §1 | "prevalece a Norma Central e o gate afetado é bloqueado até resolução formal" | CONFORME |
| CTR-01.5 | Aprovação identifica artefato, versão, decisor, data, decisão e justificativa | Reproduz | §7.1 | Tabela do gate passou a incluir `justification` referido a `CTR-01`, requisito 5 | CORRIGIDO NA CANDIDATA (`C-05`) |
| CTR-01.6 | Alteração material invalida aprovação ou exige nova | Reproduz | §7.2, §16.4 | "Artefato materialmente alterado após aprovação reabre o gate"; §16.4 exige nova versão, análise e aprovação | CONFORME |
| CTR-01.7 | Agente recomenda; aprovação reservada é humana | Reproduz | §2.2, §7.2, §10 | §2.2 exclui aprovar em nome de autoridade; §7.2 "O agente não aprova o próprio gate"; `CF-04` | CONFORME |
| CTR-01.8 | Aprovação não é presumida por silêncio ou conclusão | Reproduz | §3, §7.2 | `P-04`, `RG-01.b`, "Aprovação exige confirmação explícita" | CONFORME |
| CA-01-01 | Detectar artefato não aprovado usado como baseline | Reproduz (regra) | §1, §16.4 | Regra textual; detecção operacional não implementada (`L-02` é análoga) | CONFORME COM RESSALVA |
| CA-01-02 | Identificar versão obsoleta/substituída | Reproduz | A.1, §16.4 | `apdf.md` marcado `SUPERSEDED`; v1.0.0 declarada vigente | CONFORME |
| CA-01-03 | Detectar conflito entre documentos | Reproduz | §1 | Regra de precedência e bloqueio | CONFORME |
| CA-01-04 | Rejeitar alteração protegida sem autorização | Reproduz | §10 | `CF-01`, `CF-04`; exceção emergencial só por `NCE-001` §4 | CONFORME |
| CA-01-05 | Preservar histórico de decisões/aprovações | Reproduz | Cabeçalho, §15.4 | Histórico cita `DEC-007` e a candidata; registro por fase inclui decisões | CONFORME |
| CA-01-06 | Bloquear gate com conflito crítico aberto | Reproduz | §1, §7.2 | Bloqueio declarado; `REJEITADO` mantém fase aberta | CONFORME |
| CA-01-07 | Diferenciar declaração de agente de resultado comprovado | Reproduz | §12, §15.5, §16.2 | "declarar sucesso sem evidência" proibido; `BLOCKED` não pode ser reportado como concluído | CONFORME |

### 2.2 CTR-02 — Qualidade, rastreabilidade e evidências

O APDF é metodologia de descoberta; o CTR-02 rege a qualidade da execução. A matriz distingue o que o APDF **reproduz** do que **delega** ao contrato.

| ID | Exigência (síntese) | Vínculo | Onde na candidata | Evidência | Estado |
|---|---|---|---|---|---|
| CTR-02.1 | Distinguir Caderno de Testes, TDD, testes funcionais, segurança/regressão, AI Evals, CI/CD e revisão independente | Remete | §11.2, §12, §16.2 | Cita Caderno de Testes, "Provar/Validar" e revisão independente; não define as sete categorias | CONFORME POR REMISSÃO |
| CTR-02.2 | Cadeia requisito → critérios → Caderno → implementação → testes/evals → CI → revisão → aceite | Parcial | §3, §15.4 | `P-10` encurta a cadeia para requisito → artefato → gate → evidência; elos de teste/CI/revisão não são detalhados | RESSALVA |
| CTR-02.3 | Evidência mínima com 8 componentes (inclui ambiente, resultado real, falhas, revisor) | Parcial | §15.4, §15.5 | §15.4 lista 10 campos de registro, mas não exige ambiente/configuração, resultado real tipificado, falhas conhecidas nem revisor | RESSALVA |
| CTR-02.4 | Regras de bloqueio (critério falho, teste inexistente/não executado, falha impeditiva, evidência de outra versão, teste alterado, revisão ausente) | Parcial | §7.2, §15.5, §17 | Bloqueia gate rejeitado e reporte falso de conclusão; não enuncia "teste não executado ≠ aprovado" nem evidência de versão divergente | RESSALVA |
| CA-02-01 | Requisito sem teste ou justificativa aprovada | Remete | §15.4 | Exige registro por fase, não vínculo teste↔requisito | CONFORME POR REMISSÃO |
| CA-02-02 | Teste sem requisito/justificativa | Remete | §3 (`P-10`) | Rastreabilidade declarada em princípio | CONFORME POR REMISSÃO |
| CA-02-03 | Rejeitar evidência de versão diferente | Parcial | §16.4 | Versionamento exigido; rejeição por versão divergente não textualizada | RESSALVA |
| CA-02-04 | Distinguir aprovado, reprovado, bloqueado e não executado | Parcial | §7.1, §15.5 | Estados de **gate** (`APROVADO`/`REJEITADO`/`REABERTO`) e `BLOCKED`; estados de **teste** não enumerados | RESSALVA |
| CA-02-05 | Impedir mudança unilateral de critérios aprovados | Reproduz | §12, §16.4 | "não autoriza [...] alterar testes aprovados unilateralmente"; mudança material exige aprovação | CONFORME |
| CA-02-06 | Bloquear entrega com falha impeditiva | Remete | §11.1 | Handoff exige confirmação de que não há falha impeditiva; regra detalhada é do CTR-02 | CONFORME POR REMISSÃO |
| CA-02-07 | Registrar revisão e aprovação exigidas | Parcial | §15.4 | Registra aprovador e data; não há campo de revisor independente | RESSALVA |

### 2.3 CTR-03 — Harness, contexto, permissões e loops

| ID | Exigência (síntese) | Vínculo | Onde na candidata | Evidência | Estado |
|---|---|---|---|---|---|
| CTR-03.1 | Contexto mínimo com os 10 campos, sem omissão nem renomeação | Reproduz | §15.2, §8.4 | §15.2 lista os 10; §8.4 passou a listar os 10 com `dependencies` e nota de não substituição | CORRIGIDO NA CANDIDATA (`C-01`) |
| CTR-03.2 | Oito estados de execução (`READY`…`CANCELLED`) e `COMPLETED` não inferido de `RUNNING` | Remete | §15.5 | Só `BLOCKED` é citado; a enumeração permanece no contrato | CONFORME POR REMISSÃO |
| CTR-03.3 | Menor privilégio, escopo de leitura/escrita, autorização para ações destrutivas | Remete | §2.2, §11.3, §13 | Proíbe execução, instalação e publicação sem autorização; não detalha permissões por chamada | CONFORME POR REMISSÃO |
| CTR-03.4 | Anti-Surto detecta, bloqueia, registra impacto e oferece três opções | Reproduz | §8, §9 | `T-01`–`T-10`, checkpoint, `D-01`/`D-02`/`D-03` e procedimento de 6 passos | CONFORME |
| CTR-03.5 | Loops e recuperação: detectar repetição, limites configuráveis, interromper, preservar evidências, nova hipótese, escalar | Reproduz | §15.5 | Subseção criada com os cinco comandos e remissão ao `CTR-03` | CORRIGIDO NA CANDIDATA (`C-06`) |
| CA-03-01 | Tarefa sem baseline/permissões válidas não inicia | Reproduz | §15.2 | "Se não for possível reconstruir objetivo, baseline ou autorização, suspender" | CONFORME |
| CA-03-02 | Retomada valida estado e referências persistidas | Parcial | §15.1, §15.4 | Contexto persistente e registro por fase; validação de retomada não explicitada | RESSALVA |
| CA-03-03 | Ação fora do escopo é bloqueada | Reproduz | §8.2, §9 | Bloqueio antes da execução e três opções | CONFORME |
| CA-03-04 | Anti-Surto não altera baseline autonomamente | Reproduz | §9, §10 | Proibido executar antes da autorização; `CF-04` | CONFORME |
| CA-03-05 | Loops e limites detectados e aplicados | Reproduz | §15.5 | Detecção e interrupção ao atingir limite | CORRIGIDO NA CANDIDATA (`C-06`) |
| CA-03-06 | Interrupção preserva evidências para diagnóstico | Reproduz | §15.5 | Salvar estado, diffs, logs e evidências | CORRIGIDO NA CANDIDATA (`C-06`) |
| CA-03-07 | Estado bloqueado não é reportado como concluído | Reproduz | §15.5 | Frase explícita com remissão a `CA-03-07` | CORRIGIDO NA CANDIDATA (`C-06`) |
| CA-03-08 | Testes incluem cenários de falha e recuperação | Não reproduz | — | Exigência pertence ao plano de testes do produto, não ao APDF | NÃO SE APLICA AO ESCOPO DO APDF |

### 2.4 CTR-04 — Ferramentas e orquestração

| ID | Exigência (síntese) | Vínculo | Onde na candidata | Evidência | Estado |
|---|---|---|---|---|---|
| CTR-04.1 | Inventário de ferramenta, versão, capacidades testadas, permissões, custo e evidências | Remete | §14 | Declara que capacidade só é disponível após teste e remete a `FER-INV-001`; não mantém inventário | CONFORME POR REMISSÃO |
| CTR-04.2 | Selecionar executor conforme capacidades comprovadas | Não se aplica | — | Fora do escopo do APDF (§2.2) | NÃO SE APLICA AO ESCOPO DO APDF |
| CTR-04.3 | Não presumir compatibilidade entre regras, Skills, MCPs, hooks, sandbox | Reproduz | §14 | "Esta seção é informativa [...] não afirma compatibilidade" | CONFORME |
| CTR-04.4 | Isolar tarefas concorrentes e coordenar conflitos | Não se aplica | — | Fora do escopo do APDF | NÃO SE APLICA AO ESCOPO DO APDF |
| CTR-04.5 | Separar executor e revisor independente quando o risco exigir | Reproduz (princípio) | §3, §16.2 | `P-11`; "não substitui revisão independente" | CONFORME COM RESSALVA |
| CTR-04.6 | Aplicar limites, permissões e contexto do CTR-03 a toda chamada | Remete | §15.2, §15.5 | Contexto mínimo e limites remetidos ao `CTR-03` | CONFORME POR REMISSÃO |
| CTR-04.7 | Registrar entradas/saídas, alterações, falhas, estado e evidências | Parcial | §15.4 | Registro por fase cobre artefatos, decisões, gate e evidências; não cobre entradas/saídas de ferramenta | RESSALVA |
| CTR-04.8 | Recuperar falhas com diagnóstico e hipótese nova | Reproduz | §15.5 | "Nova tentativa exige hipótese diferente e justificada" | CORRIGIDO NA CANDIDATA (`C-06`) |
| CTR-04.9 | Não adotar votação entre modelos como prova de verdade | Não reproduz | — | Ausente; exigência do contrato permanece aplicável ao Núcleo | NÃO SE APLICA AO ESCOPO DO APDF |
| CTR-04.10 | Capacidade só disponível após verificação no ambiente real | Reproduz | §14, §16.2 | `DEC-006`, `CTR-04`; `L-03` e `L-04` registram não verificação | CONFORME |
| CA-04-01 | Distinguir documentado, configurado e testado | Remete | §14 | Remete a `FER-INV-001`; não define a distinção | CONFORME POR REMISSÃO |
| CA-04-02 | Rotear tarefa só para ferramenta habilitada e compatível | Não se aplica | — | Fora do escopo | NÃO SE APLICA AO ESCOPO DO APDF |
| CA-04-03 | Concorrência sem escrita conflitante silenciosa | Não se aplica | — | Fora do escopo | NÃO SE APLICA AO ESCOPO DO APDF |
| CA-04-04 | Revisão independente exigida por política | Parcial | §3, §16.2 | Princípio presente; política não fixada | RESSALVA |
| CA-04-05 | Permissões e limites aplicados a chamadas | Remete | §15.2 | Remissão ao `CTR-03` | CONFORME POR REMISSÃO |
| CA-04-06 | Falhas preservam contexto e evidências | Reproduz | §15.5 | Preservação obrigatória na interrupção | CORRIGIDO NA CANDIDATA (`C-06`) |
| CA-04-07 | Capacidades não verificadas sinalizadas como pendentes | Reproduz | §14, §16.3 | `L-03`/`L-04`; marcação explícita de não verificação | CONFORME |

### 2.5 CTR-05 — Inicialização, baseline e prontidão

| ID | Exigência (síntese) | Vínculo | Onde na candidata | Evidência | Estado |
|---|---|---|---|---|---|
| CTR-05.1 | Inicializar primeiro governança, contratos, rastreabilidade e validação | Remete | §1 | Fixa a posição hierárquica, não a ordem de inicialização | CONFORME POR REMISSÃO |
| CTR-05.2 | Não instalar dependências nem conectar repositórios sem decisão explícita | Reproduz | §2.2, §13 | "não instala, não configura e não executa TPM"; instalação fora de escopo | CONFORME |
| CTR-05.3 | Registrar versão da baseline, entradas, alterações e aprovações | Reproduz | Cabeçalho, §15.4, §16.4 | Histórico, registro por fase e controle de mudança | CONFORME |
| CTR-05.4 | Validar estrutura e contratos antes de orquestração avançada | Remete | §16.4 | Exige validação como parte da mudança; não define o procedimento | CONFORME POR REMISSÃO |
| CTR-05.5 | Mudanças centrais com análise de impacto, revisão e aprovação | Reproduz | §10, §16.4 | `CF-01`–`CF-06`; análise e aprovação exigidas | CONFORME |
| CTR-05.6 | Reprodutibilidade lógica e limitações documentadas | Parcial | A.1, §16.3 | Hashes e lacunas documentados; `F-02`/`L-06` mostram que a reprodutibilidade da v1.0.0 falhava | RESSALVA |
| CTR-05.7 | Falhar explicitamente diante de inconsistência crítica | Reproduz | §3, §15.2 | `P-12`; suspender execução sem contexto reconstruível | CONFORME |
| CTR-05.8 | Distinguir especificado, implementado, executado e validado | Parcial | §16.1, §16.2, §15.5 | Declara o que afirma/não afirma e impede reporte falso; não usa a escala de quatro níveis | RESSALVA |
| CTR-05.9 | Não declarar inicialização concluída sem evidência | Reproduz | §16.2, §17 | Não substitui revisão; critérios de aceite exigem evidência | CONFORME |
| CA-05-01 | Identificar a baseline usada na inicialização | Reproduz | Cabeçalho, §15.4 | Versão, estado e histórico no cabeçalho | CONFORME |
| CA-05-02 | Nenhuma dependência instalada silenciosamente | Reproduz | §2.2, §13 | Instalação proibida sem autorização | CONFORME |
| CA-05-03 | Nenhum repositório externo modificado sem autorização | Parcial | §2.2 | Execução fora de escopo; menção explícita a repositório externo ausente | RESSALVA |
| CA-05-04 | Estrutura e referências validadas automaticamente | Não reproduz | — | APDF não define validação automatizada | NÃO SE APLICA AO ESCOPO DO APDF |
| CA-05-05 | Contratos com IDs, versões e critérios de aceite | Remete | §1, §17 | Aplica os contratos; não os reespecifica | CONFORME POR REMISSÃO |
| CA-05-06 | Mudanças rastreáveis e comparáveis | Reproduz | §16.4, A.1 | Versionamento e hashes | CONFORME |
| CA-05-07 | Inconsistências críticas bloqueiam a inicialização | Reproduz | §1, §3 | Conflito bloqueia gate; `P-12` | CONFORME |
| CA-05-08 | Estado real de implementação/testes reportado corretamente | Reproduz | §15.5, §16.2 | `BLOCKED` não é conclusão; §16.2 limita alegações | CONFORME |

---

## 3. Critérios de aceite do padrão (`CA-APDF-01` a `CA-APDF-12`)

Os 12 critérios são **idênticos** à v1.0.0 (verificado por comparação linha a linha). A coluna "Evidência" indica onde cada um é satisfeito na candidata.

| ID | Critério | Evidência na candidata | Estado |
|---|---|---|---|
| CA-APDF-01 | 13 fases com pergunta, elicitação, artefatos e gate | 13/13 fichas com os quatro campos; §6 explicita a regra de leitura dos rótulos (`C-03`) | CONFORME |
| CA-APDF-02 | Quatro perguntas iniciais presentes e obrigatórias | §4.1 | CONFORME |
| CA-APDF-03 | Document-aware lê antes de perguntar e limita perguntas a lacunas | §4.2 | CONFORME |
| CA-APDF-04 | Todo gate exige confirmação explícita e registro com decisor e data | §7.1 (com `justification`), §7.2 | CONFORME |
| CA-APDF-05 | Regra de Ouro e controle pós-Freeze verificáveis | §3 (`RG-01`), §10 (`CF-01`–`CF-06`) | CONFORME |
| CA-APDF-06 | Gatilhos enumerados e três opções obrigatórias | §8.2 (`T-01`–`T-10`), §9 | CONFORME |
| CA-APDF-07 | Checkpoint usa os campos do CTR-03, sem substituí-los | §8.4 com os 10 campos e nota de não substituição | CORRIGIDO NA CANDIDATA (`C-01`) |
| CA-APDF-08 | Handoff exige cinco confirmações e conteúdo mínimo | §11.1, §11.2, §11.4 | CONFORME |
| CA-APDF-09 | TPM como extensão condicional, sem execução implícita | §13; gatilho `.tpm/` em `AD-10` (`C-10`) | CONFORME |
| CA-APDF-10 | Instruções por ferramenta marcadas como informativas | §14 | CONFORME |
| CA-APDF-11 | Proveniência e lacunas documentadas | A.1, §16.3 (`L-01`–`L-07`) | CONFORME |
| CA-APDF-12 | Nenhuma seção impõe arquitetura de produto | §1.4, `P-09`, `AD-12`, notas das Fases 02/04/08 | CONFORME |

**Nota sobre critérios e correções.** `C-04`, `C-05`, `C-06` e `C-11` não têm critério próprio na §17; são verificáveis contra `CTR-01` e `CTR-03`, como registrado no Anexo C da candidata. Criar critérios novos alteraria o conjunto aprovado e exigiria decisão separada.

---

## 4. Os nove elementos do lote

| # | Elemento | Situação na v1.0.0 | Situação na candidata 1.0.1 |
|---|---|---|---|
| E-01 | Perguntas iniciais obrigatórias | ATENDIDO com ressalva (registro explícito inferido) | ATENDIDO; ressalva mantida (`PROP-02` pendente) |
| E-02 | 13 fases com elicitação, artefatos e gate | ATENDIDO com ressalva de rótulos (`F-04`) | ATENDIDO; regra de leitura dos rótulos (`C-03`) |
| E-03 | Fluxo operacional do agente | ATENDIDO | ATENDIDO |
| E-04 | Identidade, acionamentos e checkpoint do Anti-Surto | ATENDIDO COM DEFEITO (`F-01`) | ATENDIDO; 10 campos do CTR-03 (`C-01`) |
| E-05 | Gatilhos de desvio e três opções | ATENDIDO | ATENDIDO |
| E-06 | Regra de Ouro e controle pós-Freeze | ATENDIDO com ressalva (`F-03`/`PROP-01`) | ATENDIDO; ressalva mantida (decisão humana) |
| E-07 | Engineering Handoff | ATENDIDO COM RESSALVA (sem correspondência) | ATENDIDO; §11.4 (`C-07`) |
| E-08 | Integração TPM condicional | ATENDIDO COM RESSALVA (`L-03`) | ATENDIDO; ressalva mantida (limitação real) |
| E-09 | Instruções por ferramenta | ATENDIDO COM RESSALVA (`L-04`) | ATENDIDO; ressalva mantida (limitação real) |

**Síntese.** Nenhum dos nove elementos está ausente. As duas falhas objetivas da v1.0.0 (`F-01` e o handoff sem correspondência) foram corrigidas na candidata. As ressalvas remanescentes são de decisão (`PROP-01`, `PROP-02`) ou de verificação de ambiente (`L-03`, `L-04`), não de texto.

---

## 5. Ressalvas transversais

| ID | Ressalva | Efeito sobre esta matriz |
|---|---|---|
| OBS-01 | A conformidade avaliada é **textual**, não comportamental. Nenhum agente foi executado contra o método. | Nenhum item pode ser lido como "testado". |
| OBS-02 | A v1.0.1 é candidata e não aprovada. | "Conforme" refere-se ao texto candidato; a baseline segue a v1.0.0. |
| OBS-03 | `APDF(1).md` está indisponível (`L-01`). | Nenhuma conformidade com a fonte original é declarada. |
| OBS-04 | `PROMPTS_POR_FASE.md` não foi incorporado (`L-07`). | O elemento E-09 não é avaliado contra os prompts. |
| OBS-05 | Contratos estão "APPROVED - conceitualmente; implementação técnica pendente". | Aderência é conceitual; mecanismos não estão implementados. |
| OBS-06 | `F-02`: os hashes da v1.0.0 para `apdf.md` e `ciclo-apdf.md` não são reproduzíveis. | A correção registra os hashes correntes, mas a causa raiz permanece não demonstrável (`L-06`). |
| OBS-07 | Os contratos não numeram requisitos no CTR-02 e no CTR-03; a matriz usa blocos temáticos. | A numeração `CTR-0x.n` é desta matriz, não dos contratos. |
| OBS-08 | Não houve revisão independente (`L-05`). | Esta matriz não substitui aceite; é insumo para o revisor. |
| OBS-09 | `git` avisou conversão LF→CRLF ao comparar os arquivos. | O aviso é de checkout, não de conteúdo; hashes calculados sobre os bytes em disco. |

---

## 6. Validações executadas e não executadas

### 6.1 Executadas (com resultado)

| # | Verificação | Comando/método | Resultado |
|---|---|---|---|
| V-01 | Integridade do manifesto | `MANIFESTO-SHA256.md` recalculado | `TOTAL=27 OK=27 DIVERGENCIAS=0` |
| V-02 | Estrutura das 13 fases | contagem de cabeçalhos e campos | `FASES=13`, `PERGUNTA=13`, `ACAO=13`, `ARTEFATOS=13`, `GATE=13` |
| V-03 | Campos do CTR-03 no §8.4 | contagem restrita à subseção | `10/10` |
| V-04 | Hashes do Anexo A.1 | recálculo de cada arquivo citado | `8/8` conferem |
| V-05 | Critérios `CA-APDF-*` | comparação com a v1.0.0 | `12/12` idênticos |
| V-06 | Títulos das 13 fases | comparação com a v1.0.0 | idênticos |
| V-07 | Referências internas `§n` | resolução contra títulos | 39 ocorrências, 19 seções distintas, 0 sem destino |
| V-08 | Tabelas e blocos de código | contagem de pipes e cercas | tabelas balanceadas; `FENCES=2`, pares |
| V-09 | Escopo de alteração no Git | `git status --porcelain` e `git diff --stat` | nada fora de `temp/` e das deleções pré-existentes de `lote-02-gpt/` |
| V-10 | Diff v1.0.0 → candidata | `git diff --no-index` | 19 hunks, 126 inserções, 25 deleções |
| V-11 | Hash e tamanho da candidata | `Get-FileHash`, `Get-Item` | `21B9718C…B81B`, 46.821 bytes, 775 linhas |

### 6.2 Não executadas

| # | Verificação | Motivo | Estado |
|---|---|---|---|
| N-01 | Lint de Markdown | nenhum linter instalado; instalação não autorizada | `NOT_RUN` |
| N-02 | Validação de links externos | sem rede/verificador dedicado | `NOT_RUN` |
| N-03 | Renderização (GitHub/visual) | sem ferramenta de preview no ambiente | `NOT_RUN` |
| N-04 | Revisão independente | não há segundo revisor designado (`L-05`) | `NOT_RUN` |
| N-05 | Comparação com `APDF(1).md` | fonte indisponível (`L-01`) | `NOT_RUN` |
| N-06 | Execução do método por um agente | fora do escopo desta rodada | `NOT_RUN` |
| N-07 | Teste de TPM e de instruções por ferramenta | ambiente não verificado (`L-03`, `L-04`) | `NOT_RUN` |

---

## 7. Conclusão por item

| Item | Estado | Evidência | Próximo responsável |
|---|---|---|---|
| `F-01` — `dependencies` ausente | `DONE` | §8.4 com 10/10 campos (V-03) | Revisor humano (`DH-10`) |
| `F-02` — hashes não reproduzíveis | `DONE` (correção) / `NOT_VERIFIED` (causa) | A.1 8/8 (V-04); `L-06` | Proprietário humano; causa raiz exige histórico externo |
| `F-03` — pergunta de reancoragem | `PROPOSED` | `PROP-01` no Anexo C | Decisor de `DH-12` |
| `F-04` — rótulos heterogêneos | `DONE` | §6, regra de leitura (`C-03`) | Revisor humano |
| `F-05` — ciclo sem `AD` | `DONE` | `AD-15` em A.2 | Revisor humano |
| `F-06` — gate sem justificativa | `DONE` | §7.1 (`C-05`) | Revisor humano |
| `F-07` — loops não tratados | `DONE` | §15.5 (`C-06`) | Revisor humano |
| `F-08` — registro das 4 respostas | `PROPOSED` | `PROP-02` | Decisor de mérito |
| `F-09` — handoff sem correspondência | `DONE` | §11.2/§11.4 (`C-07`) | Revisor humano |
| `F-10` — Fase 12 sem dependências | `DONE` (verificado) | Fase 12 já conforme; `C-08` | — |
| `F-11` — Fase 13 sem governança | `DONE` (verificado) | Fase 13 já conforme; `C-09` | — |
| `F-12` — 3 perguntas × 4 iniciais | `PROPOSED` | `PROP-03` | Decisão de mérito (sem `DH` atribuído) |
| `F-13` — fontes sem metadados | `DONE` | A.1, `L-07`, `AD-10`, §16.4 (`C-10`) | Revisor humano |
| `F-14` — estados do gate | `DONE` | §7.3 (`C-11`) | Revisor humano |
| `D-15` — parecer sem errata | `BLOCKED` | `B-01` | Decisor de `DH-11` |
| Promoção da 1.0.1 | `BLOCKED` | Depende de `DH-10` e autoridade humana | Proprietário humano |
| Conformidade externa com o APDF original | `NOT_VERIFIED` | `L-01` | Responsável por obter a fonte |

**Leitura final.** A candidata corrige as duas não conformidades internas verificáveis (`F-01` e `F-14`) e as lacunas documentais `F-02`, `F-04`, `F-05`, `F-06`, `F-07`, `F-09` e `F-13`. Permanecem três decisões de mérito (`PROP-01` a `PROP-03`) e um item de governança (`B-01`), todos isolados. Nada foi promovido; a v1.0.0 continua sendo a única baseline `APPROVED`.
