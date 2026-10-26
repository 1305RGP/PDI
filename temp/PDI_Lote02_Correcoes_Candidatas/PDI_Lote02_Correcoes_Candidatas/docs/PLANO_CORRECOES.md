# Plano de correções candidatas — Lote 02

| ID | Lacuna observada | Correção candidata | Critério de aceite |
|---|---|---|---|
| C-01 | `reviewer` pode conter placeholder | Rejeitar identidade vazia/placeholder quando revisão concluída for alegada | Placeholder não comprova revisão |
| C-02 | Referências duplicadas ou cobertura incompleta | Comparar referências com critérios obrigatórios informados pelo contrato | Duplicatas e critérios ausentes reportados |
| C-03 | JSON Schema não valida semântica entre documentos | Manter validador semântico separado | Inconsistência gera erro explícito |
| C-04 | Nota de pendência em `logs` pode parecer evidência | Preservar `NOT_RUN` e exigir referência real para `PASS` | Pendência nunca é tratada como log de execução |
| C-05 | Histórico não comprova autoridade | Validar decisor contra matriz de autoridade fornecida | Decisor ausente/não autorizado reportado |
| C-06 | Evidência pode ser de outra versão | Comparar versão avaliada e versão-alvo | Divergência bloqueia aceite |

## Sequência

1. Revisar este pacote e conferir os campos com os schemas atuais.
2. Executar `python -m unittest discover -s tests -v`.
3. Registrar saída real, ambiente e versão/commit.
4. Fazer revisão independente.
5. Só então decidir sobre transporte para branch isolada.

## Estados

`NOT_RUN`: não executado; `BLOCKED`: impedido; `FAIL`: executado com falha; `PASS`: executado com sucesso e evidência identificável. Schema válido não prova execução ou conformidade.

Não estão incluídos: alteração de contratos normativos, integração à baseline, publicação, implantação ou execução dos testes do produto.
