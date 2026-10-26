# Changelog

**ID:** PDI-CHANGELOG  
**Tipo:** Registro de Mudanças  
**Versão:** 0.2.0  
**Estado:** APPROVED — ativo e controlado.  
**Data:** 2026-10-26  

## [0.2.0] — 2026-10-26

### Padrão APDF_V01 (DEC-007)
- Criação de `docs/01-metodologia/APDF_V01.md` (`MET-APDF-001` v1.0.0, `APPROVED`): padrão metodológico do Núcleo, consolidando as fontes candidatas `APDF.md` (SHA-256 `973DC2FE…B716E`) e `ORQUESTRADOR_APDF.md` (SHA-256 `6CAD6D1C…3FD27`) com a estrutura local.
- Conteúdo incorporado: 4 perguntas iniciais, modo document-aware, fluxo de 6 passos, 13 fases com pergunta/elicitação/artefatos/gate, gates com campos obrigatórios, Anti-Surto (T-01..T-10, N-01..N-04, checkpoint alinhado ao `CTR-03`), três opções de desvio, Regra de Ouro RG-01, controle pós-Freeze CF-01..CF-06, handoff com 5 confirmações, ciclo de 6 passos, TPM condicional, critérios CA-APDF-01..12 e Anexo A de proveniência com AD-01..AD-14.
- `docs/01-metodologia/apdf.md` v0.1.0 transita de `DRAFT` para `SUPERSEDED`, mantido como registro histórico.
- `docs/01-metodologia/ciclo-apdf.md` passa a depender de `APDF_V01.md`.
- Atualização de `README.md` (baseline documental para v0.2.0, ordem de leitura e estado da metodologia) e de `docs/00-governanca/registro-de-decisoes.md` (DEC-007 e versão 0.2.0).
- Recálculo de `MANIFESTO-SHA256.md` (26 → 27 arquivos).
- Escopo preservado: nenhum contrato alterado em conteúdo; nenhum TPM executado; nenhuma dependência instalada; nenhum código produzido.
- Ressalvas: fonte original `APDF(1).md` indisponível; revisão independente pendente; detector Anti-Surto e integração TPM não implementados.

## [0.1.0] — 2026-10-26

### Fase A — Correção Documental (2026-10-26)
- Criação de backup integral da baseline original em `_backup/baseline-v0.1.0/`.
- Criação do diretório e guia `docs/03-adrs/README.md` (ADR-README-001) para governança de decisões arquiteturais de produto (Nível 4 da hierarquia).
- Correção dos caminhos na seção "Ordem de leitura" do `README.md`, tornando-os explícitos a partir da raiz e incluindo referências aos ADRs, ferramentas e evidências.
- Padronização de metadados obrigatórios (ID, Tipo, Versão, Estado, Proprietário, Escopo, Data, Dependências, Histórico) em todos os documentos normativos, contratos e especificações, em conformidade com `GOV-DOC-001`.
- Padronização dos enums de estado em `docs/00-governanca/registro-de-decisoes.md` (uso de `APPROVED`), mantendo decisões abertas protegidas com estados `DRAFT` ou `PENDING_APPROVAL`.
- Definição da regra operacional transitória do APDF em `docs/01-metodologia/apdf.md`: permissão de uso como referência provisória de descoberta, identificação explícita como não homologado (`DRAFT`), e proibição expressa de alegações de conformidade integral antes da comparação com o documento-fonte aprovado.
- Atualização do manifesto de integridade criptográfica `MANIFESTO-SHA256.md`.

### Baseline Conceitual Inicial
- Materialização documental inicial da baseline conceitual aprovada.
- Consolidação dos cinco contratos, regras de governança, gates e critérios de validação.
- Nenhum código de implementação, integração ou dependência foi incluído.
- Os controles descritos ainda precisam ser implementados e testados.
