# Matriz de Rastreabilidade Contratual — IA A

**ID:** MAT-IA-A-001  
**Tipo:** Matriz de Rastreabilidade de Critérios, Schemas e Testes  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** CONCLUÍDO (Frente IA A)  
**Total de Critérios Auditados:** 37 (Contratos 01 a 05)

---

## 1. Mapeamento dos 37 Critérios de Aceite

| Critério ID | Contrato | Descrição do Critério | Schema / Perfil | Fixture Associada | Teste Automatizado | Tipo de Validação | Status Observado |
|---|---|---|---|---|---|---|---|
| `CA-01-01` | CTR-01 | Detectar artefato não aprovado usado como baseline | `contrato-01`, `metadata` | `metadata-invalid-state.json` | `G1-CTR01-ENUM`, `TC-CTR-01-NEGATIVE` | Estrutural (Enum) | **PASS** |
| `CA-01-02` | CTR-01 | Identificar versão obsoleta/substituída | `contrato-01`, `metadata` | `catalogo-casos.md` | `G1-PROFILE-01` | Estrutural (Enum) | **PASS LIMITADO** |
| `CA-01-03` | CTR-01 | Detectar conflito entre documentos | `contrato-01` | `catalogo-casos.md` | `G1-PROFILE-01` | Lógica / Orquestrador | **NOT_RUN** |
| `CA-01-04` | CTR-01 | Rejeitar alteração protegida sem autorização | `contrato-01`, `metadata` | `metadata-missing-owner.json` | `G1-NEG-metadata-missing-owner` | Estrutural (Required) | **PASS** |
| `CA-01-05` | CTR-01 | Preservar histórico de decisões/aprovações | `metadata`, `approval` | `approval-missing-decider.json` | `G1-APPROVAL-REQUIRED` | Estrutural (Required) | **PASS** |
| `CA-01-06` | CTR-01 | Bloquear gate com conflito crítico aberto | `contrato-01` | `catalogo-casos.md` | `G1-PROFILE-01` | Lógica de Gate | **NOT_RUN** |
| `CA-01-07` | CTR-01 | Diferenciar declaração de agente de resultado comprovado | `contrato-01` | `evidence-not-run.json` | `G1-SEM-NOTRUN` | Estrutural / Política | **PASS** |
| `CA-02-01` | CTR-02 | Detectar requisito sem teste ou justificativa aprovada | `contrato-02` | `catalogo-casos.md` | `G1-PROFILE-02` | Rastreabilidade | **NOT_RUN** |
| `CA-02-02` | CTR-02 | Identificar teste sem requisito/justificativa | `contrato-02` | `catalogo-casos.md` | `G1-PROFILE-02` | Rastreabilidade | **NOT_RUN** |
| `CA-02-03` | CTR-02 | Rejeitar evidência de versão diferente | `contrato-02`, `evidence` | `evidence-missing-logs.json` | `G1-CTR02-REQUIRED` | Estrutural (Required) | **PASS LIMITADO** |
| `CA-02-04` | CTR-02 | Distinguir aprovado, reprovado, bloqueado e não executado | `contrato-02`, `evidence` | `evidence-not-run.json` | `G1-SEM-NOTRUN`, `TC-CTR-02-NOT-RUN` | Estrutural (Enum) | **PASS** |
| `CA-02-05` | CTR-02 | Impedir mudança unilateral de critérios aprovados | `contrato-02` | `catalogo-casos.md` | `G1-PROFILE-02` | Governança / Git | **PASS** |
| `CA-02-06` | CTR-02 | Bloquear entrega com falha impeditiva | `contrato-02` | `catalogo-casos.md` | `G1-PROFILE-02` | Lógica de Gate | **NOT_RUN** |
| `CA-02-07` | CTR-02 | Registrar revisão e aprovação exigidas | `evidence` | `catalogo-casos.md` | `G1-CTR02-REQUIRED` | Estrutural (Required) | **PASS** |
| `CA-03-01` | CTR-03 | Tarefa sem baseline/permissões válidas não inicia | `contrato-03`, `task-context` | `task-context-missing-permissions.json` | `G1-CTR03-REQUIRED` | Estrutural (Required) | **PASS** |
| `CA-03-02` | CTR-03 | Retomada valida estado e referências persistidas | `contrato-03`, `task-context` | `task-context-valid.json` | `TC-CTR-03-CONTEXT` | Estrutural / Harness | **PASS LIMITADO** |
| `CA-03-03` | CTR-03 | Ação fora do escopo é bloqueada | `contrato-03`, `task-context` | `task-context-valid.json` | `G1-CTR03-REQUIRED` | Lógica de Harness | **NOT_RUN** |
| `CA-03-04` | CTR-03 | Anti-Surto não altera baseline autonomamente | `contrato-03` | `catalogo-casos.md` | `G1-PROFILE-03` | Lógica de Harness | **NOT_RUN** |
| `CA-03-05` | CTR-03 | Loops e limites são detectados e aplicados | `contrato-03` | `catalogo-casos.md` | `G1-PROFILE-03` | Lógica de Harness | **NOT_RUN** |
| `CA-03-06` | CTR-03 | Interrupção preserva evidências para diagnóstico | `contrato-03` | `catalogo-casos.md` | `G1-PROFILE-03` | Lógica de Harness | **NOT_RUN** |
| `CA-03-07` | CTR-03 | Estado bloqueado não é reportado como concluído | `task-context` | `task-context-valid.json` | `G1-CTR03-REQUIRED` | Estrutural (Enum) | **PASS** |
| `CA-03-08` | CTR-03 | Testes incluem cenários de falha e recuperação | `contrato-03` | `catalogo-casos.md` | `G1-PROFILE-03` | Suíte de Testes | **NOT_RUN** |
| `CA-04-01` | CTR-04 | Inventário distingue documentado, configurado e testado | `contrato-04`, `tool-capability` | `tool-capability-untested.json` | `G1-CTR04-ENUM` | Estrutural (Enum) | **PASS** |
| `CA-04-02` | CTR-04 | Tarefa só é roteada para ferramenta habilitada e compatível | `contrato-04`, `tool-capability` | `tool-capability-untested-routable.json` | `G1-SEM-ROUTING`, `TC-CTR-04-NOT-ROUTABLE` | Estrutural / Roteamento | **PASS** |
| `CA-04-03` | CTR-04 | Concorrência não causa escrita conflitante silenciosa | `contrato-04` | `catalogo-casos.md` | `G1-PROFILE-04` | Concorrência Real | **NOT_RUN** |
| `CA-04-04` | CTR-04 | Revisão independente é exigida por política | `contrato-04` | `catalogo-casos.md` | `G1-PROFILE-04` | Governança | **NOT_RUN** |
| `CA-04-05` | CTR-04 | Permissões e limites são aplicados a chamadas | `contrato-04` | `catalogo-casos.md` | `G1-PROFILE-04` | Chamada Real | **NOT_RUN** |
| `CA-04-06` | CTR-04 | Falhas preservam contexto e evidências | `contrato-04` | `catalogo-casos.md` | `G1-PROFILE-04` | Diagnóstico | **NOT_RUN** |
| `CA-04-07` | CTR-04 | Capacidades não verificadas são sinalizadas como pendentes | `contrato-04`, `tool-capability` | `tool-capability-untested.json` | `G1-CTR04-ENUM` | Estrutural (Enum) | **PASS** |
| `CA-05-01` | CTR-05 | Identificar a baseline usada na inicialização | `contrato-05`, `metadata` | `metadata-valid.json` | `G1-PROFILE-05` | Estrutural (Campo) | **PASS** |
| `CA-05-02` | CTR-05 | Nenhuma dependência é instalada silenciosamente | `contrato-05` | `catalogo-casos.md` | `TC-CTR-05-NO-SILENT-INSTALL` | Auditoria de Ambiente | **PASS** |
| `CA-05-03` | CTR-05 | Nenhum repositório externo é modificado sem autorização | `contrato-05` | `catalogo-casos.md` | Auditoria Git | Auditoria de Ambiente | **PASS** |
| `CA-05-04` | CTR-05 | Estrutura e referências podem ser validadas automaticamente | `contrato-05` | 10 schemas e 10 fixtures | `G1-SYN-01`, `G1-REF-*` (44 PASS) | Automação PowerShell | **PASS** |
| `CA-05-05` | CTR-05 | Contratos têm IDs, versões e critérios de aceite | `contrato-05` | `contrato-01 a 05` | `COVERAGE-contrato-01..05` (58 PASS) | Estrutural (Schema) | **PASS** |
| `CA-05-06` | CTR-05 | Mudanças são rastreáveis e comparáveis | `contrato-05` | Histórico Git / Diff | `git log`, `verify.ps1` | Auditoria Git | **PASS** |
| `CA-05-07` | CTR-05 | Inconsistências críticas bloqueiam a inicialização | `contrato-05` | `catalogo-casos.md` | `G1-PROFILE-05` | Lógica de Inicialização | **NOT_RUN** |
| `CA-05-08` | CTR-05 | Estado real de implementação/testes é reportado corretamente | `contrato-05` | Relatórios em `temp/` | Auditoria cruzada | Governança | **PASS** |

---

## 2. Síntese de Cobertura

- Total de Critérios Normativos: **37**
- `PASS` (Totalmente coberto e validado nesta etapa): **19** (51.4%)
- `PASS LIMITADO` (Coberto estruturalmente, validação semântica/comportamental pendente): **3** (8.1%)
- `NOT_RUN` (Critérios comportamentais que dependem do runtime/harness da Fase C): **15** (40.5%)
- `FAIL` (Não conformidades críticas encontradas): **0** (0.0%)
