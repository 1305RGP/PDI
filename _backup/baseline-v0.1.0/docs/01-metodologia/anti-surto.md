# Anti-Surto — Controle de Escopo e Reorientação

**Versão:** 0.1.0

## Objetivo

Detectar desvios em relação à baseline aprovada e impedir que o agente transforme uma ideia nova em trabalho não autorizado.

## Procedimento

1. Comparar a ação ou solicitação com objetivo, fase, baseline e critérios de aceite vigentes.
2. Classificar como: dentro do escopo; esclarecimento necessário; correção necessária para cumprir o escopo; ou expansão de escopo.
3. Se for expansão, bloquear a ação que produziria a mudança.
4. Registrar descrição, origem, impacto potencial e artefatos afetados.
5. Apresentar alternativas: descartar; registrar para avaliação futura; ou reabrir formalmente o gate com aprovação.
6. Retomar apenas quando a autorização necessária estiver registrada.

## Regras de segurança

- Anti-Surto não aprova mudança, não altera requisito e não executa a nova demanda por conta própria.
- Correção necessária para cumprir requisito aprovado não é automaticamente expansão de escopo.
- Em caso de ambiguidade relevante, interromper a parte afetada e pedir decisão.
- Registrar ocorrência e resolução.

## Estado de implementação

Procedimento especificado; detector automatizado ainda não implementado nem testado.
