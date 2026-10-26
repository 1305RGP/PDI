# Relatório de Rastreabilidade v2 — reavaliação contra o APDF_V01

**ID:** REL-APDF-RASTREABILIDADE-002
**Tipo:** Relatório Técnico de Rastreabilidade Documental (complementar)
**Versão:** 2.0.0
**Estado:** DRAFT — análise somente leitura; não homologa, não altera baseline e não declara conformidade
**Proprietário:** Responsável pelo produto/escopo (designação nominal pendente — `GOV-AUTH-001`)
**Escopo:** Reavaliar os nove elementos do lote, as divergências `D-01` a `D-15` e os critérios `C-01` a `C-13` do relatório `REL-APDF-RASTREABILIDADE-001` v1.0.0 contra o padrão vigente `docs/01-metodologia/APDF_V01.md` (`MET-APDF-001` v1.0.0, `APPROVED` por `DEC-007`).
**Data:** 2026-10-26
**Executor:** DeepSeek (agente designado manualmente pelo usuário)
**Dependências:** `docs/01-metodologia/APDF_V01.md`, `docs/01-metodologia/apdf.md` (`SUPERSEDED`), `docs/01-metodologia/anti-surto.md`, `docs/01-metodologia/ciclo-apdf.md`, `docs/02-contratos/contrato-03-harness.md`, `docs/02-contratos/contrato-05-inicializacao.md`, `docs/00-governanca/registro-de-decisoes.md` (`DEC-003`, `DEC-004`, `DEC-006`, `DEC-007`), `MANIFESTO-SHA256.md`.
**Histórico:** v1.0.0 avaliou a *proposta* `MET-APDF-ADAPT-001` contra `apdf.md` v0.1.0. Esta v2.0.0 não a repete: avalia o **padrão já adotado**. Onde a v1.0.0 permanece válida como registro histórico, este relatório apenas remete a ela.

---

## 1. Conclusão executiva

1. **A premissa do relatório v1.0.0 foi superada.** A v1.0.0 concluiu que a proposta era "coerente nos fins e incoerente nos meios" porque a matriz declarava preservação sem materializar conteúdo. O `APDF_V01` resolveu o meio: o conteúdo existe em texto normativo, não em matriz de intenções. Dos 15 pontos de decisão, **10 estão resolvidos** no texto, **4 permanecem parciais** e **1 continua aberto**.
2. **Há uma não conformidade interna verificável.** O checkpoint do Anti-Surto (`APDF_V01` §8.4, L367-388) reproduz **9 dos 10** campos obrigatórios do `CTR-03` (L19): falta `dependencies`. O próprio padrão, em §15.2 (L556), lista os 10. Isso contradiz `CA-APDF-07` ("O checkpoint usa os campos do CTR-03, sem substituí-los") e a declaração de `AD-06`. É o achado `F-01`, de correção objetiva e baixo custo.
3. **A proveniência não é integralmente reproduzível.** O Anexo A.1 (L630-639) cita `apdf.md` com hash `DB5FBF1E…` e `ciclo-apdf.md` com `75CF2E28…`. Os arquivos vigentes têm `7E0E97E9…` e `B08F9B0C…`. Os dois hashes citados **não resolvem para nenhum arquivo do repositório** (blob ausente; histórico com um único commit; backup com hashes distintos). É o achado `F-02`.
4. **O parecer `REV-APDF-PROP-001` permanece sem errata** (`D-15`). O impacto material caiu — `DEC-007` não se apoiou nele para aprovar — mas o artefato segue capaz de induzir auditoria futura a aceitar citações incorretas.
5. **Nenhuma declaração de conformidade é feita.** A comparação continua sendo entre o padrão local e **duas fontes candidatas não homologadas**. `APDF(1).md` segue indisponível (`L-01`). O veredito é sobre **coerência interna e rastreabilidade local**, não sobre fidelidade ao framework original.
6. **Recomendação:** corrigir `F-01`, `F-02`, `F-03`, `F-04` e `F-05` em versão `1.0.1` do `APDF_V01` (patch editorial e corretivo, sem mudança semântica), antes da homologação da baseline no Gate G0. Nada disso exige reabrir a decisão de adoção.

