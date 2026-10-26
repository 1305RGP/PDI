# Contrato 02 — Qualidade, Testes e Evidências

**ID:** CTR-02  
**Tipo:** Contrato Técnico Normativo  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente; implementação técnica pendente.  
**Proprietário:** Responsável técnico/arquitetura (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Qualidade, rastreabilidade de testes e evidências no Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/02-contratos/contrato-01-governanca.md`, `docs/02-contratos/contrato-03-harness.md`.  
**Histórico de aprovação:** Aprovado conceitualmente em DEC-002 (2026-10-26).

## Objetivo

Demonstrar conformidade de uma entrega com requisitos e critérios de aceite por meio de testes executados, revisão e evidências rastreáveis.

## Distinções

- **Caderno de Testes:** define antecipadamente como a correção será demonstrada.
- **TDD:** disciplina de implementação guiada por testes.
- **Testes funcionais e de integração:** verificam comportamentos e interações relevantes.
- **Segurança e regressão:** verificações proporcionais ao risco e ao projeto.
- **AI Evals:** avaliam comportamento de sistemas com IA.
- **CI/CD:** executa verificações e registra resultados.
- **Revisão independente:** examina código, requisitos e evidências.

Nem toda categoria é necessária para todo projeto; aplicabilidade e exclusões devem ser justificadas. Verificações obrigatórias não podem ser omitidas para liberar uma entrega.

## Rastreabilidade

Requisito → critérios de aceite → Caderno de Testes → implementação/TDD → testes e AI Evals aplicáveis → CI → revisão independente → decisão de aceite.

## Evidência mínima

- requisito/tarefa relacionada;
- commit ou versão avaliada;
- identificador/versão do teste;
- ambiente e configuração;
- resultado real: aprovado, reprovado, bloqueado ou não executado;
- logs/relatórios;
- falhas conhecidas e responsáveis;
- revisor e decisão quando exigidos.

## Regras de bloqueio

Bloquear quando critério obrigatório falhar; teste obrigatório não existir ou não tiver sido executado; houver falha impeditiva de segurança/regressão; evidência não corresponder à versão; houver alteração não autorizada de teste; ou faltar revisão/aprovação obrigatória.

Teste não executado não equivale a aprovado. Evidência de outra versão não prova a versão candidata. Falha crítica não é compensada por média.

## Critérios de aceite

- CA-02-01: detectar requisito sem teste ou justificativa aprovada.
- CA-02-02: identificar teste sem requisito/justificativa.
- CA-02-03: rejeitar evidência de versão diferente.
- CA-02-04: distinguir aprovado, reprovado, bloqueado e não executado.
- CA-02-05: impedir mudança unilateral de critérios aprovados.
- CA-02-06: bloquear entrega com falha impeditiva.
- CA-02-07: registrar revisão e aprovação exigidas.

## Dependências

Contrato 01, Contrato 03, política de CI e configuração de testes específica do projeto.
