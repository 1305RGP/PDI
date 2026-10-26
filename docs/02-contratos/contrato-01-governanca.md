# Contrato 01 — Governança dos Artefatos e Autoridade de Decisão

**ID:** CTR-01  
**Tipo:** Contrato Técnico Normativo  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente; implementação técnica pendente.  
**Proprietário:** Proprietário humano do Núcleo (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Governança, estados e integridade de artefatos no Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/00-governanca/hierarquia-documental.md`, `docs/00-governanca/matriz-de-autoridade.md`, `specs/schemas/README.md`, `docs/02-contratos/contrato-05-inicializacao.md`.  
**Histórico de aprovação:** Aprovado conceitualmente em DEC-002 (2026-10-26).

## Objetivo

Controlar autoridade, estado, versão e precedência dos artefatos que orientam engenharia.

## Requisitos normativos

1. Cada artefato controlado possui ID, versão, estado, escopo, proprietário e referências.
2. Somente a versão vigente `APPROVED` serve como baseline autorizada.
3. Um artefato inferior não revoga silenciosamente um superior.
4. Conflitos não resolvidos bloqueiam o gate afetado.
5. Aprovações identificam artefato e versão, decisor, data, decisão e justificativa.
6. Alteração material invalida a aprovação anterior ou exige nova aprovação.
7. Agentes podem elaborar e recomendar; aprovações reservadas são humanas.
8. Aprovação não é presumida por silêncio ou conclusão de tarefa.

## Estados

`DRAFT`, `IN_REVIEW`, `PENDING_APPROVAL`, `CHANGES_REQUESTED`, `APPROVED`, `REJECTED`, `SUPERSEDED`, `OBSOLETE`.

## Critérios de aceite

- CA-01-01: detectar artefato não aprovado usado como baseline.
- CA-01-02: identificar versão obsoleta/substituída.
- CA-01-03: detectar conflito entre documentos.
- CA-01-04: rejeitar alteração protegida sem autorização.
- CA-01-05: preservar histórico de decisões/aprovações.
- CA-01-06: bloquear gate com conflito crítico aberto.
- CA-01-07: diferenciar declaração de agente de resultado comprovado.

## Evidência esperada

Relatório de validação contendo entradas, versões, violações detectadas, resultado, ambiente e identificador da execução.

## Dependências

Hierarquia documental, matriz de autoridade, esquema de metadados e Contrato 05.
