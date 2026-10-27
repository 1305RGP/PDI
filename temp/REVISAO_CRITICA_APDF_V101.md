# Revisão Crítica Independente — Candidata `APDF_V01` v1.0.1

**ID do Parecer:** REL-REV-CRITICA-APDF-003
**Objeto:** `temp/APDF_V01_CORRIGIDA_CANDIDATA.md` (v1.0.1, `PENDING_APPROVAL`)
**Baseline de referência:** `docs/01-metodologia/APDF_V01.md` v1.0.0 (`MET-APDF-001`, `APPROVED` por `DEC-007`)
**Commit do repositório no momento da revisão:** `205bc59`
**Data:** 2026-10-27
**Natureza:** parecer técnico não normativo, produzido em `temp/`
**Autoridade decisória:** exclusivamente o Proprietário Humano (`GOV-AUTH-001`)

> Este parecer **não aprova** a candidata, **não promove** v1.0.1, **não encerra** o Gate G0 e **não altera** nenhum artefato fora de `temp/`. Ele apenas registra o que foi verificado, o que não foi, e os defeitos encontrados, para deliberação humana.

## 0. Resumo dos achados

| ID | Gravidade | Em uma linha |
|---|---|---|
| `R-01` | **A** | §6 afirma "quatro campos fixos" — falso para 8 de 13 fichas; e `C-03` redefine `CA-APDF-01` sem emendar §17 |
| `R-02` | **A** | §7.3 sustenta três afirmações incompatíveis sobre `REABERTO`; §7.1 ainda o lista como decisão; diagrama incoerente |
| `R-03` | B | `C-02`/`F-02` provam "hash não reproduzível" com `git cat-file -e`, que falha para qualquer hash de 64 hex — prova vazia; a prova real existe e não é citada |
| `R-04` | **A** | Critérios de G0 (`CA-G0-01`–`06`) existem só na proposta que os declara atendidos |
| `R-05` | B | `DH-10`/`11`/`12` citados como existentes; não há nenhuma entrada `DH-*` no registro |
| `R-06` | B | Proposta de G0 já traz `APPROVED` e versão alvo ambígua |

Recomendação: não promover v1.0.1 no estado atual (§7). Decisões abertas: [`temp/DOSSIE_DECISAO_HUMANA.md`](DOSSIE_DECISAO_HUMANA.md).

---

## 1. Escopo e método

### 1.1 O que foi revisado

| Item | Escopo |
|---|---|
| Candidata v1.0.1 | Integralmente (775 linhas), com atenção a §6, §7, §8.4, §16.4, §17 e Anexos A–C |
| Baseline v1.0.0 | Integralmente (674 linhas) para comparação |
| Diff autoritativo | `temp/_diff_v100_para_candidata.diff` (19 hunks, +126 / −25) |
| Registro de alterações | `temp/REGISTRO_ALTERACOES_APDF.md` (`C-01`–`C-11`) |
| Matriz de conformidade | `temp/MATRIZ_CONFORMIDADE_APDF.md` |
| Evidências declaradas | `temp/ENTREGA_INTEGRAL_DEEPSEEK_APDF.md` (`V-01`–`V-11`, `N-01`–`N-07`, `L-01`–`L-07`) |
| Proposta de gate | `temp/PROPOSTA_DECISAO_G0.md` |
| Contexto normativo | `MANIFESTO-SHA256.md`, `README.md`, `CHANGELOG.md`, `docs/00-governanca/registro-de-decisoes.md`, `docs/02-contratos/contrato-03-harness.md` |
| Histórico | Commits `9f85961` e `205bc59` |

### 1.2 O que **não** foi revisado

- Fontes externas `APDF.md`, `ORQUESTRADOR_APDF.md` e `PROMPTS_POR_FASE.md` — fora da raiz do projeto, sem autorização de acesso, e não recuperáveis por hash. As afirmações da candidata sobre elas permanecem **não verificadas**, não "verificadas".
- `temp/resultado-GEMINI-auditoria-g0.md` na íntegra como fonte de verdade: contém hashes obsoletos da v0.1.0 e foi usado apenas como registro histórico do que foi afirmado, nunca como prova.
- Execução real do método APDF em um produto — nunca ocorreu em nenhuma versão. Nenhuma afirmação deste parecer valida operacionalidade.

### 1.3 Como foi verificado

