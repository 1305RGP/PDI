# Proposta Formal de Decisão — Homologação do Gate G0 e Baseline v0.2.1

**ID da Proposta:** PROP-DEC-G0-001  
**Decisões Alvo:** `DEC-008` (Aprovação dos Critérios de G0) e `DEC-009` (Homologação de G0, Adoção do APDF v1.0.1 e Início da Fase B)  
**Tipo:** Proposta de Decisão de Governança e Passagem de Gate  
**Data:** 2026-10-27  
**Versão Alvo da Baseline:** 0.2.1  
**Status:** `SUPERSEDED` — proposta histórica. A deliberação ocorreu e foi registrada como `DEC-008`, `DEC-009` e `DEC-010` (2026-10-27); este documento não é mais fonte de decisão e suas minutas não devem ser copiadas para o registro.
**Autoridade Decisora:** Proprietário Humano do Núcleo Central de Engenharia (`GOV-AUTH-001`)

> **Nota de encerramento (2026-10-27).** Esta proposta cumpriu a função de levar a deliberação ao proprietário e fica preservada como registro do processo. Três pontos do texto abaixo **não** correspondem ao que foi decidido e não podem ser citados como vigentes: (a) `CA-G0-04` na seção 2 descreve a `1.0.1` como incorporando `dependencies` em §8.4 e sanando `R-02` — `DEC-010` retirou `C-01` e `C-11` do patch e `R-02` permanece aberto como lacuna `L-08`; (b) a minuta de `DEC-009` na seção 3.3 afirma "conformidade integral dos 27 artefatos", premissa que não se sustentou contra o manifesto em disco; (c) a expressão "conformidade integral" e a lista de resoluções de `R-01`..`R-05` refletem o estado anterior à revisão crítica. O texto oficial é o do `docs/00-governanca/registro-de-decisoes.md`.  
**Documentos de Suporte:**  
- [`temp/DOSSIE_DECISAO_HUMANA.md`](file:///E:/documentos/projetos/PDI/temp/DOSSIE_DECISAO_HUMANA.md) (`DOSSIE-DEC-HUMANA-002`)  
- [`temp/REVISAO_CRITICA_APDF_V101.md`](file:///E:/documentos/projetos/PDI/temp/REVISAO_CRITICA_APDF_V101.md) (`REL-REV-CRITICA-APDF-003`)  
- [`temp/MATRIZ_EVIDENCIAS_GOVERNANCA.md`](file:///E:/documentos/projetos/PDI/temp/MATRIZ_EVIDENCIAS_GOVERNANCA.md) (`EVI-MATRIZ-GOV-001`)  
- [`temp/resultado-GEMINI-auditoria-g0.md`](file:///E:/documentos/projetos/PDI/temp/resultado-GEMINI-auditoria-g0.md) (`REL-GEMINI-AUD-G0-001`)  
- [`temp/resultado-DEEPSEEK-apdf-rastreabilidade-v2.md`](file:///E:/documentos/projetos/PDI/temp/resultado-DEEPSEEK-apdf-rastreabilidade-v2.md)  
- [`temp/lote-02-gpt/resultado-GPT-lote-02.md`](file:///E:/documentos/projetos/PDI/temp/lote-02-gpt/resultado-GPT-lote-02.md)  

---

## 1. Objeto da Deliberação

Formalizar no Núcleo Central de Engenharia (PDI):
1. **DEC-008:** Estabelecimento formal dos critérios de aceite objetivos para o encerramento do Gate G0 (`CA-G0-01` a `CA-G0-06`), eliminando auto-atestação sem proveniência normativa (resolução do achado `R-04`).
2. **DEC-009:** Homologação do Gate G0 (Revisão da Materialização Documental), promoção de `temp/APDF_V01_CORRIGIDA_CANDIDATA.md` saneada para `docs/01-metodologia/APDF_V01.md` (v1.0.1), elevação da baseline para **v0.2.1** e autorização formal para entrada na **Fase B** (Modelagem Técnica de Schemas e Testes Automatizados).

---

## 2. Critérios de Aceite de G0 (Aprovados via DEC-008)

Os critérios formais de encerramento de G0 estabelecidos em DEC-008 e suas evidências comprovadas são:

| Critério de Aceite | Requisito Normativo | Evidência Comprovada | Avaliação |
|---|---|---|:---:|
| **CA-G0-01** | Presença integral dos artefatos normativos da baseline. | 27 arquivos controlados presentes em `docs/`, `specs/`, `tests/` e raiz. | **ATENDIDO** |
| **CA-G0-02** | 100% de integridade criptográfica no manifesto. | `MANIFESTO-SHA256.md` recalcula 27/27 arquivos sem divergências. | **ATENDIDO** |
| **CA-G0-03** | Preservação da neutralidade arquitetural (DEC-003). | `NCE-001` Princípio 10, `AGENTS.md` e `APDF_V01` remetem a ADRs locais de produto. | **ATENDIDO** |
| **CA-G0-04** | Metodologia de descoberta operacional e saneada. | `APDF_V01.md` (v1.0.1) incorpora `dependencies` em §8.4, sanando `F-01`, `R-01`, `R-02`, `R-03` e `R-05`. | **ATENDIDO** |
| **CA-G0-05** | Contratos 01 a 05 conceituais estáveis para modelagem. | Contratos 01 a 05 estruturados com objetivos, regras e critérios de aceite. | **ATENDIDO** |
| **CA-G0-06** | Isolamento de ferramentas externas e código de produto. | Nenhuma ferramenta externa instalada ou executada; zero linhas de código de produto. | **ATENDIDO** |

---

## 3. Minutas Oficiais para Inclusão em `docs/00-governanca/registro-de-decisoes.md`

### 3.1 Entradas na Tabela Resumo

```markdown
| DEC-008 | Estabelecimento formal dos critérios de aceite do Gate G0 (CA-G0-01 a CA-G0-06). | APPROVED | Deliberação do Proprietário Humano sanando a proveniência dos critérios de revisão da materialização documental (achado R-04). |
| DEC-009 | Homologação formal do Gate G0, adoção do patch APDF_V01 v1.0.1 (baseline v0.2.1) e autorização para início da Fase B. | APPROVED | Deliberação formal do Proprietário Humano com base nos pareceres de governança e auditoria crítica. Baseline v0.2.1 homologada; Fase B autorizada. |
```

### 3.2 Detalhamento de DEC-008

```markdown
### DEC-008 — Estabelecimento dos Critérios de Aceite do Gate G0

- **Contexto:** A especificação original do Gate G0 no `README.md` definia o objetivo de conferência da materialização documental apenas em prosa. O parecer técnico `REL-REV-CRITICA-APDF-003` (achado `R-04`) identificou que a proposta de encerramento avaliava o gate contra critérios (`CA-G0-01` a `CA-G0-06`) que ainda não haviam sido formalizados normativamente pelo Núcleo.
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
```

### 3.3 Detalhamento de DEC-009

```markdown
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
```
