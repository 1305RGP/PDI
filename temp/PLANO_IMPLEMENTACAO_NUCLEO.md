# Plano incremental de implementação do núcleo

**Estado:** PROPOSTO; não altera arquitetura nem promove candidatos.  
**Base:** CTR-01 a CTR-05, QUA-CRIT-001, QUA-VAL-001 e DEC-003.

| Ordem | Componente mínimo | Entradas / saídas | Arquivos candidatos | Critério / teste | Dependência / bloqueio |
|---|---|---|---|---|---|
| 1 | Validador de documentos estruturados | JSON de artefato → erros estruturados | `specs/schemas/*`, runner local | CA-01-01, CA-05-04/05 | aprovar formato e runner |
| 2 | Registro de rastreabilidade | requisito, teste, evidência → relatório | `evidence.schema`, matriz | CA-02-01..04 | versionamento/evidência definidos |
| 3 | Avaliador de gate | baseline, decisões, conflitos → estado de gate | regras candidatas, fixtures | CA-01-03/06, CA-05-07 | definição formal de conflito e autoridade nominal |
| 4 | Harness de tarefa | contexto/permissões → permitir, bloquear ou preservar estado | `task-context.schema` | CA-03-01..08 | ferramenta hospedeira testada |
| 5 | Registro de capacidade | ferramenta/versão/evidência → status roteável | `tool-capability.schema` | CA-04-01/02/07 | ambiente real e DEC-006 |
| 6 | Relatório de evidências | resultados/logs → pacote revisável | `evidence.schema` | CA-02-03/04/07 | revisor independente designado |

Princípios de implementação: sem arquitetura de produto universal; interfaces pequenas e serializadas; regras normativas mapeadas por ID; resultados `PASS`, `FAIL`, `BLOCKED` e `NOT_RUN` preservados; nenhum roteamento para capacidade apenas documentada.

Antes de integrar: autorizar o runner/formato, revisar independentemente os schemas candidatos, designar responsáveis conforme GOV-AUTH-001 e atualizar versão, changelog e manifesto somente na mudança aprovada.
