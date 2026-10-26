# Registro de adaptação do APDF — Projeto PDI

**ID proposto:** MET-APDF-ADAPT-001  
**Estado:** PROPOSTA — pendente de revisão e aprovação humana  
**Base de comparação:** `APDF(1).md` (fonte original) × `docs/01-metodologia/apdf.md` (baseline local enviada para revisão)  
**Decisão humana recebida:** Opção C — adaptar o APDF, documentando e justificando cada diferença.  
**Limites:** Este artefato é uma proposta de rastreabilidade. Não altera a baseline local, não atualiza o manifesto SHA-256, não homologa o APDF e não autoriza a Fase B.

## 1. Objetivo

Documentar, de forma rastreável, quais elementos da fonte original APDF foram preservados, resumidos, omitidos ou precisam de decisão. A adaptação deve evitar que uma simplificação documental seja confundida com conformidade integral.

A decisão de adaptar não significa que todas as diferenças abaixo estejam aprovadas. As diferenças precisam de justificativa e aprovação explícitas antes de serem incorporadas à baseline normativa.

## 2. Princípios de adaptação

1. **Rastreabilidade:** cada diferença deve apontar para o requisito da fonte original e para a decisão tomada.
2. **Sem omissão silenciosa:** conteúdo omitido deve ter justificativa registrada.
3. **Preservação de gates:** nenhuma adaptação pode remover a exigência de aprovação explícita antes de avançar de fase, salvo revisão formal aprovada.
4. **Anti-Surto:** alterações de escopo, pressupostos e desvios de artefatos aprovados devem continuar visíveis e sob decisão humana.
5. **Neutralidade arquitetural:** o APDF orienta descoberta e governança; não impõe uma arquitetura de produto universal. Decisões arquiteturais específicas são justificadas em ADRs do projeto, em consonância com DEC-003.
6. **Separação de estados:** `PROPOSTA`, `APROVADO`, `IMPLEMENTADO` e `TESTADO` não são equivalentes.
7. **Sem avanço prematuro:** este documento não autoriza instalação de ferramentas, implementação de agentes, schemas, testes automatizados ou Fase B.

## 3. Matriz de diferenças e decisões propostas

Estados:
- **PRESERVAR** — conteúdo mantido como requisito.
- **RESUMIR COM REFERÊNCIA** — resumo permitido desde que a referência ao conteúdo completo seja explícita e vinculante.
- **ADAPTAR** — mudar a formulação/execução, preservando a intenção, com justificativa.
- **OMITIR COM JUSTIFICATIVA** — remoção deliberada proposta, sujeita a aprovação.
- **PENDENTE** — decisão humana necessária.

