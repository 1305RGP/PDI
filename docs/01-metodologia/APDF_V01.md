# APDF V01 — Processo de Descoberta e Preparação (Padrão PDI)

**ID:** MET-APDF-001  
**Tipo:** Metodologia de Descoberta e Preparação (Padrão)  
**Versão:** 1.1.0  
**Estado:** APPROVED — promovida por `DEC-011` (2026-10-27); substitui a `1.0.1` como versão normativa vigente.  
**Proprietário:** Proprietário humano do Núcleo (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Descoberta, decisão, congelamento arquitetural e handoff para engenharia em projetos que adotarem o Núcleo Central de Engenharia.  
**Data:** 2026-10-27  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`, `docs/00-governanca/matriz-de-autoridade.md`, `docs/01-metodologia/anti-surto.md`, `docs/02-contratos/contrato-01-governanca.md` a `docs/02-contratos/contrato-05-inicializacao.md`.  
**Histórico de aprovação:** DEC-007 (2026-10-26) aprovou a v1.0.0. DEC-009 (2026-10-27) homologou o Gate G0 e promoveu a v1.0.1; DEC-010 (2026-10-27) fixou o escopo desse patch em C-02, C-03, C-04, C-08, C-09 e C-10, diferindo C-01, C-05, C-06, C-07 e C-11 para a v1.1.0. DEC-011 (2026-10-27) promoveu a v1.1.0, incorporando as cinco correções diferidas (Anexo C.2) e as correções editoriais C-12 e C-13 (Anexo C.5), e encerrou a lacuna `L-08`.  

> **Natureza deste documento.** Este é o padrão APDF do Núcleo PDI. Não é reprodução literal do APDF original e não declara conformidade integral com ele: a fonte original `APDF(1).md` permanece indisponível. A proveniência, as adaptações e as lacunas conhecidas estão no Anexo A e na seção 16.

---

## 1. Finalidade e posição na hierarquia

Este padrão define como conduzir a descoberta de um projeto antes de autorizar execução de engenharia, produzindo artefatos aprováveis, decisões rastreáveis e um handoff verificável.

O APDF **não implementa software, não escreve código e não aprova a própria entrega**. Ele reduz incerteza, organiza decisões e controla a passagem para engenharia.

Posição na hierarquia documental (`GOV-DOC-001`, Nível 2):

1. subordina-se à Norma Central (`NCE-001`) e às regras de governança;
2. aplica os Contratos 01 a 05;
3. não substitui a baseline específica do produto, os ADRs ou as SPECs;
4. não impõe arquitetura de produto (DEC-003).

Em caso de conflito entre este padrão e a Norma Central, prevalece a Norma Central e o gate afetado é bloqueado até resolução formal.

---

## 2. Escopo e não escopo

### 2.1 Está no escopo

- conduzir as 13 fases de descoberta e preparação;
- elicitar informação ausente sem repetir o que já foi fornecido;
- produzir artefatos em Markdown estruturado;
- apresentar e registrar gates de aprovação;
- detectar e tratar desvio de escopo (Anti-Surto);
- congelar a arquitetura alvo e controlar mudanças posteriores;
- preparar e confirmar o Engineering Handoff;
- preservar contexto, decisões e evidências entre fases.

### 2.2 Não está no escopo

- implementar, refatorar ou implantar código;
- aprovar requisitos, arquitetura ou liberação em nome de autoridade humana;
- instalar, conectar ou testar ferramentas;
- executar TPM, CI/CD ou qualquer comando operacional;
- substituir revisão independente;
- declarar conformidade com o APDF original.

---

## 3. Princípios e Regra de Ouro

| ID | Princípio |
|---|---|
| P-01 | Reduzir incerteza relevante antes de executar; não produzir documento decorativo. |
| P-02 | Toda decisão se apoia em baseline explícita, versionada e aprovada. |
| P-03 | Nenhuma fase é pulada e nenhum gate é atravessado por conveniência. |
| P-04 | Aprovação é explícita, identificável e registrada; silêncio não é aprovação. |
| P-05 | Não presumir respostas: elicitar, oferecer opções e pedir confirmação. |
| P-06 | Ler antes de perguntar: documento existente é fonte primária de contexto. |
| P-07 | Marcar a origem de cada informação: `[doc]`, `[usuário]`, `[inferido]`, `[pendente]`. |
| P-08 | Controlar escopo em cada ação relevante (Anti-Surto, seção 8). |
| P-09 | Não impor arquitetura: lentes de descoberta não são prescrição (DEC-003). |
| P-10 | Rastrear requisito → artefato → gate → evidência. |
| P-11 | O executor não é revisor único nem autoridade de aceite da própria entrega. |
| P-12 | Falhar explicitamente diante de inconsistência, ambiguidade relevante ou contexto irrecuperável. |

### Regra de Ouro (RG-01)

> **Nenhuma fase avança sem gate aprovado; nenhuma decisão congelada é alterada fora do procedimento formal de mudança.**

Corolários:

- **RG-01.a** — Artefato de fase anterior não é reescrito em silêncio; alteração exige registro e nova aprovação do gate afetado.
- **RG-01.b** — Aprovação não é inferida de conclusão de tarefa, simpatia, pressa ou decurso de prazo.
- **RG-01.c** — Após o Architecture Freeze, mudança arquitetural exige ADR, análise de impacto e reabertura formal do gate (seção 10).

---

## 4. Início da sessão

### 4.1 Quatro perguntas iniciais

Antes de iniciar qualquer fase, obter:

1. Qual é o nome do projeto?
2. É um projeto novo, um produto existente ou um sistema legado?
3. Existe algum artefato já produzido (documentos, repositórios, arquiteturas anteriores)?
4. Qual é o executor previsto? (time interno / terceiros / agente de código / consultoria)

As respostas ajustam o foco: projeto novo exige mais descoberta; sistema legado exige mais análise de estado atual.

### 4.2 Modo document-aware

Quando houver acervo, executar antes de perguntar:

1. **Leitura** — ler o material inteiro e extrair tipo, domínio, produto, decisões já tomadas, riscos, tecnologias e artefatos APDF presentes.
2. **Mapeamento** — classificar cada fase como `COMPLETO`, `PARCIAL` ou `AUSENTE`.
3. **Relatório de leitura** — informar o que foi encontrado, o que falta e a fase de entrada proposta.
4. **Perguntas cirúrgicas** — perguntar apenas sobre lacuna ou ambiguidade; máximo de 3 perguntas por rodada, priorizando as bloqueantes.
5. **Confirmação de entrada** — o usuário confirma a fase de entrada antes de prosseguir.

Regra de entrada: mesmo com acervo, fases anteriores não são consideradas aprovadas por herança. O que foi reconstruído a partir de documento é apresentado como `[doc]`, revisado e submetido ao gate correspondente.

### 4.3 Ausência de documento

Se não houver material, perguntar uma única vez se existe algo informal (e-mail, README, apresentação). Persistindo a ausência, iniciar pela Fase 01 com elicitação aberta.

---

## 5. Fluxo operacional por fase

| Passo | Ação | Evidência produzida |
|---|---|---|
| 0 | Se houver acervo, ler e mapear (seção 4.2). | Relatório de leitura. |
| 1 | Anunciar fase, número, nome e pergunta central. | Registro da fase. |
| 2 | Conduzir elicitação direcionada, sem repetir informação estabelecida. | Perguntas, respostas e lacunas. |
| 3 | Produzir os artefatos da fase em Markdown estruturado, com origem marcada. | Artefatos versionados. |
| 4 | Apresentar o gate com resumo, decisões, riscos e questões abertas. | Proposta de gate. |
| 5 | Aguardar confirmação explícita, registrar decisão e só então avançar. | Gate aprovado com decisor e data. |

Regras do fluxo:

- se o usuário não souber responder, oferecer exemplos e opções, sem inventar resposta;
- ao final de cada fase, oferecer aprofundamento antes do gate;
- inconsistência entre fases é sinalizada antes de continuar;
- o contexto de todas as fases é mantido durante a sessão (seção 15).

---

## 6. As 13 fases

| # | Fase | Pergunta central | Gate |
|---|---|---|---|
| 01 | Product Discovery | O que estamos construindo? | Produto compreendido e aprovado. |
| 02 | Domain Discovery | Qual é o domínio real? | Domínio mapeado e aprovado. |
| 03 | Capability Discovery | Quais capacidades o negócio precisa? | Capacidades mapeadas e aprovadas. |
| 04 | Context Discovery | Como os domínios interagem? | Contextos mapeados e aprovados. |
| 05 | Business Discovery | Como o negócio opera? | Modelo de negócio compreendido e aprovado. |
| 06 | Current State Discovery | O que existe hoje? | Estado atual documentado e aprovado. |
| 07 | Gap Discovery | O que falta? | Gaps e riscos mapeados e aprovados. |
| 08 | Target Architecture | Como deveria ser? | Arquitetura alvo definida e aprovada. |
| 09 | Architecture Freeze | O que está oficialmente aprovado? | Arquitetura congelada e aprovada. |
| 10 | Execution Planning | Como evoluir? | Plano de execução aprovado. |
| 11 | Governance Model | Como validar qualidade? | Modelo de governança aprovado. |
| 12 | Execution Packages | O que engenharia deve executar? | Pacotes prontos para handoff. |
| 13 | Engineering Handoff | Tudo está pronto para execução? | `Implementation Started`. |

**Regra de leitura das fichas.** Cada ficha estrutura-se em torno de quatro campos nucleares: pergunta central, ação da fase, artefatos e gate (na fase 13, denominado gate final). O rótulo do segundo campo varia conforme a natureza da fase — `Elicitar` (01–08, 10), `Formalizar` (09), `Definir` (11), `Empacotar` (12), `Entregar` (13) — nomeando a ação executiva predominante. Algumas fichas contêm blocos complementares opcionais de notas contextuais (`Nota Anti-Surto`, `Nota Arquitetura`, etc.) ou de confirmação explícita de requisitos (fase 13). O critério `CA-APDF-01` afere a presença obrigatória e a completude do núcleo de quatro elementos em cada uma das 13 fases, sem impor rigidez contra notas contextuais acessórias. Neste padrão, o termo `elicitação` empregado por `CA-APDF-01` designa esse campo de ação da fase, qualquer que seja o rótulo adotado pela ficha.

**Nota sobre `CA-APDF-01` (`R-01b`).** O texto do critério na seção 17 permanece literalmente inalterado: "As 13 fases têm pergunta central, elicitação, artefatos e gate definidos." A regra acima explica o termo `elicitação`, mas não reescreve o critério. Por `DEC-011`, a alternativa (a) de `PROP-04` foi adotada: o critério permanece como aprovado e vale a leitura fixada nesta seção. A divergência residual de redação permanece catalogada como `L-09` em §16.3; as alternativas (b) e (c) dependem de decisão própria e não foram executadas.

### Fase 01 — Product Discovery

**Pergunta central:** O que estamos construindo?

**Elicitar:** problema real; usuários principais e personas; posicionamento; critério de sucesso.

**Artefatos:** Product Vision; Product Charter (problema, solução, diferencial); Personas; Market Positioning; Problem Statement.

**Gate:** "O produto está compreendido e aprovado para o Domain Discovery?"

### Fase 02 — Domain Discovery

**Pergunta central:** Qual é o domínio real?

**Elicitar:** conceitos centrais do negócio; o que é core, supporting e genérico; termos que exigem definição precisa.

**Artefatos:** Core Domain; Supporting Domains; Generic Domains; Ubiquitous Language.

**Gate:** "O domínio está mapeado e aprovado?"

**Nota DEC-003:** a classificação core/supporting/genérica é lente de análise de negócio, não prescrição de arquitetura. Se o produto não adotar DDD, registrar o vocabulário equivalente e a escolha em ADR.

### Fase 03 — Capability Discovery

**Pergunta central:** Quais capacidades o negócio precisa?

**Elicitar:** o que o sistema precisa ser capaz de fazer; responsável por cada capacidade; dependências entre capacidades.

**Artefatos:** Capability Map; Capability Ownership; Capability Dependencies.

**Gate:** "As capacidades estão mapeadas e aprovadas?"

**Nota:** distinguir capacidade (o que o negócio precisa) de funcionalidade (como será entregue).

### Fase 04 — Context Discovery

**Pergunta central:** Como os domínios interagem?

**Elicitar:** fronteiras entre contextos; comunicação; dono de cada dado; eventos de domínio.

**Artefatos:** Context Map; Contextos com responsabilidades; Data Ownership; Event Map.

**Gate:** "Os contextos estão mapeados e aprovados?"

**Nota DEC-003:** *bounded contexts* são uma lente. Se o produto não adotar DDD, produzir mapa equivalente (módulos, serviços, fronteiras de dados) e registrar a decisão.

### Fase 05 — Business Discovery

**Pergunta central:** Como o negócio opera?

**Elicitar:** fluxos de valor; organização operacional; modelo de serviço.

**Artefatos:** Business Architecture; Value Streams; Operating Model; Service Model.

**Gate:** "O modelo de negócio está compreendido e aprovado?"

### Fase 06 — Current State Discovery

**Pergunta central:** O que existe hoje?

**Elicitar:** repositórios ativos; arquitetura atual; estado do banco de dados; vulnerabilidades e problemas de segurança conhecidos.

**Artefatos:** Repository Analysis; Architecture Analysis; Database Analysis; Security Analysis.

**Gate:** "O estado atual está documentado e aprovado?"

**Nota:** em projeto greenfield, registrar explicitamente "greenfield — sem estado atual" e produzir os artefatos em branco. Não suavizar riscos encontrados.

### Fase 07 — Gap Discovery

**Pergunta central:** O que falta?

**Elicitar:** estado atual versus necessário; riscos técnicos e de negócio; dívida técnica herdada.

**Artefatos:** Gap Analysis; Risk Analysis (probabilidade × impacto); Technical Debt Analysis.

**Gate:** "Os gaps e riscos estão mapeados e aprovados?"

### Fase 08 — Target Architecture

**Pergunta central:** Como deveria ser?

**Elicitar:** estilo arquitetural adequado ao domínio; segurança por design; organização técnica dos domínios; integrações.

**Artefatos:** Target Architecture; Security Architecture; Domain Architecture; Integration Architecture.

**Gate:** "A arquitetura alvo está definida e aprovada?"

**Nota DEC-003:** justificar cada decisão arquitetural; não presumir microserviços, eventos ou qualquer estilo. Decisão sem justificativa vira ADR pendente e bloqueia a Fase 09.

### Fase 09 — Architecture Freeze

**Pergunta central:** O que está oficialmente aprovado?

**Formalizar:** registrar decisões relevantes como ADRs; consolidar a baseline oficial; definir regras de governança invioláveis.

**Artefatos:** ADR Registry; Architecture Baseline; Governance Rules.

**Gate:** "A arquitetura está congelada e oficialmente aprovada?"

**Nota TPM:** se o TPM estiver em uso, este é o ponto de `tpm init` (seção 13). O TPM é opcional e não é executado por este padrão.

### Fase 10 — Execution Planning

**Pergunta central:** Como evoluir?

**Elicitar:** sequência de entrega de valor; waves; epics por wave; features por epic.

**Artefatos:** Roadmap macro; Waves com objetivo e critério de conclusão; Epics; Features.

**Gate:** "O plano de execução está aprovado?"

### Fase 11 — Governance Model

**Pergunta central:** Como validar qualidade?

**Definir:** regras de validação por artefato; modelo de scoring; quality gates obrigatórios.

**Artefatos:** Validation Rules; Scoring Model; Compliance Model; Quality Gates por wave.

**Gate:** "O modelo de governança está aprovado?"

### Fase 12 — Execution Packages

**Pergunta central:** O que engenharia deve executar?

**Empacotar:** um pacote por wave com escopo, critérios de aceite, restrições e dependências; especificação da wave; checklist de handoff.

**Artefatos:** Implementation Packages; Wave Specifications; Engineering Handoff Checklist.

**Gate:** "O executor está pronto para receber?"

**Nota:** o pacote deve ser suficiente para time interno, terceiro, agente de código ou consultoria.

### Fase 13 — Engineering Handoff

**Pergunta central:** Tudo está pronto para execução?

**Entregar:** arquitetura completa; roadmap com waves; pacotes; modelo de governança.

**Confirmar explicitamente (seção 11):** domínio compreendido; arquitetura aprovada; riscos conhecidos; governança definida; execução planejada.

**Artefatos:** Engineering Handoff Document, contendo sumário executivo, visão de domínio, baseline arquitetural, roadmap e waves, pacotes, governança, riscos e mitigações, questões abertas e próximos passos.

**Gate final:** `Implementation Started`.

---

## 7. Gates

Um gate é uma decisão registrada, não uma mensagem de "ok".

### 7.1 Conteúdo obrigatório do gate

| Campo | Descrição |
|---|---|
| `gate_id` | Identificador da fase e do gate. |
| `artifacts` | Artefatos avaliados, com versão. |
| `summary` | Síntese do que foi produzido. |
| `open_issues` | Questões abertas e impacto. |
| `risks` | Riscos relevantes e mitigação. |
| `decision` | `APROVADO` ou `REJEITADO`. `REABERTO` é estado do gate (§7.3), não valor deste campo. |
| `justification` | Justificativa da decisão, referida à evidência e ao critério aplicado (`CTR-01`, requisito 5). |
| `conditions` | Condições vinculadas à aprovação, se houver. |
| `approver` | Autoridade que aprovou. |
| `date` | Data da decisão. |
| `evidence_refs` | Referências de evidência. |

### 7.2 Regras

- Aprovação exige confirmação explícita do usuário ou da autoridade competente (`GOV-AUTH-001`).
- Gate `REJEITADO` mantém a fase aberta; não há avanço.
- Gate `APROVADO` com condições registra prazo e responsável de fechamento.
- Artefato materialmente alterado após aprovação reabre o gate.
- Gate em `REABERTO` bloqueia o avanço até retornar a `PENDENTE` e receber nova decisão (§7.3).
- O agente não aprova o próprio gate em nome do usuário.

### 7.3 Estados do gate

`PENDENTE` → `APROVADO` | `REJEITADO`  
`APROVADO` | `REJEITADO` → `REABERTO` (somente por D-03, §9)  
`REABERTO` → `PENDENTE` (somente após concluídas a análise de impacto e a autorização de D-03)

| Estado | Significado | Transições admitidas |
|---|---|---|
| `PENDENTE` | Fase em condução; nenhuma decisão registrada. | `APROVADO`, `REJEITADO` |
| `APROVADO` | Gate decidido favoravelmente; avanço autorizado, observadas as `conditions`. | `REABERTO` |
| `REJEITADO` | Gate decidido contrariamente; a fase permanece aberta e não há avanço (§7.2). | `REABERTO` |
| `REABERTO` | Estado persistente de gate já decidido que retornou ao escopo por `EXPANSAO`; o avanço permanece bloqueado enquanto durar. | `PENDENTE` |

`REABERTO` não é valor do campo `decision` (§7.1) e não é etapa de abertura de fase: alcança-se exclusivamente a partir de gate já decidido. A saída para `PENDENTE` exige o procedimento completo de D-03 (§9): mudança e gatilho descritos, impacto analisado, gate afetado identificado, aprovação da autoridade competente, baseline, artefatos e versões atualizados e decisão registrada. Registro de reabertura sem essas etapas é inválido e mantém o gate em `APROVADO` ou `REJEITADO`.

**Nota sobre `C-11`.** O modelo acima foi adotado por `DEC-011`, na alternativa (a): `REABERTO` como estado persistente que retorna a `PENDENTE` somente depois de concluída a análise de impacto, por coerência com §9 (D-03) e §10 (`CF-03`). Alternativas consideradas e não adotadas: (b) deliberação direta de `REABERTO` para `APROVADO`/`REJEITADO`, sem retorno a `PENDENTE`, exigindo que a análise de impacto preceda a própria reabertura; (c) tratar `REABERTO` como evento e não como estado, o que obrigaria a reescrever §7.2, §9 e §10 e a manter apenas `PENDENTE`, `APROVADO` e `REJEITADO` como estados.

---

## 8. Anti-Surto

### 8.1 Identidade

O Anti-Surto é um controle **preventivo** de escopo, alinhado a `MET-SURTO-001` e ao Contrato 03. Ele detecta desvio, bloqueia a ação que introduziria a mudança, registra o impacto e oferece alternativas. **Não aprova, não decide e não executa a nova demanda.**

### 8.2 Gatilhos

| ID | Gatilho |
|---|---|
| T-01 | Requisito novo não previsto na baseline aprovada. |
| T-02 | Mudança de objetivo, escopo, persona ou critério de sucesso. |
| T-03 | Tecnologia, integração ou dependência nova. |
| T-04 | Alteração de critério de aceite ou de teste aprovado. |
| T-05 | Alteração de decisão congelada no Architecture Freeze. |
| T-06 | Ampliação de permissões, acessos ou ambientes. |
| T-07 | Tentativa de pular, inverter ou fundir fases. |
| T-08 | Troca do executor previsto. |
| T-09 | Acesso a repositório, conta ou ambiente externo não autorizado. |
| T-10 | Pedido para "já implementar" durante a descoberta. |

### 8.3 Não gatilhos

| ID | Situação |
|---|---|
| N-01 | Correção editorial ou de clareza sem mudança de sentido. |
| N-02 | Correção necessária para cumprir requisito já aprovado. |
| N-03 | Ajuste de formatação ou organização de artefato. |
| N-04 | Resposta a questão que já estava no escopo da fase. |

### 8.4 Checkpoint

Antes de ação relevante, registrar:

| Campo | Obrigatório | Origem | Valores admitidos |
|---|---|---|---|
| `task_id` | Sim | CTR-03 | Identificador único da tarefa. |
| `objective` | Sim | CTR-03 | Objetivo verificável da tarefa. |
| `apdf_phase` | Sim | CTR-03 | Fase APDF corrente (01–13). |
| `approved_baseline` | Sim | CTR-03 | Versão `APPROVED` que autoriza a ação. |
| `allowed_actions` | Sim | CTR-03 | Lista explícita do que é permitido. |
| `prohibited_actions` | Sim | CTR-03 | Lista explícita do que é vedado. |
| `acceptance_criteria` | Sim | CTR-03 | Critérios de aceite aplicáveis à tarefa. |
| `dependencies` | Sim | CTR-03 | Dependências da tarefa e artefatos externos exigidos. |
| `execution_state` | Sim | CTR-03 | Estado corrente da execução. |
| `evidence_refs` | Sim | CTR-03 | Referências de evidência produzida ou exigida. |
| `scope_classification` | Sim | §8.5 | `DENTRO`, `ESCLARECIMENTO`, `CORRECAO`, `EXPANSAO`. |
| `trigger` | Quando aplicável | §8.2 | `T-01` a `T-10`. |
| `impact` | Quando `EXPANSAO` | §8.5 | Descrição do impacto. |
| `affected_artifacts` | Quando `EXPANSAO` | §8.5 | Lista de artefatos afetados. |
| `proposed_option` | Quando `EXPANSAO` | §9 | `DESCARTAR`, `REGISTRAR`, `REABRIR`. |
| `authorizer` | Quando `REABRIR` | §9, D-03 | Autoridade que aprovou a reabertura. |
| `timestamp` | Sim | §8.5 | Data e hora do registro. |

### 8.5 Procedimento

1. Comparar a ação com objetivo, fase, baseline e critérios vigentes.
2. Classificar (`DENTRO`, `ESCLARECIMENTO`, `CORRECAO`, `EXPANSAO`).
3. Se `EXPANSAO`, bloquear a ação que produziria a mudança.
4. Registrar descrição, origem, impacto e artefatos afetados.
5. Apresentar as três opções da seção 9.
6. Retomar apenas com a autorização necessária registrada.

### 8.6 Limitação

O procedimento está especificado; o detector automatizado não está implementado nem testado. A aplicação atual é manual e depende do agente e do revisor.

---

## 9. Tratamento de desvio de escopo

Diante de `EXPANSAO`, apresentar exatamente três opções:

| Opção | Efeito | Quando usar |
|---|---|---|
| **D-01 — Descartar** | A mudança não é incorporada; o escopo permanece. | Fora do objetivo ou sem valor demonstrado. |
| **D-02 — Registrar para avaliação futura** | A mudança vai para backlog de decisão, sem execução. | Relevante, mas fora do ciclo atual. |
| **D-03 — Reabrir formalmente o gate** | A mudança entra no escopo após análise de impacto e aprovação. | Justificada e autorizada. |

Procedimento para D-03:

1. descrever a mudança e o gatilho;
2. analisar impacto em requisitos, artefatos, prazos, riscos e testes;
3. identificar o gate afetado (fase atual ou anterior);
4. obter aprovação da autoridade competente;
5. atualizar baseline, artefatos e versões;
6. registrar a decisão e retomar.

Proibido: executar a mudança antes da autorização, tratar `EXPANSAO` como `CORRECAO` para evitar gate, ou reabrir gate sem análise de impacto.

---

## 10. Controle pós-Architecture Freeze

Após o gate da Fase 09, a Architecture Baseline, o ADR Registry e as Governance Rules passam ao estado **congelado**.

| ID | Regra |
|---|---|
| CF-01 | Alteração arquitetural exige ADR nova ou ADR que substitua formalmente a anterior. |
| CF-02 | A ADR deve registrar contexto, alternativas, justificativa, consequências e impacto. |
| CF-03 | O gate 09 (ou o gate afetado) é reaberto formalmente. |
| CF-04 | A aprovação é humana e registrada; o agente não aprova mudança congelada. |
| CF-05 | Roadmap, pacotes, riscos e testes afetados são atualizados e versionados. |
| CF-06 | A mudança é propagada para o handoff; versões anteriores não podem ser usadas como baseline. |

Exceção emergencial segue `NCE-001` seção 4: identificador, regra afetada, justificativa, escopo, riscos, mitigação, autorizador, data, validade e condições de encerramento.

Não existe "mudança pequena" isenta: se altera decisão congelada, segue CF-01 a CF-06.

---

## 11. Engineering Handoff

### 11.1 Cinco confirmações

O handoff só é declarado com confirmação explícita de que:

1. o domínio está compreendido;
2. a arquitetura está aprovada;
3. os riscos estão conhecidos e mitigados ou aceitos;
4. a governança está definida;
5. a execução está planejada.

Qualquer "não" mantém a Fase 13 aberta.

### 11.2 Conteúdo mínimo do handoff

- baseline aprovada e versão;
- ADR Registry e Architecture Baseline;
- roadmap, waves, epics e features;
- pacotes de implementação por wave;
- dependências entre pacotes, artefatos externos e pré-condições de execução;
- critérios de aceite e Caderno de Testes;
- riscos, mitigações e riscos aceitos;
- modelo de governança aplicável à execução;
- permissões e restrições de execução;
- questões abertas e responsáveis;
- referências de evidência;
- próximo passo autorizado.

### 11.3 Limite do handoff

`Implementation Started` encerra a preparação; **não autoriza execução autônoma, instalação, publicação ou implantação**. Essas ações dependem de autorização específica conforme `CTR-03` e `CTR-05`.

### 11.4 Correspondência entre confirmações e conteúdo

Cada uma das cinco confirmações de §11.1 deve ser comprovável por itens de §11.2. A tabela fixa a correspondência mínima; evidências adicionais podem ser acrescentadas, mas nenhuma confirmação pode ser declarada sem ao menos um item correspondente.

| Confirmação (§11.1) | Itens de conteúdo que a comprovam (§11.2) |
|---|---|
| 1. Domínio compreendido | Baseline aprovada e versão; ADR Registry e Architecture Baseline. |
| 2. Arquitetura aprovada | ADR Registry e Architecture Baseline; critérios de aceite e Caderno de Testes. |
| 3. Riscos conhecidos e mitigados ou aceitos | Riscos, mitigações e riscos aceitos. |
| 4. Governança definida | Modelo de governança aplicável à execução; permissões e restrições de execução. |
| 5. Execução planejada | Roadmap, waves, epics e features; pacotes de implementação por wave; dependências; questões abertas e responsáveis; próximo passo autorizado. |

Referências de evidência são transversais: sustentam todas as confirmações e são exigidas em qualquer caso. A ausência de um item obrigatório mantém a Fase 13 aberta, nos termos de §11.1.

---

## 12. Ciclo de execução

Aplicável após o handoff, dentro do escopo aprovado:

1. **Construir** — produzir o incremento autorizado.
2. **Provar** — executar as verificações definidas.
3. **Diagnosticar** — interpretar falhas com evidência.
4. **Feedback** — registrar aprendizado e decisões necessárias.
5. **Incremento de Valor** — ajustar a entrega dentro do escopo.
6. **Validar** — confirmar critérios e registrar resultado.

O ciclo não autoriza ignorar gates, alterar testes aprovados unilateralmente ou declarar sucesso sem evidência. Desvio de escopo retorna à seção 9.

---

## 13. Integração condicional com TPM

O TPM (Trusted Cognitive Platform) é **extensão opcional**, não requisito deste padrão.

Ativação: somente se o usuário mencionar TPM ou houver `.tpm/` no repositório.

| Momento | Sugestão | Natureza |
|---|---|---|
| Fases 01–07 | `tpm scan` nos artefatos produzidos | Sugestão |
| Fase 09 | `tpm init` para semear a baseline | Sugestão |
| Ciclo | `tpm validate` no quality gate e `tpm hygiene` ao encerrar waves | Sugestão |

Limites:

- este padrão não instala, não configura e não executa TPM;
- o TPM não foi verificado no ambiente (`FER-INV-001`, `FER-COMP-001`); qualquer uso depende de `DEC-006`;
- resultado de TPM não substitui gate humano nem revisão independente.

---

## 14. Instruções por ferramenta (informativo)

Esta seção é **informativa**: descreve formas de carregar o padrão, não afirma compatibilidade. Capacidade de ferramenta só é considerada disponível após teste real (`DEC-006`, `CTR-04`).

| Contexto | Forma de uso |
|---|---|
| Chat (Claude.ai, ChatGPT, Gemini etc.) | Colar o conteúdo como prompt de sistema ou primeira mensagem. |
| API | Enviar como `system` na chamada. |
| IDE / harness com arquivo de instruções | Salvar como `CLAUDE.md`, `AGENTS.md`, `.cursorrules` ou equivalente, conforme a ferramenta. |
| Repositório | Salvar em `docs/apdf/` e referenciar na documentação de contribuição. |

Estrutura de repositório sugerida (não obrigatória):

```
docs/apdf/
├── fase-01-product.md
├── fase-02-domain.md
├── ...
└── fase-13-handoff.md
```

Qualquer instrução específica de ferramenta deve ser validada no ambiente-alvo e registrada em `FER-INV-001` antes de ser tratada como suporte comprovado.

---

## 15. Contexto, rastreabilidade e evidências

### 15.1 Contexto persistente da sessão

Manter durante toda a condução:

- nome e tipo do projeto;
- documentos recebidos e suas referências;
- fase atual;
- fases concluídas com gate aprovado;
- artefatos por fase, com origem marcada;
- lacunas ainda não resolvidas;
- decisões e desvios registrados.

### 15.2 Contexto operacional mínimo

Toda ação relevante observa os campos do `CTR-03`: `task_id`, `objective`, `apdf_phase`, `approved_baseline`, `allowed_actions`, `prohibited_actions`, `acceptance_criteria`, `dependencies`, `execution_state`, `evidence_refs`.

Se não for possível reconstruir objetivo, baseline ou autorização, **suspender a execução**.

### 15.3 Marcação de origem

| Marca | Significado |
|---|---|
| `[doc]` | Extraído de documento fornecido. |
| `[usuário]` | Informado pelo usuário. |
| `[inferido]` | Deduzido pelo agente; exige confirmação. |
| `[pendente]` | Lacuna reconhecida, sem resposta. |

### 15.4 Registro por fase

Cada fase registra: identificador, versão, artefatos, fontes, decisões, questões abertas, gate, aprovador, data e referências de evidência.

### 15.5 Loops e recuperação

A condução observa o `CTR-03`: detectar repetição sem progresso, reaplicação da mesma correção sem nova hipótese, oscilação, regressão e consumo anormal de recursos. Limites de tempo, iterações, tokens e chamadas são configuráveis por tarefa e por risco, coerentes com o checkpoint de §8.4.

Ao atingir um limite:

1. interromper a ação;
2. preservar estado, diffs, logs e evidências;
3. registrar tentativas e resultados;
4. exigir hipótese diferente e justificada para nova tentativa;
5. escalar para o proprietário humano se não houver recuperação segura.

Interromper e preservar não equivale a concluir: o resultado deve ser declarado não concluído, com motivo e ponto de retomada. Repetir a mesma tentativa sobre o mesmo estado é vedado, e a interrupção não autoriza alterar baseline, critérios de aceite ou testes para contornar o bloqueio.

---

## 16. Conformidade, adaptações e lacunas

### 16.1 O que este padrão afirma

- define o processo APDF adotado pelo Núcleo PDI;
- consolida as duas fontes candidatas e a metodologia local;
- torna explícitas as adaptações e os pontos não verificados.

### 16.2 O que este padrão não afirma

- não reproduz literalmente o APDF original;
- não declara conformidade integral com `APDF(1).md`, que não foi localizado;
- não atesta que as fontes candidatas sejam a versão oficial do framework;
- não valida TPM, ferramentas ou automação;
- não substitui revisão independente.

### 16.3 Lacunas conhecidas

| ID | Lacuna | Impacto |
|---|---|---|
| L-01 | Fonte original `APDF(1).md` indisponível. | Conformidade externa não demonstrável. |
| L-02 | Detector Anti-Surto não automatizado. | Controle depende de disciplina manual. |
| L-03 | TPM não verificado no ambiente. | Integração permanece opcional e não testada. |
| L-04 | Instruções por ferramenta não testadas. | Seção 14 é informativa. |
| L-05 | Revisão independente deste padrão pendente. | Aprovação é do proprietário humano, sem segundo revisor. |
| L-06 | Hashes de `apdf.md` e `ciclo-apdf.md` registrados na v1.0.0 não são reproduzíveis. | Origem exata da divergência não demonstrável; hashes correntes registrados no Anexo A. |
| L-07 | Fontes candidatas sem versão, data, autor, custódia ou autoridade declaradas. | Revisão do framework original não identificável; proveniência limitada a caminho e hash. |
| L-08 | Correções diferidas para a `1.1.0`: `dependencies` ausente no checkpoint (§8.4, `C-01`), campo de justificativa do gate (§7.1, `C-05`), loops e recuperação (§15.5, `C-06`), correspondência do handoff (§11.2/§11.4, `C-07`) e semântica de `REABERTO` (§7.3, `C-11`). | **Encerrada** pela promoção da `1.1.0` (`DEC-011`, 2026-10-27): as cinco correções estão incorporadas nesta versão, e `CA-APDF-07` e `CA-APDF-08` passam a ser verificáveis contra o texto publicado. Permanece como registro histórico que, na `1.0.1`, a lacuna estava aberta. |
| L-09 | `CA-APDF-01` (§17) usa o termo `elicitação` para um campo cujo rótulo varia por fase; a leitura está fixada em §6, mas o texto do critério não foi alterado. | Divergência residual de redação entre §6 e §17, **aceita explicitamente** por `DEC-011` ao adotar a alternativa (a) de `PROP-04`: §17 permanece byte a byte inalterada e prevalece a leitura de §6. A alteração do critério segue dependendo de decisão própria (alternativas (b) e (c), Anexo C.3). |
| L-10 | O Anexo C.1 da `1.0.1` registrava `C-10` como aplicada incluindo "Banner de não normatividade", que não existe no arquivo publicado. | **Encerrada** pela `C-12` na promoção da `1.1.0` (`DEC-011`): o registro de `C-10` no Anexo C.1 desta versão descreve apenas o que foi aplicado. O texto histórico da `1.0.1` permanece no commit `bc45753` e não deve ser lido como registro vigente. |

### 16.4 Controle de mudança

Alteração material deste padrão exige nova versão, análise de impacto, revisão e aprovação conforme `GOV-AUTH-001`, com atualização de `MANIFESTO-SHA256.md`, `CHANGELOG.md` e artefatos dependentes.

A versão `1.0.1` foi um **patch corretivo** promovido por `DEC-009`, com escopo fixado por `DEC-010`: incorporou apenas as correções `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10`, que não alteram fases, gates, sequência, critérios de handoff nem decisões registradas. As correções `C-01`, `C-05`, `C-06`, `C-07` e `C-11` foram diferidas para a versão `1.1.0`, por acrescentarem ou alterarem conteúdo normativo (campos obrigatórios, itens de handoff e semântica dos estados do gate), e permaneceram catalogadas como lacuna `L-08` até a promoção desta versão. `PROP-01`, `PROP-02` e `PROP-03` continuam isoladas no Anexo C e exigem decisão própria antes de qualquer incorporação; `PROP-04`, que também alteraria texto de critério de aceite aprovado, foi decidida por `DEC-011` na alternativa (a), que preserva a seção 17.

A versão `1.1.0` foi promovida por `DEC-011` (2026-10-27). Ela incorpora as cinco correções diferidas (`C-01`, `C-05`, `C-06`, `C-07`, `C-11`), que alteram o conjunto de campos obrigatórios do gate e do checkpoint, o conteúdo mínimo do handoff e a semântica dos estados, e as correções editoriais de registro `C-12` e `C-13`. A promoção encerrou a lacuna `L-08` e exigiu atualização de `MANIFESTO-SHA256.md`, `CHANGELOG.md`, `README.md` e do registro de decisões. A `1.0.1` permanece acessível apenas como histórico no commit `bc45753` e não é mais baseline normativa.

---

## 17. Critérios de aceite do padrão

| ID | Critério |
|---|---|
| CA-APDF-01 | As 13 fases têm pergunta central, elicitação, artefatos e gate definidos. |
| CA-APDF-02 | As quatro perguntas iniciais estão presentes e são obrigatórias. |
| CA-APDF-03 | O modo document-aware lê antes de perguntar e limita perguntas a lacunas. |
| CA-APDF-04 | Todo gate exige confirmação explícita e registro com decisor e data. |
| CA-APDF-05 | A Regra de Ouro e o controle pós-Freeze são verificáveis. |
| CA-APDF-06 | Os gatilhos de desvio estão enumerados e as três opções são obrigatórias. |
| CA-APDF-07 | O checkpoint usa os campos do CTR-03, sem substituí-los. |
| CA-APDF-08 | O handoff exige as cinco confirmações e o conteúdo mínimo. |
| CA-APDF-09 | O TPM aparece como extensão condicional, sem execução implícita. |
| CA-APDF-10 | As instruções por ferramenta estão marcadas como informativas. |
| CA-APDF-11 | A proveniência e as lacunas estão documentadas. |
| CA-APDF-12 | Nenhuma seção impõe arquitetura de produto (DEC-003). |

---

## Anexo A — Proveniência e adaptações

### A.1 Fontes

| Fonte | Caminho | SHA-256 | Uso |
|---|---|---|---|
| APDF.md | `E:\documentos\projetos\APDF.md` | `973DC2FE122E6A873EAA115222D1004E89D822185992DE7A922D5D8C509B716E` | Identidade do agente, 4 perguntas iniciais, fluxo de 5 passos, 13 fases, TPM, instruções de uso. |
| ORQUESTRADOR_APDF.md | `E:\documentos\projetos\ORQUESTRADOR_APDF.md` | `6CAD6D1C9CC11606AECF25A9C26B720D2679D98F4E893B5E290833D10013FD27` | Modo document-aware, protocolo de 6 passos, limite de 3 perguntas, marcação de origem, estado interno, estrutura de repositório. |
| apdf.md (v0.1.0, `SUPERSEDED`) | `docs/01-metodologia/apdf.md` | `7E0E97E99BBE444F32C6A486F0294EE121B89C829E5B7DE675DE48E3D1B1D8A5` | Estrutura local, proibição de conformidade, lista de fases. |
| anti-surto.md | `docs/01-metodologia/anti-surto.md` | `E8D6DD8BE893E82C6281B46F4E2B1DA71C2BAFB0354B179A5B4B6586C2BBB7F8` | Anti-Surto e três opções. |
| ciclo-apdf.md | `docs/01-metodologia/ciclo-apdf.md` | `B08F9B0C014A67F96330F7DE48BFBD5AE89A4200FB2B75FDBF11A2EA05C5416E` | Ciclo de 6 passos. |
| CTR-03 | `docs/02-contratos/contrato-03-harness.md` | `70BA80E3CEAC6A82DA417ACA03930FC1E6A5B9369906F6909ECA850F1C8C28F9` | Contexto mínimo, estados, loops. |
| CTR-05 | `docs/02-contratos/contrato-05-inicializacao.md` | `0B51D95877889F489E55140EAA9294E416136E2CA8BC0034A9305413ED53938A` | Handoff e prontidão. |
| PROMPTS_POR_FASE.md | `E:\documentos\projetos\PROMPTS_POR_FASE.md` | `13788599D0687127F76688F69A5283CDBD5AA598F563D5C2EAFC9A94145EC9FE` | Referência complementar; **não incorporado** a este padrão. |

**Nota sobre os hashes (`F-02`).** Os valores acima foram recalculados por SHA-256 sobre os arquivos efetivamente existentes e correspondem ao conteúdo em disco. A versão 1.0.0 registrava, para `apdf.md` e `ciclo-apdf.md`, os hashes `DB5FBF1EC16C329EB8C8E0435EB317BBD7AB2D460539B847D08DE489DA28CB15` e `75CF2E28E9579463A7F2F1210DC37A4D0FF0D90BAE257E9FE023E8704259E612`, que não correspondem aos arquivos atuais. A origem e o momento da divergência não foram determinados: a verificação desta rodada não comprovou em qual commit os valores registrados deixaram de corresponder ao conteúdo físico, e a alegação anterior de divergência "desde `9f85961`" foi retirada por falta de prova. Os hashes correntes estão restabelecidos nesta versão 1.0.1; a limitação permanece catalogada como `L-06`.

**Nota sobre os metadados das fontes (`F-13`).** `APDF.md`, `ORQUESTRADOR_APDF.md` e `PROMPTS_POR_FASE.md` não declaram versão, data, autor, custódia ou autoridade aprovadora. Para as fontes externas, a única identidade verificável é o caminho e o SHA-256 do arquivo efetivamente lido; não é possível afirmar qual revisão do framework original elas representam. A limitação está registrada como `L-07` e reforça §16.2: nenhuma dessas fontes é tratada como versão oficial do APDF.

### A.2 Adaptações registradas

| ID | Adaptação | Motivo | Impacto |
|---|---|---|---|
| AD-01 | Adotadas as 4 perguntas iniciais de `APDF.md`. | Garantir contexto mínimo antes da Fase 01. | Obrigatórias na abertura. |
| AD-02 | Adotado o modo document-aware de `ORQUESTRADOR_APDF.md`. | Evitar perguntas repetidas e retrabalho. | Leitura precede elicitação. |
| AD-03 | Fluxo base de 5 passos acrescido de leitura e registro. | Unir os dois documentos sem perder rastreabilidade. | Passo 0 e passo 5 explícitos. |
| AD-04 | 13 fases detalhadas com pergunta, elicitação, artefatos e gate. | `apdf.md` local só listava nomes. | Conteúdo operacional completo. |
| AD-05 | Acrescentados metadados e estados de `GOV-DOC-001`. | Artefato controlado exige ID, versão, estado e histórico. | Compatível com a hierarquia. |
| AD-06 | Acrescentado Anti-Surto ausente nas duas fontes. | Controle obrigatório no Núcleo. | Seção 8 e checkpoint. |
| AD-07 | Acrescentadas as três opções de desvio. | Fechar a lacuna de tratamento. | Seção 9. |
| AD-08 | Definidas Regra de Ouro e controle pós-Freeze. | Ausentes nas fontes; exigidos pela proposta. | RG-01 e CF-01 a CF-06. |
| AD-09 | Handoff com 5 confirmações e conteúdo mínimo. | Alinhar `APDF.md` a `CTR-05` e `CTR-02`. | Fase 13 verificável. |
| AD-10 | TPM tratado como extensão condicional, ativada apenas por menção do usuário ou presença de `.tpm/`. | Evitar dependência não verificada. | Seção 13; nenhuma execução implícita. |
| AD-11 | Instruções por ferramenta mantidas como informativas. | `DEC-006`: capacidade não testada. | Seção 14. |
| AD-12 | Fases 02, 04 e 08 marcadas como lentes, não prescrição. | `DEC-003`: neutralidade arquitetural. | Notas de adaptação. |
| AD-13 | Limite de 3 perguntas por rodada como padrão ajustável. | Evitar interrogatório; permitir profundidade justificada. | Seção 4.2. |
| AD-14 | Nenhuma alegação de conformidade com a fonte original. | Fonte indisponível. | Seção 16. |
| AD-15 | Ciclo de execução incorporado a partir de `MET-CICLO-001` (`docs/01-metodologia/ciclo-apdf.md`), e não das fontes candidatas. | O ciclo de 6 passos é metodologia local; `APDF.md` e `ORQUESTRADOR_APDF.md` não o definem. | Seção 12; proveniência explícita, sem atribuição às fontes externas. |

---

## Anexo B — Glossário mínimo

| Termo | Definição |
|---|---|
| **Fase** | Etapa de descoberta com pergunta, artefatos e gate próprios. |
| **Gate** | Decisão registrada que autoriza ou bloqueia o avanço. |
| **Artefato** | Saída versionada de uma fase. |
| **Baseline** | Conjunto aprovado e versionado que orienta a execução. |
| **Architecture Freeze** | Congelamento formal da arquitetura alvo e das regras de governança. |
| **Handoff** | Transferência verificável da preparação para a engenharia. |
| **Anti-Surto** | Controle preventivo de expansão de escopo. |
| **Desvio** | Ação ou pedido que altera escopo, baseline ou decisão congelada. |
| **Origem** | Marca que indica a fonte de uma informação (`doc`, `usuário`, `inferido`, `pendente`). |

---

## Anexo C — Correções incorporadas e propostas pendentes

### C.1 Correções incorporadas na `1.0.1`

Estas correções foram incorporadas na versão `1.0.1`. A coluna `Estado` distingue o que foi **aplicado** do que foi **verificado e já estava conforme**. Nenhuma delas altera a ordem das fases, os critérios de aprovação dos gates, o conjunto de critérios de aceite da seção 17 ou decisões registradas. O registro abaixo descreve o conteúdo efetivo da `1.0.1`; a divergência antes registrada para `C-10` foi corrigida por `C-12` (seção C.5).

| ID | Achado | Correção aplicada | Seção | Natureza | Estado |
|---|---|---|---|---|---|
| C-02 | F-02 — dois hashes do Anexo A não reproduzíveis | Hashes de `apdf.md` e `ciclo-apdf.md` atualizados para os valores correntes; hash original preservado em nota histórica; limitação `L-06` registrada | A.1, §16.3 | Correção editorial com efeito de governança | Aplicada |
| C-03 | F-04 — rótulos de ação heterogêneos | Regra de leitura das fichas explicitada em §6: o segundo campo é sempre a ação da fase, o rótulo varia por natureza e `CA-APDF-01` verifica conteúdo, não uniformidade; o termo `elicitação` do critério passa a designar o campo de ação, qualquer que seja o rótulo | §6 | Correção editorial | Aplicada |
| C-04 | F-05 — ciclo sem linha de adaptação | `AD-15` registra a origem `MET-CICLO-001` e a ausência do ciclo nas fontes candidatas | A.2 | Correção de rastreabilidade | Aplicada |
| C-08 | F-10 — Fase 12 não declarava dependências no pacote | Verificado: a Fase 12 da v1.0.0 já enuncia "dependências" na ação; nenhuma alteração necessária | Fase 12 | Verificação | Já conforme — sem alteração |
| C-09 | F-11 — Fase 13 não listava o modelo de governança entre as entregas | Verificado: a Fase 13 da v1.0.0 já lista "modelo de governança" nas entregas | Fase 13 | Verificação | Já conforme — sem alteração |
| C-10 | F-13 — fontes sem metadados e documento sem regra de versão da candidata | Nota de metadados das fontes; `L-07`; gatilho `.tpm/` explicitado em `AD-10`; regra de versão da `1.0.1` em §16.4. O "banner de não normatividade" não foi aplicado — ver `C-12` | A.1, A.2, §16.3, §16.4 | Correção editorial com efeito de governança | Aplicada, sem banner — registro corrigido por `C-12` |

**Achados verificados sem alteração de texto.** `C-08` (`F-10`) e `C-09` (`F-11`) não se confirmaram contra o texto da v1.0.0: a Fase 12 já enuncia "dependências" e a Fase 13 já lista "modelo de governança" nas entregas. Ficam registrados como verificações concluídas.

**Escopo do patch.** `DEC-010` fixou o escopo da `1.0.1` nas correções sem alteração de significado normativo. A redação anterior, promovida em `DEC-009`, incorporava também `C-01`, `C-05`, `C-06`, `C-07` e `C-11`; essas cinco correções foram retiradas do corpo daquela versão e transferidas para a `1.1.0`, conforme a seção C.2, onde foram incorporadas por `DEC-011`.

**Critérios de aceite e esta revisão.** A seção 17 permanece literalmente idêntica à da v1.0.0: `CA-APDF-01` a `CA-APDF-12` não foram reescritos, inclusive `CA-APDF-01`, cuja divergência de redação fica registrada como `PROP-04` e `L-09`. `C-02` e `C-10` são verificáveis por `CA-APDF-11`; `C-03` por `CA-APDF-01`, na leitura fixada em §6. `C-04`, `C-08` e `C-09` verificam-se contra o texto das seções e tabelas citadas. Os itens de C.2 são verificáveis nesta versão contra §7.1, §7.3, §8.4, §11.2, §11.4 e §15.5. A lacuna `L-08` foi encerrada pela promoção da `1.1.0` em `DEC-011`.

### C.2 Correções incorporadas nesta versão, procedentes da `1.0.1`

Estas correções **não** foram incorporadas na `1.0.1`. Todas acrescentam ou alteram conteúdo normativo — campos obrigatórios do gate e do checkpoint, itens do handoff e semântica dos estados — e, por isso, não cabiam em um patch corretivo nos termos de §16.4. Foram **incorporadas nesta versão `1.1.0`** por `DEC-011`, com a decisão de conteúdo correspondente na coluna `Decisão`.

| ID | Achado | Correção aplicada nesta versão | Seção | Decisão |
|---|---|---|---|---|
| C-01 | F-01 — `dependencies` ausente no checkpoint | Acrescentada a linha `dependencies`; tabela convertida para quatro colunas com `Origem` e `Valores admitidos`; origem das linhas não provenientes do `CTR-03` explicitada | §8.4 | Aprovação da `1.1.0` por `DEC-011`; altera o conjunto de campos obrigatórios e encerra a lacuna `CA-APDF-07`/`L-08` |
| C-05 | F-06 — gate sem campo de justificativa explícito | Acrescentado `justification` ao conteúdo obrigatório do gate, referido a `CTR-01`, requisito 5 | §7.1 | Aprovação da `1.1.0` por `DEC-011`; altera o conjunto de campos do gate |
| C-06 | F-07 — loops e recuperação não tratados | Criada §15.5 remetendo ao `CTR-03` e fixando detecção de repetição, interrupção no limite, preservação de evidências, nova hipótese e escalonamento | §15.5 | Aprovação da `1.1.0` por `DEC-011`; cria seção normativa nova |
| C-07 | F-09 — handoff sem correspondência e sem dois itens vinculantes | Incluídos `dependências` e `modelo de governança` em §11.2 e criada §11.4 com a correspondência entre as cinco confirmações e o conteúdo mínimo | §11.2, §11.4 | Aprovação da `1.1.0` por `DEC-011`; altera o conteúdo mínimo do handoff e encerra a lacuna `CA-APDF-08`/`L-08` |
| C-11 | F-14 — §7.3 apresentava `REABERTO` como transição a partir de `PENDENTE`, contradizendo §9 (D-03) e §10 (`CF-03`), que reabrem gate já decidido | §7.3 reescrita: `PENDENTE` transita apenas para `APROVADO` ou `REJEITADO`; `REABERTO` é estado persistente alcançado a partir de gate decidido, com avanço bloqueado e saída para `PENDENTE` somente após o procedimento completo de D-03; `decision` (§7.1) passa a admitir apenas `APROVADO` e `REJEITADO` | §7.1, §7.3 | Aprovação da `1.1.0` por `DEC-011`, que adotou o modelo (a) de §7.3; altera a semântica dos estados do gate |

**Nota sobre `C-11`.** Esta versão adota o modelo (a) descrito em §7.3 — `REABERTO` é estado persistente e só retorna a `PENDENTE` depois de concluída a análise de impacto de D-03 -, escolhido por `DEC-011`. As alternativas (b) deliberação direta de `REABERTO` para `APROVADO`/`REJEITADO` e (c) `REABERTO` como evento, não estado, estão descritas em §7.3 e não foram adotadas; ambas exigiriam reescrever §7.2, §9 e §10.

### C.3 Propostas não aplicadas — dependem de decisão humana

Estas propostas **não** foram incorporadas. Aplicá-las alteraria significado normativo ou exigiria escolha entre alternativas legítimas; por isso ficam isoladas. Os identificadores são `PROP-01` a `PROP-04` para não colidirem com os princípios `P-01` a `P-12` da seção 3; em registros anteriores desta rodada foram citados como `P-01` a `P-03`.

| ID | Achado | Proposta | Bloqueio | Alternativas |
|---|---|---|---|---|
| PROP-01 | F-03 — pergunta de reancoragem antes de cada gate não textualizada | Acrescentar pergunta bloqueante em §7.2 ou como `RG-01.d`: "esta ação ainda pertence ao artefato aprovado desta fase?" | Decisão futura | (a) acrescentar o texto; (b) declarar coberta pelo checkpoint §8.4 e reescrever o critério `C-07` do relatório de rastreabilidade que a exige |
| PROP-02 | F-08 — registro explícito das quatro respostas iniciais não obrigatório por frase própria | Acrescentar campo ou frase que exija registrar as quatro respostas em §15.1/§15.4 | Decisão futura | (a) campo dedicado; (b) frase de obrigação sem novo campo |
| PROP-03 | F-12 — limite de 3 perguntas por rodada (`AD-13`, §4.2) versus quatro perguntas iniciais obrigatórias (§4.1) | Clarificar se as quatro perguntas iniciais contam no limite de três por rodada | Decisão futura | (a) exceção explícita para a abertura; (b) aplicar o limite também à abertura, em duas rodadas; (c) elevar o limite na abertura |
| PROP-04 | `R-01b` — `CA-APDF-01` (§17) emprega `elicitação` para um campo cujo rótulo varia por fase; §6 fixa a leitura, mas o critério não foi reescrito | Substituir `elicitação` por "ação da fase" em `CA-APDF-01`, ou renomear o critério, para eliminar a divergência entre §6 e §17 | Decidida por `DEC-011` — alternativa (a); as alternativas (b) e (c) permanecem dependentes de decisão própria, por alterarem texto de critério de aceite aprovado | (a) manter o critério e a leitura de §6, registrando a divergência como residual (`L-09`), sem alterar §17 — **adotada**; (b) emendar `CA-APDF-01` para "pergunta central, ação da fase, artefatos e gate" em versão própria, com análise de impacto; (c) manter o critério e remover a explicação de §6, aceitando a leitura literal |
| B-01 | D-15 do relatório de rastreabilidade — parecer `REV-APDF-PROP-001` com citações imprecisas | Errata, adendo ou marca de "histórico — não usar como parecer vigente" | Decisão futura | (a) errata; (b) nova versão; (c) marca de retirada |

**Nota sobre `PROP-01`.** A exigência de "pergunta de reancoragem" vem do critério `C-07` do relatório `temp/resultado-DEEPSEEK-apdf-rastreabilidade-v2.md`, não de fonte normativa do Núcleo. Por isso não foi aplicada automaticamente: sem decisão, seria mudança de método disfarçada de correção editorial.

**Nota sobre `PROP-04`.** A alternativa (a) foi adotada por `DEC-011`: §17 permanece byte a byte igual à da v1.0.0 e a divergência fica registrada como `L-09`. Nenhuma das alternativas (b) ou (c) foi redigida, porque ambas alteram texto de critério aprovado e exigem decisão própria.

### C.4 Regra de precedência e vigência

1. `docs/01-metodologia/APDF_V01.md` v1.1.0 é a versão normativa vigente: promovida por `DEC-011` (2026-10-27), que encerrou o diferimento fixado por `DEC-010`.
2. A `1.1.0` substitui integralmente a `1.0.1`, promovida por `DEC-009` com escopo fixado por `DEC-010`; esta havia substituído a `1.0.0` aprovada em `DEC-007`.
3. Os itens de C.2 estão incorporados nesta versão. Os itens de C.3 continuam não incorporados, exceto quanto a `PROP-04`, resolvida por `DEC-011` na alternativa (a), que mantém §17 inalterada.
4. Este arquivo integra `MANIFESTO-SHA256.md` e é a baseline autorizada enquanto não houver decisão que o substitua.
5. Em caso de divergência entre o corpo deste documento e os itens de C.2 ou C.3, prevalece o texto do corpo.

### C.5 Correções editoriais de registro incorporadas nesta versão

Estas correções não alteram norma: ajustam registros que descreviam conteúdo diferente do arquivo real. Não estavam cobertas por `DEC-010`, que fixou o escopo da `1.0.1`, e foram incorporadas por `DEC-011` nesta versão.

| ID | Achado | Antes | Depois | Natureza |
|---|---|---|---|---|
| C-12 | O Anexo C.1 da `1.0.1` registra `C-10` como aplicada incluindo "Banner de não normatividade", ausente do arquivo publicado | `C-10` — "Banner de não normatividade; nota de metadados." — Estado: Aplicada (transcrição abreviada) | Registro restrito ao que existe no arquivo; banner declarado não aplicado; `L-10` encerrada nesta versão | Correção editorial de registro |
| C-13 | A referência às propostas pendentes em §16.4 e em C.3 encerrava em `PROP-03`, omitindo `PROP-04`, que esta versão acrescenta ao Anexo C.3 | "`PROP-01` a `PROP-03`", em §16.4 e em C.3 | Referência estendida até `PROP-04` nas duas ocorrências; em §16.4 a proposta aparece identificada como decidida por `DEC-011` na alternativa (a) | Correção de consistência interna |

**Limite destas correções.** `C-12` corrige o registro nesta versão e não reescreve o passado: o texto do Anexo C.1 da `1.0.1`, tal como publicado no commit `bc45753`, permanece inalterado no histórico do repositório e não deve ser lido como registro vigente.
