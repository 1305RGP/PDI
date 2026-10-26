# Relatório de Rastreabilidade — APDF: fonte candidata × baseline local

**ID:** REL-APDF-RASTREABILIDADE-001  
**Tipo:** Relatório Técnico de Rastreabilidade Documental  
**Versão:** 1.0.0  
**Estado:** DRAFT — análise somente leitura; não homologa e não altera baseline  
**Proprietário:** Responsável pelo produto/escopo (designação nominal pendente — GOV-AUTH-001)  
**Escopo:** Comparar a proposta `MET-APDF-ADAPT-001` com a baseline local `MET-APDF-001` e com a única fonte textual candidata disponível, identificando lacunas de rastreabilidade, divergências e condições para uma versão candidata.  
**Data:** 2026-10-26  
**Executor:** DeepSeek (agente designado manualmente pelo usuário)  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`, `docs/00-governanca/registro-de-decisoes.md`, `docs/01-metodologia/apdf.md`, `docs/01-metodologia/anti-surto.md`, `docs/01-metodologia/ciclo-apdf.md`, Contratos 01 a 05.  
**Histórico:** Relatório produzido no lote `temp/LOTE_DEEPSEEK_APDF_RASTREABILIDADE.md`, em modo somente leitura, sem edição de `docs/`, `specs/`, `tests/`, arquivos da raiz ou `MANIFESTO-SHA256.md`.

---

## 1. Conclusão executiva

**A proposta é coerente em princípios, mas não está pronta para ser submetida como versão candidata do APDF.**

A decisão humana pela Opção C — adaptar o APDF documentando e justificando cada diferença — está corretamente refletida nos princípios da proposta. Entretanto, a rastreabilidade ainda não é auditável: a fonte original citada (`APDF(1).md`) não foi recuperada; a única fonte textual disponível é um arquivo candidato fora do `PDI`, sem metadados ou autoridade declarada; e parte relevante da matriz atribui à “fonte original” elementos que não existem nesse candidato.

Resultados objetivos desta inspeção:

| Verificação | Resultado |
|---|---|
| Linhas da matriz com elemento localizável no candidato | 17 de 30 |
| Linhas parcialmente sustentadas (elemento existe, tratamento precisa de ajuste) | 3 de 30 — ADP-003, ADP-011, ADP-014 |
| Linhas sem elemento localizável no candidato (origem não comprovada) | 10 de 30 — ADP-018 a ADP-024 e ADP-028 a ADP-030 |
| Identidade, versão, hash e autoridade da fonte original | Não comprovadas |
| Conteúdo das 13 fases materializado na baseline | Não — apenas nomes |
| Checkpoint Anti-Surto compatível com CTR-03 | Não — campos divergentes e sem mapeamento |
| Engineering Handoff com as cinco confirmações da fonte | Não — baseline contém outra lista, parcial |
| Critérios de aceite da proposta atendidos | 2 de 10 integrais; 5 parciais; 3 não atendidos |

**Critérios da proposta:** 1, 4 e 8 **não atendidos**; 2, 3, 5, 6 e 7 **parciais**; 9 e 10 **atendidos**.

**Conclusão operacional:** o APDF deve permanecer `DRAFT` e não homologado. A próxima etapa não é incorporar texto ao `apdf.md`, mas decidir a identidade da fonte, corrigir a proveniência da matriz e escolher a forma documental da adaptação (núcleo normativo + anexo controlado, ou expansão direta). Nenhuma Fase B, instalação de TPM ou alteração normativa é autorizada por este relatório.

---

## 2. Base de comparação e confiabilidade

### 2.1 O que foi efetivamente comparado

A comparação foi feita entre:

1. **Baseline local:** `docs/01-metodologia/apdf.md` (`MET-APDF-001`, v0.1.0, `DRAFT`), com SHA-256 `DB5FBF1EC16C329EB8C8E0435EB317BBD7AB2D460539B847D08DE489DA28CB15`.
2. **Snapshot da baseline:** `temp/apdf-baseline-atual.md`, byte a byte idêntico à baseline (mesmo SHA-256).
3. **Fonte candidata:** `E:\documentos\projetos\APDF.md`, SHA-256 `973DC2FE122E6A873EAA115222D1004E89D822185992DE7A922D5D8C509B716E`. Está **fora do `PDI`**, não possui bloco de metadados (ID, versão, estado, proprietário, histórico) e **não foi homologada como fonte oficial**.
4. **Fonte candidata alternativa:** `E:\documentos\projetos\ORQUESTRADOR_APDF.md`, SHA-256 `6CAD6D1C9CC11606AECF25A9C26B720D2679D98F4E893B5E290833D10013FD27`. Também fora do `PDI`; não contém Anti-Surto, regra de ouro, gatilhos de escopo ou estado `DRAFT`.

### 2.2 O que não foi possível comparar

- `APDF(1).md`, citado como fonte original em `temp/registro-adaptacao-apdf-proposta.md#L5`, **não existe** no `PDI` nem na raiz do workspace.
- Não há hash, versão, data, autor, aprovador ou registro de custódia da fonte original.
- `temp/matriz-comparacao-apdf-original-baseline.md` e `temp/matriz-divergencias-apdf-pdi.md` **não existem**.
- O parecer `REV-APDF-PROP-001` também se refere à fonte original, mas não apresenta evidência de sua recuperação.

### 2.3 Consequência epistemológica

As conclusões abaixo são sobre a **relação entre a proposta e o candidato textual disponível**. Quando este relatório afirma “ausente na fonte”, deve ser lido como **“ausente no candidato disponível; origem não comprovada”**, e não como prova de que o documento original jamais teve o elemento. Essa distinção é obrigatória para não transformar uma lacuna de recuperação em uma acusação documental infundada.

A cadeia de rastreabilidade está incompleta em seu primeiro elo:

```text
APDF(1).md [não recuperado, sem hash/versão/autoridade]
        ↓ (alegado, não demonstrável)
proposta MET-APDF-ADAPT-001
        ↓ (parcialmente demonstrável)
baseline local MET-APDF-001 + candidato APDF.md
```

Sem o primeiro elo, nenhuma linha pode ser declarada “preservada da fonte original” com o rigor exigido pela Hierarquia Documental (`GOV-DOC-001`, seção 5) e pela regra de evidência verificável da Norma Central.

---

## 3. Cobertura dos nove elementos exigidos

