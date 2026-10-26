# LOTE DE EXECUÇÃO — GEMINI
## Auditoria consolidada da baseline e prontidão do Gate G0

**Projeto:** PDI — Núcleo Central de Engenharia  
**Executor designado:** Gemini (modelo/agente selecionado manualmente pelo usuário)  
**Modo:** análise somente leitura  
**Destino do relatório:** `temp/resultado-GEMINI-auditoria-g0.md`

### Objetivo
Auditar a baseline documental e preparar um parecer consolidado sobre a prontidão do Gate G0, sem repetir a análise específica do APDF atribuída a outra IA.

### Contexto conhecido
- O Gate G0, aprovação formal humana da baseline v0.1.0, está pendente.
- A Fase B (schemas e testes automatizados) não foi iniciada nem autorizada.
- A DEC-003 determina que o núcleo central padroniza controles, mas não impõe arquitetura universal aos produtos; decisões específicas devem ser registradas em ADRs.
- O APDF atual está em `DRAFT`, provisório e não homologado.
- A pasta `temp/` é área de intercâmbio e seus artefatos não devem ser adicionados ao manifesto normativo.
- Há relatórios e matrizes prévios em `temp/`. Leia e reutilize evidências existentes; não refaça trabalho sem necessidade.

### Tarefas
1. Inspecionar a estrutura da baseline, a norma central, a hierarquia documental, o registro de decisões, os contratos 01–05 e os relatórios de estado existentes.
2. Verificar consistência de estados: aprovado, provisório, pendente, proposto, implementado e testado.
3. Identificar bloqueadores reais para o Gate G0, distinguindo:
   - evidência documental encontrada;
   - declaração reportada, mas não verificada;
   - inferência;
   - decisão humana necessária.
4. Verificar pendências de autoridade nominal (GOV-AUTH-001) e outras pendências explicitamente registradas.
5. Avaliar a coerência de DEC-003 com os documentos centrais, sem alterar a decisão.
6. Produzir um parecer conciso com:
   - resumo executivo;
   - evidências e caminhos dos arquivos consultados;
   - bloqueadores críticos;
   - pendências que podem ser resolvidas em lote;
   - decisões que só uma pessoa autorizada pode tomar;
   - sequência mínima para fechar G0;
   - itens que não impedem G0, mas devem ser resolvidos antes da Fase B.

### Restrições
- Não criar, editar, excluir, mover ou renomear arquivos fora de `temp/`.
- Não alterar arquivos normativos em `docs/`, `specs/`, `tests/` ou na raiz.
- Não atualizar `MANIFESTO-SHA256.md` nem qualquer manifesto normativo.
- Não instalar ferramentas ou dependências.
- Não iniciar a Fase B nem criar schemas/testes.
- Não declarar a baseline aprovada, homologada ou conforme sem evidência.
- Não tratar o relatório desta tarefa como aprovação humana.
- Não sobrescrever relatório existente: verifique se o destino já existe; se existir, escolha outro nome e informe o caminho usado.
- Não executar mudanças no Git nem fazer commit.

### Critério de conclusão
Um relatório em `temp/` com conclusões rastreáveis, evidências específicas e lista mínima de decisões humanas pendentes. Ao final, informar o caminho criado e um resumo de até 10 linhas.
