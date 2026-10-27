# Lote 02 GPT — artefatos candidatos da Fase B

**Estado:** PROPOSTO PARA REVISÃO. Esta pasta é isolada e não integra a baseline documental.  
**Base:** DEC-002, DEC-003, DEC-006 e a autorização humana de avanço declarada em `temp/LOTE_02_GPT_FASE_B.md`.  
**Limites:** nenhum schema foi integrado, executado em runtime, aprovado ou usado para declarar conformidade.

## Conteúdo

- `specs/schemas/`: objetos comuns. JSON Schema Draft 2020-12 foi escolhido como proposta de interoperabilidade; não há compatibilidade de ambiente verificada.
- `specs/contratos/`: perfis de rastreabilidade dos Contratos 01–05. Eles validam o registro estruturado dos controles; regras semânticas entre documentos continuam requerendo um validador futuro.
- `tests/fixtures/`: entradas positivas e negativas para a futura suíte.
- `tests/catalogo-casos.md`: casos planejados, todos `NOT_RUN`.
- `mapa-rastreabilidade.md`: vínculo requisito → schema → teste.
- `resultado-GPT-lote-02.md`: resultado, limitações e verificações realizadas.

## Convenções e política de extensão

Os estados de artefato usam apenas `DRAFT`, `IN_REVIEW`, `PENDING_APPROVAL`, `CHANGES_REQUESTED`, `APPROVED`, `REJECTED`, `SUPERSEDED` e `OBSOLETE` (GOV-DOC-001/CTR-01). Estados operacionais usam apenas os valores do CTR-03. Resultados de teste usam apenas `PASS`, `FAIL`, `BLOCKED` e `NOT_RUN` (QUA-VAL-001). Campos desconhecidos são permitidos nos objetos candidatos para evitar que extensões não normativas sejam rejeitadas prematuramente; um perfil fechado só poderá ser decidido após inspeção do consumidor/runner.

## Uso futuro, não executado

1. Revisar estes candidatos contra a baseline e aprovar ou ajustar a decisão de formato/runner.
2. Copiar apenas os arquivos aprovados aos diretórios normativos, registrando mudança, versão e manifesto.
3. Executar validação sintática e os casos do catálogo em ambiente autorizado.
4. Registrar evidência, revisão independente e decisão de aceite.