| # | Elemento | Evidência na fonte candidata | Estado local | Tratamento na proposta | Veredito |
|---|---|---|---|---|---|
| 1 | Perguntas iniciais obrigatórias | `APDF.md#L17-L26` — quatro perguntas e regra de adaptação | Ausentes na baseline | ADP-002, “PRESERVAR” | **NÃO MATERIALIZADO** — identificado, mas não há texto normativo local |
| 2 | 13 fases com elicitação, artefatos e gate | `APDF.md#L43-L285` — cada fase tem pergunta, elicitação, artefatos e gate | Apenas nomes, `apdf.md#L25-L37` | ADP-004 a ADP-016, majoritariamente “PRESERVAR” | **NÃO MATERIALIZADO** — a baseline não contém o conteúdo operacional |
| 3 | Fluxo operacional do agente APDF | `APDF.md#L30-L39` — cinco passos: anunciar, elicitar, produzir artefatos, apresentar gate, avançar após confirmação | Regras gerais, sem sequência, `apdf.md#L41-L46` | ADP-003 descreve **sete** passos com dois checkpoints Anti-Surto | **DIVERGENTE** — a proposta superdimensiona o fluxo da fonte candidata |
| 4 | Identidade, acionamentos e checkpoint do Anti-Surto | **Ausente no candidato**; existe em `anti-surto.md#L13-L31` | Anti-Surto local existe, mas não está integrado ao APDF | ADP-018 a ADP-020, atribuídos à fonte | **ORIGEM NÃO COMPROVADA + CHECKPOINT INCOMPATÍVEL** — ver D-02 e D-07 |
| 5 | Gatilhos de desvio e três opções | **Ausentes no candidato**; três opções em `anti-surto.md#L19-L24` | Baseline só diz que mudança “pode exigir” reabertura, `apdf.md#L45` | ADP-021 e ADP-022, atribuídos à fonte | **PARCIAL** — as opções existem localmente; os gatilhos não estão enumerados |
| 6 | Regra de ouro e controle pós-Architecture Freeze | **Ausente no candidato**; `apdf.md#L45` é genérico | Não há regra de ouro explícita | ADP-023, “PRESERVAR” | **PARCIAL** — a intenção existe, o texto normativo não |
| 7 | Engineering Handoff | `APDF.md#L267-L283` — quatro entregáveis, cinco confirmações e gate “Implementation Started” | `apdf.md#L46` — seis itens diferentes, sem as cinco confirmações | ADP-016, “ADAPTAR” | **PARCIAL** — falta o checklist de prontidão e o mapeamento entre as duas listas |
| 8 | Integração TPM condicional | `APDF.md#L207` e `#L299-L305` — `tpm scan`, `tpm init`, `tpm validate`, `tpm hygiene` | Ausente | ADP-025, “OMITIR COM JUSTIFICATIVA” | **ATENDIDO COM RESSALVA** — a omissão é justificável por DEC-004/DEC-006, mas falta ponto de extensão formal |
| 9 | Instruções de uso por ferramenta | `APDF.md#L309-L321` — chat, API, editores e repositório | Ausente | ADP-026, “RESUMIR COM REFERÊNCIA” | **NÃO ATENDIDO** — o manual de integração citado não existe |

### 3.1 Leitura dos vereditos

- **NÃO MATERIALIZADO** não significa que o elemento foi rejeitado. Significa que a proposta o declarou preservado, mas a baseline normativa continua sem o texto que permitiria a um agente executá-lo.
- **DIVERGENTE** significa que a descrição da proposta não corresponde ao candidato disponível. É o caso mais grave de rastreabilidade, porque afeta o que se declara sobre a fonte.
- **ORIGEM NÃO COMPROVADA** significa que o elemento pode ser válido e desejável, mas não pode ser rotulado como “da fonte original” sem o documento-fonte ou sem outra evidência.
- **PARCIAL** significa que existe conteúdo local aproveitável, mas falta completude, mapeamento ou texto normativo.

---

## 4. Cobertura das 13 fases

A tabela abaixo verifica, fase a fase, se pergunta central, elicitação, artefatos e gate estão **materializados no texto local**. A coluna “Conteúdo local” não avalia a qualidade da fonte; avalia se a baseline pode ser executada sem consultar outro documento.

| Fase | Fonte candidata | Baseline | Proposta | Conteúdo local (pergunta/elicitação/artefatos/gate) | Situação |
|---|---|---|---|---|---|
| 01 — Product Discovery | `APDF.md#L45-L61` | `apdf.md#L25` | ADP-004 | Ausente; só o nome | Não materializado |
| 02 — Domain Discovery | `APDF.md#L65-L79` | `apdf.md#L26` | ADP-005 | Ausente; só o nome | Não materializado; exige ressalva DEC-003 |
| 03 — Capability Discovery | `APDF.md#L83-L96` | `apdf.md#L27` | ADP-006 | Ausente; só o nome | Não materializado |
| 04 — Context Discovery | `APDF.md#L100-L115` | `apdf.md#L28` | ADP-007 | Ausente; só o nome | Não materializado; exige ressalva DEC-003 |
| 05 — Business Discovery | `APDF.md#L119-L133` | `apdf.md#L29` | ADP-008 | Ausente; só o nome | Não materializado |
| 06 — Current State Discovery | `APDF.md#L137-L154` | `apdf.md#L30` | ADP-009 | Ausente; só o nome | Não materializado; regra “greenfield” ausente |
| 07 — Gap Discovery | `APDF.md#L158-L171` | `apdf.md#L31` | ADP-010 | Ausente; só o nome | Não materializado |
| 08 — Target Architecture | `APDF.md#L175-L190` | `apdf.md#L32` | ADP-011 | Ausente; só o nome | Não materializado; adaptação DEC-003 apenas intencional |
| 09 — Architecture Freeze | `APDF.md#L194-L209` | `apdf.md#L33` | ADP-012 | Ausente; só o nome | Não materializado; vínculo com ADR não explicitado |
| 10 — Execution Planning | `APDF.md#L213-L228` | `apdf.md#L34` | ADP-013 | Ausente; só o nome | Não materializado |
| 11 — Governance Model | `APDF.md#L232-L246` | `apdf.md#L35` | ADP-014 | Ausente; só o nome | Não materializado; calibragem por risco não textualizada |
| 12 — Execution Packages | `APDF.md#L250-L263` | `apdf.md#L36` | ADP-015 | Ausente; só o nome | Não materializado |
| 13 — Engineering Handoff | `APDF.md#L267-L283` | `apdf.md#L37` | ADP-016 | Ausente; só o nome, e `apdf.md#L46` tem lista parcial diferente | Parcial; cinco confirmações ausentes |

**Conclusão da seção:** a fonte candidata contém as 13 fases completas; a baseline contém apenas os 13 nomes; a proposta afirma “preservar” sem criar o texto que materialize a preservação. O critério de aceite 1 da proposta, portanto, não está atendido. Não se trata de exigir que o `apdf.md` seja prolixo: trata-se de exigir que a versão candidata tenha conteúdo executável ou uma referência vinculante, versionada e com hash a um anexo que o contenha.

---

## 5. Auditoria de proveniência da matriz

A matriz `ADP-001` a `ADP-030` não é reproduzida aqui integralmente. Esta seção aponta apenas as linhas cuja proveniência não se sustenta no candidato disponível, para evitar duplicação com `temp/registro-adaptacao-apdf-proposta.md`.

### 5.1 Linhas sustentadas

Há elemento localizável no candidato para 17 linhas: ADP-001, ADP-002, ADP-004 a ADP-010, ADP-012, ADP-013, ADP-015 a ADP-017, ADP-025 a ADP-027. Isso não significa que o tratamento esteja correto; significa apenas que o elemento descrito existe no candidato e pode ser rastreado por linhas.

### 5.2 Linhas parcialmente sustentadas

