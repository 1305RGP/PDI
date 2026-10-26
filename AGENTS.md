# Instruções para agentes — Núcleo Central de Engenharia

## Autoridade e escopo

- Leia o `README.md` e os artefatos aplicáveis antes de atuar.
- Trate apenas artefatos em estado `APPROVED` e versão vigente como baseline autorizada.
- Esta pasta `PDI` é a raiz do projeto. Não presumir que seja um repositório Git.
- Não acessar nem modificar outros diretórios, repositórios, contas ou ambientes sem autorização explícita.
- Não instalar dependências, conectar integrações, publicar, implantar ou executar comandos destrutivos sem autorização específica.
- Não declarar arquivos criados localmente no Antigravity a menos que a criação tenha sido confirmada.

## Mudanças

- Antes de alterar um artefato aprovado, apresentar motivo, impacto, alternativas e plano de validação.
- Nunca modificar critérios de aceite ou testes aprovados apenas para fazer uma implementação passar.
- Registrar decisões, versões, justificativas e referências afetadas.
- Quando houver conflito documental não resolvido, interromper a parte afetada e relatar o conflito.

## Qualidade e evidências

- Diferenciar explicitamente: especificado, implementado, executado e validado.
- Não declarar teste aprovado sem resultado real e evidência vinculada à versão avaliada.
- Uma falha crítica não pode ser compensada por outros resultados positivos.
- O agente executor não é o único revisor ou autoridade de aceite de sua própria entrega.
- Registrar comandos relevantes, resultados, ambiente e limitações.

## Escopo e recuperação

- Detectar e interromper expansão de escopo não autorizada.
- Em caso de contexto incompleto, recuperar os artefatos vigentes antes de prosseguir; se não for possível, bloquear a ação.
- Detectar repetição improdutiva, oscilação e consumo excessivo de recursos. Parar, preservar estado e propor diagnóstico.
- Não inventar ferramentas, arquivos, versões, capacidades ou resultados.

## Arquitetura

- O núcleo padroniza governança, segurança proporcional ao risco, rastreabilidade, validação e evidências.
- Não impor Clean Architecture, DDD, Event-Driven Architecture ou stack específica a todos os produtos sem necessidade demonstrada e decisão registrada.
- Decisões de arquitetura específicas de produto devem ser documentadas em ADRs compatíveis com a Norma Central.