Contagem e hashes com `Get-FileHash`/`Measure-Object`; comparações byte-a-byte extraindo objetos de commit via `cmd /c "git show <sha>:<path> > arquivo"` (nunca por pipeline PowerShell, que reescreve UTF-8); busca textual com `Select-String -Encoding UTF8`; contagem de padrões estruturais por regex ancorada em início de linha.

---

## 2. Status epistêmico — separação obrigatória

| Dimensão | Situação real |
|---|---|
| **Especificado** | v1.0.1 está integralmente escrito (775 linhas) e é autoconsistente na maior parte do texto |
| **Implementado** | A candidata existe como arquivo em `temp/`; **não** está em `docs/`; **não** é normativa; **não** consta do manifesto |
| **Executado** | As verificações deste parecer foram executadas e são reproduzíveis pelos comandos citados. O método APDF não foi executado em nenhum produto, em nenhuma versão |
| **Validado** | **Nada em v1.0.1 está validado como normativo.** Não houve revisão independente registrada (`L-05` em aberto), não houve decisão humana, não houve recálculo de manifesto |

Consequência direta: qualquer frase do tipo "v1.0.1 corrige X" significa, no máximo, "o texto de v1.0.1 afirma ter corrigido X". As seções 3 e 4 mostram casos em que a afirmação é falsa.

---

## 3. Fatos verificados (reprodutíveis)

| # | Verificação | Comando/Procedimento | Resultado |
|---|---|---|---|
| F1 | Integridade da candidata | `Get-FileHash -Algorithm SHA256` | `21B9718C3A4B42BCDFC77884D2D01735D4B17F081A43BDD77DEE3329BD08B81B`, 775 linhas |
| F2 | Integridade da baseline | idem | `DC68ED05DF9CF5C8546388A55EE413B115FA0CEF9B1E9F7503CE1EEC704D07AE`, 674 linhas |
| F3 | Diff | `temp/_diff_v100_para_candidata.diff` | 19 hunks, 126 inserções, 25 remoções |
| F4 | §17 inalterada | extração das 19 linhas de §17 em ambos e hash | SHA-256 `96BCA246…0F9B34` idêntico; `CA-APDF-01`–`12` literalmente iguais |
| F5 | §8.4 vs `CTR-03` | confronto campo a campo, ordem e cardinalidade | 10/10 campos de `CTR-03` presentes, na ordem do contrato, incluindo `dependencies`; +7 campos de extensão local; tabela de 4 colunas |
| F6 | Manifesto | recálculo de todos os 27 hashes | 27 linhas, 27 OK, 0 divergências, 0 ausentes |
| F7 | A.1 — fontes internas | hash dos 5 caminhos internos | 5/5 conferem com os arquivos atuais |
| F8 | A.1 — fontes externas | — | 3/3 **não verificáveis** |
| F9 | Histórico de `apdf.md` e `ciclo-apdf.md` | `git show 9f85961:…` + comparação de bytes; `git diff 9f85961 205bc59` | idênticos entre `9f85961` e o estado atual (3319 e 1351 bytes); `205bc59` alterou apenas `temp/`. **Não** significa "nunca mudaram": entre o backup v0.1.0 (1527 bytes, hash `D5561CFD…`) e `9f85961` houve alteração |
| F9b | Hashes antigos de A.1 | confronto com `temp/resultado-fase-a.md` (linhas 70–71) e `_backup/baseline-v0.1.0/MANIFESTO-SHA256.md` | `DB5FBF1E…`/`75CF2E28…` são exatamente os valores medidos ao fim da Fase A; o backup v0.1.0 tinha `D5561CFD…`/`7447E0EB…`; o estado atual tem `7E0E97E9…`/`B08F9B0C…` — cadeia consistente com invalidação por `DEC-007` |
| F10 | Estrutura das fichas (§6) | contagem ancorada de rótulos (`^### Fase`, `^\*\*Pergunta central`, `^\*\*Artefatos`, `^\*\*Gate`, `^\*\*Nota`, `^\*\*Confirmar`, `^\*\*Gate final`) | 13 fases; 13 `Pergunta central`; 13 `Artefatos`; 13 gates; **10** blocos `**Nota…**` (7 em fases 02, 03, 04, 06, 08, 09, 12 + 3 na fase 13); **1** `**Confirmar explicitamente**`; **1** `**Gate final**` (fase 13) |
| F11 | Validade do teste `git cat-file -e` | execução com string de 64 hex aleatória em repositório SHA-1 | exit 128, `fatal: Not a valid object name` — o teste **não distingue** hash inventado de hash histórico |
| F12 | Proveniência de `CA-G0-*` | `Select-String` por `CA-G0` em `docs/`, `README.md`, `CHANGELOG.md` | **nenhuma ocorrência** fora de `temp/PROPOSTA_DECISAO_G0.md` (linhas 28–33) |
| F13 | Registro de decisões | leitura do arquivo | `DEC-001`–`DEC-007`; **nenhuma** entrada `DH-*`; modelo oficial exige `PENDING_APPROVAL`/`DRAFT` antes de `APPROVED` |
| F14 | Histórico do repositório | `git log --oneline` | 2 commits: `9f85961`, `205bc59` |

