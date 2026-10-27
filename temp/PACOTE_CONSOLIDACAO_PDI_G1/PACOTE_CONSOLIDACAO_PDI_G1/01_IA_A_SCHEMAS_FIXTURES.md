# IA A — Revisão de Schemas e Fixtures

## Missão
Revisar os 10 schemas e 10 fixtures de `temp/lote-02-gpt/` contra os cinco contratos e critérios de aceite.

## Entradas
- `temp/lote-02-gpt/specs/schemas/*.schema.json`
- `temp/lote-02-gpt/specs/contratos/*.schema.json`
- `temp/lote-02-gpt/tests/fixtures/*.json`
- `temp/lote-02-gpt/tests/catalogo-casos.md`
- `docs/02-contratos/contrato-01-governanca.md` até `contrato-05-inicializacao.md`
- Relatórios G1 existentes em `temp/`

## Verificações
1. Parse JSON de schemas e fixtures.
2. `$schema`, `$id`, `$ref` e resolução de referências.
3. `required`, enums, tipos, limites e campos permissivos.
4. Resultado esperado de fixtures positivas/negativas.
5. Cobertura de CA-01-01..07, CA-02-01..07, CA-03-01..08, CA-04-01..07 e CA-05-01..08.
6. Casos negativos ausentes, falsos positivos/negativos e lacunas de contrato.
7. Separar validação estática de validação formal Draft 2020-12.

## Limites
Não instalar dependências, não alterar arquivos canônicos, não editar os candidatos originais. Se não houver motor compatível, marcar `NOT_RUN` e indicar comando reproduzível.

## Entregáveis
- `REVISAO_IA_A_SCHEMAS.md`
- `MATRIZ_IA_A.md`
- `TESTES_IA_A.md`
- `PATCH_IA_A/` se necessário

Cada achado deve conter ID (`A-001`…), severidade (`BLOCKER`, `MAJOR`, `MINOR`, `OBSERVATION`), arquivo/JSON Pointer, critério afetado, problema, impacto, correção mínima e teste comprobatório.