---

## 2. O que mudou entre a v1.0.0 e esta v2.0.0

| Dimensão | v1.0.0 (premissa) | Estado atual |
|---|---|---|
| Objeto avaliado | Proposta `MET-APDF-ADAPT-001` em `temp/` | Padrão `MET-APDF-001` v1.0.0 em `docs/`, `APPROVED` por `DEC-007` |
| Documento normativo do APDF | `apdf.md` v0.1.0 (`DRAFT`, só nomes de fase) | `APDF_V01.md` (13 fichas operacionais, gates, Anti-Surto, handoff) |
| `apdf.md` | Baseline DRAFT | `SUPERSEDED`, preservado como registro histórico |
| Proveniência | Matriz `ADP-001`…`ADP-030` com "PRESERVAR" sem lastro | Anexo A (`AD-01`…`AD-14`) com motivo, impacto e declaração de ausência nas fontes |
| Baseline do projeto | v0.1.0, 26 arquivos | v0.2.0, 27 arquivos, manifesto validado |
| Estado da questão | "faltam meios para provar a preservação" | "meios existem; restam defeitos pontuais de exatidão" |

**Consequência metodológica:** os critérios `C-01` a `C-13` foram formulados para uma **matriz de adaptação linha a linha**. O `APDF_V01` não é matriz; é padrão consolidado. Alguns critérios, portanto, não se aplicam mais na forma original (`C-11`) e outros mudam de objeto (`C-01`, `C-02`, `C-12`). Aplicá-los literalmente produziria falso negativo. Este relatório reinterpreta cada um e registra a reinterpretação.

---

## 3. Os nove elementos do lote contra o padrão vigente

O lote lista **nove** elementos (itens de 1 a 9 em `LOTE_DEEPSEEK_APDF_RASTREABILIDADE.md`, L24-32). A contagem "dez" usada informalmente em conversa está incorreta e não deve ser propagada.

| # | Elemento | Onde está no `APDF_V01` | Situação | Ressalva |
|---|---|---|---|---|
| 1 | Perguntas iniciais obrigatórias | §4.1 (L89-98), com obrigatoriedade ("Antes de iniciar qualquer fase, obter") e efeito declarado sobre o foco | **ATENDIDO** | O registro das respostas é inferido de §15.1/§15.4; não há campo dedicado nem frase que obrigue o registro explícito das quatro respostas |
| 2 | 13 fases com elicitação, artefatos e gate | §6 (L138-300); 13/13 têm pergunta central, ação de elicitação, artefatos e gate | **ATENDIDO** | 9 fases usam o rótulo **"Elicitar"**; 4 usam outro verbo (09 "Formalizar", 11 "Definir", 12 "Empacotar", 13 "Entregar") — `F-04` |
| 3 | Fluxo operacional do agente | §5 (L118-134): passos 0 a 5, com evidência produzida por passo | **ATENDIDO** | Os cinco passos da fonte correspondem aos passos 1-5; o passo 0 (leitura document-aware) é adição local explicitada em `AD-03` |
| 4 | Identidade, acionamentos e checkpoint do Anti-Surto | §8.1 (L339-341), §8.2 (L343-356), §8.3 (L358-365), §8.4 (L367-388), §8.6 (L399-401) | **ATENDIDO COM DEFEITO** | `F-01`: `dependencies` ausente do checkpoint |
| 5 | Gatilhos de desvio e três opções | §8.2 (`T-01`…`T-10`), §9 (L405-424) com `D-01`/`D-02`/`D-03`, procedimento de reabertura em 6 passos e proibições | **ATENDIDO** | — |
| 6 | Regra de ouro e controle após Architecture Freeze | §3 `RG-01` + corolários `RG-01.a/b/c` (L75-83); §10 `CF-01`…`CF-06` (L428-443); exceção emergencial por `NCE-001` §4 | **ATENDIDO** | `F-03`: a "pergunta de reancoragem antes de cada gate" exigida por `C-07` não está textualizada |
| 7 | Engineering Handoff | §11.1 cinco confirmações (L449-459); §11.2 dez itens de conteúdo mínimo (L461-472); §11.3 limite explícito (L474-476); Fase 13 (L290-300) | **ATENDIDO COM RESSALVA** | Não há tabela que mapeie as **4 entregas da fonte** e os **6 itens da baseline anterior** para os **10 itens** de §11.2; a consolidação ocorreu sem registro de duplicidades |
| 8 | Integração TPM condicional | §13 (L495-511): extensão opcional, gatilho de ativação, tabela de momentos, limites e dependência de `DEC-006` | **ATENDIDO COM RESSALVA** | `L-03`: TPM não verificado no ambiente; a tabela é sugestão, não capacidade comprovada |
| 9 | Instruções por ferramenta | §14 (L515-536): declarada informativa, tabela por contexto, estrutura de repositório sugerida, remissão a `FER-INV-001` | **ATENDIDO COM RESSALVA** | `L-04`: nenhuma instrução testada; a seção não cita caminho inexistente — o defeito `D-14` da v1.0.0 não persiste |