| ID | Elemento da fonte original | Situação na baseline enviada | Tratamento proposto | Justificativa proposta | Estado |
|---|---|---|---|---|---|
| ADP-001 | Identidade do Agente APDF: guia discovery, não implementa software nem escreve código, reduz incerteza | Objetivo local afirma que APDF não é agente de programação; não reproduz toda a identidade | ADAPTAR | Manter a fronteira entre descoberta e execução; explicitar que APDF prepara decisões e handoff, sem implementar | PENDENTE |
| ADP-002 | Quatro perguntas iniciais obrigatórias: nome do projeto, tipo de projeto, artefatos existentes, executor previsto | Ausentes | PRESERVAR | São necessárias para adaptar o foco entre greenfield, produto existente e legado, bem como para planejar o handoff | PENDENTE |
| ADP-003 | Sequência por fase: anunciar fase/pergunta, checkpoint Anti-Surto, elicitação, artefatos, segundo checkpoint, gate, aprovação explícita | Há regras gerais de gates, mas não a sequência completa | PRESERVAR | Torna o fluxo repetível e auditável e reduz avanço implícito | PENDENTE |
| ADP-004 | Fase 01 — Product Discovery: problema, usuários/personas, posicionamento, sucesso; Product Vision, Product Charter, Personas, Market Positioning, Problem Statement | Nome da fase presente, conteúdo operacional ausente | PRESERVAR | Sem os itens, não há critério verificável para dizer que a fase foi concluída | PENDENTE |
| ADP-005 | Fase 02 — Domain Discovery: conceitos, core/supporting/generic; Core Domain, Supporting Domains, Generic Domains, Ubiquitous Language | Nome presente, conteúdo operacional ausente | PRESERVAR | Mantém conceitos e vocabulário de domínio explícitos | PENDENTE |
| ADP-006 | Fase 03 — Capability Discovery: capacidades, responsáveis, dependências; Capability Map, Ownership, Dependencies | Nome presente, conteúdo operacional ausente | PRESERVAR | Permite rastrear capacidade, responsabilidade e dependência | PENDENTE |
| ADP-007 | Fase 04 — Context Discovery: bounded contexts, comunicação, ownership de dados, eventos; Context Map, responsabilidades, Data Ownership, Event Map | Nome presente, conteúdo operacional ausente | PRESERVAR | Mantém fronteiras de domínio e propriedade de dados verificáveis | PENDENTE |
| ADP-008 | Fase 05 — Business Discovery: value streams, organização operacional, modelo de serviço; Business Architecture, Value Streams, Operating Model, Service Model | Nome presente, conteúdo operacional ausente | PRESERVAR | Conecta a solução ao modo real de operação do negócio | PENDENTE |
| ADP-009 | Fase 06 — Current State Discovery: repositórios, arquitetura, banco, segurança; registrar explicitamente “greenfield — sem estado atual” quando aplicável | Nome presente, conteúdo operacional ausente | PRESERVAR | Evita inventar estado atual em projeto novo e exige evidência em sistemas existentes | PENDENTE |
| ADP-010 | Fase 07 — Gap Discovery: atual vs. necessário, risco probabilidade × impacto, dívida técnica | Nome presente, conteúdo operacional ausente | PRESERVAR | Sustenta priorização de lacunas e riscos | PENDENTE |
| ADP-011 | Fase 08 — Target Architecture: arquitetura-alvo, segurança, domínio e integração | Nome presente, conteúdo operacional ausente | ADAPTAR | Preservar discovery arquitetural, mas não impor padrões universais; selecionar arquitetura por contexto e registrar decisões em ADRs, conforme DEC-003 | PENDENTE |
| ADP-012 | Fase 09 — Architecture Freeze: ADR Registry, baseline oficial, regras de governança | Nome presente, conteúdo operacional ausente | PRESERVAR | Exige que decisões e baseline aprovadas sejam rastreáveis; mudanças posteriores passam por controle formal | PENDENTE |
| ADP-013 | Fase 10 — Execution Planning: roadmap, waves, epics, features | Nome presente, conteúdo operacional ausente | PRESERVAR | Liga descoberta à sequência planejada de entrega de valor | PENDENTE |
| ADP-014 | Fase 11 — Governance Model: Validation Rules, Scoring Model, Compliance Model, Quality Gates | Nome presente, conteúdo operacional ausente | ADAPTAR | Preservar governança, mas calibrar scoring e controles ao risco e ao contexto do projeto, evitando universalização sem justificativa | PENDENTE |
| ADP-015 | Fase 12 — Execution Packages: pacote por wave, escopo, critérios de aceite, restrições, especificações e checklist | Nome presente, conteúdo operacional ausente | PRESERVAR | Define o que o executor pode fazer e como será aceito | PENDENTE |
| ADP-016 | Fase 13 — Engineering Handoff: arquitetura, roadmap, packages, governança, checklist e gate “Implementation Started” | Baseline contém requisitos gerais de handoff, mas não a lista completa original | ADAPTAR | Consolidar o checklist original com os requisitos da norma central, removendo duplicação sem perder nenhum controle | PENDENTE |
| ADP-017 | Regras do agente: nunca assumir respostas; apoiar com exemplos; Markdown estruturado; oferecer aprofundamento; sinalizar inconsistências; manter contexto | Maioria ausente | PRESERVAR | São controles de qualidade do discovery e da continuidade de contexto | PENDENTE |
| ADP-018 | Identidade e limites do Agente Anti-Surto: interrompe/reancora; não decide nem implementa | Ausente | PRESERVAR | O controle de escopo é uma parte central da fonte e não deve desaparecer por simplificação | PENDENTE |
| ADP-019 | Anti-Surto no início de cada fase e antes de cada gate | Ausente | PRESERVAR | Garante reancoragem antes de trabalho e aprovação | PENDENTE |
| ADP-020 | Formato de checkpoint: fase, objetivo, congelados/aprovados, ação atual, proibições, desvio detectado | Ausente | ADAPTAR | Manter campos obrigatórios; permitir formatação equivalente desde que nenhum campo seja perdido | PENDENTE |
| ADP-021 | Gatilhos de scope creep, mudança após Architecture Freeze sem ADR, redefinição informal do domínio | Ausentes | PRESERVAR | São condições explícitas de parada e revisão | PENDENTE |
| ADP-022 | Ao detectar desvio, parar e oferecer três opções: descartar, registrar para futuro, ou reabrir formalmente o gate | Baseline menciona reabertura formal, mas não as três opções nem parada obrigatória | PRESERVAR | Mantém a decisão sob controle humano e impede inclusão silenciosa | PENDENTE |
| ADP-023 | Regra de ouro: nada fora de artefato aprovado pertence ao escopo; pergunta de reancoragem antes do gate | Ausente | PRESERVAR | Torna a fronteira de escopo explícita e auditável | PENDENTE |
| ADP-024 | Anti-Surto durante Engineering Handoff e execução de waves | Ausente | ADAPTAR | Preservar vigilância durante execução; definir frequência como checkpoint por mudança relevante/intervalo de trabalho, sem criar burocracia desnecessária. A definição operacional exata requer aprovação | PENDENTE |
| ADP-025 | Integração TPM condicional (`tpm scan`, `tpm init`, `tpm validate`, `tpm hygiene`) | Ausente | OMITIR COM JUSTIFICATIVA — proposta | Não tornar a metodologia dependente de uma ferramenta específica. Se TPM for adotado em um projeto, registrar integração como extensão opcional aprovada; não instalar nem executar agora | PENDENTE |
| ADP-026 | Instruções de uso em chat/API/editores/repositório e comando `/anti-surto` | Ausentes | RESUMIR COM REFERÊNCIA | Instruções de implantação variam por executor; manter o comportamento obrigatório na metodologia e colocar comandos específicos em manual de integração por ferramenta | PENDENTE |
| ADP-027 | Regras gerais: não pular gates, registrar questões abertas, aprovação explícita, reabertura formal, handoff controlado | Presentes de forma resumida | PRESERVAR | Constituem a espinha dorsal de governança | PENDENTE |
| ADP-028 | Ciclo Construir → Provar → Diagnosticar → Feedback → Incremento de Valor → Validar | Presente literalmente | PRESERVAR | Manter o ciclo da fonte sem alterar a sequência | PENDENTE |
| ADP-029 | Estado DRAFT e proibição de alegar conformidade antes da comparação | Presentes explicitamente | PRESERVAR até homologação | É um controle de integridade documental essencial enquanto houver diferenças em análise | PENDENTE |
| ADP-030 | Metadados e dependências para norma central/hierarquia documental | Presentes | ADAPTAR após verificação | Confirmar caminhos e dependências reais; não assumir existência ou validade apenas por estarem escritos | PENDENTE |

