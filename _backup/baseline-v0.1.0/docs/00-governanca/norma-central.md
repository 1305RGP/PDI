# Norma Central de Engenharia

**ID:** NCE-001  
**Versão:** 0.1.0  
**Estado:** APPROVED — baseline conceitual aprovada; materialização documental inicial.  
**Escopo:** todos os projetos que adotarem o Núcleo Central de Engenharia.

## 1. Finalidade

Definir controles comuns de autoridade, qualidade, segurança, rastreabilidade e execução. A norma não impõe uma arquitetura de produto ou stack tecnológica universal.

## 2. Princípios obrigatórios

1. **Baseline explícita:** requisitos, decisões e critérios de aceite precisam estar documentados e aprovados antes de orientar execução.
2. **Autoridade explícita:** agentes podem analisar, recomendar e executar ações autorizadas; não podem assumir aprovações reservadas a humanos.
3. **Evidência verificável:** declarações de agentes não substituem resultados de ferramentas, testes ou revisões.
4. **Integridade dos testes:** testes e critérios aprovados não podem ser alterados unilateralmente para fazer a implementação passar.
5. **Menor privilégio:** ferramentas e agentes recebem somente permissões necessárias à tarefa autorizada.
6. **Rastreabilidade:** requisitos, decisões, testes, mudanças, resultados e aprovações devem estar relacionados.
7. **Segurança proporcional ao risco:** controles obrigatórios são definidos por risco, dados tratados, exposição e impacto.
8. **Reversibilidade e recuperação:** mudanças relevantes devem permitir diagnóstico e recuperação conforme a criticidade.
9. **Sem sucesso presumido:** tarefa concluída, teste aprovado e liberação são estados distintos.
10. **Arquitetura adequada ao contexto:** padrões arquiteturais são escolhidos com justificativa, não impostos automaticamente.

## 3. Regras de bloqueio

Bloquear o gate afetado quando houver:
- conflito crítico entre artefatos aprovados;
- requisito ou critério obrigatório sem definição suficiente;
- teste obrigatório não executado ou reprovado;
- evidência inválida, ausente ou referente a outra versão;
- mudança não autorizada de escopo, permissão, requisito ou teste;
- aprovação obrigatória pendente;
- impossibilidade de verificar o contexto ou a autorização da execução.

## 4. Exceções

Toda exceção deve registrar: identificador, regra afetada, justificativa, escopo, riscos, mitigação, responsável autorizador, data, validade e condições de encerramento. Uma exceção local não revoga a Norma Central para outros projetos.

## 5. Revisão e mudança

Alterações nesta norma exigem proposta, análise de impacto, revisão independente e aprovação da autoridade central designada. Até essa autoridade ser formalmente nomeada, a aprovação permanece reservada ao proprietário humano do Núcleo.

## 6. Estado de implementação

Esta norma está documentada. Os mecanismos técnicos para impor suas regras ainda não foram implementados nem validados.