| Linha | Elemento | Evidência | Problema |
|---|---|---|---|
| ADP-003 | Sequência por fase | Fonte tem cinco passos, `APDF.md#L34-L39`; proposta descreve sete com dois checkpoints, `registro...#L38` | A descrição não corresponde à fonte candidata; os checkpoints são acréscimo local |
| ADP-011 | Target Architecture | Fonte pergunta “qual estilo arquitetural faz sentido”, `APDF.md#L179`; proposta adapta para ADR | A adaptação é compatível com DEC-003, mas precisa estar escrita como decisão, não como “preservação” |
| ADP-014 | Governance Model | Fonte pede scoring e quality gates, `APDF.md#L232-L244`; proposta calibra por risco | A calibragem é defensável, mas precisa de critério verificável e justificativa registrada |

### 5.3 Linhas sem elemento localizável no candidato

| Linha | Elemento declarado como “fonte original” | Onde existe de fato | Classificação correta proposta |
|---|---|---|---|
| ADP-018 | Identidade e limites do Anti-Surto | `anti-surto.md#L28-L31` | ADICIONAR LOCAL / referenciar MET-SURTO-001 |
| ADP-019 | Anti-Surto no início de cada fase e antes do gate | `anti-surto.md#L17-L24`; não no APDF | ADICIONAR LOCAL |
| ADP-020 | Formato de checkpoint com seis campos | Não existe nem no candidato nem no `anti-surto.md`; campos próximos em `CTR-03#L17-L19` | ADAPTAR / definir schema próprio, com mapeamento para CTR-03 |
| ADP-021 | Gatilhos de scope creep, mudança pós-freeze sem ADR, redefinição informal de domínio | Não enumerados no candidato; `apdf.md#L45` é genérico | ADICIONAR LOCAL |
| ADP-022 | Três opções: descartar, registrar, reabrir | `anti-surto.md#L23` | ADICIONAR LOCAL / referenciar MET-SURTO-001 |
| ADP-023 | Regra de ouro do escopo | Não existe no candidato; `hierarquia-documental.md#L60` tem regra mais ampla | ADICIONAR LOCAL |
| ADP-024 | Anti-Surto no handoff e nas waves | `CTR-03#L39`; não no candidato | ADICIONAR LOCAL |
| ADP-028 | Ciclo Construir → Provar → Diagnosticar → Feedback → Incremento de Valor → Validar | `ciclo-apdf.md#L15-L20`; `apdf.md#L48-L50` | ADICIONAR LOCAL / referenciar MET-CICLO-001 |
| ADP-029 | Estado DRAFT e proibição de conformidade integral | `apdf.md#L6` e `#L13-L18` (controle da Fase A) | ADICIONAR LOCAL / controle de integridade |
| ADP-030 | Metadados e dependências para a norma central | `apdf.md#L3-L11`; `hierarquia-documental.md#L42-L54` | ADICIONAR LOCAL / conformidade com GOV-DOC-001 |

**Ressalva obrigatória:** essas dez linhas podem pertencer a uma versão do APDF não recuperada. O problema não é a existência do conteúdo; é a **atribuição de proveniência sem evidência**. Enquanto a fonte original não for recuperada, a classificação correta é “origem não comprovada”, não “PRESERVAR da fonte”.

---

## 6. Divergências que exigem decisão

Cada divergência abaixo tem ID próprio, evidência, estado atual, tratamento proposto, justificativa, impacto e aprovação necessária. A classe separa **substantiva** (afeta requisito, gate, escopo ou conteúdo normativo), **editorial** (afeta redação, referência ou precisão de citação) e **de implantação** (afeta ferramenta, operação ou manual).

### D-01 — Identidade e autoridade da fonte original não comprovadas

- **Classe:** substantiva (governança).
- **Evidência:** `registro-adaptacao-apdf-proposta.md#L5` cita `APDF(1).md`; o arquivo não existe no `PDI` nem na raiz do workspace. O candidato `APDF.md` tem SHA-256 `973DC2FE...` e não possui metadados. `temp/revisao-referencias.md#L21` registra REF-01 como `NÃO RECUPERADO`.
- **Estado atual:** a proposta e o parecer tratam o conteúdo do candidato como “fonte original”, sem declarar a identidade, a versão e a autoridade do documento.
- **Tratamento proposto:** abrir registro de fonte com nome do arquivo, SHA-256, versão/data, autor, custódia, autoridade aprovadora e escopo. Se a fonte original não for recuperada, rotular toda afirmação como “conforme candidato não homologado”, nunca como “fonte original”.
- **Justificativa:** `GOV-DOC-001#L42-L60` exige ID, versão, estado, proprietário, dependências e histórico; somente versão `APPROVED` é baseline autorizada. Sem isso, não há homologação possível.
- **Impacto:** todas as 30 linhas, o parecer e o Gate G0 ficam condicionados; a comparação é parcial.
- **Aprovação necessária:** Proprietário humano do Núcleo e Responsável pelo produto/escopo (`GOV-AUTH-001#L15-L16`).

### D-02 — Anti-Surto atribuído à fonte sem evidência

- **Classe:** substantiva (rastreabilidade).
- **Evidência:** ADP-018 a ADP-024 (`registro...#L53-L59`) declaram “elemento da fonte original”. O candidato `APDF.md#L287-L295` contém apenas regras do agente e `#L299-L321` contém TPM e instruções de uso; não contém “Anti-Surto”, identidade, gatilhos, regra de ouro, checkpoint ou três opções. `ORQUESTRADOR_APDF.md` também não contém esses termos.
- **Estado atual:** sete linhas são marcadas “PRESERVAR”, mas o conteúdo é local (`anti-surto.md`) ou inexistente no candidato.
- **Tratamento proposto:** reclassificar cada linha como “ADICIONAR LOCAL / referenciar MET-SURTO-001” ou “ADAPTAR”, com citação de `anti-surto.md#L17-L31`; reservar “PRESERVAR” para elementos com linha comprovada no candidato.
- **Justificativa:** a matriz deve distinguir fonte, adaptação e adição local; caso contrário, a Opção C perde o próprio critério de rastreabilidade.
- **Impacto:** afeta a credibilidade da matriz, o critério de aceite 8 e qualquer auditoria futura.
- **Aprovação necessária:** Responsável pelo produto/escopo e Proprietário humano do Núcleo.

### D-03 — Fluxo operacional descrito com sete passos, mas a fonte candidata tem cinco

- **Classe:** substantiva (comportamento do agente).
- **Evidência:** `APDF.md#L34-L39` lista: anunciar fase; conduzir elicitação; produzir artefatos; apresentar gate; avançar após confirmação explícita. `registro...#L38` descreve sete passos, incluindo dois checkpoints Anti-Surto. O parecer repete a versão de sete passos em `parecer...#L47-L50`.
- **Estado atual:** a baseline não tem fluxo; a proposta descreve um fluxo que não corresponde ao candidato.
- **Tratamento proposto:** separar em duas linhas: (a) fluxo de cinco passos da fonte, preservado; (b) inserção local de dois checkpoints Anti-Surto, adaptada e justificada. O texto candidato deve mostrar a sequência completa resultante, deixando claro o que é fonte e o que é controle local.
- **Justificativa:** preserva o benefício do Anti-Surto sem atribuir à fonte um rito que ela não descreve.
- **Impacto:** afeta o comportamento esperado do agente, a auditoria de gates e o critério de aceite 3.
- **Aprovação necessária:** Responsável pelo produto/escopo, com revisão metodológica.

