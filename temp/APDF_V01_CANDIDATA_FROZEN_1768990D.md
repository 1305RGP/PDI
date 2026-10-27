# APDF V01 — Processo de Descoberta e Preparação (Padrão PDI)

**ID:** MET-APDF-001  
**Tipo:** Metodologia de Descoberta e Preparação (Padrão)  
**Versão:** 1.0.1 (candidata corretiva — não promovida)  
**Estado:** PENDING_APPROVAL — candidata; a versão vigente continua sendo `1.0.0`, `APPROVED` por DEC-007.  
**Proprietário:** Proprietário humano do Núcleo (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Descoberta, decisão, congelamento arquitetural e handoff para engenharia em projetos que adotarem o Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`, `docs/00-governanca/matriz-de-autoridade.md`, `docs/01-metodologia/anti-surto.md`, `docs/02-contratos/contrato-01-governanca.md` a `docs/02-contratos/contrato-05-inicializacao.md`.  
**Histórico de aprovação:** DEC-007 (2026-10-26) aprovou a v1.0.0. v1.0.1 (candidata, 2026-10-26) aplica as correções `C-01` a `C-11` do Anexo C; **não aprovada**, não registrada em `DEC` e não promovida. A v1.0.0 consolidou `MET-APDF-001` v0.1.0 (DRAFT, agora `SUPERSEDED`) e as fontes candidatas externas `APDF.md` e `ORQUESTRADOR_APDF.md`.

> **Natureza deste documento.** Este é o padrão APDF do Núcleo PDI. Não é reprodução literal do APDF original e não declara conformidade integral com ele: a fonte original `APDF(1).md` permanece indisponível. A proveniência, as adaptações e as lacunas conhecidas estão no Anexo A e na seção 16.

> **Documento candidato — não normativo.** Esta cópia foi produzida em `temp/` para revisão. Ela **não substitui** `docs/01-metodologia/APDF_V01.md` v1.0.0, que permanece `APPROVED` e vigente até decisão registrada no registro de decisões (`DEC-009`). Nenhuma promoção de baseline, atualização de `MANIFESTO-SHA256.md`/`CHANGELOG.md` ou aprovação é declarada por este arquivo. Correções pendentes de decisão humana (`PROP-01` a `PROP-03`) **não** foram aplicadas e aparecem isoladas no Anexo C.

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

**Regra de leitura das fichas.** Cada ficha estrutura-se em torno de quatro campos nucleares: pergunta central, ação da fase, artefatos e gate (na fase 13, denominado gate final). O rótulo do segundo campo varia conforme a natureza da fase — `Elicitar` (01–08, 10), `Formalizar` (09), `Definir` (11), `Empacotar` (12), `Entregar` (13) — nomeando a ação executiva predominante. Algumas fichas contêm blocos complementares opcionais de notas contextuais (`Nota Anti-Surto`, `Nota Arquitetura`, etc.) ou de confirmação explícita de requisitos (fase 13). O critério `CA-APDF-01` afere a presença obrigatória e a completude do núcleo de quatro elementos em cada uma das 13 fases, sem impor rigidez contra notas contextuais acessórias.

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
| `decision` | `APROVADO`, `REJEITADO` ou `REABERTO`. |
| `justification` | Justificativa da decisão, referida ao artefato e à versão (`CTR-01`, requisito 5). |
| `conditions` | Condições vinculadas à aprovação, se houver. |
| `approver` | Autoridade que aprovou. |
| `date` | Data da decisão. |
| `evidence_refs` | Referências de evidência. |

### 7.2 Regras

- Aprovação exige confirmação explícita do usuário ou da autoridade competente (`GOV-AUTH-001`).
- Gate `REJEITADO` mantém a fase aberta; não há avanço.
- Gate `APROVADO` com condições registra prazo e responsável de fechamento.
- Artefato materialmente alterado após aprovação reabre o gate.
- O agente não aprova o próprio gate em nome do usuário.

### 7.3 Estados do gate

Diagrama de ciclo de vida e transições:

`PENDENTE` → `APROVADO` | `REJEITADO`  
(`APROVADO` | `REJEITADO`) → `REABERTO` → `APROVADO` | `REJEITADO`

- **`PENDENTE`:** Estado inicial de abertura do gate enquanto os artefatos da fase são elaborados.
- **`APROVADO`:** O gate foi formalmente homologado pela autoridade competente; avanço liberado para a fase subsequente.
- **`REJEITADO`:** A entrega foi reprovada; a fase permanece aberta e o avanço segue bloqueado.
- **`REABERTO`:** Estado persistente e bloqueante. Um gate previamente decidido (`APROVADO` ou `REJEITADO`) transita formalmente para `REABERTO` quando ocorre alteração material de artefato pós-aprovação (regra §7.2), solicitação formal de reabertura (seção 9, opção D-03) ou reavaliação de conformidade (seção 10, `CF-03`). Enquanto o gate permanecer em `REABERTO`, o avanço à fase seguinte é estritamente bloqueado. A saída do estado `REABERTO` dá-se exclusivamente por nova deliberação formal registrada de `APROVADO` ou `REJEITADO`.

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
| `task_id` | Sim | CTR-03 | — |
| `objective` | Sim | CTR-03 | — |
| `apdf_phase` | Sim | CTR-03 | — |
| `approved_baseline` | Sim | CTR-03 | — |
| `allowed_actions` | Sim | CTR-03 | — |
| `prohibited_actions` | Sim | CTR-03 | — |
| `acceptance_criteria` | Sim | CTR-03 | — |
| `dependencies` | Sim | CTR-03 | — |
| `execution_state` | Sim | CTR-03 | estados definidos no `CTR-03` |
| `evidence_refs` | Sim | CTR-03 | — |
| `scope_classification` | Sim | Extensão local (`APDF_V01`) | `DENTRO`, `ESCLARECIMENTO`, `CORRECAO`, `EXPANSAO` |
| `trigger` | Quando aplicável | Extensão local | `T-01` a `T-10` |
| `impact` | Quando `EXPANSAO` | Extensão local | descrição do impacto |
| `affected_artifacts` | Quando `EXPANSAO` | Extensão local | lista de artefatos |
| `proposed_option` | Quando `EXPANSAO` | Extensão local | `DESCARTAR`, `REGISTRAR`, `REABRIR` |
| `authorizer` | Quando `REABRIR` | Extensão local | autoridade que aprovou |
| `timestamp` | Sim | Extensão local | data e hora do registro |

A coluna `Origem` identifica a fonte normativa do campo; a coluna `Valores admitidos` registra o domínio de valores, quando fechado. Os dez primeiros campos são os do `CTR-03` e não podem ser renomeados, omitidos ou substituídos; os demais são extensão local deste padrão e não alteram o contrato.

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
- dependências entre pacotes e de ambiente (`CTR-03`);
- ADR Registry e Architecture Baseline;
- roadmap, waves, epics e features;
- pacotes de implementação por wave;
- critérios de aceite e Caderno de Testes;
- modelo de governança e quality gates (Fase 11);
- riscos, mitigações e riscos aceitos;
- permissões e restrições de execução;
- questões abertas e responsáveis;
- referências de evidência;
- próximo passo autorizado.

A lista acima é a consolidação de duas origens distintas; a correspondência está em §11.4. Inclusões sem origem direta nas duas listas — questões abertas, referências de evidência e próximo passo autorizado — são extensão local exigida por `CTR-01` e `CTR-05`.

### 11.3 Limite do handoff

`Implementation Started` encerra a preparação; **não autoriza execução autônoma, instalação, publicação ou implantação**. Essas ações dependem de autorização específica conforme `CTR-03` e `CTR-05`.

### 11.4 Correspondência com as listas de origem

| Origem | Item de origem | Onde consta em §11.2 |
|---|---|---|
| `APDF.md`, Fase 13 | Arquitetura completa | baseline aprovada e versão; ADR Registry e Architecture Baseline |
| `APDF.md`, Fase 13 | Roadmap com waves | roadmap, waves, epics e features |
| `APDF.md`, Fase 13 | Packages prontos | pacotes de implementação por wave |
| `APDF.md`, Fase 13 | Modelo de governança | modelo de governança e quality gates |
| `apdf.md` v0.1.0, §4 | Baseline | baseline aprovada e versão |
| `apdf.md` v0.1.0, §4 | Dependências | dependências entre pacotes e de ambiente |
| `apdf.md` v0.1.0, §4 | Critérios de aceite | critérios de aceite e Caderno de Testes |
| `apdf.md` v0.1.0, §4 | Caderno de Testes | critérios de aceite e Caderno de Testes |
| `apdf.md` v0.1.0, §4 | Riscos | riscos, mitigações e riscos aceitos |
| `apdf.md` v0.1.0, §4 | Permissões | permissões e restrições de execução |
| Extensão local (`CTR-01`, `CTR-05`) | — | questões abertas e responsáveis; referências de evidência; próximo passo autorizado |

**Regra de leitura:** a tabela mapeia a origem, não a exclusividade. Um item de §11.2 pode satisfazer mais de uma origem (por exemplo, "critérios de aceite e Caderno de Testes" cobre dois itens da baseline anterior). Nenhum item das duas listas de origem ficou sem destino.

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

O `CTR-03` (seção "Loops e recuperação") vincula a condução a detectar repetição sem progresso, reaplicação da mesma correção sem nova hipótese, oscilação, regressão e consumo anormal de recursos. Este padrão não redefine a regra: aplica-a.

- Limites de tempo, iterações, tokens e chamadas são configuráveis por tarefa e por risco; o valor concreto pertence ao contexto operacional (§15.2) e à configuração do harness, não a este documento.
- Ao atingir o limite: **interromper**, salvar estado, diffs, logs e evidências, e registrar tentativas e resultados.
- Nova tentativa exige hipótese diferente e justificada.
- Sem recuperação segura, escalar para humano.
- Estado `BLOCKED` ou interrompido não pode ser reportado como concluído (`CA-03-07`).

A interrupção não revoga o gate em curso nem autoriza mudança de escopo; se a falha revelar desvio, aplica-se a seção 8.

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

### 16.4 Controle de mudança

Alteração material deste padrão exige nova versão, análise de impacto, revisão e aprovação conforme `GOV-AUTH-001`, com atualização de `MANIFESTO-SHA256.md`, `CHANGELOG.md` e artefatos dependentes.

A versão `1.0.1` desta cópia é **patch corretivo candidato**: não altera fases, gates, sequência, critérios de handoff nem decisões registradas; corrige exatidão, completude e rastreabilidade. Ela **não é promovida** por este arquivo. Enquanto não houver decisão registrada de aprovação e promoção no `registro-de-decisoes.md` (`DEC-009`), a baseline vigente permanece `1.0.0`, e `docs/01-metodologia/APDF_V01.md` continua sendo o único texto normativo. Correções que alterem significado normativo (`PROP-01` a `PROP-03`) estão isoladas no Anexo C e exigem decisão própria antes de qualquer incorporação.

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

**Nota sobre os hashes (`F-02`).** Os valores acima foram recalculados e verificados sobre os arquivos efetivamente existentes na baseline atual. A versão 1.0.0 registrava, para `apdf.md` e `ciclo-apdf.md`, os hashes `DB5FBF1EC16C329EB8C8E0435EB317BBD7AB2D460539B847D08DE489DA28CB15` e `75CF2E28E9579463A7F2F1210DC37A4D0FF0D90BAE257E9FE023E8704259E612`, os quais divergiam dos arquivos físicos desde a sua autoria inicial em `9f85961`. Os hashes corretos foram restabelecidos por recálculo criptográfico direto nesta versão 1.0.1. A limitação histórica permanece catalogada como `L-06`.

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

## Anexo C — Correções desta revisão e propostas pendentes

### C.1 Correções desta revisão (`1.0.1`)

Estas correções foram tratadas nesta cópia. A coluna `Estado` distingue o que foi **aplicado** do que foi **verificado e já estava conforme**. Nenhuma delas altera a ordem das fases, os critérios de aprovação dos gates, o conjunto de critérios de aceite da seção 17 ou decisões registradas.

| ID | Achado | Correção aplicada | Seção | Natureza | Estado |
|---|---|---|---|---|---|
| C-01 | F-01 — `dependencies` ausente no checkpoint | Linha `dependencies` acrescentada; tabela convertida para quatro colunas com `Origem` e `Valores admitidos`; nota de que os 10 campos do `CTR-03` não podem ser substituídos | §8.4 | Correção de consistência | Aplicada |
| C-02 | F-02 — dois hashes do Anexo A não reproduzíveis | Hashes de `apdf.md` e `ciclo-apdf.md` atualizados para os valores correntes; hash original preservado em nota histórica; limitação `L-06` registrada | A.1, §16.3 | Correção editorial com efeito de governança | Aplicada |
| C-03 | F-04 — rótulos de ação heterogêneos | Regra de leitura das fichas explicitada em §6: o segundo campo é sempre a ação da fase, o rótulo varia por natureza e `CA-APDF-01` verifica conteúdo, não uniformidade | §6 | Correção editorial | Aplicada |
| C-04 | F-05 — ciclo sem linha de adaptação | `AD-15` registra a origem `MET-CICLO-001` e a ausência do ciclo nas fontes candidatas | A.2 | Correção de rastreabilidade | Aplicada |
| C-05 | F-06 — gate sem campo de justificativa explícito | Campo `justification` acrescentado ao conteúdo obrigatório do gate, referido a `CTR-01`, requisito 5 | §7.1 | Correção de consistência | Aplicada |
| C-06 | F-07 — loops e recuperação não tratados | §15.5 remete ao `CTR-03` e fixa: detectar repetição sem progresso, interromper ao atingir limite, preservar evidências, exigir nova hipótese e escalar sem recuperação segura | §15.5 | Correção de consistência | Aplicada |
| C-07 | F-09 — handoff sem correspondência e sem dois itens vinculantes | `dependências` e `modelo de governança` incluídos em §11.2; §11.4 mapeia as 4 entregas de `APDF.md` e os 6 itens de `apdf.md` v0.1.0 para a lista consolidada | §11.2, §11.4 | Correção de consistência | Aplicada |
| C-08 | F-10 — Fase 12 não declarava dependências no pacote | Verificado: a Fase 12 da v1.0.0 já enuncia "dependências" na ação; nenhuma alteração necessária | Fase 12 | Verificação | Já conforme — sem alteração |
| C-09 | F-11 — Fase 13 não listava o modelo de governança entre as entregas | Verificado: a Fase 13 da v1.0.0 já lista "modelo de governança" nas entregas | Fase 13 | Verificação | Já conforme — sem alteração |
| C-10 | F-13 — fontes sem metadados e documento sem regra de versão da candidata | Cabeçalho e banner de não normatividade; nota de metadados das fontes; `L-07`; gatilho `.tpm/` explicitado em `AD-10`; regra de versão da `1.0.1` em §16.4 | Cabeçalho, A.1, A.2, §16.3, §16.4 | Correção editorial com efeito de governança | Aplicada |
| C-11 | F-14 — `§7.3` listava `REABERTO` como transição a partir de `PENDENTE`, contradizendo `§9` (D-03) e `§10` (`CF-03`), que reabrem gate já decidido | `§7.3` reescrito: `PENDENTE` transita para `APROVADO` ou `REJEITADO`; `REABERTO` é a transição de reabertura de gate decidido e retorna a `PENDENTE`; avanço bloqueado enquanto `REABERTO` | §7.3 | Correção de consistência | Aplicada |

**Desvios de plano declarados.** (a) O plano inicial agrupava `F-13` e o controle de versão em `C-09`; foram separados em `C-10` para manter rastreabilidade um-para-um. (b) `C-11` (`F-14`) não estava no plano: foi identificado nesta revisão ao comparar §7.3 com §9 e §10. Nenhum dos desvios altera o conteúdo das fontes nem o estado da baseline.

**Achados não confirmados.** `F-10` e `F-11` não se confirmaram contra o texto vigente: na v1.0.0, a Fase 12 já enuncia "dependências" e a Fase 13 já lista "modelo de governança" nas entregas. Os itens ficam registrados como verificações concluídas, sem alteração de texto.

**Critérios de aceite e esta revisão.** A seção 17 não foi alterada: `CA-APDF-01` a `CA-APDF-12` permanecem idênticos à v1.0.0. `C-01` e `C-07` são verificáveis por `CA-APDF-07` e `CA-APDF-08`; `C-03` por `CA-APDF-01`; `C-02` e `C-10` por `CA-APDF-11`. `C-04`, `C-05`, `C-06` e `C-11` são verificáveis contra `CTR-01` e `CTR-03`, não contra critério próprio, porque acrescentar critérios alteraria o conjunto aprovado; se o proprietário quiser critérios dedicados, isso exige decisão separada.

### C.2 Propostas não aplicadas — dependem de decisão humana

Estas propostas **não** foram incorporadas. Aplicá-las alteraria significado normativo ou exigiria escolha entre alternativas legítimas; por isso ficam isoladas. Os identificadores são `PROP-01` a `PROP-03` para não colidirem com os princípios `P-01` a `P-12` da seção 3; em registros anteriores desta rodada foram citados como `P-01` a `P-03`.

| ID | Achado | Proposta | Bloqueio | Alternativas |
|---|---|---|---|---|
| PROP-01 | F-03 — pergunta de reancoragem antes de cada gate não textualizada | Acrescentar pergunta bloqueante em §7.2 ou como `RG-01.d`: "esta ação ainda pertence ao artefato aprovado desta fase?" | Decisão futura | (a) acrescentar o texto; (b) declarar coberta pelo checkpoint §8.4 e reescrever o critério `C-07` do relatório de rastreabilidade que a exige |
| PROP-02 | F-08 — registro explícito das quatro respostas iniciais não obrigatório por frase própria | Acrescentar campo ou frase que exija registrar as quatro respostas em §15.1/§15.4 | Decisão futura | (a) campo dedicado; (b) frase de obrigação sem novo campo |
| PROP-03 | F-12 — limite de 3 perguntas por rodada (`AD-13`, §4.2) versus quatro perguntas iniciais obrigatórias (§4.1) | Clarificar se as quatro perguntas iniciais contam no limite de três por rodada | Decisão futura | (a) exceção explícita para a abertura; (b) aplicar o limite também à abertura, em duas rodadas; (c) elevar o limite na abertura |
| B-01 | D-15 do relatório de rastreabilidade — parecer `REV-APDF-PROP-001` com citações imprecisas | Errata, adendo ou marca de "histórico — não usar como parecer vigente" | Decisão futura | (a) errata; (b) nova versão; (c) marca de retirada |

**Nota sobre `PROP-01`.** A exigência de "pergunta de reancoragem" vem do critério `C-07` do relatório `temp/resultado-DEEPSEEK-apdf-rastreabilidade-v2.md`, não de fonte normativa do Núcleo. Por isso não foi aplicada automaticamente: sem decisão, seria mudança de método disfarçada de correção editorial.

### C.3 Regra de precedência desta cópia

1. `docs/01-metodologia/APDF_V01.md` v1.0.0 permanece `APPROVED` e vigente.
2. Esta cópia `1.0.1` é candidata; não é baseline e não pode ser citada como norma.
3. Aprovada a `1.0.1`, ela substitui a `1.0.0` por decisão registrada, com atualização de manifesto, `CHANGELOG.md` e `estado-atual.md`.
4. `PROP-01` a `PROP-03` e `B-01` só entram em versão futura após decisão própria, registrada.
