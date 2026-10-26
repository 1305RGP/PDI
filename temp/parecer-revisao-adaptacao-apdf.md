# Parecer Técnico de Revisão Documental — Adaptação do APDF

**ID:** REV-APDF-PROP-001  
**Tipo:** Parecer Técnico de Revisão Documental  
**Data:** 2026-10-26  
**Versão do Projeto:** 0.1.0  
**Status:** REVISADO — Proposta avaliada; homologação e incorporação normativa pendentes de aprovação humana no Gate G0  
**Objeto de Análise:** [`temp/registro-adaptacao-apdf-proposta.md`](file:///E:/documentos/projetos/PDI/temp/registro-adaptacao-apdf-proposta.md)  
**Documentos de Confronto:**
- [`docs/01-metodologia/apdf.md`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/apdf.md) (`MET-APDF-001`)
- [`docs/00-governanca/norma-central.md`](file:///E:/documentos/projetos/PDI/docs/00-governanca/norma-central.md) (`NCE-001`)
- [`docs/00-governanca/hierarquia-documental.md`](file:///E:/documentos/projetos/PDI/docs/00-governanca/hierarquia-documental.md) (`GOV-DOC-001`)
- [`docs/00-governanca/registro-de-decisoes.md`](file:///E:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md) (com foco em `DEC-003`, além de `DEC-001`, `DEC-002`, `DEC-004`, `DEC-005` e `DEC-006`)

---

## 1. Visão Geral e Juízo de Coerência

A proposta contida em `temp/registro-adaptacao-apdf-proposta.md` (`MET-APDF-ADAPT-001`) foi elaborada para formalizar a **Opção C (Adaptar o APDF documentando e justificando cada diferença)** frente à fonte original `APDF(1).md`.

A análise documental constata que a proposta:
1. **Preserva a autoridade da governança central:** Mantém o APDF como processo de descoberta e preparação, subordinado à Norma Central (`NCE-001`) e à Hierarquia Documental (`GOV-DOC-001`).
2. **Defende o princípio de neutralidade arquitetural (`DEC-003`):** Rejeita explicitamente a imposição automática de padrões arquiteturais rígidos (Clean Architecture, DDD de implementação, EDA universal) previstos em visões externas de produto, canalizando as escolhas de arquitetura para ADRs de projeto (`docs/03-adrs/`).
3. **Respeita o menor privilégio e isolamento de ferramentas (`DEC-004`, `DEC-006` e CTR-04):** Desacopla a metodologia central de comandos de ferramentas proprietárias externas (ex: TPM).
4. **Mantém o controle de baseline:** Não autodeclara aprovação nem conformidade integral precoce, mantendo o estado `DRAFT` até deliberação humana formal.

---

## 2. Análise Item a Item da Matriz de Adaptação (ADP-001 a ADP-030)

### ADP-001 — Identidade do Agente APDF
- **Coerência:** Plena com `NCE-001` (Princípio 2: Autoridade explícita; Princípio 5: Menor privilégio) e `docs/01-metodologia/apdf.md#L21`.
- **Conflito ou Duplicidade:** Não há conflito. Há complementaridade com o papel de orquestração definido em `CTR-04`.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L21`; `docs/00-governanca/norma-central.md#L15`; `docs/02-contratos/contrato-04-orquestracao.md#L25-L31`.
- **Recomendação:** Aprovar a adaptação. Explicitar que o APDF atua como orquestrador de discovery e não gera código-fonte de produto.
- **Decisão Humana Necessária:** Nenhuma objeção técnica; aprovação redacional formal.

### ADP-002 — Quatro Perguntas Iniciais Obrigatórias
- **Coerência:** Plena com `NCE-001` (Princípios 1 e 6: Baseline explícita e Rastreabilidade) e `GOV-DOC-001` (Nível 3).
- **Conflito ou Duplicidade:** Omissão identificada na baseline atual (`docs/01-metodologia/apdf.md`), que iniciava diretamente na Fase 01 sem elicitação de contexto preliminar.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L23-L25`; `docs/00-governanca/registro-de-decisoes.md` (`DEC-001`).
- **Recomendação:** Aprovar a preservação. Incorporar as 4 perguntas como rito de Inicialização/Setup do APDF.
- **Decisão Humana Necessária:** Homologar a lista de perguntas no fluxo oficial.

### ADP-003 — Sequência Padronizada por Fase
- **Coerência:** Plena com `NCE-001` (Princípios 2, 3 e 9: Sem sucesso presumido; Regras de Bloqueio) e `GOV-DOC-001` (Seções 2 e 5).
- **Conflito ou Duplicidade:** O `apdf.md` atual possui regras gerais de gates, mas não formalizava os checkpoints Anti-Surto pré e pós-fase.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L40-L47`; `docs/00-governanca/norma-central.md#L27-L35`.
- **Recomendação:** Aprovar a preservação da sequência (Anúncio → Checkpoint Anti-Surto → Elicitação → Artefatos → Checkpoint → Gate com Aprovação Explícita).
- **Decisão Humana Necessária:** Homologar a obrigatoriedade do rito sequencial.

### ADP-004 — Fase 01: Product Discovery
- **Coerência:** Plena com `NCE-001` (Princípio 1: Baseline explícita).
- **Conflito ou Duplicidade:** A baseline atual continha apenas o título da fase sem a especificação dos entregáveis (`Product Vision`, `Product Charter`, `Personas`, `Market Positioning`, `Problem Statement`).
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L25`.
- **Recomendação:** Aprovar a preservação dos artefatos e perguntas de elicitação.
- **Decisão Humana Necessária:** Homologar o pacote de artefatos da Fase 01.

### ADP-005 — Fase 02: Domain Discovery
- **Coerência:** Coerente como análise de negócio, sujeita a ressalva de governança.
- **Conflito ou Duplicidade:** Risco de conflito com `DEC-003` caso termos como `Core Domain`, `Supporting Domains` e `Ubiquitous Language` sejam interpretados como imposição dogmática de Clean Architecture/DDD no código.
- **Evidência Documental:** `docs/00-governanca/registro-de-decisoes.md` (`DEC-003`); `docs/00-governanca/norma-central.md#L23`.
- **Recomendação:** Preservar a fase, adicionando nota normativa explícita: os conceitos de domínio servem para entendimento do negócio e não impõem arquitetura de implementação no produto.
- **Decisão Humana Necessária:** Confirmar que a elicitação de domínio não revoga `DEC-003`.

### ADP-006 — Fase 03: Capability Discovery
- **Coerência:** Plena com `NCE-001` (Princípio 6: Rastreabilidade) e `CTR-01`.
- **Conflito ou Duplicidade:** Omissão de conteúdo operacional em `apdf.md` atual.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L27`.
- **Recomendação:** Aprovar a preservação dos entregáveis (`Capability Map`, `Ownership`, `Dependencies`).
- **Decisão Humana Necessária:** Homologação do escopo da fase.

### ADP-007 — Fase 04: Context Discovery
- **Coerência:** Coerente para mapeamento de fronteiras de contexto e propriedade de dados.
- **Conflito ou Duplicidade:** Semelhante ao ADP-005: `Bounded Contexts` e `Event Map` não podem ser usados para forçar arquitetura orientada a eventos (EDA) ou microsserviços sem justificativa em ADR.
- **Evidência Documental:** `docs/00-governanca/registro-de-decisoes.md` (`DEC-003`); `docs/03-adrs/README.md`.
- **Recomendação:** Preservar a fase como análise funcional de fronteiras, com ressalva textual vinculando implementações desacopladas a ADRs do projeto.
- **Decisão Humana Necessária:** Homologar a interpretação analítica das fronteiras de contexto.

### ADP-008 — Fase 05: Business Discovery
- **Coerência:** Plena com `NCE-001` (Rastreabilidade de objetivos e valor).
- **Conflito ou Duplicidade:** Omissão dos artefatos operacionais em `apdf.md` atual.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L29`.
- **Recomendação:** Aprovar a preservação (`Value Streams`, `Operating Model`, `Service Model`).
- **Decisão Humana Necessária:** Homologação do escopo da fase.

### ADP-009 — Fase 06: Current State Discovery
- **Coerência:** Altíssima coerência com `NCE-001` (Princípio 3: Evidência verificável) e `DEC-001` (raiz vazia / greenfield).
- **Conflito ou Duplicidade:** Omissão na baseline atual da regra de registrar formalmente "greenfield — sem estado atual" quando aplicável.
- **Evidência Documental:** `docs/00-governanca/registro-de-decisoes.md` (`DEC-001`); `docs/00-governanca/norma-central.md#L16`.
- **Recomendação:** Preservar a exigência de registrar explicitamente o estado greenfield ou auditar evidências do legado com ferramentas autorizadas.
- **Decisão Humana Necessária:** Nenhuma divergência técnica.

### ADP-010 — Fase 07: Gap Discovery
- **Coerência:** Plena com `NCE-001` (Princípio 7: Segurança e controles proporcionais ao risco).
- **Conflito ou Duplicidade:** Ausência da matriz de risco (probabilidade × impacto) e dívida técnica no `apdf.md` atual.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L31`; `docs/00-governanca/norma-central.md#L20`.
- **Recomendação:** Preservar a elicitação de gaps e priorização de riscos.
- **Decisão Humana Necessária:** Homologação do modelo de análise de gaps.

### ADP-011 — Fase 08: Target Architecture
- **Coerência:** PONTO CENTRAL DE COERÊNCIA com `DEC-003` e `NCE-001` (Princípio 10).
- **Conflito ou Duplicidade:** Conflito resolvido: a fonte externa prescrevia template rígido; a proposta adapta a fase para elicitar necessidades e canalizar as escolhas arquiteturais para ADRs em `docs/03-adrs/`, respeitando a hierarquia documental.
- **Evidência Documental:** `docs/00-governanca/registro-de-decisoes.md` (`DEC-003`); `docs/00-governanca/norma-central.md#L23`; `docs/03-adrs/README.md`.
- **Recomendação:** Aprovar categoricamente a adaptação proposta.
- **Decisão Humana Necessária:** Homologar formalmente que a arquitetura do produto é regida por ADRs do projeto e não por prescrição metodológica fechada.

### ADP-012 — Fase 09: Architecture Freeze
- **Coerência:** Plena com `NCE-001` (Princípio 1: Baseline explícita) e `GOV-DOC-001` (Nível 4: ADR).
- **Conflito ou Duplicidade:** Complementa e operacionaliza o `docs/03-adrs/README.md` recém-criado.
- **Evidência Documental:** `docs/03-adrs/README.md`; `docs/00-governanca/hierarquia-documental.md#L20-L27`.
- **Recomendação:** Preservar o marco de congelamento de arquitetura antes de iniciar o planejamento e a execução.
- **Decisão Humana Necessária:** Nenhuma objeção; homologar o fluxo.

### ADP-013 — Fase 10: Execution Planning
- **Coerência:** Plena com `GOV-DOC-001` (Nível 7: Backlog e tickets) e `CTR-05`.
- **Conflito ou Duplicidade:** Omissão da decomposição estruturada (`Roadmap`, `Waves`, `Epics`, `Features`) em `apdf.md`.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L34`; `docs/00-governanca/hierarquia-documental.md#L15`.
- **Recomendação:** Preservar a decomposição por ondas e pacotes de trabalho.
- **Decisão Humana Necessária:** Homologar a estrutura de planejamento de execução.

### ADP-014 — Fase 11: Governance Model
- **Coerência:** Plena com `NCE-001` (Princípio 7: Controles proporcionais ao risco) e `CTR-02` (`docs/02-contratos/contrato-02-qualidade.md#L21`).
- **Conflito ou Duplicidade:** Evita o conflito de tentar impor modelos de scoring universais excessivamente pesados a projetos simples ou de baixo risco.
- **Evidência Documental:** `docs/00-governanca/norma-central.md#L20`; `docs/02-contratos/contrato-02-qualidade.md#L21`.
- **Recomendação:** Aprovar a adaptação para calibrar a governança ao perfil de risco e porte da entrega.
- **Decisão Humana Necessária:** Aprovar os pesos de governança e scoring específicos do projeto.

### ADP-015 — Fase 12: Execution Packages
- **Coerência:** Plena com `NCE-001` (Princípio 5: Menor privilégio) e `CTR-03` (Contexto operacional mínimo).
- **Conflito ou Duplicidade:** Ausente no `apdf.md` atual.
- **Evidência Documental:** `docs/02-contratos/contrato-03-harness.md#L12-L16`.
- **Recomendação:** Preservar a especificação dos pacotes de execução contendo escopo fechado, restrições e critérios de aceite.
- **Decisão Humana Necessária:** Homologar o modelo de Execution Package.

### ADP-016 — Fase 13: Engineering Handoff
- **Coerência:** Plena com `NCE-001`, `GOV-DOC-001` e `CTR-05` (Inicialização controlada).
- **Conflito ou Duplicidade:** A proposta remove duplicações entre o checklist do APDF original e as exigências dos Contratos 01 a 05, consolidando uma lista única de prontidão.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L37`; `docs/02-contratos/contrato-05-inicializacao.md#L20-L22`.
- **Recomendação:** Aprovar a adaptação e integração com os Contratos 01-05.
- **Decisão Humana Necessária:** Homologar o checklist consolidado de handoff.

### ADP-017 — Regras do Agente APDF
- **Coerência:** Plena com `NCE-001` (Princípios 3 e 9: Sem sucesso presumido; evidência verificável) e `AGENTS.md#L29-L33`.
- **Conflito ou Duplicidade:** Atualmente ausente em `apdf.md`.
- **Evidência Documental:** `docs/00-governanca/norma-central.md#L22`; `AGENTS.md#L32`.
- **Recomendação:** Preservar como regras comportamentais explícitas do discovery.
- **Decisão Humana Necessária:** Nenhuma divergência.

### ADP-018 — Identidade e Limites do Agente Anti-Surto
- **Coerência:** Plena com `docs/01-metodologia/anti-surto.md` (`MET-SURTO-001`) e `docs/02-contratos/contrato-03-harness.md#L31-L34`.
- **Conflito ou Duplicidade:** Já materializado de forma autônoma em `anti-surto.md`. A proposta assegura que o agente não decide nem implementa mudanças por conta própria.
- **Evidência Documental:** `docs/01-metodologia/anti-surto.md#L20`; `docs/02-contratos/contrato-03-harness.md#L33`.
- **Recomendação:** Preservar a identidade e referenciar `MET-SURTO-001`.
- **Decisão Humana Necessária:** Nenhuma divergência.

### ADP-019 — Anti-Surto no Início de Cada Fase e Antes dos Gates
- **Coerência:** Plena com `NCE-001` (Regras de Bloqueio) e `MET-SURTO-001`.
- **Conflito ou Duplicidade:** Ausente no texto atual de `apdf.md`.
- **Evidência Documental:** `docs/01-metodologia/anti-surto.md#L11-L16`.
- **Recomendação:** Preservar como marco obrigatório de reancoragem.
- **Decisão Humana Necessária:** Homologar a frequência pré-fase e pré-gate.

### ADP-020 — Formato do Checkpoint Anti-Surto
- **Coerência:** Plena com `CTR-03` (`docs/02-contratos/contrato-03-harness.md#L12-L16`).
- **Conflito ou Duplicidade:** Adaptação saudável: mantém todos os campos obrigatórios (fase, objetivo, itens congelados, ação atual, proibições, desvio detectado) sem engessar a formatação puramente estética.
- **Evidência Documental:** `docs/02-contratos/contrato-03-harness.md#L13`.
- **Recomendação:** Aprovar a adaptação.
- **Decisão Humana Necessária:** Aprovação dos campos mínimos obrigatórios.

### ADP-021 — Gatilhos de Scope Creep
- **Coerência:** Plena com `NCE-001` (Regras de Bloqueio) e `GOV-DOC-001` (Nível 4: ADR).
- **Conflito ou Duplicidade:** Ausente no texto atual de `apdf.md`.
- **Evidência Documental:** `docs/00-governanca/hierarquia-documental.md#L20-L27`; `docs/01-metodologia/anti-surto.md#L7`.
- **Recomendação:** Preservar como condições explícitas de interrupção (ex: mudança pós-Architecture Freeze sem ADR aprovada).
- **Decisão Humana Necessária:** Homologação formal dos gatilhos.

### ADP-022 — Três Opções ao Detectar Desvio
- **Coerência:** Plena com `docs/01-metodologia/anti-surto.md#L15` (Procedimento passo 5) e `CTR-03`.
- **Conflito ou Duplicidade:** Conexão direta com a norma vigente (Descartar, Registrar para o futuro, ou Reabrir formalmente o gate).
- **Evidência Documental:** `docs/01-metodologia/anti-surto.md#L15`.
- **Recomendação:** Preservar na íntegra.
- **Decisão Humana Necessária:** Nenhuma divergência técnica.

### ADP-023 — Regra de Ouro do Escopo
- **Coerência:** Plena com `NCE-001` (Princípio 1) e `GOV-DOC-001` (Seção 5: "Somente a versão vigente em estado APPROVED é baseline autorizada").
- **Conflito ou Duplicidade:** Reforça a regra de que nada fora de artefato aprovado pertence ao escopo.
- **Evidência Documental:** `docs/00-governanca/norma-central.md#L14`; `docs/00-governanca/hierarquia-documental.md#L54`.
- **Recomendação:** Preservar como princípio orientador explícito do APDF.
- **Decisão Humana Necessária:** Nenhuma divergência.

### ADP-024 — Anti-Surto Durante Handoff e Execução de Waves
- **Coerência:** Plena com `CTR-03` (Controle de loops e limites).
- **Conflito ou Duplicidade:** A proposta adapta para não criar burocracia excessiva, vinculando checkpoints a eventos relevantes e intervalos razoáveis de trabalho em vez de interrupções constantes.
- **Evidência Documental:** `docs/02-contratos/contrato-03-harness.md#L37-L40`.
- **Recomendação:** Aprovar a adaptação, estabelecendo que a cadência deve ser definida no início da execução de cada wave.
- **Decisão Humana Necessária:** Homologar o critério operacional de disparo de checkpoints durante o desenvolvimento.

### ADP-025 — Integração TPM Condicional
- **Coerência:** 100% COERENTE com `DEC-004` (proibição de instalar/conectar ferramentas) e `DEC-006` (compatibilidade exige teste no ambiente real).
- **Conflito ou Duplicidade:** Conflito evitado: a proposta omite com justificativa a ferramenta proprietária TPM da metodologia central, tratando-a como eventual extensão opcional futura se houver homologação.
- **Evidência Documental:** `docs/00-governanca/registro-de-decisoes.md` (`DEC-004`, `DEC-006`); `docs/05-ferramentas/inventario.md`.
- **Recomendação:** Aprovar integralmente a omissão do TPM da baseline central.
- **Decisão Humana Necessária:** Confirmar que ferramentas proprietárias externas não são pré-requisito da metodologia.

### ADP-026 — Instruções Específicas de Ferramenta e `/anti-surto`
- **Coerência:** Plena com `CTR-04` (Inventário de Ferramentas e compatibilidade) e desacoplamento metodológico.
- **Conflito ou Duplicidade:** Evita poluir a norma conceitual com comandos de chat específicos de ambientes particulares.
- **Evidência Documental:** `docs/02-contratos/contrato-04-orquestracao.md#L15`; `docs/05-ferramentas/matriz-de-compatibilidade.md`.
- **Recomendação:** Aprovar o tratamento de resumir com referência: regras comportamentais na metodologia; sintaxe de comandos em guias de ferramentas (`docs/05-ferramentas/`).
- **Decisão Humana Necessária:** Nenhuma divergência técnica.

### ADP-027 — Regras Gerais de Governança
- **Coerência:** Plena com `NCE-001` e `CTR-01`.
- **Conflito ou Duplicidade:** Já presente de forma resumida em `docs/01-metodologia/apdf.md#L40-L47`.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L40-L47`; `docs/02-contratos/contrato-01-governanca.md#L12-L21`.
- **Recomendação:** Preservar e consolidar na versão final.
- **Decisão Humana Necessária:** Nenhuma divergência.

### ADP-028 — Ciclo de Execução
- **Coerência:** Plena com `docs/01-metodologia/ciclo-apdf.md` (`MET-CICLO-001`) e `CTR-02`.
- **Conflito ou Duplicidade:** Duplicidade controlada entre `apdf.md` e `ciclo-apdf.md`.
- **Evidência Documental:** `docs/01-metodologia/ciclo-apdf.md`; `docs/02-contratos/contrato-02-qualidade.md#L25`.
- **Recomendação:** Preservar a sequência (Construir → Provar → Diagnosticar → Feedback → Incremento de Valor → Validar).
- **Decisão Humana Necessária:** Nenhuma divergência.

### ADP-029 — Estado DRAFT e Proibição de Conformidade Integral
- **Coerência:** VITAL PARA A INTEGRIDADE NORMATIVA (`NCE-001`, `GOV-DOC-001`, `AGENTS.md`).
- **Conflito ou Duplicidade:** Já implementado em `docs/01-metodologia/apdf.md` (Regra Operacional Provisória na Fase A).
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L13-L18`; `AGENTS.md#L6`.
- **Recomendação:** Preservar inalterado até a deliberação formal de homologação no Gate G0.
- **Decisão Humana Necessária:** A transição para `APPROVED` é reservada exclusivamente à autoridade humana no Gate G0.

### ADP-030 — Metadados e Dependências
- **Coerência:** Plena com `GOV-DOC-001` (Seção 4) e `CTR-01`.
- **Conflito ou Duplicidade:** Conforme corrigido na Fase A, o ID `MET-APDF-001` já foi estabelecido.
- **Evidência Documental:** `docs/01-metodologia/apdf.md#L3-L11`; `docs/00-governanca/hierarquia-documental.md#L38-L49`.
- **Recomendação:** Adaptar e consolidar as dependências reais com os artefatos de governança.
- **Decisão Humana Necessária:** Nenhuma divergência.

---

## 3. Síntese dos Conflitos Estruturais e Orientações

1. **AI Innovation OS Universal vs. DEC-003:**
   - A documentação de produto `AI Innovation OS` prescreve Clean Architecture, DDD e EDA como obrigatórios.
   - A decisão `DEC-003` do Núcleo estabelece que controles são comuns, mas arquiteturas de produto são decididas por ADR.
   - **Parecer:** A proposta em ADP-011 está correta e deve ser mantida. A metodologia central não deve forçar arquitetura universal.
2. **Dependência de Ferramentas Externas (TPM):**
   - A proposta em ADP-025 de omitir o TPM da metodologia central é estritamente aderente a `DEC-004`, `DEC-006` e `CTR-04`.
3. **Forma de Incorporação Documental:**
   - Recomenda-se manter o `docs/01-metodologia/apdf.md` conciso e executivo, criando referências vinculantes para artefatos complementares de detalhamento, ou expandi-lo em seções bem delimitadas sem gerar prolixidade que prejudique a leitura operacional de agentes.

---

## 4. Pendências Consolidadas para o Gate G0

Para que a baseline documental possa ser formalmente homologada no **Gate G0**, restam as seguintes pendências:

1. **Deliberação Humana da Matriz de Adaptação (`MET-APDF-ADAPT-001`):**
   - Aprovação formal dos itens propostos na matriz (especialmente a adaptação de Target Architecture via ADRs e a omissão de ferramentas proprietárias como TPM).
2. **Materialização Textual das Alterações no `apdf.md`:**
   - Incorporar as perguntas iniciais (ADP-002), ritos de fase (ADP-003), entregáveis operacionais (ADP-004 a ADP-016) e regras do agente (ADP-017) na documentação normativa, mediante prévia autorização.
3. **Designação Nominal dos Responsáveis (`GOV-AUTH-001`):**
   - Preenchimento formal humano dos papéis previstos na Matriz de Autoridade.
4. **Decisão sobre Nomenclatura das Pastas de Testes (`PEND-06`):**
   - Definição quanto à harmonização de idioma das pastas em `tests/` (`contracts`, `evaluations`, `governance`).
5. **Aprovação do Avanço para a Fase B:**
   - Somente após a homologação formal dos itens acima, autorizar o início da Fase B (desenvolvimento de schemas executáveis e cadernos de testes).