### D-04 — Ciclo APDF com proveniência trocada

- **Classe:** substantiva (rastreabilidade) com efeito editorial.
- **Evidência:** ADP-028 (`registro...#L63`) diz “presente literalmente” e atribui o ciclo à fonte. O candidato não contém o ciclo. O ciclo existe em `apdf.md#L48-L50` e em `ciclo-apdf.md#L15-L20` (`MET-CICLO-001`).
- **Estado atual:** conteúdo local válido, proveniência incorreta.
- **Tratamento proposto:** reclassificar como “ADICIONAR LOCAL / derivado de MET-CICLO-001”; se a fonte original contiver o ciclo, anexar linha e hash específicos. Manter referência cruzada entre `apdf.md` e `ciclo-apdf.md` para evitar duplicidade.
- **Justificativa:** o ciclo é um artefato local da Fase A, não um elemento demonstrável do candidato.
- **Impacto:** afeta a leitura das fases 10 a 13 e a rastreabilidade do ciclo.
- **Aprovação necessária:** Responsável pelo produto/escopo.

### D-05 — Estado DRAFT e proibição de conformidade com proveniência trocada

- **Classe:** substantiva (integridade documental).
- **Evidência:** ADP-029 (`registro...#L64`) atribui à fonte o estado `DRAFT` e a proibição de alegar conformidade. O candidato não contém esses controles. Eles estão em `apdf.md#L6` e `#L13-L18`, introduzidos como regra operacional provisória da Fase A.
- **Estado atual:** controle local correto, mas apresentado como elemento da fonte.
- **Tratamento proposto:** reclassificar como “controle local da Fase A / GOV-DOC-001”; preservar o texto e a proibição, sem alegar origem APDF.
- **Justificativa:** o controle é essencial, mas sua força normativa vem da governança local, não da fonte.
- **Impacto:** afeta a validade do estado `DRAFT` e a narrativa do Gate G0.
- **Aprovação necessária:** Proprietário humano do Núcleo.

### D-06 — Metadados e dependências com proveniência trocada

- **Classe:** editorial com efeito de governança.
- **Evidência:** ADP-030 (`registro...#L65`) atribui à fonte os metadados e dependências. O candidato não tem bloco de metadados. A baseline tem `apdf.md#L3-L11`; a regra está em `GOV-DOC-001#L42-L54`.
- **Estado atual:** conformidade local com a hierarquia, não elemento da fonte.
- **Tratamento proposto:** reclassificar como “ADICIONAR LOCAL / conformidade com GOV-DOC-001”; verificar se cada dependência citada existe e está vigente.
- **Justificativa:** metadados são exigência da norma local; atribuí-los à fonte confunde conformidade documental com fidelidade à fonte.
- **Impacto:** baixo para o conteúdo, alto para a precisão da matriz.
- **Aprovação necessária:** Proprietário humano do Núcleo (editorial).

### D-07 — Checkpoint Anti-Surto incompatível com o contexto mínimo do CTR-03

- **Classe:** substantiva (técnica).
- **Evidência:** ADP-020 propõe seis campos: fase, objetivo, congelados/aprovados, ação atual, proibições, desvio detectado (`registro...#L55`). O CTR-03 exige `task_id`, `objective`, `apdf_phase`, `approved_baseline`, `allowed_actions`, `prohibited_actions`, `acceptance_criteria`, `dependencies`, `execution_state`, `evidence_refs` (`contrato-03-harness.md#L17-L19`). O parecer afirma equivalência plena e cita `#L12-L16` (`parecer...#L165-L167`), mas os campos estão em `#L17-L19` e não são equivalentes.
- **Estado atual:** não há schema canônico; a implementação perderia `task_id`, `allowed_actions`, `acceptance_criteria`, `dependencies`, `execution_state` e `evidence_refs`.
- **Tratamento proposto:** definir o checkpoint como **extensão explícita** do contexto do CTR-03, com todos os campos obrigatórios do contrato mais os campos específicos do Anti-Surto (gatilho, desvio, opções, decisão, reancoragem). Se o checkpoint for um subconjunto, declarar o subconjunto e onde o contexto completo é recuperado. Alteração do CTR-03, se necessária, só por controle formal de mudança.
- **Justificativa:** o contrato aprovado é a base do harness; um checkpoint que não o satisfaz não pode ser imposto como controle técnico.
- **Impacto:** afeta CA-03-01, CA-03-03 e CA-03-04, a evidência de bloqueio e qualquer automação futura.
- **Aprovação necessária:** Responsável técnico/arquitetura e Responsável por segurança/liberação; se houver alteração do CTR-03, também o Proprietário humano do Núcleo.

### D-08 — Engineering Handoff sem as cinco confirmações da fonte

- **Classe:** substantiva (gate de handoff).
- **Evidência:** o candidato entrega quatro itens (arquitetura, roadmap, packages, governança) e exige cinco confirmações: domínio compreendido, arquitetura aprovada, riscos conhecidos, governança definida, execução planejada; gate “Implementation Started” (`APDF.md#L267-L283`). A baseline tem outra lista de seis itens (baseline, dependências, critérios de aceite, caderno de testes, riscos, permissões) em `apdf.md#L46`. A proposta ADP-016 (`registro...#L51`) diz consolidar, mas não enumera as cinco confirmações.
- **Estado atual:** handoff parcial, com duas listas não mapeadas.
- **Tratamento proposto:** criar checklist único com duas colunas de origem: “fonte” e “norma central”, mapeando cada item e marcando duplicidades; incluir explicitamente as cinco confirmações como condições de prontidão, com registro de quem confirmou, quando e com qual evidência; preservar o gate “Implementation Started”.
- **Justificativa:** o handoff é o ponto de passagem para execução; sem confirmações registradas, o gate não é verificável.
- **Impacto:** afeta o critério de aceite 6, a ligação com CTR-05 e a qualidade da passagem para engenharia.
- **Aprovação necessária:** Responsável pelo produto/escopo e Responsável técnico/arquitetura.

### D-09 — Conteúdo das 13 fases não materializado

- **Classe:** substantiva (conteúdo normativo).
- **Evidência:** o candidato contém pergunta, elicitação, artefatos e gate para cada fase (`APDF.md#L45-L285`). A baseline contém apenas os nomes (`apdf.md#L25-L37`). A proposta declara “PRESERVAR” em ADP-004 a ADP-016, mas não há texto correspondente no `apdf.md` nem anexo citado.
- **Estado atual:** a baseline não é executável como APDF; um agente não sabe o que perguntar, o que produzir nem qual gate aplicar em cada fase.
- **Tratamento proposto:** decidir a forma documental: (a) expandir o `apdf.md`; ou (b) manter um núcleo normativo conciso e criar anexo operacional controlado, com ID, versão, estado e hash, referenciado de forma vinculante. Em qualquer caso, materializar as 13 fichas com pergunta central, elicitação, artefatos e gate.
- **Justificativa:** “preservar” na matriz é uma intenção, não um requisito executável; o critério de aceite 1 exige conteúdo ou referência inequívoca.
- **Impacto:** afeta toda a operação do APDF, o critério 1 e a possibilidade de auditoria de gates.
- **Aprovação necessária:** Responsável pelo produto/escopo e Proprietário humano do Núcleo, com decisão registrada sobre a forma documental.