**Síntese:** 7 elementos atendidos, 5 deles com ressalva registrada; 1 com defeito objetivo (`F-01`); nenhum elemento ausente. A conclusão da v1.0.0 — "não materializado" para 4 dos 9 — **não se aplica mais**.

---

## 4. Situação das divergências `D-01` a `D-15`

| ID | Tema | Situação | Evidência no padrão vigente | Residual |
|---|---|---|---|---|
| D-01 | Identidade e autoridade da fonte | **PARCIAL** | Anexo A.1 (L630-639) registra nome, caminho, SHA-256 e uso; §16.2 (L583-589) e `L-01` (L595) declaram a indisponibilidade da fonte original | Falta versão/data, autor/custódia, autoridade aprovadora e escopo das fontes candidatas; `F-02` agrava (hashes não reproduzíveis) |
| D-02 | Anti-Surto atribuído à fonte | **RESOLVIDO** | `AD-06` (L650) e `AD-07` (L651) declaram o Anti-Surto e as três opções como **ausentes nas fontes** e acrescentados pelo Núcleo | Nenhum |
| D-03 | Fluxo de sete passos vs. cinco da fonte | **RESOLVIDO** | §5 (L118-134) tem 6 linhas: passo 0 local + 5 passos da fonte; `AD-03` (L647) explica a composição | Nenhum |
| D-04 | Ciclo com proveniência trocada | **PARCIAL** | §12 (L480-491) descreve o ciclo; Anexo A.1 atribui "Ciclo de 6 passos" a `ciclo-apdf.md` | `F-05`: não há linha `AD` para o ciclo; a proveniência existe apenas na coluna "Uso" de A.1, sem justificativa registrada |
| D-05 | Estado DRAFT e proibição de conformidade | **RESOLVIDO** | §16.2 (L583-589) e `AD-14` (L658) proíbem a alegação de conformidade; o estado mudou para `APPROVED` por decisão registrada, não por autodeclaração | Permanece `L-05` (sem revisão independente) |
| D-06 | Metadados e dependências | **RESOLVIDO** | Cabeçalho (L3-11) com ID, tipo, versão, estado, proprietário, escopo, data, dependências e histórico; `AD-05` (L649) | Nenhum |
| D-07 | Checkpoint incompatível com o CTR-03 | **PARCIAL** | §8.4 (L367-388) deixou de **substituir** o contrato e passou a **estendê-lo** (9 campos do CTR-03 + 7 próprios) | `F-01`: falta `dependencies` — cobertura 9/10; contradiz §15.2 (L556) |
| D-08 | Handoff sem as cinco confirmações | **PARCIAL** | §11.1 (L449-459) tem as cinco confirmações; §11.2 tem conteúdo mínimo ampliado | Falta o mapa de duplicidades entre as listas de origem e a consolidada |
| D-09 | Conteúdo das 13 fases | **RESOLVIDO** | §6 (L138-300) materializa pergunta, ação, artefatos e gate em 13/13; `AD-04` (L648) | `F-04` (rótulos de ação heterogêneos) |
| D-10 | Quatro perguntas iniciais | **RESOLVIDO** | §4.1 (L89-98), quatro perguntas; §4.3 (L112-116) cobre ausência de documento; `AD-01` (L645) | Registro explícito das respostas não é obrigatório por frase própria |
| D-11 | Gatilhos genéricos e não enumerados | **RESOLVIDO** | §8.2 (L343-356) enumera `T-01`…`T-10`; §8.3 (L358-365) define não gatilhos `N-01`…`N-04` | Nenhum |
| D-12 | Regra de ouro e pós-freeze ausentes | **RESOLVIDO** | `RG-01` + corolários (L75-83); `CF-01`…`CF-06` (L428-443); "não existe mudança pequena isenta" (L443) | `F-03`: falta a pergunta de reancoragem antes do gate |
| D-13 | TPM omitido sem extensão formal | **RESOLVIDO** | §13 (L495-511) com ativação, momentos, limites e remissão a `DEC-006` | `L-03`: não testado |
| D-14 | Manual por ferramenta inexistente | **RESOLVIDO** | §14 (L515-536) é informativa, não cita o manual ausente e remete `FER-INV-001` | `L-04`: não testado |
| D-15 | Parecer com citações imprecisas | **ABERTO** | `temp/parecer-revisao-adaptacao-apdf.md` não contém errata, adendo nem marca de retificação | Citações de linha incorretas seguem disponíveis; impacto reduzido, não eliminado |

