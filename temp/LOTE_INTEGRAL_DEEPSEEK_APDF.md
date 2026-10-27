# LOTE INTEGRAL — DEEPSEEK
## Metodologia APDF, rastreabilidade, correções e validação documental

**Projeto:** PDI — Núcleo Central de Engenharia  
**Repositório esperado:** `1305RGP/PDI`  
**Modo:** execução integral em uma única rodada  
**Papel:** especialista metodológico, revisor de conformidade documental e responsável pela consistência do APDF.

## 1. Objetivo

Auditar o APDF em relação aos contratos e às decisões vigentes, validar as falhas já apontadas, executar todas as correções seguras dentro do escopo autorizado e entregar um pacote metodológico coerente, rastreável e pronto para revisão/aprovação, sem declarar conformidade que não tenha sido demonstrada.

Não faça somente uma lista de recomendações nem pare após confirmar os achados. Conclua a análise, prepare as correções e valide-as nesta mesma execução.

## 2. Regras invioláveis

1. Inspecione o repositório e confirme branch/commit antes de trabalhar.
2. Use o arquivo APDF vigente e as versões reais dos contratos/decisões. Confirme qual arquivo é normativo e qual está superseded.
3. Não invente conteúdo da fonte original. Se ela não estiver acessível, declare a limitação e não alegue conformidade integral com uma fonte que não pôde comparar.
4. Preserve o significado da metodologia, suas fases, gates, checkpoints Anti-Surto, elicitação, artefatos, critérios de handoff e tratamento de mudança de escopo.
5. Não altere arquitetura geral, escopo do projeto, contratos fora de seu escopo ou registro de decisões para contornar inconsistências.
6. Não aprove G0 nem promova a baseline. Correções metodológicas podem ser propostas ou preparadas, mas devem ficar identificadas como candidatas se o processo exigir aprovação.
7. Não instale dependências nem faça operações destrutivas.
8. Não declare que um teste passou sem executar e registrar o resultado.
9. Trabalhe até o fim da sua responsabilidade nesta rodada; não solicite uma nova rodada para fazer correções documentais, comparação ou relatório.
10. Diferencie fatos verificados, inferências, propostas e limitações.

## 3. Achados anteriores que precisam ser verificados

Um relatório anterior apontou:
- F-01: ausência do campo `dependencies` no checkpoint Anti-Surto em relação ao CTR-03;
- F-02: hashes de proveniência no Apêndice A possivelmente não correspondem aos arquivos/objetos Git atuais;
- F-03: pergunta explícita de reancoragem antes de cada gate não textualizada;
- F-04: rótulos de ação heterogêneos entre as 13 fases;
- F-05: origem/proveniência do ciclo não justificada de forma explícita.

Confirme cada item com evidência no estado atual. Não assuma que os achados permanecem verdadeiros.

## 4. Plano obrigatório de execução

### A. Levantamento e mapa de conformidade
- Ler APDF vigente, contratos 01–05 relevantes, decisões, registros de estado e relatórios anteriores.
- Mapear fases, perguntas de elicitação, artefatos, gates, checkpoints Anti-Surto, tratamento de mudança de escopo e handoff.
- Mapear cada obrigação do contrato para a seção exata do APDF.
- Identificar lacunas, duplicações, conflitos e requisitos sem cobertura.

### B. Verificação dos achados F-01 a F-05
Para cada achado, registrar:
- veredito: confirmado, parcialmente confirmado, não confirmado ou não verificável;
- evidência exata;
- impacto;
- correção proposta;
- teste de aceitação.

Verificar hashes usando o conteúdo e os objetos Git realmente disponíveis. Nunca inventar ou copiar hashes sem recalculá-los. Identificar claramente o algoritmo e o objeto/arquivo ao qual cada hash se refere.

### C. Correções completas
- Preparar correção para cada achado confirmado.
- Corrigir referências cruzadas, campos requeridos, estados, nomes de ações e proveniência quando houver base normativa.
- Manter consistência entre as 13 fases e o modelo de gates.
- Adicionar uma pergunta de reancoragem por gate se essa exigência estiver respaldada pelas fontes vigentes.
- Incluir dependências no checkpoint Anti-Surto se exigido pelo CTR-03.
- Documentar cada alteração com antes/depois, motivo, fonte normativa e efeito sobre compatibilidade.
- Se uma correção alterar o significado normativo ou depender de uma decisão humana ainda pendente, preparar patch/proposta isolada e explicar o bloqueio, sem fingir que foi aprovada.

### D. Validação
Executar as verificações possíveis sem instalar ferramentas novas:
- links e referências internas;
- consistência dos IDs;
- cobertura de requisitos;
- presença dos campos obrigatórios;
- consistência de nomenclatura;
- hashes reproduzíveis;
- comparação entre APDF e contratos.
Se alguma validação depender de ferramenta indisponível, fornecer comando reproduzível, pré-condições e estado `NOT_RUN`, não `PASS`.

### E. Compatibilidade e transição
- Identificar o que muda para consumidores da APDF.
- Distinguir correção editorial, correção de consistência e mudança normativa.
- Propor versão apropriada (por exemplo, patch somente se as regras de versionamento do projeto permitirem).
- Atualizar referências internas somente dentro do escopo autorizado.
- Não apagar versões antigas; manter o estado superseded e histórico rastreáveis.

## 5. Arquivos de saída

Criar/atualizar os relatórios em `temp/` e trabalhar em cópia candidata para mudanças metodológicas, se não houver autorização inequívoca para alterar o documento normativo:

1. `temp/ENTREGA_INTEGRAL_DEEPSEEK_APDF.md`
   - escopo, commit/branch, achados F-01..F-05, matriz de conformidade, correções, testes e limitações.

2. `temp/APDF_V01_CORRIGIDA_CANDIDATA.md`
   - versão integral candidata corrigida, preservando estrutura e conteúdo não afetado; não criar apenas trechos soltos.
   - Se não for seguro reproduzir integralmente o documento, criar patch detalhado e explicar a limitação, sem substituir o original.

3. `temp/MATRIZ_CONFORMIDADE_APDF.md`
   - requisito/contrato, localização no APDF, evidência, estado, correção e critério de aceite.

4. `temp/REGISTRO_ALTERACOES_APDF.md`
   - cada alteração, razão, fonte, impacto e compatibilidade.

## 6. Critério de conclusão

A entrega só está concluída quando:
- todos os achados F-01..F-05 tiverem veredito;
- cada lacuna confirmada tiver correção ou bloqueio justificado;
- houver uma matriz de conformidade rastreável;
- validações executadas e não executadas estiverem separadas;
- nenhuma fonte indisponível tiver sido tratada como consultada;
- estiver claro se o documento foi alterado normativamente ou se a correção permanece candidata.

Finalize com: `DONE`, `PROPOSED`, `BLOCKED`, `NOT_VERIFIED` por item, mais evidência e próximo responsável.