---

## 4. Achados

Severidade: **A** = bloqueia promoção como patch corretivo; **M** = deve ser corrigido antes da promoção, não bloqueia sozinho; **B** = correção editorial.

### R-01 (A) — A regra de leitura de §6 afirma um fato falso sobre as próprias fichas

**Local:** candidata linha 158; confirmação em todo o §6.

**Texto afirmado:** "Cada ficha tem quatro campos fixos, nesta ordem: pergunta central, ação da fase, artefatos e gate."

**Realidade medida (F10):** 8 das 13 fichas não têm quatro campos.

| Fase | Desvio |
|---|---|
| 02, 03, 04, 06, 08, 09, 12 | bloco adicional `**Nota…:**` após o `**Gate:**` |
| 13 | não tem `**Gate:**`; tem 3 blocos `**Nota…**` (`F-02`, `F-13`, `PROP-01`), `**Confirmar explicitamente (seção 11):**` e `**Gate final:**` no lugar de `**Gate:**` |

O próprio texto da linha 158 reconhece que o rótulo do segundo campo varia, o que já contradiz "quatro campos fixos, nesta ordem" no sentido literal. Mas o defeito maior é o outro: a frase foi escrita como regra de leitura **geral** e é falsa para 8/13 fichas.

**Por que o registro de alterações não detectou:** a validação declarada em `REGISTRO_ALTERACOES_APDF.md` e em `V-02` conta ocorrências (`PERGUNTA=13`, `ACAO=13`, `ARTEFATOS=13`, `GATE=13`). Essas quatro contagens são compatíveis com a presença das notas e do gate final — elas não testam a afirmação de cardinalidade. O teste não mede o que a afirmação diz.

**Agravante de governança:** `C-03` reescreve o segundo campo como "ação da fase", mas `CA-APDF-01` (linha 659, §17, **inalterada**) continua dizendo "pergunta central, **elicitação**, artefatos e gate definidos". A linha 158 declara que a verificação de `CA-APDF-01` "incide sobre a presença e o conteúdo do segundo campo, não sobre a uniformidade do rótulo" — ou seja, redefine o objeto do critério por nota editorial, sem emendar §17. O critério aprovado foi reinterpretado, não emendado. Isso é exatamente o que o `AGENTS.md` veda: não se ajusta o significado de critério aprovado para acomodar a implementação. Aqui a manobra é textual, mas o efeito é o mesmo — o critério passa a significar outra coisa sem decisão registrada.

**Opções para o proprietário:**
1. Corrigir a linha 158 para descrever a estrutura real (quatro campos **nucleares** + notas opcionais + gate final na fase 13) e declarar explicitamente que `CA-APDF-01` verifica o núcleo, não a uniformidade. Mantém v1.0.1 como patch editorial.
2. Reverter `C-03` integralmente: restaurar a formulação de v1.0.0 e tratar o assunto em versão posterior, com emenda formal a `CA-APDF-01`.
3. Promover v1.0.1 com `C-03` como está — **não recomendado**: publica uma afirmação falsa e reinterpreta critério aprovado sem decisão.

---

### R-02 (A) — §7.3 continua incoerente e o registro descreve uma correção que não aconteceu

**Local:** candidata linhas 321, 336–341; registro `C-11` (linha 749).

O registro afirma que §7.3 foi "reescrito: `PENDENTE` transita para `APROVADO` ou `REJEITADO`; `REABERTO` é a transição de reabertura de gate decidido e retorna a `PENDENTE`; avanço bloqueado enquanto `REABERTO`". O texto entregue diz outra coisa:

- linha 340: "`REABERTO` **não é estado terminal**: é a **transição** que devolve o gate a `PENDENTE` para nova decisão registrada."
- mesma linha: "**de `REABERTO` só se sai por `APROVADO` ou `REJEITADO`**".
- mesma linha: "**Enquanto o gate estiver `REABERTO`, o avanço permanece bloqueado**".
- linha 321 (§7.1, inalterada): `decision` aceita `APROVADO`, `REJEITADO` **ou `REABERTO`** — ou seja, `REABERTO` é valor de decisão, não mera transição.