### D-10 — Quatro perguntas iniciais não materializadas

- **Classe:** substantiva (inicialização).
- **Evidência:** o candidato contém as quatro perguntas e a regra de adaptação (`APDF.md#L17-L26`). A baseline não as contém. A proposta ADP-002 (`registro...#L37`) as declara preservadas, mas não as escreve.
- **Estado atual:** identificadas apenas na matriz; não há rito de inicialização no texto normativo.
- **Tratamento proposto:** criar seção “Inicialização” com as quatro perguntas (nome, tipo de projeto, artefatos existentes, executor previsto), regra de registro das respostas, comportamento diante de resposta desconhecida (não assumir; registrar como aberta) e ligação com a Fase 01.
- **Justificativa:** as respostas alteram o foco do discovery e o planejamento do handoff; sem registro, o agente pode assumir contexto indevidamente.
- **Impacto:** afeta o critério 2, a adaptação greenfield/legado e a qualidade das fases seguintes.
- **Aprovação necessária:** Responsável pelo produto/escopo.

### D-11 — Gatilhos de desvio genéricos e não enumerados

- **Classe:** substantiva (controle de escopo).
- **Evidência:** ADP-021 e ADP-022 (`registro...#L56-L57`) atribuem à fonte gatilhos e três opções. O candidato não contém nenhum dos dois. O `anti-surto.md#L19-L24` contém classificação e três opções, mas não enumera gatilhos específicos. A baseline apenas diz que mudança “pode exigir” reabertura (`apdf.md#L45`).
- **Estado atual:** o controle existe em princípio, mas um agente pode não reconhecer o desvio que deveria disparar a parada.
- **Tratamento proposto:** referenciar `MET-SURTO-001` e enumerar, no APDF, gatilhos mínimos: (i) inclusão de item fora do artefato aprovado; (ii) mudança após Architecture Freeze sem ADR; (iii) redefinição informal de domínio ou de termo da linguagem ubíqua; (iv) alteração de critério de aceite ou teste aprovado; (v) inclusão de ferramenta/dependência não autorizada. Para cada um: parar, registrar impacto e apresentar as três opções.
- **Justificativa:** a enumeração torna o controle detectável e auditável sem duplicar o procedimento completo.
- **Impacto:** afeta CA-03-03/CA-03-04, a proteção contra scope creep e o critério 4.
- **Aprovação necessária:** Proprietário humano do Núcleo e Responsável pelo produto/escopo.

### D-12 — Regra de ouro e controle pós-Architecture Freeze ausentes

- **Classe:** substantiva (fronteira de escopo).
- **Evidência:** ADP-023 (`registro...#L58`) declara preservar a regra de ouro, mas o candidato não a contém. A baseline só diz que mudança de escopo “pode exigir” reabertura (`apdf.md#L45`). `GOV-DOC-001#L60` estabelece que somente a versão vigente `APPROVED` é baseline autorizada, mas não formula a regra de ouro nem o controle pós-freeze.
- **Estado atual:** não há regra explícita de que “nada fora de artefato aprovado pertence ao escopo”, nem pergunta de reancoragem antes do gate.
- **Tratamento proposto:** adicionar a regra de ouro, a pergunta de reancoragem antes de cada gate e a regra de que mudança após Architecture Freeze exige ADR e reabertura formal do gate afetado; vincular ao registro de ADRs e à hierarquia.
- **Justificativa:** a fronteira de escopo precisa ser textual e auditável; a menção genérica a reabertura não impede inclusão silenciosa.
- **Impacto:** afeta o controle de mudanças, a ligação com ADRs e o critério 5.
- **Aprovação necessária:** Proprietário humano do Núcleo e Responsável técnico/arquitetura.

### D-13 — TPM omitido sem ponto de extensão formal

- **Classe:** de implantação com efeito metodológico.
- **Evidência:** o candidato sugere `tpm scan` nas fases 01–07, `tpm init` na fase 09 e `tpm validate`/`tpm hygiene` no ciclo (`APDF.md#L207`, `#L299-L305`). A proposta ADP-025 (`registro...#L60`) propõe omissão com justificativa. DEC-004 proíbe instalar/conectar ferramentas nesta etapa e DEC-006 exige teste real para compatibilidade (`registro-de-decisoes.md#L18-L20`). O inventário está `DRAFT` e não testado (`inventario.md#L6`).
- **Estado atual:** a omissão é justificável, mas não há contrato de extensão nem registro de como a fonte será mapeada se o TPM for adotado.
- **Tratamento proposto:** manter o TPM fora do núcleo e criar seção “Extensões opcionais” com condições mínimas: decisão formal própria; inventário no estado `TESTED`; análise de segurança e permissões; ausência de dependência obrigatória; possibilidade de desativação; registro de comandos e evidências. Não instalar nem executar agora.
- **Justificativa:** DEC-004/DEC-006 e a neutralidade de ferramenta; a ausência de ponto de extensão empurraria a adoção futura para fora do controle documental.
- **Impacto:** afeta o critério 7, a neutralidade e a futura compatibilidade.
- **Aprovação necessária:** Proprietário humano do Núcleo e Responsável técnico/arquitetura, com segurança quando houver adoção.

### D-14 — Manual de integração por ferramenta citado, mas inexistente

- **Classe:** de implantação.
- **Evidência:** ADP-026 (`registro...#L61`) propõe transferir instruções específicas para um manual em `docs/05-ferramentas/`. O diretório contém apenas `inventario.md` e `matriz-de-compatibilidade.md`; não há manual. O candidato contém instruções para chat, API, editores e repositório (`APDF.md#L309-L321`). O comando `/anti-surto` citado na proposta não aparece no candidato.
- **Estado atual:** referência quebrada; as instruções de implantação não estão preservadas em lugar algum.
- **Tratamento proposto:** marcar o manual como “PENDENTE — artefato não existe”; criar apenas com autorização e após decisão sobre ferramentas; até lá, manter no APDF apenas o comportamento genérico e listar as instruções específicas como “a definir”. Não citar `/anti-surto` como se fosse da fonte; se for comando local desejado, registrá-lo como decisão própria.
- **Justificativa:** não inventar artefatos nem caminhos; a rastreabilidade exige que toda referência exista ou esteja explicitamente pendente.
- **Impacto:** afeta o critério 7 e a operação em ferramentas reais.
- **Aprovação necessária:** Responsável técnico/arquitetura e Responsável pelo produto/escopo.

### D-15 — Parecer com citações e conclusões imprecisas

