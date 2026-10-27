# Testes candidatos executáveis

`Invoke-ContractCandidateValidation.ps1` executa, sem dependências adicionais:

- parse de todos os JSONs candidatos;
- presença de dialeto e `$id` nos schemas;
- resolução de `$ref` locais de primeiro nível;
- enum canônico de estados;
- comportamento esperado das cinco fixtures existentes;
- cobertura declarada de CA-01 a CA-05 nos perfis.

Não executa validação JSON Schema completa, análise de conflitos entre documentos, autorização humana ou integração de ferramenta. Esses itens continuam `NOT_RUN`/`BLOCKED` conforme o caso.