**Contagem:** **10 resolvidos** (`D-02`, `D-03`, `D-05`, `D-06`, `D-09`, `D-10`, `D-11`, `D-12`, `D-13`, `D-14`), **4 parciais** (`D-01`, `D-04`, `D-07`, `D-08`) e **1 aberto** (`D-15`). Total: 15.

---

## 5. Situação dos critérios `C-01` a `C-13`

A coluna "Leitura" registra quando o critério foi formulado para a matriz e precisa ser reinterpretado para um padrão.

| ID | Situação | Evidência | Observação |
|---|---|---|---|
| C-01 | **PARCIAL** | Anexo A.1 (L630-639); `L-01` (L595) | Hash e caminho existem; versão/data, autor/custódia e autoridade não. Dois hashes não são reproduzíveis (`F-02`) |
| C-02 | **PARCIAL** | A.2 `AD-01`…`AD-14` (L643-658) | Há proveniência por adaptação, com motivo e impacto; não há citação de linha da fonte (`APDF.md#Lx-Ly`) nem matriz linha a linha vigente. Leitura: o critério nasceu para a matriz `ADP`; para o padrão, o equivalente é a coluna de origem — que existe, mas sem linha |
| C-03 | **ATENDIDO** | §4.1 (L89-98), §4.3 (L112-116), §15.1 (L542-552) | Registro é indireto (§15.1/§15.4), não um campo "respostas iniciais" |
| C-04 | **ATENDIDO** | §6 (L138-300) | 13/13 com os quatro campos, sob rótulos de ação variáveis (`F-04`) |
| C-05 | **ATENDIDO** | §5 (L118-134), `AD-03` (L647) | Confirmação explícita está no passo 5 e em §7.2 (L325-329) |
| C-06 | **NÃO ATENDIDO** | §8.4 (L367-388) vs. `CTR-03` L19 | `F-01`: `dependencies` ausente. Falha crítica de rastreabilidade nos termos de §8.3 da v1.0.0 |
| C-07 | **PARCIAL** | `RG-01` (L75-83), §10 (L428-443) | Regra de ouro e pós-freeze atendidos; pergunta de reancoragem ausente (`F-03`) |
| C-08 | **PARCIAL** | §11.1-§11.3 (L449-476) | Conteúdo e confirmações presentes; mapa de duplicidades ausente |
| C-09 | **ATENDIDO** | §13 (L495-511) | Nenhuma instalação ou execução declarada; ver `L-03` |
| C-10 | **ATENDIDO** | §14 (L515-536) | Marcado como informativo; nenhuma referência quebrada |
| C-11 | **NÃO APLICÁVEL / ABERTO** | `DEC-007` (aprovação única); `GOV-AUTH-001` pendente | Não há matriz por linha a aprovar. O equivalente é a aprovação do padrão, registrada; a designação nominal segue pendente. Reinterpretação registrada, não dispensada |
| C-12 | **ATENDIDO COM RESSALVA** | Cabeçalho (L6), `DEC-007`, manifesto v0.2.0 | A ordem foi respeitada: decisão registrada e só então manifesto. A ressalva é que o aprovador é o proprietário por papel, sem nome (`GOV-AUTH-001`) |
| C-13 | **NÃO ATENDIDO** | `L-05` (L599); `D-15` | Sem revisão independente e sem errata do parecer |