- **Classe:** editorial com efeito substantivo.
- **Evidência:** o parecer cita `contrato-04-orquestracao.md#L25-L31` para sustentar a identidade do APDF (`parecer...#L33-L34`), mas o CTR-04 só define papéis genéricos em `#L30-L36`. Cita `contrato-03-harness.md#L12-L16` para os campos do checkpoint (`parecer...#L165-L167`), mas os campos estão em `#L17-L19` e não são equivalentes. Afirma que a fonte “prescrevia template rígido” (`parecer...#L103`), enquanto o candidato pergunta “qual estilo arquitetural faz sentido” (`APDF.md#L179`). Chama o controle `DRAFT` de “Fase A” (`parecer...#L229`), mas ele é local, não da fonte. Declara “100% coerente” a omissão do TPM (`parecer...#L200`) sem verificar a fonte.
- **Estado atual:** o parecer recomenda aprovação de diversas linhas com apoio documental que não sustenta a conclusão; isso pode induzir o Gate G0 a aceitar uma rastreabilidade inexistente.
- **Tratamento proposto:** emitir errata ou nova versão do parecer; corrigir referências de linha; separar “conforme fonte candidata”, “conforme norma local” e “interpretação do revisor”; rebaixar “aprovar” para “aprovar condicionado à verificação” onde a fonte não foi comprovada; submeter a revisor independente.
- **Justificativa:** a revisão deve ser baseada em evidência verificável; citações imprecisas enfraquecem o próprio controle de qualidade.
- **Impacto:** afeta a qualidade da decisão no Gate G0 e a confiança no parecer.
- **Aprovação necessária:** Revisor independente e Proprietário humano do Núcleo.

---

## 7. Coerência interna da proposta

### 7.1 Pontos coerentes

1. **Princípios bem formulados:** rastreabilidade, ausência de omissão silenciosa, preservação de gates, Anti-Surto, neutralidade arquitetural, separação de estados e não avanço prematuro (`registro...#L15-L23`).
2. **Opção C corretamente assumida:** a proposta não tenta apagar diferenças; tenta documentá-las.
3. **DEC-003 respeitada na intenção:** ADP-011 e ADP-014 não impõem arquitetura universal; a adaptação por ADR é compatível com a decisão.
4. **Controle de estado correto:** a proposta não se declara aprovada, não altera a baseline, não altera o manifesto e não autoriza a Fase B (`registro...#L111-L120`).
5. **Preocupação correta com o handoff:** ADP-016 reconhece a necessidade de consolidar sem perder controles.

### 7.2 Incoerências e lacunas

1. **Mistura de proveniência:** a matriz usa “PRESERVAR” para elementos que não estão no candidato. Isso quebra o princípio 1 da própria proposta (“cada diferença deve apontar para o requisito da fonte original”).
2. **Critério de aceite sem lastro:** os critérios 1, 4 e 8 exigem conteúdo e aprovação que a proposta não produz.
3. **Checkpoint sem schema:** ADP-020 descreve campos, mas não os concilia com o CTR-03; a implementação não é possível sem decisão técnica.
4. **Handoff sem confirmações:** ADP-016 fala em consolidar, mas não lista as cinco confirmações da fonte nem o mapeamento com a lista da baseline.
5. **Referência a artefato inexistente:** ADP-026 depende de um manual que não existe.
6. **Aprovação genérica:** todas as linhas estão `PENDENTE`, sem aprovador nominal por linha; o critério 8 não pode ser atendido apenas com “aprovação global”.
7. **Parecer que supera a evidência:** recomenda aprovação de linhas cuja fonte não foi demonstrada, criando uma falsa sensação de validação.

### 7.3 Juízo sintético

A proposta é **internamente coerente nos fins** e **incoerente nos meios**. Ela sabe o que quer preservar (gates, escopo, Anti-Surto, handoff, neutralidade), mas o instrumento que usa para provar a preservação — a matriz — ainda não distingue com rigor o que veio da fonte, o que é adaptação e o que é adição local. Sem essa distinção, a Opção C não pode ser auditada.

---

## 8. Critérios de aceite para uma versão candidata

Os critérios abaixo são cumulativos. “Versão candidata” significa um texto pronto para revisão humana e eventual submissão ao Gate G0; **não** significa homologação.

### 8.1 Critérios da proposta e situação atual

| # | Critério da proposta | Situação | Evidência da situação |
|---|---|---|---|
| 1 | Cada fase contém pergunta central, elicitação, artefatos e gate, ou referência normativa inequívoca | **NÃO ATENDIDO** | Baseline só tem nomes; não há anexo citado |
| 2 | As quatro perguntas iniciais estão preservadas | **PARCIAL** | Identificadas em ADP-002, não escritas no APDF |
| 3 | Comportamento do agente antes, durante e depois de cada fase documentado | **PARCIAL** | Há regras gerais e fluxo proposto, mas não comportamento por fase |
| 4 | Anti-Surto com identidade, gatilhos, checkpoint, regra de ouro e três opções | **NÃO ATENDIDO** | Conteúdo local não integrado; checkpoint incompatível com CTR-03 |
| 5 | Architecture Freeze e alterações posteriores conectados a ADRs | **PARCIAL** | Intenção em ADP-012/023; falta regra textual e vínculo com o registro de ADRs |
| 6 | Engineering Handoff com artefatos e confirmações de prontidão | **PARCIAL** | Lista da baseline difere; cinco confirmações ausentes |
| 7 | Integrações de ferramenta marcadas como opcionais e sujeitas a adoção | **PARCIAL** | TPM omitido com justificativa; manual citado não existe |
| 8 | Cada diferença com justificativa e aprovador identificável | **NÃO ATENDIDO** | Todas as linhas `PENDENTE`; não há aprovador por linha |
| 9 | Estado só muda para homologado após revisão e aprovação humana | **ATENDIDO** | Proposta permanece `DRAFT`; não homologa |
| 10 | Manifesto SHA-256 só é atualizado se e quando arquivos normativos mudarem e a mudança for aprovada | **ATENDIDO** | Manifesto não foi alterado |

### 8.2 Critérios adicionais propostos

