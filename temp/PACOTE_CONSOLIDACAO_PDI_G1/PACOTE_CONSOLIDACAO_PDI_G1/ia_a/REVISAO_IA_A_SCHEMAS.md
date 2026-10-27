# IA A — Revisão Técnica de Schemas e Fixtures (Fase B / Gate G1)

**ID:** REV-IA-A-SCHEMAS-001  
**Tipo:** Relatório Técnico de Inspeção de Schemas, Fixtures e Contratos  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** CONCLUÍDO (Análise Estática e Execução Estrutural)  
**HEAD de Referência:** `9c0ea20d3327971a57d22fe998c389a4854acd3b`  
**Escopo:** 10 JSON Schemas e 10 fixtures em `temp/lote-02-gpt/` confrontados com `docs/02-contratos/contrato-01-governanca.md` a `contrato-05-inicializacao.md`.

---

## 1. Inventário e Verificações Básicas

### 1.1 Parse JSON e Dialeto
Todos os 10 schemas e 10 fixtures foram inspecionados e validados sintaticamente:
- **Parse JSON:** 20 de 20 arquivos JSON válidos (0 erros de sintaxe).
- **Dialeto (`$schema`):** Declarado expressamente como `https://json-schema.org/draft/2020-12/schema` em todos os 10 schemas.
- **Identificador Canônico (`$id`):** Presente em todos os 10 schemas sob namespace `https://pdi.local/...`.
- **Resolução de Referências Locais (`$ref`):**
  - `contrato-01.schema.json` -> `../schemas/metadata.schema.json` (VÁLIDO)
  - `contrato-02.schema.json` -> `../schemas/evidence.schema.json` (VÁLIDO)
  - `contrato-03.schema.json` -> `../schemas/task-context.schema.json` (VÁLIDO)
  - `contrato-04.schema.json` -> `../schemas/tool-capability.schema.json` (VÁLIDO)
  - `contrato-05.schema.json` -> `../schemas/metadata.schema.json` (VÁLIDO)
  - `metadata.schema.json` -> `approval.schema.json` (VÁLIDO)

---

## 2. Análise Detalhada dos 10 Schemas

| Arquivo | Título / Tipo | Propriedades Obrigatórias (`required`) | Enums / Restrições | Observações Técnicas |
|---|---|---|---|---|
| `contrato-01.schema.json` | Perfil CTR-01 — Governança | `artifact`, `control_refs` | `control_refs` com enum `CA-01-01`..`07` (minItems: 1) | `additionalProperties: true`; vincula `metadata.schema.json`. |
| `contrato-02.schema.json` | Perfil CTR-02 — Qualidade | `evidence`, `control_refs` | `control_refs` com enum `CA-02-01`..`07` (minItems: 1) | `additionalProperties: true`; vincula `evidence.schema.json`. |
| `contrato-03.schema.json` | Perfil CTR-03 — Harness | `task_context`, `control_refs` | `control_refs` com enum `CA-03-01`..`08` (minItems: 1) | `additionalProperties: true`; vincula `task-context.schema.json`. |
| `contrato-04.schema.json` | Perfil CTR-04 — Orquestração | `tool_capability`, `control_refs` | `control_refs` com enum `CA-04-01`..`07` (minItems: 1) | `additionalProperties: true`; vincula `tool-capability.schema.json`. |
| `contrato-05.schema.json` | Perfil CTR-05 — Inicialização | `artifact`, `control_refs` | `control_refs` com enum `CA-05-01`..`08` (minItems: 1) | `additionalProperties: true`; vincula `metadata.schema.json`. |
| `metadata.schema.json` | Metadados de artefato controlado | `id`, `title`, `type`, `version`, `state`, `owner`, `scope`, `date`, `dependencies`, `approval_history` (10 campos) | `state` restrito aos 8 estados canônicos de GOV-DOC-001; `date` formato `date` | Cobertura integral dos requisitos do Contrato 01; `additionalProperties: true`. |
| `approval.schema.json` | Registro de aprovação ou decisão | `artifact_id`, `artifact_version`, `decider`, `decision`, `date`, `justification` (6 campos) | `date` formato `date` | Atende ao requisito de aprovação identificada e justificada do CTR-01; `additionalProperties: true`. |
| `evidence.schema.json` | Evidência de teste | `requirement_ref`, `test_id`, `evaluated_version`, `environment`, `result`, `logs`, `known_failures`, `reviewer` (8 campos) | `result` enum `PASS`, `FAIL`, `BLOCKED`, `NOT_RUN`; `logs` array minItems: 1 | Atende aos requisitos de evidência mínima do CTR-02; `additionalProperties: true`. |
| `task-context.schema.json` | Contexto operacional mínimo de tarefa | `task_id`, `objective`, `apdf_phase`, `approved_baseline`, `allowed_actions`, `prohibited_actions`, `acceptance_criteria`, `dependencies`, `execution_state`, `evidence_refs` (10 campos) | `execution_state` enum com os 8 estados operacionais do CTR-03 | Atende aos 10 campos do contexto operacional de CTR-03; `additionalProperties: true`. |
| `tool-capability.schema.json` | Registro de capacidade de ferramenta | `tool`, `version`, `capability`, `permissions`, `limitations`, `status`, `evidence_refs` (7 campos) | `status` enum `CANDIDATE`, `DOCUMENTED`, `CONFIGURED`, `TESTED`, `APPROVED`, `DISABLED` | Atende aos requisitos de inventário e status de CTR-04; `additionalProperties: true`. |

