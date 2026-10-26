# Critérios Gerais de Aceite

**ID:** QUA-CRIT-001  
**Tipo:** Norma Técnica de Aceite  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente; validação automatizada pendente.  
**Proprietário:** Responsável técnico/arquitetura (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Critérios de aceite para entregas no Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/02-contratos/contrato-02-qualidade.md`.  
**Histórico de aprovação:** Aprovado conceitualmente em DEC-002 (2026-10-26).  

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