| # | Critério adicional | Como verificar |
|---|---|---|
| C-01 | Identidade da fonte registrada: nome, SHA-256, versão/data, autor/custódia e autoridade; ou declaração formal de indisponibilidade | Registro de fonte anexo à matriz; hash confere com o arquivo consultado |
| C-02 | Toda linha da matriz tem proveniência explícita: `FONTE` (com linha), `LOCAL` (com documento), `ADAPTADO` ou `OMITIDO` | Revisão linha a linha; nenhuma linha “PRESERVAR” sem linha de fonte |
| C-03 | As quatro perguntas iniciais estão escritas no texto normativo, com ponto de invocação e regra de registro | Seção de inicialização localizável; teste de leitura por agente |
| C-04 | As 13 fases contêm pergunta, elicitação, artefatos e gate, ou referência a anexo versionado com hash | Checklist das 13 fichas; cada campo preenchido ou referenciado |
| C-05 | O fluxo distingue os cinco passos da fonte dos checkpoints locais, com confirmação explícita antes de avançar | Texto do fluxo; teste de cenário “tentar avançar sem confirmação” |
| C-06 | O checkpoint Anti-Surto mapeia todos os campos do CTR-03 ou declara subconjunto e local de recuperação | Tabela de mapeamento; revisão técnica |
| C-07 | Regra de ouro, pergunta de reancoragem e controle pós-freeze estão textuais; mudança pós-freeze exige ADR e reabertura de gate | Texto normativo; cenário de mudança pós-freeze |
| C-08 | Handoff contém as quatro entregas da fonte, as cinco confirmações e os seis itens da baseline, com mapa de duplicidades | Checklist único; cada item com origem e evidência |
| C-09 | TPM está fora do núcleo, com seção de extensão opcional e condições de adoção; nenhuma instalação foi executada | Texto; inventário; declaração de não execução |
| C-10 | Instruções por ferramenta existem em documento versionado ou estão marcadas como pendentes; nenhuma referência quebrada | Verificação de caminhos; lista de pendências |
| C-11 | Cada linha tem aprovador (papel ou nome) e decisão registrada; nenhuma aprovação global substitui decisão por linha | Matriz com colunas de aprovação; registro de decisão |
| C-12 | O texto normativo está em `DRAFT` até aprovação; o manifesto só muda depois de aprovação formal | Estado do documento; diff do manifesto |
| C-13 | Revisão independente confirma que não há superdeclaração de conformidade e que as citações de linha estão corretas | Parecer revisado ou errata; amostragem de citações |

### 8.3 Regra de passagem

A versão candidata só pode ser declarada “pronta para revisão” quando C-01 a C-13 estiverem atendidos ou explicitamente dispensados por decisão humana registrada. A homologação continua sendo ato separado, no Gate G0, com autoridade identificada. Nenhum critério pode ser compensado por outro: uma falha crítica de rastreabilidade (C-01, C-02, C-06) bloqueia a candidata, ainda que os demais estejam atendidos.

---

## 9. Decisões humanas necessárias

| ID | Decisão | Opções | Autoridade | Bloqueia |
|---|---|---|---|---|
| DH-01 | Qual é a fonte oficial de comparação? | (a) recuperar e registrar `APDF(1).md`; (b) autorizar, apenas para análise, o candidato `APDF.md` como referência não homologada; (c) suspender a comparação até recuperação | Proprietário humano do Núcleo + produto | D-01 e toda a matriz |
| DH-02 | Reclassificar as 10 linhas de origem não comprovada? | (a) corrigir a matriz; (b) manter e anexar evidência da fonte original, se recuperada | Produto + governança | D-02 a D-06 |
| DH-03 | Qual schema de checkpoint adotar? | (a) extensão do CTR-03; (b) subconjunto declarado com recuperação do contexto completo; (c) revisão formal do CTR-03 | Arquitetura/segurança | D-07 |
| DH-04 | Qual forma documental para as 13 fases? | (a) expandir `apdf.md`; (b) núcleo + anexo controlado versionado | Produto + Proprietário do Núcleo | D-09 |
| DH-05 | As cinco confirmações de handoff são obrigatórias? | (a) sim, com registro; (b) adaptar com justificativa e manter gate equivalente | Produto + engenharia | D-08 |
| DH-06 | Aprovar a lista de gatilhos e a regra de ouro? | (a) aprovar a lista proposta; (b) ajustar; (c) manter apenas referência ao MET-SURTO-001 | Governança + produto | D-11 e D-12 |
| DH-07 | Como tratar o TPM? | (a) manter fora do núcleo com extensão opcional; (b) omitir sem extensão; (c) adotar formalmente após teste | Proprietário do Núcleo + arquitetura | D-13 |
| DH-08 | Criar manual de ferramentas agora? | (a) não; marcar pendente; (b) autorizar criação após decisão de ferramentas | Arquitetura + produto | D-14 |
| DH-09 | Corrigir o parecer? | (a) emitir errata; (b) nova versão; (c) manter e registrar ressalvas | Revisor independente + governança | D-15 |

**Observação:** `GOV-AUTH-001#L49` mantém as designações nominais pendentes. Até o preenchimento, as aprovações acima estão bloqueadas por papel, não por nome; isso deve ser registrado como limitação, não contornado por presunção.

---

## 10. Adaptações recomendadas

As recomendações abaixo respeitam a Opção C e não alteram nenhum artefato nesta execução.

### 10.1 Ordem de trabalho recomendada

1. **Resolver a identidade da fonte (D-01).** Sem isso, qualquer correção da matriz é provisória. Registrar o candidato como “referência não homologada” e manter a busca pela fonte original como pendência REF-01.
2. **Corrigir a proveniência (D-02 a D-06).** Reclassificar as dez linhas e separar, na matriz, `FONTE`, `LOCAL`, `ADAPTADO` e `OMITIDO`. Não usar “PRESERVAR” sem linha de fonte.
3. **Decidir a forma documental (D-09).** Recomenda-se **núcleo normativo conciso + anexo operacional controlado** para as 13 fichas de fase, porque o `apdf.md` atual tem 54 linhas e a expansão direta tende a misturar regra, exemplo e operação. O anexo deve ter ID, versão, estado, hash e referência vinculante; ambos devem ser aprovados em conjunto.
4. **Materializar o núcleo (D-10, D-03, D-11, D-12).** Incluir: inicialização com as quatro perguntas; fluxo de cinco passos da fonte + checkpoints locais identificados; gatilhos de desvio; regra de ouro; controle pós-freeze por ADR.
5. **Alinhar o checkpoint ao CTR-03 (D-07).** Criar tabela de mapeamento campo a campo. Se o CTR-03 precisar mudar, abrir decisão própria; não editar contrato aprovado por conveniência.
6. **Completar o handoff (D-08).** Criar checklist único com as cinco confirmações, as quatro entregas e os seis itens da baseline, marcando duplicidades e origens.
7. **Tratar TPM e ferramentas (D-13, D-14).** Manter TPM fora do núcleo; criar seção de extensão opcional; marcar o manual como pendente e não citá-lo como existente.
8. **Corrigir o parecer (D-15) e submeter a revisão independente.** A versão candidata não deve ser avaliada pelo mesmo executor que a produziu.

### 10.2 Conteúdo mínimo recomendado para o núcleo

- **Identidade e limites:** guia de discovery; não implementa, não escreve código, não decide arquitetura por conta própria.
- **Inicialização:** quatro perguntas, registro e adaptação greenfield/produto existente/legado.
- **Fluxo:** cinco passos da fonte; checkpoints locais claramente marcados; confirmação explícita antes de avançar.
- **Fases:** 13 fichas com pergunta, elicitação, artefatos e gate (no anexo, se for a forma escolhida).
- **Regras do agente:** não assumir, exemplificar, Markdown estruturado, oferecer aprofundamento, sinalizar inconsistências, manter contexto.
- **Anti-Surto:** identidade, gatilhos, checkpoint, três opções, regra de ouro, reancoragem; referência a `MET-SURTO-001`.
- **Architecture Freeze:** ADR Registry, baseline oficial, regras de governança, mudança pós-freeze com ADR e reabertura.
- **Handoff:** entregas, confirmações e gate “Implementation Started”.
- **Extensões:** TPM e ferramentas como opcionais, com condições e sem dependência.
- **Estado:** `DRAFT` e proibição de conformidade integral até homologação.

