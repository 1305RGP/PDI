# Matriz de rastreabilidade — lote integral GPT

**Data:** 2026-10-27  
**Fonte candidata:** `temp/lote-02-gpt/`  
**Resultado executado:** 53 `PASS`, 0 `FAIL`, por `temp/lote-integral-gpt/scripts/Invoke-ContractCandidateValidation.ps1`.

| Contrato / requisito | Schema candidato | Fixture / cenário | Teste executado | Resultado | Evidência |
|---|---|---|---|---|---|
| CTR-01, requisitos 1–8; CA-01-01..07 | `metadata`, `approval`, `contrato-01` | `metadata-valid`, `metadata-invalid-state` | enum canônico, presença de `$id` e `$ref` | PASS (cobertura estrutural) | `CTR-01-STATE-ENUM`, `TC-CTR-01-*` |
| CTR-02, rastreabilidade; CA-02-01..07 | `evidence`, `contrato-02` | `evidence-not-run` | `NOT_RUN` preservado e log presente | PASS (cenário específico) | `TC-CTR-02-NOT-RUN` |
| CTR-03, contexto/estados; CA-03-01..08 | `task-context`, `contrato-03` | `task-context-valid` | campos mínimos do contexto | PASS (estrutura) | `TC-CTR-03-CONTEXT` |
| CTR-04, requisitos 1–10; CA-04-01..07 | `tool-capability`, `contrato-04` | `tool-capability-untested` | ferramenta não testada não roteável | PASS (cenário específico) | `TC-CTR-04-NOT-ROUTABLE` |
| CTR-05, requisitos 1–9; CA-05-01..08 | `metadata`, `contrato-05` | cenário sem instalação | ausência de instalação/mudança pelo validador | PASS (limite do executor) | `TC-CTR-05-NO-SILENT-INSTALL` |

## Lacunas explícitas

Não há fixture individual para cada CA nem motor que avalie precedência documental, autoridade humana, conflito entre artefatos ou permissões do ambiente. Esses controles exigem implementação posterior e/ou ambiente real. A cobertura de todos os IDs de CA nos perfis é estrutural: CTR-01=7, CTR-02=7, CTR-03=8, CTR-04=7 e CTR-05=8.

## Estado de validação

- Sintaxe JSON: `PASS`.
- Referências `$ref` locais de primeiro nível: `PASS`.
- Validação JSON Schema Draft 2020-12 por implementação compatível: `NOT_RUN` (AJV indisponível; nenhuma dependência foi instalada).
- Regras semânticas interdocumentais e integração com ferramentas: `NOT_RUN`.