**Regra de passagem (da v1.0.0, §8.3):** crítica em `C-01`, `C-02` ou `C-06` bloqueia a candidata. `C-06` está **não atendido**, o que bloqueia a declaração de "pronta para revisão" **na forma atual**. Como o padrão já está `APPROVED`, a consequência prática não é desfazer a adoção: é exigir a correção em `1.0.1` antes da homologação no Gate G0.

---

## 6. Achados novos desta reavaliação

Nenhum destes constava da v1.0.0, porque todos dependem do texto do `APDF_V01`.

### F-01 — Checkpoint do Anti-Surto omite `dependencies` (crítico)

- **Evidência:** `CTR-03` L19 exige dez campos, incluindo `dependencies`. `APDF_V01` §8.4 (L367-388) lista, com origem "CTR-03": `task_id`, `objective`, `apdf_phase`, `approved_baseline`, `allowed_actions`, `prohibited_actions`, `acceptance_criteria`, `execution_state`, `evidence_refs` — nove. O próprio §15.2 (L556) lista os dez, com `dependencies`.
- **Efeito:** `CA-APDF-07` não é satisfeito; `AD-06` declara alinhamento ao Contrato 03 que o texto não cumpre; um harness que implemente §8.4 perderia a dependência declarada da tarefa.
- **Correção proposta:** inserir a linha `| dependencies | Sim | CTR-03 |` na tabela §8.4, entre `acceptance_criteria` e `execution_state`. Mudança aditiva, sem impacto em outros artefatos.
- **Verificação:** comparação automatizada entre a lista do `CTR-03` L19 e as linhas de origem "CTR-03" em §8.4 — deve resultar 10/10.

### F-02 — Dois hashes do Anexo A não são reproduzíveis (editorial com efeito de governança)

- **Evidência:** A.1 (L634) cita `apdf.md` como `DB5FBF1EC16C…CB15`; o arquivo vigente é `7E0E97E99BBE…D8A5`. A.1 (L636) cita `ciclo-apdf.md` como `75CF2E28957…E612`; o vigente é `B08F9B0C014A…416E`. Verificado: `git cat-file -e` não encontra nenhum dos dois blobs; o histórico tem **um único commit** (`9f85961`); o backup `_backup/baseline-v0.1.0/` contém versões ainda distintas (`D5561CFD…378A` e `7447E0EB…9DA4`).
- **Efeito:** a afirmação de proveniência não pode ser conferida por terceiro. É exatamente o tipo de lacuna que a Opção C deveria eliminar.
- **Correção proposta:** atualizar os dois hashes para os valores vigentes e acrescentar nota de que o padrão foi construído sobre a revisão anterior de `apdf.md`, cujo conteúdo passou a `SUPERSEDED`; se a intenção era registrar a revisão consultada, arquivar essa revisão com hash e caminho explícitos. Não citar hash de conteúdo que não existe no repositório.
- **Verificação:** todo hash do Anexo A.1 deve resolver para um arquivo existente, com `Get-FileHash` conferindo.

### F-03 — Pergunta de reancoragem não textualizada (editorial)

- **Evidência:** `C-07` exige "regra de ouro, **pergunta de reancoragem** e controle pós-freeze". `APDF_V01` tem `RG-01` e `CF-01`…`CF-06`, mas não formula a pergunta a ser feita antes de cada gate (por exemplo: "esta ação ainda pertence ao artefato aprovado desta fase?").
- **Correção proposta:** acrescentar a pergunta em §7.2 ou como `RG-01.d`, com efeito bloqueante. Alternativa legítima: registrar em `DEC` que a pergunta foi deliberadamente absorvida pelo checkpoint §8.4 — nesse caso, `C-07` deve ser reescrito, não silenciosamente considerado atendido.