### 10.3 Neutralidade arquitetural (DEC-003)

A adaptação de Target Architecture está conceitualmente correta, mas precisa de texto explícito:

- o APDF pergunta qual estilo faz sentido para o domínio; não prescreve Clean Architecture, DDD de implementação ou EDA;
- artefatos de Domain Discovery e Context Discovery são instrumentos analíticos, não ordens de implementação;
- decisões de arquitetura do produto são registradas em ADR e aprovadas conforme a hierarquia;
- nenhuma fase pode converter um padrão de referência em arquitetura universal obrigatória.

Essa formulação deve aparecer nas fases 02, 04 e 08, não apenas na justificativa da matriz. Caso contrário, a ressalva fica invisível para o agente que executa o discovery.

---

## 11. Fontes consultadas

### 11.1 Fontes primárias e normativas

| Arquivo | SHA-256 | Uso neste relatório |
|---|---|---|
| `docs/01-metodologia/apdf.md` | `DB5FBF1EC16C329EB8C8E0435EB317BBD7AB2D460539B847D08DE489DA28CB15` | Baseline local `MET-APDF-001` |
| `temp/apdf-baseline-atual.md` | `DB5FBF1EC16C329EB8C8E0435EB317BBD7AB2D460539B847D08DE489DA28CB15` | Confirmação de identidade com a baseline |
| `E:\documentos\projetos\APDF.md` | `973DC2FE122E6A873EAA115222D1004E89D822185992DE7A922D5D8C509B716E` | Fonte candidata; fora do `PDI`; não homologada |
| `E:\documentos\projetos\ORQUESTRADOR_APDF.md` | `6CAD6D1C9CC11606AECF25A9C26B720D2679D98F4E893B5E290833D10013FD27` | Variante candidata; usada para verificar ausência de Anti-Surto |
| `temp/registro-adaptacao-apdf-proposta.md` | `4A5E5D8A4B0148F4379ADE6943B5CF2BD8FC6C3E8CD3A96037CCE83067CED096` | Objeto da análise `MET-APDF-ADAPT-001` |
| `temp/parecer-revisao-adaptacao-apdf.md` | `92D576E93D005AFE50ED0AC8EF33C0C1E0D6D7250B679E88A157D935C9AB984E` | Parecer `REV-APDF-PROP-001` |
| `docs/01-metodologia/anti-surto.md` | `E8D6DD8BE893E82C6281B46F4E2B1DA71C2BAFB0354B179A5B4B6586C2BBB7F8` | Identidade, procedimento e três opções do Anti-Surto |
| `docs/01-metodologia/ciclo-apdf.md` | `75CF2E28E9579463A7F2F1210DC37A4D0FF0D90BAE257E9FE023E8704259E612` | Ciclo `MET-CICLO-001` |
| `docs/02-contratos/contrato-03-harness.md` | `70BA80E3CEAC6A82DA417ACA03930FC1E6A5B9369906F6909ECA850F1C8C28F9` | Contexto mínimo, Anti-Surto e loops |
| `docs/02-contratos/contrato-04-orquestracao.md` | — | Papéis de orquestração; verificação da citação do parecer |
| `docs/02-contratos/contrato-05-inicializacao.md` | `0B51D95877889F489E55140EAA9294E416136E2CA8BC0034A9305413ED53938A` | Requisitos de inicialização e evidência |
| `docs/00-governanca/hierarquia-documental.md` | `4B9A23CDC8BC3352A5542AC2B2DCA61BC068BF06427E9EE5F99F648CE43F10C2` | Metadados, estados e precedência |
| `docs/00-governanca/registro-de-decisoes.md` | `1AB612DB081BEEABFD4F5FC991641403A9D22EAC657759848A54C143045CE4EA` | DEC-003, DEC-004, DEC-006 |
| `docs/00-governanca/matriz-de-autoridade.md` | `A8119C2F7926D565987CAA9F524D69F3D46D77F46638C3260EA71A21C1C17AF1` | Papéis e aprovações |
| `docs/05-ferramentas/inventario.md` | `EDC34E6C2521130DBCCC49CCBD598BEDC89840529D003977AA3A9FB3960C5E92` | Estado `DRAFT` das ferramentas |

### 11.2 Fontes de contexto

- `temp/LOTE_DEEPSEEK_APDF_RASTREABILIDADE.md` — instruções do lote.
- `temp/estado-atual.md` — Gate G0 e pendências ativas.
- `temp/revisao-referencias.md` — REF-01 (APDF) como `NÃO RECUPERADO`.
- `docs/05-ferramentas/matriz-de-compatibilidade.md` — compatibilidade declarada, sem teste real.
- `docs/03-adrs/README.md` — destino das decisões arquiteturais.

### 11.3 Fontes indisponíveis

| Fonte | Situação | Efeito |
|---|---|---|
| `APDF(1).md` | Não existe no `PDI` nem na raiz do workspace | Sem hash, versão ou autoridade; comparação com a “fonte original” não demonstrável |
| `temp/matriz-comparacao-apdf-original-baseline.md` | Não existe | Não há matriz anterior para reutilizar |
| `temp/matriz-divergencias-apdf-pdi.md` | Não existe | Não há matriz de divergências anterior |
| Manual de integração em `docs/05-ferramentas/` | Não existe; há apenas inventário e matriz de compatibilidade | A referência de ADP-026 é quebrada |
| Especificações/binário do TPM | Não acessados; instalação proibida | Não é possível validar comandos ou compatibilidade |
| Designações nominais `GOV-AUTH-001` | Pendentes | Aprovações por papel permanecem bloqueadas |
| Registro de aprovação da fonte original | Não localizado | Não há como declarar conformidade integral |

---

## 12. Limitações e declaração final

### 12.1 Limitações

- A análise foi **documental e somente leitura**. Não houve execução de testes, instalação de TPM, criação de schemas, implementação de detector Anti-Surto ou início da Fase B.
- As referências de linha da fonte candidata correspondem ao arquivo com o hash indicado; qualquer alteração no arquivo invalida as referências.
- A comparação com a “fonte original” é **parcial e não conclusiva**, porque o documento citado não foi recuperado.
- O parecer existente foi tratado como objeto de revisão, não como autoridade de aceite.
- Este relatório não substitui revisão independente nem aprovação humana.

### 12.2 Declaração de conformidade e escopo

- **APDF homologado:** não.
- **Conformidade integral declarada:** não.
- **Baseline normativa alterada:** não.
- **`MANIFESTO-SHA256.md` alterado:** não.
- **Ferramenta TPM instalada ou executada:** não.
- **Fase B iniciada:** não.
- **Arquivos alterados por esta execução:** apenas este relatório em `temp/`.

### 12.3 Próximo passo

A próxima ação é uma **decisão humana** sobre DH-01 (identidade da fonte) e DH-02 (reclassificação da proveniência). Somente depois disso faz sentido corrigir a matriz e materializar o texto. A versão candidata deve ser construída com rastreabilidade explícita, não por acumulação de declarações de “preservação”.

**Estado final deste relatório:** `DRAFT` — conclusão emitida; nenhuma autorização normativa concedida.
