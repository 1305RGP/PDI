# Painel de Estado Atual — Núcleo Central de Engenharia (PDI)

**ID:** EST-ATUAL-001  
**Tipo:** Síntese de Estado Operacional e Governança  
**Data:** 2026-10-26  
**Versão do Projeto:** 0.2.0  
**Status:** EM PROGRESSO (Fase A concluída; padrão APDF_V01 adotado; Fase B pendente de autorização)  

---

## 1. Fase Atual do Projeto

- **Fase Vigente:** Transição entre a **Fase A (Correção Documental)** e a **Fase B (Modelagem de Schemas e Testes de Conformidade)**.
- **Gate Ativo:** **Gate G0 — Revisão da Materialização Documental**.
- **Condição Operacional:** Execução autônoma, instalação de dependências e alterações de código permanecem bloqueadas até a aprovação formal do Gate G0.

---

## 2. Decisões Autorizadas Vigentes

Registradas formalmente em [`docs/00-governanca/registro-de-decisoes.md`](file:///E:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md):

| Decisão ID | Resumo da Decisão | Estado |
|---|---|---|
| `DEC-001` | Utilização da pasta `PDI` como raiz do projeto inicial. | `APPROVED` |
| `DEC-002` | Contratos 01 a 05 compõem a baseline conceitual inicial. | `APPROVED` |
| `DEC-003` | O Núcleo padroniza controles, sem impor arquitetura de produto universal (ADRs requeridas). | `APPROVED` |
| `DEC-004` | Proibição de alterar repositórios externos e instalar ferramentas nesta etapa. | `APPROVED` |
| `DEC-005` | Criação da estrutura inicial documental antes de implementar orquestração. | `APPROVED` |
| `DEC-006` | Ferramentas só serão consideradas compatíveis após inspeção e teste real no ambiente-alvo. | `APPROVED` |
| `DEC-007` | `APDF_V01` (`MET-APDF-001` v1.0.0) designado padrão metodológico do Núcleo; `apdf.md` v0.1.0 passa a `SUPERSEDED`. | `APPROVED` |

---

## 3. Atividades Concluídas

1. **Inspeção Inicial:** Auditoria de integridade da baseline v0.1.0 com 25 arquivos conferidos via SHA-256.
2. **Preservação de Backup:** Cópia de segurança íntegra em `_backup/baseline-v0.1.0/` (26 arquivos, 0 divergências).
3. **Execução da Fase A (Correção Documental):**
   - Criação do diretório e guia de governança [`docs/03-adrs/README.md`](file:///E:/documentos/projetos/PDI/docs/03-adrs/README.md) atendendo ao Nível 4 da hierarquia.
   - Correção dos caminhos na ordem de leitura do [`README.md`](file:///E:/documentos/projetos/PDI/README.md).
   - Padronização dos metadados obrigatórios (ID, Tipo, Versão, Estado, Proprietário, Escopo, Data, Dependências, Histórico) em todos os 26 arquivos controlados.
   - Padronização dos enums de estado em `registro-de-decisoes.md` (`APPROVED`) e proteção de decisões abertas (`DRAFT`/`PENDING_APPROVAL`).
   - Definição da regra operacional transitória do APDF em [`docs/01-metodologia/apdf.md`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/apdf.md): identificado como `DRAFT` não homologado, autorizado exclusivamente como guia de descoberta, proibindo alegações de conformidade integral.
   - Atualização do [`CHANGELOG.md`](file:///E:/documentos/projetos/PDI/CHANGELOG.md) e recálculo total do [`MANIFESTO-SHA256.md`](file:///E:/documentos/projetos/PDI/MANIFESTO-SHA256.md) (100% verificado).
4. **Instalação da Área de Intercâmbio `temp/`:**
   - Criação de `temp/README.md`, `temp/resultado-fase-a.md`, `temp/revisao-referencias.md`, `temp/resultado-fase-b.md` e `temp/estado-atual.md`.
5. **Adoção do Padrão APDF_V01 (DEC-007):**
   - Criação de [`docs/01-metodologia/APDF_V01.md`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/APDF_V01.md) (`MET-APDF-001` v1.0.0), consolidando `APDF.md` e `ORQUESTRADOR_APDF.md` com a estrutura local.
   - Transição de [`docs/01-metodologia/apdf.md`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/apdf.md) para `SUPERSEDED` (registro histórico).
   - Atualização de `ciclo-apdf.md`, `README.md`, `CHANGELOG.md`, `registro-de-decisoes.md` e `MANIFESTO-SHA256.md` (26 → 27 arquivos, 0 divergências).

---

## 4. Matriz de Pendências Ativas

| Pendência ID | Descrição da Pendência | Impacto / Bloqueio | Responsável Previsto |
|---|---|---|---|
| `PEND-01` | **Homologação Formal da Baseline v0.2.0 (Gate G0)** | Bloqueia o início formal da Fase B e qualquer implementação de código. | Proprietário humano do Núcleo |
| `PEND-02` | **Conformidade Externa com o APDF Original** (reclassificada por DEC-007) | Não bloqueante: a fonte original `APDF(1).md` segue indisponível e a conformidade externa não é demonstrável (L-01); o padrão próprio `APDF_V01` está adotado. | Responsável de produto / Revisor independente |
| `PEND-03` | **Implementação dos Schemas Formais (Fase B)** | Ausência de validação sintática automatizada dos contratos. | Equipe técnica na Fase B |
| `PEND-04` | **Implementação dos Casos de Teste Automatizados (Fase B)** | Controles de governança e harness permanecem apenas documentados. | Equipe técnica na Fase B |
| `PEND-05` | **Designação Nominal da Matriz de Autoridade (`GOV-AUTH-001`)** | Permissões formais dependem do preenchimento humano durante onboarding. | Proprietário do Núcleo |
| `PEND-06` | **Harmonização de Nomenclatura das Pastas em `tests/`** | Manutenção da assimetria de idiomas (`tests/contracts` vs `docs/02-contratos`). | Decisão futura de refatoração |
