# APDF — Processo de Descoberta e Preparação

**ID:** MET-APDF-001  
**Tipo:** Metodologia de Descoberta e Preparação  
**Versão:** 0.1.0  
**Estado:** DRAFT — referência provisória não homologada.  
**Proprietário:** Responsável pelo produto/escopo (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Processo de descoberta, estruturação e handoff para engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`.  
**Histórico de aprovação:** Adaptação inicial baseada em decisões conhecidas; pendente de homologação formal frente à fonte original.  

## 1. Regra Operacional Provisória

- **Uso Autorizado:** Este documento pode ser utilizado por agentes e equipes exclusivamente como **referência metodológica provisória** para orientar atividades de descoberta, mapeamento de incertezas e preparação do handoff para engenharia.
- **Identificação de Não Homologado:** O artefato está expressamente classificado no estado `DRAFT`, permanecendo **não homologado**.
- **Proibição de Alegações de Conformidade:** É expressamente **proibido alegar conformidade integral** com o processo APDF ou emitir pareceres declarando cumprimento pleno do APDF até que seja realizada a comparação formal com o documento-fonte original aprovado e registradas eventuais divergências.

## 2. Objetivo

Reduzir incerteza e produzir artefatos aprováveis antes da execução. APDF não é agente de programação: organiza descoberta, decisões, critérios e passagem controlada para engenharia.

## 3. Fases

1. Product Discovery
2. Domain Discovery
3. Capability Discovery
4. Context Discovery
5. Business Discovery
6. Current State Discovery
7. Gap Discovery
8. Target Architecture
9. Architecture Freeze
10. Execution Planning
11. Governance Model
12. Execution Packages
13. Engineering Handoff

## 4. Regras

- Não pular fases ou gates obrigatórios.
- Cada fase produz artefatos e registra questões em aberto.
- Perguntas devem reduzir incerteza relevante; não repetir informações já estabelecidas.
- A aprovação de um gate é explícita e rastreável.
- Uma mudança de escopo pode exigir reabertura formal do gate afetado.
- O handoff para engenharia inclui baseline, dependências, critérios de aceite, caderno de testes, riscos e permissões.

## 5. Ciclo de execução

Construir → Provar → Diagnosticar → Feedback → Incremento de Valor → Validar.

## 6. Limitação desta versão

A lista de fases e ciclo foi consolidada a partir das decisões conhecidas do projeto. Antes de alegar conformidade integral com o documento-fonte APDF, comparar esta versão com a fonte original e registrar divergências em documento de validação.