## 4. Decisões de adaptação que exigem atenção especial

### 4.1 Arquitetura-alvo e neutralidade arquitetural

A fonte APDF pergunta qual estilo arquitetural faz sentido para o domínio e solicita uma arquitetura-alvo. A adaptação deve preservar essa análise sem transformar uma arquitetura de referência em imposição universal.

A decisão DEC-003, conforme o estado de projeto conhecido, determina que o núcleo central padroniza controles e não impõe arquitetura universal de produto; decisões específicas precisam de ADRs por projeto. A adaptação proposta é compatível com DEC-003.

### 4.2 Integração TPM

A fonte original inclui sugestões condicionais de comandos TPM. A proposta é não fazer da ferramenta uma dependência obrigatória da metodologia central. Se houver adoção futura, ela deve passar por avaliação e decisão próprias. Esta proposta não autoriza instalar, configurar ou executar TPM.

### 4.3 Instruções específicas de ferramenta

A fonte cita chat, API, editores e repositório. A proposta é preservar o comportamento metodológico como regra central e transferir detalhes de implantação (arquivos de instrução e comandos específicos) para um manual de integração versionado. Isso evita acoplar a metodologia a uma ferramenta sem retirar os controles de escopo.

### 4.4 Checkpoints Anti-Surto durante execução

A fonte pede checkpoints em fases/gates e acompanhamento durante a Fase 13 e waves. A proposta mantém esse controle, mas requer definir um intervalo operacional razoável e eventos que o disparem. Não se deve inventar uma cadência rígida sem validação humana.

## 5. Critérios de aceite para a adaptação

Antes de homologar a versão adaptada, confirmar todos os itens:

- [ ] Cada fase contém pergunta central, elicitação, artefatos e gate, ou aponta para referência normativa inequívoca que os contenha.
- [ ] As quatro perguntas iniciais do APDF estão preservadas.
- [ ] O comportamento do agente antes, durante e depois de cada fase está documentado.
- [ ] Anti-Surto tem identidade, gatilhos, checkpoint, regra de ouro e fluxo de decisão em três opções.
- [ ] O tratamento de Architecture Freeze e alterações posteriores está conectado ao registro de ADRs.
- [ ] O Engineering Handoff contém os artefatos e confirmações de prontidão.
- [ ] Integrações específicas de ferramentas estão claramente marcadas como opcionais e sujeitas a adoção.
- [ ] Cada diferença tem justificativa e aprovador identificável.
- [ ] O estado documental só muda para homologado após revisão e aprovação humana.
- [ ] O manifesto SHA-256 é atualizado somente se e quando arquivos normativos forem alterados e a mudança for aprovada.

## 6. Pendências de governança

1. **Responsável nominal:** designar quem aprova a adaptação e homologa o APDF (pendência de autoridade GOV-AUTH-001).
2. **Decisões por linha:** aprovar, rejeitar ou ajustar os tratamentos propostos na matriz.
3. **Forma documental:** decidir se os detalhes operacionais serão incorporados ao `apdf.md` ou mantidos em documento operacional separado com referência vinculante.
4. **Revisão de conflitos:** manter DEC-003 como regra vigente até que uma eventual revisão seja formalmente aprovada.
5. **Controle de versão:** registrar a adaptação e sua justificativa no histórico apropriado somente após aprovação.
6. **Gate G0:** permanece pendente até cumprimento dos controles formais de aprovação da baseline.

## 7. Estado final deste artefato

- **Decisão do usuário:** adaptar e documentar diferenças (opção C).
- **Matriz de adaptação:** proposta preparada.
- **Diferenças aprovadas individualmente:** nenhuma ainda.
- **APDF homologado:** não.
- **Baseline normativa modificada:** não.
- **Manifesto SHA-256 modificado:** não.
- **Fase B autorizada/iniciada:** não.
- **Próximo passo:** revisão humana da matriz, resolução das pendências e autorização explícita antes de qualquer alteração normativa.
