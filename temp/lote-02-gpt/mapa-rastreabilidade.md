# Mapa de rastreabilidade — requisito → schema → teste

| Origem | Schema candidato | Casos propostos |
|---|---|---|
| GOV-DOC-001 §4–5; CTR-01 requisitos 1–8 | `metadata.schema.json`, `approval.schema.json`, `contrato-01.schema.json` | TC-CTR-01-01..07; schema de metadados válido/inválido |
| CTR-02 Rastreabilidade, Evidência mínima e CA-02-01..07 | `evidence.schema.json`, `contrato-02.schema.json` | TC-CTR-02-01..07; `evidence-not-run.json` |
| CTR-03 Contexto operacional, Estados e CA-03-01..08 | `task-context.schema.json`, `contrato-03.schema.json` | TC-CTR-03-01..08; `task-context-valid.json` |
| CTR-04 Requisitos 1–10 e CA-04-01..07; FER-INV-001 | `tool-capability.schema.json`, `contrato-04.schema.json` | TC-CTR-04-01..07; `tool-capability-untested.json` |
| CTR-05 Requisitos 1–9 e CA-05-01..08 | `metadata.schema.json`, `contrato-05.schema.json` | TC-CTR-05-01..08 |
| QUA-CRIT-001 Registro mínimo; QUA-VAL-001 Critério de conclusão | `evidence.schema.json` | todos os resultados permanecem `NOT_RUN` até execução |

As referências delimitam cobertura estrutural. Validação de precedência, conflito documental, autorização real, execução de ferramenta e revisão independente exige lógica de aplicação e ambiente autorizado; não é decidível apenas por JSON Schema.
