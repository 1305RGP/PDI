# LOTE DE EXECUÇÃO — GPT
## Preparação técnica da Fase B: schemas e testes de contrato/governança

**Projeto:** PDI — Núcleo Central de Engenharia  
**Executor designado:** GPT (modelo/agente selecionado manualmente pelo usuário)  
**Modo:** inspeção e planejamento; sem implementação  
**Destino do relatório:** `temp/resultado-GPT-plano-fase-b.md`

### Objetivo
Preparar um plano técnico executável para a Fase B, sem iniciá-la. Identificar os contratos 01–05, as lacunas de schema/testes, os critérios de aceite e as dependências do Gate G0.

### Contexto conhecido
- A Fase B ainda não foi iniciada nem autorizada.
- O Gate G0 continua pendente.
- A baseline inicial possui contratos conceituais 01–05.
- Há uma pendência conhecida de harmonização dos nomes de diretórios de testes: `tests/contracts`, `tests/evaluations`, `tests/governance` versus terminologia em português nos documentos.
- Ferramentas, dependências e compatibilidade só podem ser consideradas confirmadas após inspeção e teste no ambiente-alvo.
- Não assumir que scripts, schemas ou agentes descritos em documentos já existam.

### Tarefas
1. Inspecionar os contratos 01–05 e os documentos normativos relacionados.
2. Inventariar os schemas, exemplos, regras de validação e testes que seriam necessários, marcando cada item como:
   - encontrado e verificado;
   - mencionado, mas não encontrado;
   - necessário proposto;
   - bloqueado por decisão.
3. Propor a estrutura mínima de testes para:
   - contratos;
   - avaliações;
   - governança.
4. Definir critérios de aceite, casos positivos/negativos, cobertura de campos obrigatórios, estados inválidos, referências e integridade documental, conforme suportado pelos contratos reais.
5. Resolver no plano — sem alterar diretórios — a proposta de harmonização de nomes entre documentação e estrutura de testes.
6. Listar dependências, riscos, ordem de execução e pontos que exigem aprovação humana antes de implementar.
7. Estimar o esforço por lote (P/M/G ou horas, deixando explícito que é estimativa) e indicar o menor caminho seguro de execução após a liberação formal.

### Restrições
- Não criar schemas, testes, scripts ou código nesta tarefa.
- Não modificar arquivos normativos, contratos, estrutura de pastas ou manifesto.
- Não instalar dependências ou ferramentas.
- Não iniciar a Fase B.
- Não afirmar que testes foram executados se não foram.
- Não sobrescrever relatórios existentes; verificar o destino e escolher outro nome se necessário.
- Não alterar Git, branches ou commits.
- Não resolver conflitos por suposição: registrar recomendação e decisão necessária.

### Critério de conclusão
Um plano técnico priorizado em `temp/`, baseado nos contratos reais, com inventário, casos de teste propostos, critérios de aceite, dependências, riscos e sequência mínima pós-G0.