Três problemas distintos:

1. **Contradição interna no mesmo parágrafo.** Se `REABERTO` é transição que devolve o gate a `PENDENTE`, ele não pode ser simultaneamente um estado em que "o avanço permanece bloqueado" e do qual "só se sai por `APROVADO` ou `REJEITADO`". Ou é passagem instantânea, ou é estado persistente. O texto sustenta as duas leituras.
2. **Diagrama de transição incompleto.** A linha de setas (mencionada em §7.3) não inclui `REABERTO` como origem, apesar de o parágrafo afirmar saídas a partir dele.
3. **§7.1 não foi harmonizada.** `REABERTO` permanece listado como valor do campo `decision`, o que só faz sentido se for decisão — e o parágrafo agora diz que é transição.

**Por que importa:** §7 é a especificação do mecanismo de gate. Um gate ambíguo não é auditável: dois leitores podem registrar estados diferentes para o mesmo evento. Como `CTR-03` e os schemas da Fase B vão codificar esses estados, a ambiguidade se propaga para a implementação.

**Opções:** (a) decidir que `REABERTO` é estado persistente — corrigir §7.3, o diagrama e manter §7.1; (b) decidir que é transição — remover `REABERTO` de §7.1 (`decision` passa a dois valores) e registrar a reabertura como evento com data/hash de decisão; (c) manter como está — **não recomendado**, mantém ambiguidade em artefato que pretende ser normativo.

---

### R-03 (B) — `C-02` cita como prova um teste vazio e omite a prova que teria

> **Autocorreção registrada.** A primeira versão deste achado afirmava que a narrativa causal de `C-02` era **falsa**. Isso estava **errado** e é retratado. A verificação que o derrubou está em F9b e no §4.1. Fica registrado porque um parecer que não corrige a si mesmo não serve como parecer.

**Local:** `REGISTRO_ALTERACOES_APDF.md` `C-02` (linhas 114–150); candidata linha 689 (nota `F-02`).

**O que o registro afirma:** que os dois hashes de A.1 na v1.0.0 não são reproduzíveis, que a divergência é "compatível com a alteração de `apdf.md` e `ciclo-apdf.md` por `DEC-007`", e que "não há evidência suficiente para afirmar isso como fato".

**O que é verdade:** a causalidade é corroborada por documento interno e é a explicação mais provável. `temp/resultado-fase-a.md` (linhas 70–71) registra `DB5FBF1E…` e `75CF2E28…` como os hashes medidos ao final da Fase A; o `MANIFESTO-SHA256.md` do backup v0.1.0 registra `D5561CFD…` e `7447E0EB…`; o estado atual é `7E0E97E9…` e `B08F9B0C…`. A sequência é coerente: padronização da Fase A produziu `DB5FBF1E`, a edição de `DEC-007` (banner `SUPERSEDED` + `Estado`) produziu `7E0E97E9`. **A narrativa de `C-02` está substancialmente correta.**

**O defeito real, então, é outro — e é duplo:**

1. **Evidência vazia onde havia evidência boa.** Nem o registro nem a nota citam `resultado-fase-a.md`. Citam `git cat-file -e`, que foi testado (F11) e é **inútil como prova**: no repositório SHA-1, retorna 128 `fatal: Not a valid object name` para o hash antigo **e para uma string de 64 hex aleatória**, e 0 apenas para um objeto SHA-1 real. O teste não distingue hash histórico de hash inventado. Usá-lo para dizer "não é reproduzível no histórico" é formalmente verdadeiro e epistemicamente vazio — passaria igual para qualquer coisa.
2. **A v1.0.0 se autoinvalidou.** O padrão exige proveniência de terceiros com hash, e citou hashes de um estado que a **mesma mudança** (`DEC-007`, commit `9f85961`) alterou. O hash estava correto quando medido e obsoleto quando publicado. Isso não é mentira; é um erro de sequenciamento de autoria — e a v1.0.1 o herda ao repetir a explicação sem nomear a causa.

**Impacto:** o valor de hash entregue está correto (F7) e o registro não mente. O custo é de confiança: o único teste citado não testa nada, e a explicação verdadeira está disponível no próprio repositório sem ser usada. Se o proprietário aceitar isso, aceita que um registro de alterações pode apoiar-se em prova vazia desde que a conclusão esteja certa — precedente ruim para as próximas 11 entradas.

