# Pacote de Consolidação — PDI / Gate G1

**Repositório:** `1305RGP/PDI`  
**HEAD de referência:** `9c0ea20d3327971a57d22fe998c389a4854acd3b`  
**Objetivo:** consolidar numa única rodada os schemas, fixtures, evidências e documentação de estado do Gate G1 usando duas IAs.

## Regras
1. Trabalhar em cópia/branch; não alterar baseline normativa.
2. Não promover candidatos para `specs/`, `tests/`, `docs/` ou raiz.
3. Não instalar dependências ou ferramentas.
4. Não declarar conformidade Draft 2020-12 sem executar um motor compatível.
5. Separar proposta, implementação, execução, validação e aprovação.
6. Não tratar DEC-011 como decisão final sem confirmação humana explícita.
7. Não apagar relatórios anteriores; registrar divergências e referências.
8. Toda conclusão deve indicar arquivo, critério e evidência.

## Estado inicial conhecido
- `main` aponta para `9c0ea20d3327971a57d22fe998c389a4854acd3b`.
- Esse commit adiciona `temp/PROMOCAO_V110/`; não substitui arquivos canônicos.
- Os 10 schemas e 10 fixtures em `temp/lote-02-gpt/` são candidatos.
- Relatórios anteriores registram 44 checks G1 e 58 checks de contratos PowerShell; motor formal Draft 2020-12 não executado.
- `temp/resultado-fase-b.md` tem status histórico desatualizado sobre G0/Fase B.
- Revisão independente e validação formal permanecem pendentes.

## Resultado final esperado
- Matriz Contrato → critério → schema/fixture/teste → evidência → status.
- Achados classificados por severidade.
- Patch candidato consolidado, não aplicado.
- Relatório de testes executados e não executados.
- Reconciliação de documentos de estado.
- Decisões humanas separadas.
- Recomendação: `BLOCKED`, `NOT_READY` ou `READY_FOR_HUMAN_REVIEW`.

`READY_FOR_HUMAN_REVIEW` não significa Gate G1 aprovado.
