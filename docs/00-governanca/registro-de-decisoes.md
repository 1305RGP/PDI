# Registro de Decisões

**ID:** GOV-DEC-001  
**Tipo:** Registro de Decisões  
**Versão:** 0.2.1  
**Estado:** APPROVED — registro ativo e controlado.  
**Proprietário:** Proprietário humano do Núcleo (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Decisões transversais do Núcleo Central de Engenharia.  
**Data:** 2026-10-27  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`, `docs/01-metodologia/APDF_V01.md`.  
**Histórico de aprovação:** v0.1.0 — criado na baseline conceitual com DEC-001 a DEC-006 (2026-10-26). v0.2.0 — incorpora DEC-007, que designa o `APDF_V01` como padrão metodológico do Núcleo (2026-10-26). v0.2.1 — incorpora DEC-008 (critérios de G0), DEC-009 (homologação de G0, patch APDF_V01 v1.0.1 e autorização da Fase B) e DEC-010 (fixação do escopo do patch v1.0.1 e diferimento de cinco correções para a v1.1.0) (2026-10-27).  

| ID | Decisão | Estado | Observações |
|---|---|---|---|
| DEC-001 | O projeto utiliza a pasta `PDI` como raiz inicial. | APPROVED | Pasta informada como vazia pelo usuário. |
| DEC-002 | Os Contratos 01 a 05 compõem a baseline conceitual inicial. | APPROVED | Aprovados explicitamente na conversa; controles ainda não implementados. |
| DEC-003 | O Núcleo padroniza controles, não uma arquitetura única para todos os produtos. | APPROVED | Arquitetura local deve ser justificada por ADR. |
| DEC-004 | Não alterar repositórios existentes nem instalar/conectar ferramentas nesta etapa. | APPROVED | Restrição operacional da inicialização. |
| DEC-005 | Estrutura inicial documental será criada antes de implementar orquestração. | APPROVED | Pacote documental v0.1.0. |
| DEC-006 | Ferramentas só serão consideradas compatíveis após inspeção e teste no ambiente real. | APPROVED | Documentação pública não basta. |
| DEC-007 | O `APDF_V01` (`docs/01-metodologia/APDF_V01.md`, MET-APDF-001 v1.0.0) passa a ser o padrão metodológico de descoberta e preparação do Núcleo. | APPROVED | Consolida as fontes candidatas `APDF.md` e `ORQUESTRADOR_APDF.md`; substitui o `apdf.md` v0.1.0. Aprovação por instrução direta do proprietário humano; revisão independente pendente. |
| DEC-008 | Estabelecimento formal dos critérios de aceite do Gate G0 (CA-G0-01 a CA-G0-06). | APPROVED | Deliberação formal do Proprietário Humano sanando a proveniência dos critérios de revisão da materialização documental (achado R-04). |
| DEC-009 | Homologação formal do Gate G0, adoção do patch APDF_V01 v1.0.1 (baseline v0.2.1) e autorização para início da Fase B. | APPROVED | Deliberação formal do Proprietário Humano com base nos pareceres de governança e auditoria crítica. Baseline v0.2.1 homologada; Fase B autorizada. Escopo do patch v1.0.1 revisto por DEC-010. |
| DEC-010 | Fixação do escopo do patch APDF_V01 v1.0.1 (C-02, C-03, C-04, C-08, C-09, C-10) e diferimento de C-01, C-05, C-06, C-07 e C-11 para a v1.1.0. | APPROVED | Instrução direta do Proprietário Humano (2026-10-27) após revisão crítica. Não revoga a homologação do G0 em DEC-009; restringe o conteúdo material do patch. Redação pendente de confirmação literal do proprietário. |

## Detalhamento das Decisões

### DEC-007 — Adoção do APDF_V01 como padrão metodológico

- **Contexto:** o Núcleo possuía `docs/01-metodologia/apdf.md` v0.1.0 em estado `DRAFT`, classificado como referência provisória não homologada, e duas fontes candidatas externas — `APDF.md` (identidade do agente, fases e gates) e `ORQUESTRADOR_APDF.md` (modo document-aware). A fonte original `APDF(1).md` não foi localizada, impedindo qualquer declaração de conformidade com o framework original.
- **Decisão:** consolidar as duas fontes candidatas com a estrutura local e adotar o resultado como padrão metodológico do Núcleo, materializado em `docs/01-metodologia/APDF_V01.md`, ID `MET-APDF-001`, versão `1.0.0`, estado `APPROVED`.
- **Alternativas consideradas:**
  1. manter o `apdf.md` em `DRAFT` até recuperar a fonte original — rejeitada por deixar o Núcleo sem metodologia utilizável;
  2. restaurar o `apdf.md` v0.1.0 como padrão — rejeitada por ser lista de fases sem conteúdo operacional, sem Anti-Surto e sem controle pós-Freeze;
  3. consolidar as fontes candidatas em novo artefato versionado — **adotada**.
- **Justificativa:** elimina a dependência de fonte inexistente, preserva a proveniência das duas fontes disponíveis e mantém neutralidade arquitetural (DEC-003). As lacunas ficam explícitas em vez de mascaradas por alegação de conformidade.
- **Consequências:**
  - `docs/01-metodologia/apdf.md` v0.1.0 passa a `SUPERSEDED`, mantido apenas como registro histórico;
  - `docs/01-metodologia/ciclo-apdf.md` passa a referenciar `APDF_V01.md`;
  - baseline documental sobe para `v0.2.0`; Contratos 01 a 05 permanecem inalterados em conteúdo;
  - `MANIFESTO-SHA256.md` e `CHANGELOG.md` são atualizados.
- **Ressalvas registradas:**
  - fonte original `APDF(1).md` indisponível; conformidade externa não demonstrável (L-01);
  - aprovação por instrução direta do proprietário humano nesta sessão, sem segundo revisor (L-05);
  - TPM não executado nem verificado no ambiente; integração opcional e não testada (L-03);
  - seção 14 do `APDF_V01` é informativa e não atesta compatibilidade de ferramenta (L-04);
  - detector Anti-Surto permanece manual (L-02).
- **Escopo:** metodologia de descoberta e preparação do Núcleo Central de Engenharia.
- **Responsável pela aprovação:** Proprietário humano do Núcleo, por instrução direta na sessão (designação nominal pendente conforme GOV-AUTH-001).
- **Data:** 2026-10-26.
- **Artefatos afetados:** `docs/01-metodologia/APDF_V01.md` (criado), `docs/01-metodologia/apdf.md` (SUPERSEDED), `docs/01-metodologia/ciclo-apdf.md`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`, `docs/00-governanca/registro-de-decisoes.md`.
- **Estado:** `APPROVED`.

### DEC-008 — Estabelecimento dos Critérios de Aceite do Gate G0

- **Contexto:** A especificação original do Gate G0 no `README.md` definia o objetivo de conferência da materialização documental em prosa. O parecer técnico `REL-REV-CRITICA-APDF-003` (achado `R-04`) identificou que a proposta de encerramento avaliava o gate contra critérios (`CA-G0-01` a `CA-G0-06`) que ainda não haviam sido formalizados normativamente pelo Núcleo.
- **Decisão:** Estabelecer e aprovar formalmente os seis critérios de aceite objetivos para o encerramento do Gate G0:
  - `CA-G0-01`: Presença física de todos os artefatos normativos previstos na estrutura da baseline;
  - `CA-G0-02`: Conferência de 100% de integridade criptográfica no manifesto SHA-256;
  - `CA-G0-03`: Blindagem da neutralidade arquitetural (DEC-003), remetendo frameworks a ADRs locais;
  - `CA-G0-04`: Metodologia de descoberta padronizada, versionada e compatibilizada com os contratos do Núcleo;
  - `CA-G0-05`: Contratos 01 a 05 conceituais estáveis e suficientes para modelagem executável;
  - `CA-G0-06`: Isolamento absoluto de ferramentas externas e ausência de código de produto.
- **Alternativas consideradas:**
  1. Avaliação tácita em prosa sem critérios numerados — rejeitada por fragilidade de rastreabilidade para futuros gates;
  2. Aprovação retrospectiva não declarada — rejeitada por vedação de auto-atestação;
  3. Formalização explícita dos critérios por decisão prévia ao encerramento — **adotada**.
- **Justificativa:** Garante proveniência documental inequívoca e estabelece o padrão de rigor para os gates subsequentes (G1, G2).
- **Consequências:** O Gate G0 passa a ter base normativa formal para aferição de encerramento em DEC-009.
- **Escopo:** Governança e ciclo de vida do Núcleo Central de Engenharia (PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo.
- **Data:** 2026-10-27.
- **Artefatos afetados:** `docs/00-governanca/registro-de-decisoes.md`.
- **Estado:** `APPROVED`.

### DEC-009 — Homologação do Gate G0, Promoção do APDF v1.0.1 e Autorização da Fase B

- **Contexto:** Estabelecidos os critérios de G0 via DEC-008 e verificada a conformidade integral dos 27 artefatos da baseline v0.2.0. A metodologia `APDF_V01.md` recebeu correções editoriais e de consistência em `temp/APDF_V01_CORRIGIDA_CANDIDATA.md` (v1.0.1), incluindo o campo `dependencies` em §8.4 (CTR-03), o esclarecimento da estrutura de 4 campos nucleares em §6 (R-01), a modelagem de `REABERTO` como estado persistente bloqueante em §7.3 (R-02) e a correção da narrativa de proveniência de hashes (R-03).
- **Decisão:** Declarar formalmente **HOMOLOGADO E CONCLUÍDO o Gate G0 (Revisão da Materialização Documental)**, **PROMOVER** a metodologia saneada `APDF_V01.md` para a versão `1.0.1` (`MET-APDF-001`), **ELEVAR** a baseline documental do Núcleo para **v0.2.1** e **AUTORIZAR** a entrada do projeto PDI na **Fase B (Modelagem Técnica de Schemas e Testes de Conformidade Automatizados)**.
- **Alternativas consideradas:**
  1. Postergar G0 até implementação de código — rejeitada por inversão metodológica;
  2. Aprovar G0 mantendo APDF v1.0.0 com omissão de campo — rejeitada, pois as correções da v1.0.1 foram validadas tecnicamente;
  3. Homologação formal com promoção do patch v1.0.1 e desbloqueio da Fase B — **adotada**.
- **Justificativa:** Cumprimento integral de `CA-G0-01` a `CA-G0-06`; saneamento comprovado das inconsistências metodológicas em cópia candidata; contratos estáveis para modelagem em JSON Schema.
- **Consequências:**
  - O Gate G0 é encerrado; o próximo gate ativo passa a ser o **Gate G1 — Validação da Modelagem da Fase B**;
  - `docs/01-metodologia/APDF_V01.md` é atualizado para v1.0.1;
  - Fica autorizada a promoção controlada dos schemas formais (`specs/schemas/`, `specs/contratos/`) e cadernos de teste de `temp/lote-02-gpt/` para as pastas oficiais do projeto;
  - Código de produto, instalação de ferramentas e integrações externas continuam bloqueadas.
- **Ressalvas registradas:**
  - As propostas `PROP-01` a `PROP-03` e `B-01` permanecem isoladas no Anexo C do APDF para deliberação futura;
  - Designações nominais da matriz de autoridade seguem reservadas ao onboarding de equipes;
  - A conformidade das ferramentas candidatas permanece `NOT_VERIFIED` até a Fase C.
- **Escopo:** Governança e ciclo de vida do Núcleo Central de Engenharia (PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo.
- **Data:** 2026-10-27.
- **Artefatos afetados:** `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`, `docs/00-governanca/registro-de-decisoes.md`, `docs/01-metodologia/APDF_V01.md`.
- **Estado:** `APPROVED`.

### DEC-010 — Fixação do escopo do patch APDF_V01 v1.0.1 e diferimento para a v1.1.0

- **Contexto:** A revisão crítica do patch promovido em DEC-009 concluiu que o conteúdo então incorporado ao `docs/01-metodologia/APDF_V01.md` excedia o que §16.4 do próprio padrão define como patch corretivo. Cinco das onze correções acrescentam ou alteram conteúdo normativo: `C-01` (campo obrigatório `dependencies` em §8.4), `C-05` (campo obrigatório `justification` em §7.1), `C-06` (nova seção normativa §15.5), `C-07` (dois itens vinculantes em §11.2 e nova §11.4) e `C-11` (semântica dos estados do gate em §7.3). A mesma revisão constatou que a premissa de "conformidade integral dos 27 artefatos" registrada em DEC-009 não se sustentava contra os arquivos em disco: antes das edições desta rodada, o `MANIFESTO-SHA256.md` apresentava divergência em quatro entradas (`CHANGELOG.md`, `README.md`, `docs/00-governanca/registro-de-decisoes.md`, `docs/01-metodologia/APDF_V01.md`).
- **Decisão:** Instrução direta do proprietário humano para **reduzir o escopo do patch `1.0.1`** às correções sem alteração de significado normativo — `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10` — e **diferir** `C-01`, `C-05`, `C-06`, `C-07` e `C-11` para a versão `1.1.0`, a ser aprovada por decisão própria, ainda não autorizada.
- **Alternativas consideradas:**
  1. Manter as onze correções na `1.0.1`, como redigido em DEC-009 — rejeitada por classificar como corretivo um conjunto que altera campos obrigatórios, conteúdo de handoff e semântica de estados, contrariando §16.4 e esvaziando a distinção entre patch e versão menor;
  2. Revogar a `1.0.1` e retornar integralmente à `1.0.0` — rejeitada por descartar correções editoriais já verificadas (`C-02`, `C-03`, `C-04`, `C-10`) e reabrir trabalho sem ganho de controle;
  3. Reduzir o patch ao seu escopo próprio e registrar o restante como versão menor futura — **adotada**.
- **Justificativa:** Preserva a integridade semântica da classificação de versões do padrão, mantém rastreabilidade integral das cinco correções diferidas (Anexo C.2 e lacuna `L-08`) e evita que o proprietário aprove, sob rótulo de correção, mudanças de método que exigem deliberação própria.
- **Consequências:**
  - `docs/01-metodologia/APDF_V01.md` permanece em `1.0.1`, com o corpo reduzido às seis correções mantidas; §7.1, §7.3, §8.4, §11.2 e §15.5 retornam ao texto da `1.0.0`;
  - as cinco correções diferidas ficam registradas em Anexo C.2, com proposta e motivo de bloqueio, e catalogadas na lacuna `L-08` de §16.3;
  - `CA-APDF-07` e `CA-APDF-08` passam a ser reconhecidamente satisfeitos apenas em parte até a `1.1.0` — condição herdada da `1.0.0`, agora declarada em vez de omitida;
  - a `1.1.0` não está autorizada por esta decisão e depende de decisão própria;
  - `MANIFESTO-SHA256.md`, `CHANGELOG.md` e `README.md` são reconciliados com o novo conteúdo, sob a mesma baseline `v0.2.1`.
- **Ressalvas registradas:**
  - A homologação do Gate G0 e a autorização da Fase B permanecem como decididas em DEC-009; DEC-010 restringe apenas o conteúdo material do patch e não reabre o gate;
  - A afirmação de "conformidade integral dos 27 artefatos" em DEC-009 não é sustentada pelas evidências desta rodada e fica **superada** por esta decisão; o registro de DEC-009 não é alterado, por vedação de reescrita de decisão aprovada;
  - Esta redação foi produzida pelo agente a partir de instrução direta do proprietário e **aguarda confirmação literal**; a substância da decisão é do proprietário, a forma é do agente;
  - A leitura final do texto da `1.0.1` pelo proprietário permanece pendente; o estado `APPROVED` refere-se ao escopo, não ao aceite literal da redação;
  - As propostas `PROP-01` a `PROP-03` e `B-01` continuam não normativas no Anexo C.3.
- **Escopo:** Governança e ciclo de vida do Núcleo Central de Engenharia (PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo, por instrução direta na sessão (designação nominal pendente conforme GOV-AUTH-001).
- **Data:** 2026-10-27.
- **Artefatos afetados:** `docs/01-metodologia/APDF_V01.md`, `docs/00-governanca/registro-de-decisoes.md`, `CHANGELOG.md`, `README.md`, `MANIFESTO-SHA256.md`.
- **Estado:** `APPROVED`.

## Regra de Gestão de Decisões

- Decisões em elaboração ou abertas devem ser registradas com estado `DRAFT` ou `PENDING_APPROVAL`.
- Somente decisões com autorização formal registrada de acordo com a Matriz de Autoridade (`GOV-AUTH-001`) podem transitar para `APPROVED`.
- Nenhuma decisão aberta pode ser presumida como aprovada por decurso de prazo ou silêncio.

## Modelo para novas decisões

- ID: DEC-NNN
- Contexto:
- Decisão:
- Alternativas consideradas:
- Justificativa:
- Consequências:
- Escopo:
- Responsável pela aprovação:
- Data:
- Artefatos afetados:
- Estado: (`DRAFT` | `PENDING_APPROVAL` | `APPROVED` | `REJECTED` | `SUPERSEDED` | `OBSOLETE`)