**Opções:** (a) **recomendada** — reescrever `C-02` e a nota `F-02` citando `resultado-fase-a.md` e o manifesto do backup como cadeia de estados, e remover a menção a `cat-file -e` ou rebaixá-la a "teste inconclusivo"; (b) manter e registrar ressalva; (c) revisar por amostragem as demais entradas `C-01`–`C-11` quanto à evidência citada.

---

**Autocorreção registrada (referida como §4.1 nas demais seções).**

| Versão | Afirmação sobre `C-02` | Situação |
|---|---|---|
| Inicial | "narrativa causal falsa; hashes errados desde a autoria" | **Retratada** |
| Corrigida | "narrativa correta; evidência citada é vazia; prova real não foi citada" | Vigente |

**O que me induziu ao erro:** verifiquei que os arquivos são idênticos entre `9f85961` e o estado atual, e converti isso em "nunca mudaram". O passo inválido foi ignorar que `9f85961` é o commit que **contém** a alteração de `DEC-007` — logo, a ausência de diff posterior não exclui alteração anterior. A pergunta certa era "qual era o estado antes de `DEC-007`?", não "houve commit depois?".

**O que teria evitado o erro:** procurar os hashes antigos no repositório antes de concluir sobre eles. Uma busca por `DB5FBF1E` encontra `resultado-fase-a.md` em um comando. Não fiz a busca; deduzi da ausência. Registro o método falho junto com a correção, porque o mesmo erro pode contaminar outras conclusões deste parecer — as demais foram reverificadas por medição direta, não por dedução de ausência.

---

### R-04 (A) — G0 está sendo avaliado contra critérios que só existem na proposta que os declara atendidos

**Local:** `temp/PROPOSTA_DECISAO_G0.md` linhas 28–33; `README.md`.

**Fato (F12):** `CA-G0-01`–`CA-G0-06` não existem em nenhum artefato normativo. Não estão no `README.md`, nem no `CHANGELOG.md`, nem em `docs/`. Foram criados dentro da própria proposta de decisão.

**Por que é um problema estrutural, e não formalismo:** a proposta define os seis critérios, avalia cada um como "ATENDIDO" e conclui que o gate pode ser encerrado. O avaliador e o autor do critério são a mesma parte, no mesmo documento, sem que o critério tenha sido aprovado antes da avaliação. Isso não é auditoria de gate; é auto-atestação com aparência de auditoria. Se o proprietário assinar `DEC-008` como está, a decisão registrada dirá "critérios `CA-G0-01`–`06` atendidos" citando critérios que nunca foram aprovados.

**Agravante:** o `README.md` define G0 apenas em prosa ("conferir os arquivos…"), sem numeração. Existe, portanto, um gate aberto cujo critério de encerramento nunca foi formalizado — e a proposta resolve isso inventando os critérios e já os declarando cumpridos.

**Opções:**
1. **Recomendada.** Emitir `DEC-008` apenas como *aprovação dos critérios de G0* (`CA-G0-01`–`06` anexados ao texto da decisão), e uma decisão subsequente para o encerramento, depois de o proprietário conferir cada critério. Duas decisões, sequência limpa.
2. Emitir `DEC-008` única, mas com o texto explicitando que os critérios foram **estabelecidos nesta decisão** e que a avaliação é a da proposta, não uma verificação independente.
3. Encerrar G0 citando apenas os fatos verificáveis (F5, F6, F7) sem invocar `CA-G0-*` — evita o problema de proveniência sem criar decisão dupla.
4. Assinar como está — **não recomendado**: cria precedente de gate autoavaliado.

---

### R-05 (B) — `DH-10`/`DH-11`/`DH-12` são citados como se existissem

`DH-10` aparece na candidata (§16.4, linha 651) como a decisão que autoriza a promoção — e a cláusula de não normatividade de v1.0.1 depende dela. Mas (F13) o registro oficial não tem nenhuma entrada `DH-*`. Além disso, `DH-10` tem significado diferente no relatório de origem ("Corrigir agora ou acumular?") e na candidata ("autorização de promoção"). Um mesmo identificador com dois significados, nenhum registrado, não pode ser a base de uma cláusula de contenção.

**Correção:** registrar as decisões com IDs `DEC-*` no registro oficial antes de citá-las como fundamento, ou reescrever a cláusula para não depender de ID inexistente ("enquanto não houver decisão registrada no `registro-de-decisoes.md`").

