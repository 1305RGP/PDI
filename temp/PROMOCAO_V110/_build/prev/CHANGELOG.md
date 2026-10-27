# Changelog

**ID:** PDI-CHANGELOG  
**Tipo:** Registro de Mudanças  
**Versão:** 0.3.0  
**Estado:** APPROVED - ativo e controlado.  
**Data:** 2026-10-27  

## [0.3.0] - 2026-10-27

### Promoção do APDF_V01 para a versão 1.1.0 (DEC-011)
- Promoção de `docs/01-metodologia/APDF_V01.md` (`MET-APDF-001`) para a versão `1.1.0`, estado `APPROVED`, por `DEC-011`, encerrando o diferimento fixado em `DEC-010`.
- **Conteúdo incorporado:** `C-01` (campo obrigatório `dependencies` e tabela de quatro colunas no checkpoint, §8.4), `C-05` (`justification` no conteúdo obrigatório do gate, §7.1), `C-06` (nova §15.5, loops e recuperação), `C-07` (`dependências` e `modelo de governança` em §11.2 e nova §11.4) e `C-11` (semântica dos estados do gate em §7.3, com `REABERTO` como estado persistente).
- **Escolhas de conteúdo:** modelo (a) de `REABERTO` - estado persistente, com saída para `PENDENTE` somente após o procedimento completo de D-03; alternativa (a) de `PROP-04` - `CA-APDF-01` e os demais critérios da seção 17 permanecem literalmente inalterados, com a divergência de redação registrada como residual em `L-09`.
- **Correções editoriais de registro:** `C-12` ajusta a descrição de `C-10` no Anexo C.1 (o banner de não normatividade nunca existiu no arquivo publicado) e `C-13` estende a referência às propostas pendentes até `PROP-04`. Ambas incorporadas dentro da `1.1.0`, sem versão própria.
- **Errata por adendo:** acréscimo de três adendos `ERR-DEC-009-010-001` ao final de `DEC-009` e de `DEC-010`, sem reescrita das decisões originais - reconciliando a descrição de conteúdo de `DEC-009` com o escopo efetivo fixado por `DEC-010` e registrando a leitura temporal da premissa de conformidade dos 27 artefatos.
- **Lacunas:** `L-08` encerrada; `L-10` encerrada por `C-12`; `L-09` mantida como residual aceito. As lacunas `L-01` a `L-07` permanecem inalteradas.
- **Escopo preservado:** seção 17 do `APDF_V01` byte-idêntica à da versão anterior (verificado nesta rodada: 18 linhas, SHA-256 `96BCA24677706533DFBE74C2EEBFAF7F585F56B42A2A6692380F1DAA910F9B34`); nenhum código de produto; nenhuma dependência instalada; nenhuma ferramenta externa executada.
- Elevação da baseline documental do Núcleo para `v0.3.0`; `MANIFESTO-SHA256.md` recalculado para os 27 arquivos normativos.
- Ressalvas: revisão independente pendente (`L-05`); leitura final do texto da `1.1.0` pelo proprietário pendente; numeração `v0.3.0` proposta pelo agente e pendente de confirmação literal; `CA-APDF-07` e `CA-APDF-08` passam a ser verificáveis contra a `1.1.0`, sem que isso os declare satisfeitos.

## [0.2.1] — 2026-10-27

### Homologação do Gate G0 e Transição para Fase B (DEC-008, DEC-009 e DEC-010)
- Estabelecimento formal dos critérios de aceite objetivos do Gate G0 (`CA-G0-01` a `CA-G0-06`) via `DEC-008`, sanando a proveniência dos critérios normativos (achado `R-04`).
- Homologação formal e encerramento do Gate G0 (Revisão da Materialização Documental) pelo Proprietário Humano via `DEC-009`.
- Autorização formal de início da Fase B (Modelagem Técnica de Schemas e Testes Automatizados de Governança).
- Promoção da metodologia `APDF_V01.md` para a versão `1.0.1` (`MET-APDF-001`, `APPROVED`), com escopo fixado por `DEC-010`.
- **Escopo do patch `1.0.1` (DEC-010):** incorpora apenas as seis correções sem alteração de significado normativo — `C-02` (hashes de `apdf.md`/`ciclo-apdf.md` recalculados em A.1, com `L-06`), `C-03` (regra de leitura das fichas em §6, incluindo a designação do campo de ação pelo termo `elicitação` do critério `CA-APDF-01`), `C-04` (`AD-15`, origem `MET-CICLO-001`), `C-08` e `C-09` (verificações sem alteração de texto) e `C-10` (metadados de fonte, `L-07`, gatilho `.tpm/` em `AD-10`).
- **Correções diferidas para a `1.1.0` (não incluídas nesta versão):** `C-01` (`dependencies` e tabela de quatro colunas em §8.4), `C-05` (`justification` em §7.1), `C-06` (§15.5, loops e recuperação), `C-07` (`dependências`/`modelo de governança` em §11.2 e nova §11.4) e `C-11` (semântica de `REABERTO` em §7.3). Permaneceram em Anexo C.2 e na lacuna `L-08`; a `1.1.0` exige decisão própria e não está autorizada.
- **Achados e resíduos:** `R-01` encerrado por `C-03`; `R-02` não resolvido — a contradição entre §7.3 e §9/§10 permanece, agora catalogada como `L-08` em vez de corrigida por patch; `R-03` corrigido como alegação (retirada da afirmação não provada de divergência "desde `9f85961`"), com `L-06` mantida por origem e momento da divergência não determinados.
- **Correção de registro:** a entrada original desta versão, redigida antes da revisão crítica, afirmava recálculo integral do manifesto e resolução de `R-01`, `R-02` e `R-03`; ambas as afirmações não se sustentavam e foram substituídas por este texto. A afirmação de "conformidade integral dos 27 artefatos" em `DEC-009` está superada por `DEC-010`; o registro de `DEC-009` não foi alterado.
- Atualização da baseline documental do Núcleo para `v0.2.1`.
- `MANIFESTO-SHA256.md` recalculado para os 27 arquivos normativos após o recorte, com cabeçalho atualizado para `DEC-010`.
- Escopo preservado: nenhum código de produto gerado; nenhuma dependência ou ferramenta externa executada; seção 17 do `APDF_V01` (`CA-APDF-01` a `CA-APDF-12`) byte-idêntica à `1.0.0`.
- Ressalvas: leitura final do texto da `1.0.1` pelo proprietário pendente; redação de `DEC-010` pendente de confirmação literal; `CA-APDF-07` e `CA-APDF-08` parcialmente satisfeitos até a `1.1.0` (`L-08`).

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
