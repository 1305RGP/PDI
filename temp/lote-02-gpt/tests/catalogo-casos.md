# Catálogo proposto de casos — Fase B

Todos os casos abaixo estão **NOT_RUN**. As fixtures são entradas candidatas; não são evidências de execução.

| ID | Origem | Tipo | Fixture/cenário | Resultado esperado | Justificativa |
|---|---|---|---|---|---|
| TC-CTR-01-01 | CA-01-01 | negativo | artefato `DRAFT` como baseline | bloqueio/rejeição | somente `APPROVED` vigente é baseline |
| TC-CTR-01-02 | CA-01-02 | negativo | referência a versão `SUPERSEDED` | inconsistência sinalizada | versão obsoleta não orienta execução |
| TC-CTR-01-03 | CA-01-03/06 | negativo | duas regras aprovadas incompatíveis | gate bloqueado | conflito não resolvido bloqueia |
| TC-CTR-01-04 | CA-01-04/05 | limite | mudança sem aprovação correspondente | rejeição e preservação do histórico | integridade de aprovação |
| TC-CTR-01-07 | CA-01-07 | negativo | declaração sem log/evidência | não aceita como resultado | agente não substitui evidência |
| TC-CTR-02-01 | CA-02-01 | negativo | requisito sem caso/justificativa | rejeição | rastreabilidade obrigatória |
| TC-CTR-02-02 | CA-02-02 | negativo | teste sem requisito/justificativa | inconsistência sinalizada | evita teste órfão |
| TC-CTR-02-03 | CA-02-03 | negativo | `evaluated_version` divergente | evidência rejeitada | evidência deve corresponder à versão |
| TC-CTR-02-04 | CA-02-04 | positivo/limite | `evidence-not-run.json` | status preservado como `NOT_RUN` | não converter não execução em aprovação |
| TC-CTR-02-05/06/07 | CA-02-05..07 | negativo | alteração de critério, falha impeditiva ou falta de revisão | bloqueio | regras de aceite e revisão |
| TC-CTR-03-01 | CA-03-01 | negativo | contexto sem baseline/permissão | inicialização bloqueada | pré-condição explícita |
| TC-CTR-03-02/03 | CA-03-02..03 | negativo | retomada sem referência ou ação fora de escopo | bloqueio | contexto e escopo |
| TC-CTR-03-04 | CA-03-04 | negativo | desvio de escopo tenta alterar baseline | bloqueio e registro de alternativas | Anti-Surto |
| TC-CTR-03-05/06 | CA-03-05..06 | limite | repetição sem hipótese nova | interrupção e preservação de estado | controle de loops |
| TC-CTR-03-07/08 | CA-03-07..08 | negativo | `BLOCKED` reportado como concluído / recuperação falha | rejeição | integridade do estado |
| TC-CTR-04-01/02 | CA-04-01..02 | negativo | ferramenta apenas documentada roteada para tarefa | bloqueio | compatibilidade não presumida |
| TC-CTR-04-03..07 | CA-04-03..07 | negativo | escrita concorrente, sem revisor, permissão ausente ou falha sem contexto | bloqueio | controles da orquestração |
| TC-CTR-05-01 | CA-05-01 | positivo | baseline identificada | registro aceito | rastreabilidade da inicialização |
| TC-CTR-05-02/03 | CA-05-02..03 | negativo | instalação ou mudança externa silenciosa | bloqueio | DEC-004 e CTR-05 |
| TC-CTR-05-04/05 | CA-05-04..05 | positivo | schema sintático e contratos com ID/versão/CA | validação sintática | estrutura mínima |
| TC-CTR-05-06..08 | CA-05-06..08 | negativo | mudança não rastreável, conflito crítico ou relato de implementação falso | bloqueio | evolução controlada |

## Casos de schema mínimos

- `metadata-valid.json` contra `metadata.schema.json`: válido.
- `metadata-invalid-state.json` contra `metadata.schema.json`: inválido porque o enum não aceita comentário concatenado.
- `evidence-not-run.json` contra `evidence.schema.json`: válido e seu resultado permanece `NOT_RUN`.
- `task-context-valid.json` contra `task-context.schema.json`: válido.
- `tool-capability-untested.json` contra `tool-capability.schema.json`: válido, mas não habilita roteamento (CTR-04/CA-04-02).
