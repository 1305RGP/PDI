# Validação Draft 2020-12 — Gate G1

Data: 2026-10-27. Alvo: 10 schemas e 10 fixtures em temp/lote-02-gpt.

| Escopo | Resultado | Evidência |
|---|---|---|
| Parse de todos os JSONs | PASS | JSON_PARSE_ALL=PASS COUNT=20 |
| Declaração de dialeto, IDs e refs locais | PASS | 44 PASS, 0 FAIL na suíte G1 |
| Required, enums e cenários selecionados | PASS limitado | validação estrutural e semântica limitada |
| Motor JSON Schema Draft 2020-12 | NOT_RUN | Node disponível; AJV, check-jsonschema, jsonschema, .NET, Java e Ruby ausentes. Não houve instalação. |
| Formatos e resolução recursiva geral | NOT_RUN | depende de motor compatível |

Comando reproduzível em ambiente autorizado: npm exec --yes ajv-cli@5 validate -s temp/lote-02-gpt/specs/schemas/metadata.schema.json -d temp/lote-02-gpt/tests/fixtures/metadata-valid.json.

O comando não foi executado e não autoriza instalação.
