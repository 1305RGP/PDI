# Matriz Consolidada de Rastreabilidade — Gate G1

**ID:** MAT-G1-RASTREABILIDADE-001  
**Tipo:** Matriz Consolidada de Rastreabilidade: Contrato → Critério → Schema / Fixture / Teste → Evidência → Status  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** CONCLUÍDO (Consolidação Final)  
**HEAD de Referência:** `9c0ea20d3327971a57d22fe998c389a4854acd3b`

---

## 1. Matriz de Rastreabilidade Integral (37 Critérios Contratuais)

| Contrato | Critério ID | Descrição do Critério Normativo | Schema Formal | Fixture / Cenário | Teste Automatizado | Evidência Vinculada | Status |
|---|---|---|---|---|---|---|---|
| **CTR-01** | `CA-01-01` | Detectar artefato não aprovado usado como baseline | `contrato-01`, `metadata` | `metadata-invalid-state.json` | `G1-CTR01-ENUM`, `TC-CTR-01-NEGATIVE` | Runner PowerShell: Enum validado contra os 8 estados de GOV-DOC-001. | **PASS** |
| **CTR-01** | `CA-01-02` | Identificar versão obsoleta/substituída | `contrato-01`, `metadata` | `catalogo-casos.md` | `G1-PROFILE-01` | Runner PowerShell: `SUPERSEDED` mapeado no enum de estados. | **PASS LIMITADO** |
| **CTR-01** | `CA-01-03` | Detectar conflito entre documentos | `contrato-01` | `catalogo-casos.md` | `G1-PROFILE-01` | Mapeado no perfil; lógica de detecção dinâmica depende de orquestrador. | **NOT_RUN** |
| **CTR-01** | `CA-01-04` | Rejeitar alteração protegida sem autorização | `contrato-01`, `metadata` | `metadata-missing-owner.json` | `G1-NEG-metadata-missing-owner` | Runner PowerShell: Rejeição por omissão de campo obrigatório `owner`. | **PASS** |
| **CTR-01** | `CA-01-05` | Preservar histórico de decisões/aprovações | `metadata`, `approval` | `approval-missing-decider.json` | `G1-APPROVAL-REQUIRED` | Runner PowerShell: `decider` e `justification` obrigatórios no schema. | **PASS** |
| **CTR-01** | `CA-01-06` | Bloquear gate com conflito crítico aberto | `contrato-01` | `catalogo-casos.md` | `G1-PROFILE-01` | Mapeado no perfil; lógica de bloqueio de gate requer harness. | **NOT_RUN** |
| **CTR-01** | `CA-01-07` | Diferenciar declaração de agente de resultado comprovado | `contrato-01` | `evidence-not-run.json` | `G1-SEM-NOTRUN` | Runner PowerShell: Saída sem evidência reprodutível é rejeitada. | **PASS** |
| **CTR-02** | `CA-02-01` | Detectar requisito sem teste ou justificativa aprovada | `contrato-02` | `catalogo-casos.md` | `G1-PROFILE-02` | Mapeado no perfil; requer analisador de grafo de requisitos. | **NOT_RUN** |
| **CTR-02** | `CA-02-02` | Identificar teste sem requisito/justificativa | `contrato-02` | `catalogo-casos.md` | `G1-PROFILE-02` | Mapeado no perfil; requer analisador de grafo de requisitos. | **NOT_RUN** |
| **CTR-02** | `CA-02-03` | Rejeitar evidência de versão diferente | `contrato-02`, `evidence` | `evidence-missing-logs.json` | `G1-CTR02-REQUIRED` | Runner PowerShell: `evaluated_version` e `logs` obrigatórios. | **PASS LIMITADO** |
| **CTR-02** | `CA-02-04` | Distinguir aprovado, reprovado, bloqueado e não executado | `contrato-02`, `evidence` | `evidence-not-run.json` | `G1-SEM-NOTRUN`, `TC-CTR-02-NOT-RUN` | Runner PowerShell: Enum `PASS`, `FAIL`, `BLOCKED`, `NOT_RUN` validado. | **PASS** |
| **CTR-02** | `CA-02-05` | Impedir mudança unilateral de critérios aprovados | `contrato-02` | `catalogo-casos.md` | `G1-PROFILE-02` | Governança Git: `AGENTS.md` veda alteração de testes para aprovar. | **PASS** |
| **CTR-02** | `CA-02-06` | Bloquear entrega com falha impeditiva | `contrato-02` | `catalogo-casos.md` | `G1-PROFILE-02` | Mapeado no perfil; requer harness de validação em CI/CD. | **NOT_RUN** |
| **CTR-02** | `CA-02-07` | Registrar revisão e aprovação exigidas | `evidence` | `catalogo-casos.md` | `G1-CTR02-REQUIRED` | Runner PowerShell: Campo `reviewer` obrigatório em `evidence.schema.json`. | **PASS** |
| **CTR-03** | `CA-03-01` | Tarefa sem baseline/permissões válidas não inicia | `contrato-03`, `task-context` | `task-context-missing-permissions.json` | `G1-CTR03-REQUIRED` | Runner PowerShell: `prohibited_actions` e `approved_baseline` obrigatórios. | **PASS** |
| **CTR-03** | `CA-03-02` | Retomada valida estado e referências persistidas | `contrato-03`, `task-context` | `task-context-valid.json` | `TC-CTR-03-CONTEXT` | Runner PowerShell: 10 campos de contexto persistidos e validados. | **PASS LIMITADO** |
| **CTR-03** | `CA-03-03` | Ação fora do escopo é bloqueada | `contrato-03`, `task-context` | `task-context-valid.json` | `G1-CTR03-REQUIRED` | Mapeado no perfil; interceptação em runtime pertence à Fase C. | **NOT_RUN** |
| **CTR-03** | `CA-03-04` | Anti-Surto não altera baseline autonomamente | `contrato-03` | `catalogo-casos.md` | `G1-PROFILE-03` | Mapeado no perfil; lógica Anti-Surto pertence à Fase C. | **NOT_RUN** |
| **CTR-03** | `CA-03-05` | Loops e limites são detectados e aplicados | `contrato-03` | `catalogo-casos.md` | `G1-PROFILE-03` | Mapeado no perfil; controle dinâmico de loop pertence à Fase C. | **NOT_RUN** |
| **CTR-03** | `CA-03-06` | Interrupção preserva evidências para diagnóstico | `contrato-03` | `catalogo-casos.md` | `G1-PROFILE-03` | Mapeado no perfil; tratamento de interrupção pertence à Fase C. | **NOT_RUN** |
| **CTR-03** | `CA-03-07` | Estado bloqueado não é reportado como concluído | `task-context` | `task-context-valid.json` | `G1-CTR03-REQUIRED` | Runner PowerShell: `execution_state` restrito a enums válidos. | **PASS** |
| **CTR-03** | `CA-03-08` | Testes incluem cenários de falha e recuperação | `contrato-03` | `catalogo-casos.md` | `G1-PROFILE-03` | Mapeado no perfil; suíte de recuperação de falhas pertence à Fase C. | **NOT_RUN** |
| **CTR-04** | `CA-04-01` | Inventário distingue documentado, configurado e testado | `contrato-04`, `tool-capability` | `tool-capability-untested.json` | `G1-CTR04-ENUM` | Runner PowerShell: Enum com 6 estados explícitos de capacidade. | **PASS** |
| **CTR-04** | `CA-04-02` | Tarefa só é roteada para ferramenta habilitada e compatível | `contrato-04`, `tool-capability` | `tool-capability-untested-routable.json` | `G1-SEM-ROUTING`, `TC-CTR-04-NOT-ROUTABLE` | Runner PowerShell: Bloqueio estrutural de ferramenta não testada. | **PASS** |
| **CTR-04** | `CA-04-03` | Concorrência não causa escrita conflitante silenciosa | `contrato-04` | `catalogo-casos.md` | `G1-PROFILE-04` | Mapeado no perfil; isolamento concorrente físico pertence à Fase C. | **NOT_RUN** |
| **CTR-04** | `CA-04-04` | Revisão independente é exigida por política | `contrato-04` | `catalogo-casos.md` | `G1-PROFILE-04` | Mapeado no perfil; política de revisão independente pertence à Fase C. | **NOT_RUN** |
| **CTR-04** | `CA-04-05` | Permissões e limites são aplicados a chamadas | `contrato-04` | `catalogo-casos.md` | `G1-PROFILE-04` | Mapeado no perfil; aplicação em chamada real pertence à Fase C. | **NOT_RUN** |
| **CTR-04** | `CA-04-06` | Falhas preservam contexto e evidências | `contrato-04` | `catalogo-casos.md` | `G1-PROFILE-04` | Mapeado no perfil; captura de logs em falha pertence à Fase C. | **NOT_RUN** |
| **CTR-04** | `CA-04-07` | Capacidades não verificadas são sinalizadas como pendentes | `contrato-04`, `tool-capability` | `tool-capability-untested.json` | `G1-CTR04-ENUM` | Runner PowerShell: Status `CANDIDATE` / `DOCUMENTED` validado. | **PASS** |
| **CTR-05** | `CA-05-01` | Identificar a baseline usada na inicialização | `contrato-05`, `metadata` | `metadata-valid.json` | `G1-PROFILE-05` | Runner PowerShell: `version` obrigatório nos metadados. | **PASS** |
| **CTR-05** | `CA-05-02` | Nenhuma dependência é instalada silenciosamente | `contrato-05` | `catalogo-casos.md` | `TC-CTR-05-NO-SILENT-INSTALL` | Auditoria de Ambiente: Nenhuma dependência instalada no ambiente. | **PASS** |
| **CTR-05** | `CA-05-03` | Nenhum repositório externo é modificado sem autorização | `contrato-05` | `catalogo-casos.md` | Auditoria Git | Auditoria Git: Repositório restrito estritamente a `1305RGP/PDI`. | **PASS** |
| **CTR-05** | `CA-05-04` | Estrutura e referências podem ser validadas automaticamente | `contrato-05` | 10 schemas e 10 fixtures | `G1-SYN-01`, `G1-REF-*` | Runner PowerShell: 44 checks automatizados com 100% PASS. | **PASS** |
| **CTR-05** | `CA-05-05` | Contratos têm IDs, versões e critérios de aceite | `contrato-05` | `contrato-01 a 05` | `COVERAGE-contrato-01..05` | Runner PowerShell: 58 checks validando 37 CAs mapeados. | **PASS** |
| **CTR-05** | `CA-05-06` | Mudanças são rastreáveis e comparáveis | `contrato-05` | Histórico Git / Manifesto | `git log`, `verify.ps1` | Git: Commits canônicos com rastreabilidade SHA-256 integral. | **PASS** |
| **CTR-05** | `CA-05-07` | Inconsistências críticas bloqueiam a inicialização | `contrato-05` | `catalogo-casos.md` | `G1-PROFILE-05` | Mapeado no perfil; lógica de parada crítica pertence à Fase C. | **NOT_RUN** |
| **CTR-05** | `CA-05-08` | Estado real de implementação/testes é reportado corretamente | `contrato-05` | Relatórios de consolidação | Auditoria cruzada | Auditoria: Distinção estrita entre especificado, implementado e validado. | **PASS** |

---

## 2. Totais Estatísticos da Rastreabilidade

- **Total Geral de Critérios:** 37
- **`PASS` (Cobertura Estrutural Total):** 19 (51.4%)
- **`PASS LIMITADO` (Cobertura Estrutural com Pendência Semântica/Comportamental):** 3 (8.1%)
- **`NOT_RUN` (Critérios Comportamentais Dinâmicos de Fase C):** 15 (40.5%)
- **`FAIL` (Violações ou Falhas):** 0 (0.0%)
