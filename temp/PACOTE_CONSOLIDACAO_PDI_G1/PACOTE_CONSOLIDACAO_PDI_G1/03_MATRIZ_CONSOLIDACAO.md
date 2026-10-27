# Matriz de Consolidação — Gate G1

| Frente | Evidência necessária | Responsável | Estado inicial |
|---|---|---|---|
| 10 schemas | parse, refs, dialeto, cobertura de CA | IA A | Candidato |
| 10 fixtures | resultado esperado positivo/negativo | IA A | Candidato |
| Contratos 01–05 | todos os CA ligados a casos/testes | IA A | Parcial |
| Motor Draft 2020-12 | log real de motor compatível | IA A / operador | NOT_RUN |
| Estado G0/Fase B/G1 | documentos coerentes com decisões | IA B | Divergência conhecida |
| DEC-011 / APDF 1.1.0 / baseline 0.3.0 | separar minuta de decisão vigente | IA B | A reconciliar |
| Manifesto/hash | recálculo reproduzível | IA B | Reconfirmar |
| Script de promoção | caminho, escopo e rollback | IA B | Não executar |
| Consolidação | deduplicação de achados e patch único | Consolidador | Aguardando |
| Aceite G1 | evidências e pendências explícitas | Proprietário humano | Não aprovado |

## Severidades
- `BLOCKER`: impede avançar.
- `MAJOR`: falha relevante a corrigir antes do aceite.
- `MINOR`: melhoria não bloqueante, com justificativa.
- `OBSERVATION`: contexto sem ação obrigatória.

## Para recomendar READY_FOR_HUMAN_REVIEW
- Todos os JSONs parseiam.
- Todos os `$ref` resolvem no conjunto-alvo.
- Cada critério de aceite tem caso ou justificativa aprovada.
- Fixtures têm resultado esperado comprovado por execução reproduzível.
- `NOT_RUN` permanece explícito.
- Estado documental sem contradições.
- Nenhum arquivo normativo alterado.
- Bloqueios humanos/técnicos continuam visíveis.

`READY_FOR_HUMAN_REVIEW` não significa Gate G1 aprovado.