### F-04 — Rótulos de ação das fases heterogêneos (editorial)

- **Evidência:** fases 01-08 e 10 usam "**Elicitar:**"; 09 usa "**Formalizar:**"; 11 usa "**Definir:**"; 12 usa "**Empacotar:**"; 13 usa "**Entregar:**" e "**Confirmar explicitamente:**".
- **Efeito:** a verificação de `CA-APDF-01` ("as 13 fases têm pergunta central, elicitação, artefatos e gate") não é mecanizável por busca de rótulo; um auditor precisa interpretar caso a caso. Não há perda de conteúdo.
- **Correção proposta:** adotar campo único `**Elicitar/Produzir:**` (ou manter os verbos e declarar em §6 a regra de leitura: "o verbo varia conforme a natureza da fase; o campo é sempre o segundo"). Qualquer das duas resolve; a segunda é menos invasiva.

### F-05 — Ciclo de execução sem linha de adaptação (editorial)

- **Evidência:** §12 (L480-491) apresenta o ciclo de 6 passos. A.1 atribui "Ciclo de 6 passos" a `ciclo-apdf.md`, mas `AD-01`…`AD-14` não contém linha sobre o ciclo, ao contrário de todos os outros blocos temáticos.
- **Correção proposta:** acrescentar `AD-15` registrando que o ciclo vem de `MET-CICLO-001` (`ciclo-apdf.md`) e não das fontes candidatas — o que também encerra `D-04` sem ambiguidade.

---

## 7. Critérios de aceite para a versão `1.0.1`

Cumulativos. A `1.0.1` é **patch corretivo**: não altera método, fases, gates nem decisões; corrige exatidão e completude.

| ID | Critério | Verificação |
|---|---|---|
| V2-01 | §8.4 contém os 10 campos do `CTR-03`, sem omissão e sem substituição | Diff da tabela; checagem automatizada 10/10 contra `CTR-03` L19 |
| V2-02 | Todo hash do Anexo A.1 resolve para arquivo existente e confere | `Get-FileHash` por linha; zero divergências |
| V2-03 | A pergunta de reancoragem existe no texto **ou** há decisão registrada que a dispensa e reescreve `C-07` | Leitura de §7/§8 + `DEC` |
| V2-04 | `CA-APDF-01` é verificável sem interpretação: rótulo de ação uniforme ou regra de leitura declarada em §6 | Leitura de §6 |
| V2-05 | O ciclo tem linha de adaptação própria (`AD-15`) com origem `MET-CICLO-001` | Anexo A.2 |
| V2-06 | O handoff tem tabela de correspondência entre as listas de origem e §11.2 | Anexo ou §11.2 |
| V2-07 | `D-15` encerrado por errata, adendo ou marca de retirada no parecer | Estado do arquivo em `temp/` |
| V2-08 | `manifesto`, `CHANGELOG` e `estado-atual` refletem a `1.0.1` com hashes recalculados | Validação do manifesto, 27 arquivos, 0 divergências |
| V2-09 | Aprovação da `1.0.1` registrada com autoridade identificável | `DEC` ou adendo a `DEC-007` |

**Não exigido para a `1.0.1`:** revisão independente (`L-05`) e designação nominal (`GOV-AUTH-001`). São condições de **homologação no Gate G0**, não de correção editorial. Mantê-las como bloqueio da correção inverteria a prioridade: o defeito `F-01` deve ser sanado antes de qualquer parecer externo, para não submeter texto sabidamente inconsistente.

---

## 8. Decisões humanas necessárias

