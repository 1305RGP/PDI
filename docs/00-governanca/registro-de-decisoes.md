# Registro de Decisões

**ID:** GOV-DEC-001  
**Tipo:** Registro de Decisões  
**Versão:** 0.2.0  
**Estado:** APPROVED — registro ativo e controlado.  
**Proprietário:** Proprietário humano do Núcleo (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Decisões transversais do Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`, `docs/01-metodologia/APDF_V01.md`.  
**Histórico de aprovação:** v0.1.0 — criado na baseline conceitual com DEC-001 a DEC-006 (2026-10-26). v0.2.0 — incorpora DEC-007, que designa o `APDF_V01` como padrão metodológico do Núcleo (2026-10-26).  

| ID | Decisão | Estado | Observações |
|---|---|---|---|
| DEC-001 | O projeto utiliza a pasta `PDI` como raiz inicial. | APPROVED | Pasta informada como vazia pelo usuário. |
| DEC-002 | Os Contratos 01 a 05 compõem a baseline conceitual inicial. | APPROVED | Aprovados explicitamente na conversa; controles ainda não implementados. |
| DEC-003 | O Núcleo padroniza controles, não uma arquitetura única para todos os produtos. | APPROVED | Arquitetura local deve ser justificada por ADR. |
| DEC-004 | Não alterar repositórios existentes nem instalar/conectar ferramentas nesta etapa. | APPROVED | Restrição operacional da inicialização. |
| DEC-005 | Estrutura inicial documental será criada antes de implementar orquestração. | APPROVED | Pacote documental v0.1.0. |
| DEC-006 | Ferramentas só serão consideradas compatíveis após inspeção e teste no ambiente real. | APPROVED | Documentação pública não basta. |
| DEC-007 | O `APDF_V01` (`docs/01-metodologia/APDF_V01.md`, MET-APDF-001 v1.0.0) passa a ser o padrão metodológico de descoberta e preparação do Núcleo. | APPROVED | Consolida as fontes candidatas `APDF.md` e `ORQUESTRADOR_APDF.md`; substitui o `apdf.md` v0.1.0. Aprovação por instrução direta do proprietário humano; revisão independente pendente. |

## Detalhamento das Decisões

### DEC-007 — Adoção do APDF_V01 como padrão metodológico

- **Contexto:** o Núcleo possuía `docs/01-metodologia/apdf.md` v0.1.0 em estado `DRAFT`, classificado como referência provisória não homologada, e duas fontes candidatas externas — `APDF.md` (identidade do agente, fases e gates) e `ORQUESTRADOR_APDF.md` (modo document-aware). A fonte original `APDF(1).md` não foi localizada, impedindo qualquer declaração de conformidade com o framework original.
- **Decisão:** consolidar as duas fontes candidatas com a estrutura local e adotar o resultado como padrão metodológico do Núcleo, materializado em `docs/01-metodologia/APDF_V01.md`, ID `MET-APDF-001`, versão `1.0.0`, estado `APPROVED`.
- **Alternativas consideradas:**
  1. manter o `apdf.md` em `DRAFT` até recuperar a fonte original — rejeitada por deixar o Núcleo sem metodologia utilizável;
  2. restaurar o `apdf.md` v0.1.0 como padrão — rejeitada por ser lista de fases sem conteúdo operacional, sem Anti-Surto e sem controle pós-Freeze;
  3. consolidar as fontes candidatas em novo artefato versionado — **adotada**.
- **Justificativa:** elimina a dependência de fonte inexistente, preserva a proveniência das duas fontes disponíveis e mantém neutralidade arquitetural (DEC-003). As lacunas ficam explícitas em vez de mascaradas por alegação de conformidade.
- **Consequências:**
  - `docs/01-metodologia/apdf.md` v0.1.0 passa a `SUPERSEDED`, mantido apenas como registro histórico;
  - `docs/01-metodologia/ciclo-apdf.md` passa a referenciar `APDF_V01.md`;
  - baseline documental sobe para `v0.2.0`; Contratos 01 a 05 permanecem inalterados em conteúdo;
  - `MANIFESTO-SHA256.md` e `CHANGELOG.md` são atualizados.
- **Ressalvas registradas:**
  - fonte original `APDF(1).md` indisponível; conformidade externa não demonstrável (L-01);
  - aprovação por instrução direta do proprietário humano nesta sessão, sem segundo revisor (L-05);
  - TPM não executado nem verificado no ambiente; integração opcional e não testada (L-03);
  - seção 14 do `APDF_V01` é informativa e não atesta compatibilidade de ferramenta (L-04);
  - detector Anti-Surto permanece manual (L-02).
- **Escopo:** metodologia de descoberta e preparação do Núcleo Central de Engenharia.
- **Responsável pela aprovação:** Proprietário humano do Núcleo, por instrução direta na sessão (designação nominal pendente conforme GOV-AUTH-001).
- **Data:** 2026-10-26.
- **Artefatos afetados:** `docs/01-metodologia/APDF_V01.md` (criado), `docs/01-metodologia/apdf.md` (SUPERSEDED), `docs/01-metodologia/ciclo-apdf.md`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`, `docs/00-governanca/registro-de-decisoes.md`.
- **Estado:** `APPROVED`.

## Regra de Gestão de Decisões

- Decisões em elaboração ou abertas devem ser registradas com estado `DRAFT` ou `PENDING_APPROVAL`.
- Somente decisões com autorização formal registrada de acordo com a Matriz de Autoridade (`GOV-AUTH-001`) podem transitar para `APPROVED`.
- Nenhuma decisão aberta pode ser presumida como aprovada por decurso de prazo ou silêncio.

## Modelo para novas decisões

- ID: DEC-NNN
- Contexto:
- Decisão:
- Alternativas consideradas:
- Justificativa:
- Consequências:
- Escopo:
- Responsável pela aprovação:
- Data:
- Artefatos afetados:
- Estado: (`DRAFT` | `PENDING_APPROVAL` | `APPROVED` | `REJECTED` | `SUPERSEDED` | `OBSOLETE`)
