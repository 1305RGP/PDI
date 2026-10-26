# LOTE 02 — GPT
## Preparação técnica executável da Fase B — Schemas e testes dos Contratos 01–05

**Projeto:** Núcleo Central de Engenharia (PDI)  
**Baseline de trabalho:** v0.1.0 pós-Fase A  
**Entradas:** contratos 01–05, Norma Central, hierarquia documental, critérios de aceite, plano de validação, `resultado-fase-a.md`, `resultado-fase-b.md`, `resultado-GPT-plano-fase-b.md` e `resultado-GEMINI-auditoria-g0.md`.  
**Decisão humana:** Gate G0 aprovado para prosseguir e Fase B autorizada. A formalização documental da decisão deve ser registrada no fluxo de governança, mas não deve ser usada como pretexto para repetir planejamento. O APDF segue provisório e a DEC-003 permanece intacta.

### Objetivo
Entregar a especificação técnica concreta necessária para implementar schemas e testes de conformidade dos Contratos 01–05. O resultado deve reduzir trabalho futuro de interpretação e permitir iniciar a implementação sem redesenhar a arquitetura.

### Regras invioláveis
1. Leia os contratos e documentos normativos antes de especificar qualquer campo ou regra.
2. Não invente requisitos que não estejam nos documentos. Para cada campo/regra, aponte o contrato, seção ou critério de aceite que o fundamenta.
3. Não imponha arquitetura de produto ou stack universal. Respeite DEC-003.
4. Não instale dependências, não altere repositórios externos, não execute deploys e não faça mudanças destrutivas.
5. Não renomeie pastas. Preserve os diretórios atuais `specs/schemas/`, `specs/contratos/`, `tests/contracts/`, `tests/evaluations/` e `tests/governance/`.
6. Normalize estados para os enums canônicos já definidos; observações descritivas não podem ser concatenadas ao valor do enum.
7. Diferencie claramente o que é requisito explícito, inferência técnica necessária e decisão ainda pendente. Se houver ambiguidade, proponha a menor resolução compatível e registre-a — não interrompa o trabalho para perguntar o que já consta nos documentos.
8. Não altere os arquivos normativos diretamente. Entregue os artefatos propostos em uma pasta de saída isolada, preservando a baseline.

### Trabalho solicitado
A. **Modelo canônico de dados**
- Defina o modelo de metadados controlados com os estados canônicos.
- Defina estruturas de aprovação/decisão, evidência de teste, contexto de tarefa e capacidade/permissões de ferramenta apenas quando os contratos sustentarem esses objetos.
- Estabeleça campos obrigatórios, tipos, enums, referências, regras condicionais e política de campos desconhecidos, sempre com rastreabilidade normativa.

B. **Schemas JSON**
- Produza schemas JSON válidos para os objetos comuns e os Contratos 01–05.
- Use uma versão declarada de JSON Schema e justifique-a com base na compatibilidade do ambiente documentado; se o ambiente não estiver especificado, registre a escolha como proposta, sem afirmar compatibilidade já testada.
- Evite duplicação desnecessária: use `$ref` quando apropriado e mantenha caminhos coerentes com a estrutura existente.
- Não declare que os schemas foram validados em runtime se não foram executados.

C. **Plano e casos de teste**
- Transforme os critérios de aceite e o plano de validação em casos positivos, negativos e de limite.
- Para cada caso: ID, requisito de origem, fixture de entrada, resultado esperado e justificativa.
- Inclua casos para estados inválidos, campos obrigatórios ausentes, referência quebrada, evidência incompleta, permissões insuficientes e uso de artefato não aprovado, quando aplicáveis aos contratos.
- Não invente resultados observados. Use `NOT_RUN` para testes ainda não executados.

D. **Estrutura de saída**
Entregue em uma pasta `lote-02-gpt/`:
- `README.md` com instruções e limitações;
- schemas em `specs/schemas/` e `specs/contratos/`;
- fixtures em `tests/fixtures/` (ou a localização já prescrita pelos documentos, se houver);
- catálogo de casos em `tests/`;
- um mapa de rastreabilidade `requisito → schema → teste`;
- relatório `resultado-GPT-lote-02.md`.

### Critérios de aceite da entrega
- Cada regra de schema tem referência normativa rastreável.
- JSONs são sintaticamente válidos.
- Não há enums conflitantes com a hierarquia documental.
- Casos positivos e negativos cobrem os critérios de aceite existentes.
- Nenhuma decisão arquitetural universal foi introduzida.
- Limitações de execução e de ambiente são declaradas com honestidade.
- Nenhum arquivo da baseline original foi sobrescrito.

**Modo:** produzir artefatos concretos em área isolada para revisão e integração. Se o ambiente permitir apenas resposta textual, forneça cada arquivo em bloco separado com o caminho relativo explícito. Não se limite a repetir o plano anterior: entregue schemas, fixtures, casos e rastreabilidade.