| ID | Decisão | Opções | Autoridade | Bloqueia |
|---|---|---|---|---|
| DH-10 | Corrigir agora ou acumular? | (a) emitir `1.0.1` corretiva antes do G0; (b) acumular com a próxima revisão de mérito | Proprietário humano do Núcleo | `F-01`, `F-02` e a homologação |
| DH-11 | Destino do parecer `REV-APDF-PROP-001` | (a) errata; (b) nova versão; (c) marca de "histórico — não usar como parecer vigente" | Revisor independente + governança | `D-15`, `C-13` |
| DH-12 | Reancoragem: texto ou dispensa? | (a) acrescentar pergunta em `RG-01`; (b) declarar coberta pelo checkpoint e reescrever `C-07` | Governança + produto | `F-03` |
| DH-13 | Revisão independente antes do G0? | (a) obrigatória; (b) dispensada com ressalva registrada | Proprietário humano do Núcleo | `L-05` |

---

## 9. Fontes consultadas, indisponíveis e limitações

### 9.1 Consultadas nesta reavaliação

| Fonte | Uso |
|---|---|
| `docs/01-metodologia/APDF_V01.md` | Objeto da avaliação |
| `docs/02-contratos/contrato-03-harness.md` | Lista canônica de 10 campos (L19) |
| `docs/01-metodologia/anti-surto.md` | `MET-SURTO-001`, três opções |
| `docs/01-metodologia/ciclo-apdf.md` | Origem do ciclo de 6 passos |
| `docs/01-metodologia/apdf.md` | Predecessor `SUPERSEDED` |
| `temp/resultado-DEEPSEEK-apdf-rastreabilidade.md` | Base v1.0.0 (não repetida) |
| `temp/parecer-revisao-adaptacao-apdf.md` | Verificação de errata (`D-15`) |
| `temp/LOTE_DEEPSEEK_APDF_RASTREABILIDADE.md` | Escopo e restrições |
| `temp/estado-atual.md` | Pendências `PEND-01`, `PEND-02`, `PEND-05` |
| `docs/00-governanca/registro-de-decisoes.md` | `DEC-003`, `DEC-004`, `DEC-006`, `DEC-007` |
| `MANIFESTO-SHA256.md` | Baseline v0.2.0, 27 arquivos |
| `E:\documentos\projetos\APDF.md`, `ORQUESTRADOR_APDF.md` | Fontes candidatas (hashes já registrados em A.1) |

### 9.2 Indisponíveis

- `APDF(1).md` — fonte original declarada; não localizada no `PDI` nem na raiz do workspace (`L-01`).
- `temp/matriz-comparacao-apdf-original-baseline.md` e `temp/matriz-divergencias-apdf-pdi.md` — continuam inexistentes. A comparação usa as matrizes efetivamente disponíveis (`ADP` na proposta, `AD` no padrão).

### 9.3 Limitações

1. **Sem comparação com a fonte original.** Nenhuma afirmação deste relatório valida fidelidade ao APDF original.
2. **Sem execução.** Não foram executados TPM, testes, harness ou validação sintática; a análise é documental e de leitura.
3. **Sem revisão independente.** O executor é o mesmo da v1.0.0 e não é autoridade de aceite da própria entrega (`L-05`, `P-11`).
4. **Escopo de leitura.** Não foram auditados `_backup/` nem os diretórios extraídos em `temp/` além do necessário para verificar hashes.
5. **Estado do repositório.** Quatro itens não rastreados em `temp/` (`PDI_Lote02_Correcoes_Candidatas/`, `PDI_Lote02_Correcoes_Candidatas.zip`, `lotes-paralelos-pdi-2026-10-26/`, `lotes-paralelos-pdi-2026-10-26.zip`) não foram inspecionados nem alterados; são material não normativo.
6. **Contagem de elementos.** O lote enumera nove elementos; qualquer referência a "dez elementos" é erro de transcrição.

### 9.4 Declaração final

Este relatório **não homologa** o `APDF_V01`, **não declara conformidade** com o APDF original, **não altera** `docs/`, `specs/`, `tests/`, arquivos da raiz ou `MANIFESTO-SHA256.md`, e **não autoriza** a Fase B. Ele registra que a adoção do padrão resolveu a maior parte das lacunas apontadas na v1.0.0 e que resta um conjunto fechado de correções pontuais, das quais uma é substancial (`F-01`) e quatro são de exatidão documental.

**Próximo passo autorizável:** decisão `DH-10` e emissão da versão `1.0.1` do `APDF_V01` conforme os critérios V2-01 a V2-09.
