# LOTE INTEGRAL — GEMINI
## Governança, auditoria independente, baseline e decisão G0

**Projeto:** PDI — Núcleo Central de Engenharia  
**Repositório esperado:** `1305RGP/PDI`  
**Modo:** execução integral em uma única rodada, com evidências verificáveis  
**Papel:** auditor independente de governança e consolidador de decisões.  
**Limite de autoridade:** não aprovar decisões humanas em nome do responsável pelo projeto.

## 1. Objetivo

Executar de ponta a ponta, nesta mesma rodada, a auditoria de governança do estado atual do PDI, reconciliar os relatórios existentes, determinar o estado real do Gate G0 e entregar um pacote final coerente que permita ao responsável decidir e prosseguir sem precisar solicitar outra rodada de diagnóstico.

Não faça apenas recomendações genéricas. Inspecione os arquivos reais e o histórico Git disponíveis, registre evidências e produza os artefatos finais previstos abaixo.

## 2. Regras invioláveis

1. Comece identificando o repositório, branch, commit HEAD e estado de trabalho. Registre os comandos executados e resultados relevantes.
2. Não afirme ter inspecionado o ambiente local se só tiver acesso ao GitHub ou a uma cópia remota.
3. Não confunda afirmação de um relatório com evidência independente.
4. Não marque G0 como aprovado sem uma decisão humana explícita, registrada no mecanismo oficial de decisões do projeto.
5. Não altere arquitetura, escopo, contratos normativos ou baseline para contornar um gate.
6. Não instale dependências, não altere configurações globais e não faça operações destrutivas.
7. Preserve o histórico e os artefatos existentes. Antes de editar qualquer arquivo, registre seu caminho, finalidade e impacto.
8. Quando não conseguir verificar algo, classifique-o como `NOT_VERIFIED`, explicando o motivo e o comando/evidência que faltou.
9. Trabalhe até o fim da sua responsabilidade nesta mesma execução. Não pare para pedir autorização para tarefas de auditoria, comparação, relatório ou preparação de proposta.
10. Não declare implementação, testes ou conformidade que não tenham sido efetivamente executados.

## 3. Contexto que precisa ser confirmado, não presumido

O histórico do projeto indica:
- `APDF_V01.md` foi adotado como metodologia central por proposta de DEC-007; `apdf.md` foi marcado como `SUPERSEDED`.
- G0 foi descrito como pendente em `temp/estado-atual.md`.
- Existem artefatos candidatos em `lote-02-gpt/` e relatórios em `temp/`.
- Um relatório Gemini anterior propôs DEC-008, mas o relatório por si só não comprova aprovação humana.
- Há relatos de divergências em estados canônicos, rastreabilidade, hashes e autoridade de aprovação.

Verifique o estado real no commit atual. Não copie estas afirmações como fatos sem conferência.

## 4. Plano obrigatório de execução

### A. Levantamento
- Confirmar branch, HEAD, estado de trabalho e estrutura do repositório.
- Ler o registro oficial de decisões, estado atual, baseline/manifesto, contratos 01–05, APDF e relatórios relevantes.
- Identificar os arquivos normativos, candidatos, temporários e superseded.
- Elaborar uma matriz de evidências com: afirmação, arquivo/linha ou commit, resultado da verificação, confiança e ação necessária.

### B. Reconciliação
- Comparar os relatórios de Gemini, DeepSeek e GPT disponíveis.
- Resolver divergências somente quando houver evidência suficiente.
- Manter explicitamente as divergências não resolvidas; não fabricar consenso.
- Detectar inconsistências de nomenclatura, estados, versões, decisões, hashes, referências e autoridade.

### C. Gate G0
- Determinar se há uma decisão humana formal, inequívoca e rastreável aprovando G0.
- Se houver, citar exatamente o registro que autoriza a decisão e verificar seu escopo.
- Se não houver, manter G0 pendente e preparar uma proposta de decisão para o responsável humano, incluindo: objeto, critérios, evidências, riscos residuais, alternativas e consequência de aprovar/rejeitar.
- Não assinar, registrar nem simular a decisão humana.
- Separar claramente: “pronto para decisão”, “aprovado” e “implementado”.

### D. Plano integrado de conclusão
Entregar plano único que cubra:
1. correções da APDF;
2. baseline e integridade de proveniência;
3. contratos, schemas, fixtures e testes;
4. validação técnica executável;
5. critérios de autorização e promoção;
6. implementação progressiva do núcleo;
7. testes de integração/regressão e preparação de release.
Para cada ação: ID, prioridade, dependência, arquivo afetado, responsável sugerido, critério de aceite, evidência exigida e se está bloqueada por decisão humana.

### E. Checagem final
- Verificar que cada conclusão importante tem evidência.
- Distinguir realizado, proposto, bloqueado e não verificado.
- Se tiver acesso a Git, verificar diff e não deixar alterações fora do escopo.
- Não criar uma nova arquitetura. Não duplicar documentos que já existem; preferir corrigir ou referenciar os existentes.

## 5. Arquivos de saída

Criar/atualizar somente arquivos de relatório e proposta em `temp/`, salvo se o repositório definir outro local oficial de relatórios:

1. `temp/ENTREGA_INTEGRAL_GEMINI_GOVERNANCA.md`
   - resumo executivo;
   - repositório/branch/commit efetivamente inspecionados;
   - método e evidências;
   - estado real do G0;
   - reconciliação dos relatórios;
   - inconsistências e riscos;
   - decisão proposta (se necessária);
   - plano integrado com critérios de aceite;
   - limitações e itens `NOT_VERIFIED`.

2. `temp/MATRIZ_EVIDENCIAS_GOVERNANCA.md`
   - matriz de afirmações e evidências rastreáveis.

3. `temp/PROPOSTA_DECISAO_G0.md`
   - preencher como proposta pronta para avaliação humana;
   - se G0 já estiver formalmente aprovado, documentar a evidência e não criar uma segunda decisão conflitante.

## 6. Critério de conclusão

A tarefa só está concluída quando:
- o estado real de G0 estiver comprovado ou explicitamente classificado como não comprovado;
- os conflitos entre relatórios estiverem reconciliados ou listados sem ambiguidade;
- existir um plano integrado com dependências e critérios verificáveis;
- nenhum gate humano tiver sido aprovado artificialmente;
- o relatório indicar exatamente o que foi e não foi alterado.

Finalize com uma tabela: item, estado (`DONE`, `PROPOSED`, `BLOCKED`, `NOT_VERIFIED`), evidência e próximo responsável.