---

### R-06 (B) — A proposta de G0 declara `APPROVED` antes da deliberação e deixa a versão ambígua

Linha 7: "Versão Alvo da Baseline: 0.2.0 → 0.2.1 (ou 0.3.0)" — duas versões alvo, nenhuma escolhida. Linhas 81 e 101: a minuta já traz `Estado: APPROVED` no corpo e `APPROVED` na linha de tabela, num documento cujo status declarado é "PRONTA PARA DELIBERAÇÃO HUMANA". Se o proprietário copiar a minuta, o registro nasce aprovado por inércia — o oposto do que exige a regra de gestão de decisões do próprio registro ("Nenhuma decisão aberta pode ser presumida como aprovada").

**Correção:** minuta em `PENDING_APPROVAL`, com versão alvo única, e instrução explícita de que o texto só se torna `APPROVED` após assinatura.

---

## 5. O que a candidata faz bem (para não desequilibrar o parecer)

- §8.4 está tecnicamente correta: 10/10 campos de `CTR-03` na ordem do contrato, com `dependencies` incluído (F5). Este era o defeito `F-01` e está resolvido.
- §17 é byte-idêntica à v1.0.0 (F4). A decisão de não tocar critérios aprovados foi respeitada no arquivo — o problema de R-01 é que `C-03` reinterpreta um critério por fora, não que o texto de §17 tenha sido adulterado.
- A separação de `PROP-01`–`PROP-03` em anexo, fora do corpo normativo, é a decisão correta: reconhece que mudança de significado normativo não cabe em patch corretivo (§16.4, linha 651).
- As limitações `L-01`–`L-07` são honestas quanto à proveniência das fontes externas.

---

## 6. Limitações deste parecer

1. **Revisor único.** Este parecer não substitui a revisão independente exigida por `L-05`. Um segundo revisor, cego a este documento, deve ser designado antes da promoção.
2. **Sem execução.** O método APDF nunca foi executado. Nenhuma afirmação aqui valida que ele funcione; apenas que o texto é ou não é internamente coerente.
3. **Fontes externas não lidas.** Três das oito fontes de A.1 permanecem não verificadas por impossibilidade de acesso autorizado.
4. **Histórico raso.** Dois commits. "Reprodutível no histórico" tem escopo quase nulo.
5. **Não avaliei** a qualidade metodológica do APDF (se as 13 fases são as fases certas). Avaliei consistência, rastreabilidade e integridade probatória. São coisas diferentes.
6. **Árvore de trabalho suja** (19 arquivos de `lote-02-gpt/` deletados, `temp/` não rastreado) — pré-existente, não produzida por esta revisão, não investigada aqui.

---

## 7. Recomendação

**Não promover v1.0.1 no estado atual.** R-01 e R-02 são afirmações falsas ou contraditórias em texto que se propõe a ser normativo; R-04 é falha de proveniência no instrumento que encerra o gate. R-03 e R-05/R-06 são de qualidade probatória — corrigíveis em minutos, mas não devem ser herdadas por um texto normativo.

Sequência mínima sugerida:

1. Corrigir R-01 (opção 1 ou 2), R-02 (opção a ou b), R-03 (opção a), R-05 e R-06 — todas editoriais, sem tocar §17.
2. Recalcular hashes, atualizar `REGISTRO_ALTERACOES_APDF.md` e `MATRIZ_CONFORMIDADE_APDF.md` com o resultado real de cada verificação.
3. Designar segundo revisor para `L-05`.
4. Só então deliberar promoção (`DH-10` → decisão `DEC-*` registrada).

Sobre G0: R-04 não impede o encerramento, mas impede que ele seja registrado como "critérios previamente aprovados atendidos". A opção 1 (duas decisões) é a que preserva o registro.

---

## 8. O que mudaria este parecer

- Se o proprietário declarar que a linha 158 não pretende descrever cardinalidade estrita, R-01 cai para (B) — mas a reinterpretação de `CA-APDF-01` continua exigindo decisão.
- Se `REABERTO` for definido como estado persistente em decisão registrada, R-02 cai para (B) e resta harmonizar §7.1.
- Se os critérios `CA-G0-*` forem aprovados em decisão anterior a este parecer, R-04 perde o objeto.
- R-03 já foi rebaixada por autocorreção (§4.1); se a nota `F-02` citar `resultado-fase-a.md`, o achado se encerra.

Nenhuma dessas condições foi observada no estado atual do repositório em `205bc59`.
