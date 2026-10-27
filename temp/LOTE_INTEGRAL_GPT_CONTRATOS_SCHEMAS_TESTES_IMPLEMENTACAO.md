# LOTE INTEGRAL — GPT
## Contratos, JSON Schemas, fixtures, testes, validação executável e plano técnico do núcleo

**Projeto:** PDI — Núcleo Central de Engenharia  
**Repositório esperado:** `1305RGP/PDI`  
**Modo:** execução integral em uma única rodada  
**Papel:** responsável técnico por contratos, schemas, testes e prontidão para implementação.

## 1. Objetivo

Revisar o material candidato existente, concluir o trabalho técnico possível em uma única execução, validar os contratos 01–05, schemas, fixtures e testes, identificar lacunas e preparar uma implementação executável coerente com a baseline. Se a implementação depender de G0 ou de decisão humana ainda não aprovada, conclua toda a preparação técnica em área candidata e deixe o bloqueio explícito — não pare o trabalho nem promova material bloqueado.

## 2. Regras invioláveis

1. Confirmar repositório, branch, commit e estado de trabalho antes de editar.
2. Inspecionar os arquivos reais; não presumir que artefatos mencionados em relatórios existem ou estão completos.
3. Não alterar a arquitetura aprovada nem criar uma arquitetura alternativa.
4. Não instalar dependências, alterar configurações globais, usar rede externa ou executar operações destrutivas sem autorização.
5. Executar somente ferramentas já disponíveis no ambiente. Se uma ferramenta não existir, registrar `NOT_RUN` e dar comando reproduzível para execução posterior.
6. Não afirmar que schemas foram validados com Draft 2020-12 sem executar um validador compatível.
7. Não promover artefatos candidatos para normativos nem declarar G0 aprovado.
8. Manter todo trabalho técnico bloqueado em `lote-02-gpt/` ou outra área candidata claramente identificada, quando a aprovação de baseline estiver pendente.
9. Diferenciar validação sintática, validação estrutural, validação semântica e teste de integração.
10. Trabalhar até o fim desta responsabilidade nesta mesma rodada. Não parar em diagnóstico; corrija candidatos, execute testes possíveis e entregue plano fechado.

## 3. Escopo de inspeção

Verificar:
- contratos 01–05 e respectivos requisitos;
- todos os JSON Schemas candidatos;
- perfis de contrato;
- fixtures válidas e inválidas;
- catálogo de testes e mapa CA-01 a CA-05;
- pacote de correções candidatas;
- relatórios existentes e decisões que condicionam a implementação.

## 4. Plano obrigatório de execução

### A. Auditoria de cobertura
- Criar matriz requisito → contrato → schema → fixture → teste → evidência.
- Detectar requisitos sem schema, schema sem requisito, fixtures que não exercitam regras e testes sem critério objetivo.
- Confirmar a versão do JSON Schema declarada em cada documento.
- Verificar referências `$ref`, IDs, enums, campos obrigatórios, formatos, restrições, compatibilidade e consistência dos estados canônicos.
- Tratar estados mistos como `APPROVED — ...` como potenciais violações quando o contrato exige enum canônico.

### B. Correção dos candidatos
- Corrigir artefatos exclusivamente na área candidata autorizada.
- Garantir fixtures positivas e negativas para cada contrato e regra crítica.
- Incluir casos de referência inexistente, duplicidade, campos obrigatórios ausentes, incompatibilidade de versão, autoridade não autorizada, placeholder de revisor, evidência ausente e distinção entre `NOT_RUN` e `PASS`.
- Criar testes de validação semântica entre documentos quando exigidos pelos contratos.
- Não inventar regras de negócio: cada regra deve apontar para contrato/decisão; regra sem fonte vira questão pendente.

### C. Execução real dos testes
- Identificar ferramentas e runtimes disponíveis.
- Executar validação JSON sintática em todos os arquivos aplicáveis.
- Executar validação JSON Schema com validador compatível, se já disponível.
- Executar testes de fixtures e validadores existentes, se forem seguros.
- Registrar comando, versão da ferramenta, código de saída, resumo e caminho dos logs.
- Classificar resultados como `PASS`, `FAIL`, `NOT_RUN` ou `BLOCKED`; nunca converter `NOT_RUN` em `PASS`.
- Se falhar, corrigir o que estiver dentro do escopo candidato e repetir a validação. Guardar evidências da execução final.

### D. Preparação técnica para o núcleo
- Com base nos contratos reais, definir o menor plano incremental de implementação executável, sem criar nova arquitetura.
- Identificar componentes, interfaces, entradas/saídas, regras, erros, logs, evidências e critérios de aceite.
- Priorizar validação de artefatos, rastreabilidade, avaliação de gates e geração de relatórios, somente se esses componentes estiverem respaldados pelo escopo normativo.
- Para cada componente, mapear requisito, arquivos afetados, teste, dependência e critério de aceite.
- Se houver código existente dentro do escopo, inspecionar e completar apenas o que for autorizado e compatível.
- Se G0 estiver pendente, não integrar/promover a baseline; concluir em área candidata a especificação, código isolado e testes que não comprometam o estado normativo.

### E. Relatório de prontidão
- Separar o que foi implementado e executado do que foi apenas preparado.
- Listar dívida técnica, bloqueios e decisões humanas necessárias.
- Não declarar o núcleo pronto para produção sem testes e evidências suficientes.

## 5. Arquivos de saída

1. Atualizar os candidatos existentes em `lote-02-gpt/` sem apagar o histórico.
2. `temp/ENTREGA_INTEGRAL_GPT_CONTRATOS_TESTES.md`
   - estado do repositório/commit;
   - cobertura contrato-schema-fixture-teste;
   - correções realizadas;
   - comandos e resultados;
   - falhas, bloqueios e limitações;
   - prontidão técnica e riscos.
3. `temp/MATRIZ_RASTREABILIDADE_CONTRATOS_TESTES.md`
   - requisito, fonte, schema, fixture, teste, resultado e evidência.
4. `temp/PLANO_IMPLEMENTACAO_NUCLEO.md`
   - componentes incrementais, dependências, arquivos, critérios de aceite, testes e bloqueios.
5. `temp/RELATORIO_VALIDACAO_EXECUTAVEL.md`
   - comandos reais, ambiente, ferramentas, resultados, logs e verificações não executadas.

## 6. Critério de conclusão

A entrega só está concluída quando:
- todos os contratos 01–05 estiverem cobertos ou suas lacunas explicitadas;
- os schemas e fixtures tiverem sido revisados;
- os testes possíveis tiverem sido executados de verdade;
- falhas corrigíveis dentro do escopo tiverem sido corrigidas e retestadas;
- houver rastreabilidade requisito → contrato → schema → fixture → teste → evidência;
- existir plano de implementação sem arquitetura inventada;
- G0 e demais aprovações humanas continuarem respeitados.

Finalize com tabela por artefato contendo: estado (`DONE`, `PROPOSED`, `BLOCKED`, `NOT_VERIFIED`), evidência, dependências e próximo responsável.
