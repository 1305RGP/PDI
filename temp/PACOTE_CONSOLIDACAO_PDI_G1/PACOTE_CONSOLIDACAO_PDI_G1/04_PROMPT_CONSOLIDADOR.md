# Prompt — Consolidador Final

Consolide os pacotes das IAs A e B. Deduplicate por arquivo, critério e causa-raiz; mantenha referências aos IDs originais. Resolva divergências consultando fontes primárias, nunca por votação entre IAs.

Produza:
1. `RELATORIO_CONSOLIDADO_G1.md`
2. `MATRIZ_RASTREABILIDADE_G1.md` ou `.csv`
3. `PATCH_CONSOLIDADO/`
4. `LISTA_DECISOES_HUMANAS.md`
5. `INSTRUCOES_APLICACAO.md` com pré-condições e rollback.

Separe correções técnicas, testes que dependem de ambiente autorizado, decisões humanas e melhorias fora do escopo. Gere um único patch candidato, sem aplicar em locais normativos. Declare o que foi executado versus apenas inspecionado.

Proibido: afirmar validação Draft 2020-12 sem execução real; tratar fixture como evidência de execução; mudar baseline ou decisões oficiais; instalar dependências; ampliar escopo para implementar orquestrador.

Encerrar com uma recomendação: `BLOCKED`, `NOT_READY` ou `READY_FOR_HUMAN_REVIEW`.
