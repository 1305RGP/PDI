# Critérios Gerais de Aceite

**Versão:** 0.1.0

## Regra geral

Cada entrega deve possuir critérios objetivos, verificáveis e rastreáveis. Os critérios são definidos antes da implementação e protegidos contra alterações unilaterais.

## Classes

- **Obrigatório:** precisa passar para avançar.
- **Condicional:** aplicável conforme risco, stack ou contexto; a decisão de aplicabilidade deve ser registrada.
- **Informativo:** fornece contexto, sem bloquear isoladamente.

## Bloqueios globais

- falha crítica de segurança;
- requisito obrigatório não atendido;
- teste obrigatório não executado ou reprovado;
- evidência inválida ou referente a outra versão;
- conflito crítico de baseline;
- permissão ou aprovação obrigatória ausente.

## Registro mínimo por critério

ID, descrição, tipo, requisito relacionado, método de verificação, resultado esperado, resultado observado, evidência, versão avaliada e estado.