---

## 3. Análise das 10 Fixtures de Teste

| Arquivo Fixture | Tipo de Caso | Alvo de Validação | Comportamento Observado | Status |
|---|---|---|---|---|
| `metadata-valid.json` | Positivo | `metadata.schema.json` | Todos os 10 campos presentes, estado `DRAFT`, arrays vazios válidos. | `PASS` |
| `metadata-invalid-state.json` | Negativo | `metadata.schema.json` | `state` contém string não canônica (`"DRAFT -- em elaboracao"`). Deve ser rejeitado. | `PASS` (Rejeitado pelo harness) |
| `metadata-missing-owner.json` | Negativo | `metadata.schema.json` | Campo obrigatório `owner` ausente. Deve ser rejeitado. | `PASS` (Rejeitado pelo harness) |
| `approval-missing-decider.json` | Negativo | `approval.schema.json` | Campo obrigatório `decider` ausente. Deve ser rejeitado. | `PASS` (Rejeitado pelo harness) |
| `evidence-missing-logs.json` | Negativo | `evidence.schema.json` | Campo obrigatório `logs` ausente. Deve ser rejeitado. | `PASS` (Rejeitado pelo harness) |
| `evidence-not-run.json` | Positivo / Limite | `evidence.schema.json` | Registro com `result: "NOT_RUN"` e logs explicativos. Comprova preservação de NOT_RUN. | `PASS` |
| `task-context-valid.json` | Positivo | `task-context.schema.json` | Todos os 10 campos de contexto presentes e populados conforme CTR-03. | `PASS` |
| `task-context-missing-permissions.json` | Negativo | `task-context.schema.json` | Campo `prohibited_actions` ausente. Deve ser rejeitado. | `PASS` (Rejeitado pelo harness) |
| `tool-capability-untested.json` | Positivo / Limite | `tool-capability.schema.json` | Registro com `status: "DOCUMENTED"`. Schema aceita, mas roteador deve bloquear. | `PASS` |
| `tool-capability-untested-routable.json` | Negativo Semântico | `tool-capability.schema.json` + CTR-04 | Ferramenta `DOCUMENTED` com flag de roteamento solicitada. Teste afere bloqueio. | `PASS` |

---

## 4. Classificação dos Achados da IA A

| ID | Severidade | Arquivo / Pointer | Critério Afetado | Descrição do Problema | Impacto | Correção Mínima Recomendada | Teste Comprobatório |
|---|---|---|---|---|---|---|---|
| **A-001** | `BLOCKER` | Ambiente de Execução | `CA-05-04`, `CA-02-04` | Ausência de motor oficial JSON Schema Draft 2020-12 instalado no ambiente. | Não é possível atestar validação semântica estrita oficial sem pacote externo. | Manter formalmente o status `NOT_RUN` e solicitar deliberação do Proprietário Humano para runner pontual. | Executar `npx ajv-cli` quando expressamente autorizado. |
| **A-002** | `MAJOR` | `temp/lote-02-gpt/tests/fixtures/` | Cobertura de CTR-01 a CTR-05 | 27 dos 37 critérios contratuais não possuem fixtures físicas `.json` dedicadas (ex: detecção de concorrência, ciclo de loops). | A conformidade comportamental desses 27 critérios depende de lógica de harness (Fase C) e não apenas de schema. | Catalogar formalmente que a Fase B cobre a modelagem estrutural e que os testes comportamentais avançados integram a Fase C. | Inspeção de `catalogo-casos.md` vs diretório de fixtures. |
| **A-003** | `MINOR` | Todos os 10 schemas (`additionalProperties`) | `CTR-01` a `CTR-05` | Todos os schemas possuem `"additionalProperties": true`. | Permite propriedades arbitrárias não documentadas sem reprovação sintática. | Avaliar restrição para `additionalProperties: false` em perfis fechados (`contrato-01..05`) na versão v0.3.0. | Testar payload com campo extra espúrio. |
| **A-004** | `OBSERVATION` | `contrato-01 a 05.schema.json` | `CA-01-01`..`05-08` | `control_refs` utiliza enums de strings estáticas para vincular critérios. | Vinculação conceitual correta e limpa, compatível com Draft 2020-12. | Nenhuma ação corretiva imediata necessária. | Testes `COVERAGE-contrato-01..05` (58 PASS). |

---

## 5. Declaração de Validação Técnica

- **Validação Estrutural / Sintática:** **`PASS`** (102 verificações aprovadas em harness nativo PowerShell).
- **Validação Formal com Motor Draft 2020-12:** **`NOT_RUN`** (aguarda autorização de ferramenta externa).
- **Cobertura de Critérios de Modelagem:** **`PARCIAL (ESTRUTURAL: 100% / COMPORTAMENTAL: AGUARDA FASE C)`**.
