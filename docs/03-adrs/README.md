# Registros de Decisões de Arquitetura (ADRs)

**ID:** ADR-README-001  
**Tipo:** Guia de Procedimento  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente; operacional para o projeto.  
**Proprietário:** Responsável técnico/arquitetura (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Decisões arquiteturais específicas de produto adotando o Núcleo PDI.  
**Data:** 2026-10-26  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`.  
**Histórico de aprovação:** Criado na Fase A para atender ao Nível 4 da hierarquia documental.  

## 1. Finalidade

Este diretório armazena os Architectural Decision Records (ADRs) do projeto. Conforme estabelecido na Norma Central de Engenharia (NCE-001) e na Hierarquia Documental (GOV-DOC-001), o Núcleo padroniza governança, segurança, rastreabilidade e qualidade sem impor uma arquitetura de produto universal.

Toda escolha arquitetural relevante para o produto específico (estilo arquitetural, padrões de persistência, comunicação entre serviços, etc.) deve ser justificada e registrada neste diretório.

## 2. Posição na Hierarquia Documental

Na hierarquia do projeto:
1. Norma Central de Engenharia
2. Metodologia APDF e procedimentos centrais
3. Baseline aprovada do projeto
4. **ADRs (este nível)**
5. SPECs e contratos técnicos

Um ADR pode especializar e contextualizar requisitos técnicos, mas **não revoga a Norma Central nem dispensa aprovação formal de mudanças de escopo**. Exceções formais à Norma Central exigem justificativa e autorização expressa do proprietário do Núcleo.

## 3. Nomenclatura e Numeração

Os arquivos de ADR devem seguir o padrão:
`ADR-NNNN-titulo-descritivo.md` (exemplo: `ADR-0001-escolha-estilo-comunicacao.md`).

## 4. Estrutura Padrão de um ADR

Todo ADR deve conter a seguinte estrutura mínima:

- **Cabeçalho de Metadados:**
  - `ID`: ADR-NNNN
  - `Título`: Título conciso da decisão
  - `Status`: `DRAFT`, `PROPOSED`, `ACCEPTED`, `REJECTED`, `SUPERSEDED` ou `DEPRECATED`
  - `Data`: AAAA-MM-DD
  - `Autor`: Nome do proponente
  - `Decisor/Aprovador`: Responsável autorizado pela aprovação
- **Contexto:** Descrição do problema técnico ou necessidade arquitetural e forças em jogo.
- **Alternativas Consideradas:** Soluções alternativas avaliadas com prós e contras.
- **Decisão:** Escolha adotada e justificativa detalhada.
- **Consequências:** Impactos positivos, negativos, custos e riscos associados.
- **Conformidade com a Norma Central:** Demonstração de que a decisão respeita os princípios de menor privilégio, rastreabilidade, reversibilidade e testabilidade da NCE-001.
