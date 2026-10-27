# Registro de alterações do APDF

**ID:** REG-APDF-ALT-001
**Versão:** 1.1.0
**Data:** 2026-10-26 (seções 1–9) / 2026-10-27 (seções 10–11 e retificações)
**Executor:** DeepSeek V4.1 Flash (agente), sessão OpenCode
**Repositório:** `1305RGP/PDI`, branch `main`, `HEAD` `205bc590a0f8063a6a47afe8e02ef029c205b650`
**Documento de origem:** `docs/01-metodologia/APDF_V01.md` — v1.0.0, `APPROVED` por `DEC-007`, SHA-256 `DC68ED05…D07AE`
**Documento resultante:** `docs/01-metodologia/APDF_V01.md` — v1.0.1, promovida por `DEC-009`, escopo fixado por `DEC-010`, SHA-256 `7AE2D87B9709D05A8EF6AE2359D34DFA789E75E586A171524FA3C6EA268FBCEF`
**Estado do patch:** `APPROVED` quanto ao escopo (`DEC-010`); leitura literal do texto pelo proprietário pendente (`PEND-08`)
**Revisão independente:** não realizada (`L-05`)

> **Nota de leitura (2026-10-27).** As seções 1 a 9 foram escritas em 2026-10-26, quando a `1.0.1` era apenas uma cópia candidata em `temp/`. Elas foram **preservadas como registro histórico** e retificadas pontualmente onde afirmavam fato que a promoção de 2026-10-27 tornou falso. O estado final está nas seções 10 e 11. Este arquivo é registro de trabalho em `temp/`; **não** é artefato normativo e **não** integra as 27 entradas do `MANIFESTO-SHA256.md`.

---

## 1. Identificação da comparação

| Item | Valor |
|---|---|
| Comando | `git --no-pager diff --no-index --unified=1 docs/01-metodologia/APDF_V01.md temp/APDF_V01_CORRIGIDA_CANDIDATA.md` |
| Resultado | 19 hunks, **126 inserções**, **25 deleções** |
| Linhas | 674 → **775** |
| Bytes | — → **46.821** |
| SHA-256 da candidata | `21B9718C3A4B42BCDFC77884D2D01735D4B17F081A43BDD77DEE3329BD08B81B` |
| SHA-256 da v1.0.0 | `DC68ED05…D07AE` (valor integral já registrado em `temp/MATRIZ_CONFORMIDADE_APDF.md`) |
| Seções com alteração | Cabeçalho, §6, §7.1, §7.3, §8.4, §11.2, §11.4 (nova), §15.5 (nova), §16.3, §16.4, A.1, A.2, Anexo C (novo) |
| Seções sem alteração | §1–§5, fichas das 13 fases, §9, §10, §11.1, §11.3, §12, §13, §14, §15.1–§15.4, **§17 inteira** |

**Fatos verificados.**
- As 13 fichas de fase mantêm títulos, pergunta central, ação, artefatos e gate idênticos à v1.0.0 (`FASES_IDENTICAS=true`).
- Os 12 critérios `CA-APDF-01`..`CA-APDF-12` são idênticos à v1.0.0 (`CA_IDENTICOS=true`).
- O diff não inclui nenhum arquivo fora de `temp/`; `git diff --stat -- docs specs tests MANIFESTO-SHA256.md README.md` está vazio.

**Inferência declarada.** O diff foi calculado sobre os bytes em disco. O Git emitiu aviso de conversão LF→CRLF no checkout; o aviso não altera o conteúdo, e os hashes foram calculados com `Get-FileHash` sobre os arquivos efetivos.

---

## 2. Como ler este registro

Cada alteração recebe três classificações independentes:

| Dimensão | Valores | Significado |
|---|---|---|
| Natureza | **Editorial** | Corrige texto, referência ou nomenclatura sem mudar regra. |
| | **Consistência** | Alinha o padrão a exigência já vigente em contrato ou a outra seção do próprio APDF. |
| | **Governança** | Afeta controle de versão, proveniência ou estado do documento. |
| | **Verificação** | Nenhum texto alterado; achado não se confirmou. |
| Aplicação | **Aplicada** | Presente na candidata. |
| | **Já conforme** | Verificado e nenhuma alteração necessária. |
| | **Não aplicada** | Isolada como proposta; depende de decisão humana. |
| Alcance | **Aditivo** | Não remove regra existente. |
| | **Substituição local** | Reescreve uma linha ou tabela sem afetar o restante da seção. |

Aprovadas para a `1.0.1`, as seis correções não introduzem obrigação normativa nova: duas substituem texto existente (`C-02`, substituição local de dois hashes; `C-03`, parágrafo explicativo) e quatro são aditivas ou apenas de verificação. As cinco diferidas para a `1.1.0` (`C-01`, `C-05`, `C-06`, `C-07`, `C-11`) **criariam** obrigação nova e por isso não integram o patch.

---

## 3. Quadro-resumo

| ID | Achado de origem | Seção | Natureza | Estado | Efeito para o consumidor |
|---|---|---|---|---|---|
| `C-01` | `F-01` | §8.4 | Consistência | **Diferida para `1.1.0`** | Nenhum nesta versão; texto de §8.4 permanece o da v1.0.0. |
| `C-02` | `F-02` | A.1, §16.3 | Governança | Aplicada na `1.0.1` | Dois hashes passam a ser reproduzíveis; original preservado em nota. |
| `C-03` | `F-04` | §6 | Editorial | Aplicada na `1.0.1` | Rótulo variável do 2º campo deixa de parecer inconsistência. |
| `C-04` | `F-05` | A.2 | Editorial | Aplicada na `1.0.1` | Origem do ciclo de 6 passos fica explícita (`MET-CICLO-001`). |
| `C-05` | `F-06` | §7.1 | Consistência | **Diferida para `1.1.0`** | Nenhum nesta versão; o gate volta ao conjunto de campos da v1.0.0. |
| `C-06` | `F-07` | §15.5 | Consistência | **Diferida para `1.1.0`** | Nenhum nesta versão; §15.5 não existe na `1.0.1`. |
| `C-07` | `F-09` | §11.2, §11.4 | Consistência | **Diferida para `1.1.0`** | Nenhum nesta versão; §11.2 e §11.4 permanecem como na v1.0.0. |
| `C-08` | `F-10` | Fase 12 | Verificação | Já conforme | Nenhum. |
| `C-09` | `F-11` | Fase 13 | Verificação | Já conforme | Nenhum. |
| `C-10` | `F-13` | Cabeçalho, A.1, A.2, §16.3, §16.4 | Governança | Aplicada na `1.0.1` | Documento declara sua regra de versão e a proveniência das fontes. |
| `C-11` | `F-14` | §7.3 | Consistência | **Diferida para `1.1.0`** | Nenhum nesta versão; §7.3 permanece o texto da v1.0.0. |
| `PROP-01` | `F-03` | §7.2 / `RG-01` | Normativa | Não aplicada (`Anexo C.3`) | Nenhum; proposta isolada. |
| `PROP-02` | `F-08` | §15.1/§15.4 | Normativa | Não aplicada (`Anexo C.3`) | Nenhum; proposta isolada. |
| `PROP-03` | `F-12` | §4.1/§4.2 | Normativa | Não aplicada (`Anexo C.3`) | Nenhum; proposta isolada. |
| `B-01` | `D-15` | `REV-APDF-PROP-001` | Governança | Não aplicada (`Anexo C.3`) | Nenhum; parecer antigo permanece sem errata. |

**Nota sobre o recorte (`DEC-010`).** O quadro acima descreve as onze correções levantadas na revisão. Apenas seis foram incorporadas à `1.0.1`: `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10`. As cinco restantes — `C-01`, `C-05`, `C-06`, `C-07` e `C-11` — alteram conteúdo normativo (campo obrigatório novo, seção normativa nova, semântica de estado do gate) e foram diferidas para a `1.1.0`, com entrada própria no Anexo C.2 do padrão e na lacuna `L-08`. Os detalhes das seções 4 continuam válidos como **proposta** dessas cinco correções, não como texto vigente.

**Mapa dos identificadores.** `F-01`..`F-05` vêm do relatório anterior. `F-06`..`F-14` foram criados nesta rodada e estão descritos com evidência textual em `temp/ENTREGA_INTEGRAL_DEEPSEEK_APDF.md`. `C-01`..`C-11` são as correções; `PROP-01`..`PROP-03` e `B-01` são as propostas bloqueadas.

---

## 4. Registro detalhado

> **Aviso de vigência (2026-10-27).** As fichas de `C-01`, `C-05`, `C-06`, `C-07` e `C-11` descrevem texto **não incorporado** à `1.0.1`. Elas foram mantidas integralmente porque documentam a proposta, o motivo e o rollback da futura `1.1.0`; o Anexo C.2 do padrão é a referência normativa dessa pendência. As fichas de `C-02`, `C-03`, `C-04` e `C-10` descrevem texto vigente, com as ressalvas das seções 10 e 11.

### C-01 — `dependencies` no checkpoint Anti-Surto

| Campo | Conteúdo |
|---|---|
| **Seção** | §8.4 (linhas 374–398 da candidata) |
| **Natureza** | Correção de consistência |
| **Fonte** | `docs/02-contratos/contrato-03-harness.md`, "Contexto operacional mínimo" (10 campos) |
| **Achado** | `F-01` — o checkpoint listava 9 dos 10 campos do `CTR-03`; `dependencies` estava ausente. |

**Antes.** Tabela de três colunas (`Campo`, `Obrigatório`, `Origem`), 16 linhas, sem `dependencies`. A coluna `Origem` misturava `CTR-03` com descrições de domínio (`DENTRO`, `ESCLARECIMENTO`, `CORRECAO`, `EXPANSAO`; `T-01 a T-10`), o que impedia distinguir campo de contrato de extensão local.

**Depois.**
- Linha `| \`dependencies\` | Sim | CTR-03 | — |` inserida na posição do contrato (após `acceptance_criteria`).
- Tabela convertida para quatro colunas: `Campo | Obrigatório | Origem | Valores admitidos`.
- `Origem` passou a dizer `CTR-03` nos dez primeiros campos e `Extensão local` nos sete restantes (`scope_classification`, `trigger`, `impact`, `affected_artifacts`, `proposed_option`, `authorizer`, `timestamp`).
- Nota final acrescentada: os dez campos do `CTR-03` "não podem ser renomeados, omitidos ou substituídos"; os demais são extensão local.

**Motivo.** `CTR-03` define contexto mínimo obrigatório; `CA-APDF-07` exige que o checkpoint use os campos do contrato "sem substituí-los". A ausência de `dependencies` era não conformidade objetiva e apagava a dependência entre pacotes no registro de checkpoint.

**Impacto.** Aumenta o custo de registro em um campo por checkpoint. Nenhum campo existente foi removido; `scope_classification` e os demais continuam obrigatórios ou condicionais como antes.

**Compatibilidade.** Aditiva para consumidores; a tabela ganhou coluna, então eventual parser posicional precisa passar a ler por cabeçalho. Nenhuma fase, gate ou critério de aceite muda.

**Validação.** `CTR03_8.4=10` (contagem restrita à subseção); `CA-APDF-07` verificado; ver `V-03` na matriz.

**Rollback.** Reverter §8.4 ao bloco de 16 linhas e três colunas da v1.0.0. Sem efeito colateral fora da seção.

---

### C-02 — Hashes não reproduzíveis no Anexo A.1

| Campo | Conteúdo |
|---|---|
| **Seção** | A.1 (linhas 680–689), §16.3 (linha 644) |
| **Natureza** | Correção de governança |
| **Fonte** | `MANIFESTO-SHA256.md` (27 hashes válidos) e recálculo direto dos arquivos |
| **Achado** | `F-02` — dois hashes da v1.0.0 não correspondem a nenhum objeto atual nem ao histórico Git. |

**Antes.**

| Fonte | Hash na v1.0.0 | Reproduz? |
|---|---|---|
| `apdf.md` | `DB5FBF1EC16C329EB8C8E0435EB317BBD7AB2D460539B847D08DE489DA28CB15` | Não |
| `ciclo-apdf.md` | `75CF2E28E9579463A7F2F1210DC37A4D0FF0D90BAE257E9FE023E8704259E612` | Não |

**Depois.**

| Fonte | Hash na candidata | Como foi obtido |
|---|---|---|
| `apdf.md` | `7E0E97E99BBE444F32C6A486F0294EE121B89C829E5B7DE675DE48E3D1B1D8A5` | `Get-FileHash -Algorithm SHA256` |
| `ciclo-apdf.md` | `B08F9B0C014A67F96330F7DE48BFBD5AE89A4200FB2B75FDBF11A2EA05C5416E` | `Get-FileHash -Algorithm SHA256` |

Além da troca, foram acrescentados:
- nota `F-02` logo após a tabela, preservando os dois hashes originais como registro histórico e explicando que `git cat-file -e` falha para ambos;
- marcador `SUPERSEDED` na linha de `apdf.md`;
- limitação `L-06` em §16.3.

**Motivo.** Proveniência com hash inválido impede reprodução e auditoria. `CTR-05` exige reprodutibilidade lógica; `CA-APDF-11` exige proveniência e lacunas documentadas.
**Causa da divergência — ALEGAÇÃO RETIRADA.** A versão original deste registro afirmava que `apdf.md` e `ciclo-apdf.md` seriam "byte-idênticos ao commit `9f85961`" e que, "portanto", os hashes da v1.0.0 divergiriam desde a autoria. **Essa conclusão não se sustenta.** O comando `git cat-file -e` com o hash de blob não é prova de identidade entre commits e a verificação foi executada de forma que não distingue "objeto ausente" de "objeto presente com conteúdo diferente"; a prova foi considerada inválida na revisão crítica de 2026-10-27. O que se pode afirmar, com evidência direta (comparação de bytes entre `9f85961` e a árvore de trabalho): os dois arquivos **hoje** têm o conteúdo do commit `9f85961` e os valores impressos na v1.0.0 **não** correspondem a esse conteúdo nem a nenhum objeto alcançável no histórico; a origem e o momento exato da divergência permanecem **não determinados** e estão registrados como lacuna `L-06`. A correção em si — substituir os valores não reproduzíveis pelos hashes correntes — permanece válida e verificada.

**Compatibilidade.** Substituição local de dois valores; o restante do Anexo A.1 permanece idêntico. Nenhuma regra muda.

**Validação.** `A1=8 hashes`, todos recalculados e conferidos (`V-04`); manifesto do repositório revalidado em 27/27 (`V-01`).

**Rollback.** Restaurar os dois valores antigos e remover a nota e `L-06`; nesse caso, `F-02` volta a ficar aberto.

---

### C-03 — Rótulos heterogêneos nas fichas de fase

| Campo | Conteúdo |
|---|---|
| **Seção** | §6, imediatamente antes da Fase 01 (linha 158) |
| **Natureza** | Correção editorial |
| **Fonte** | §6 e §17 (`CA-APDF-01`) |
| **Achado** | `F-04` — 9 fases usam "Elicitar"; 4 usam "Formalizar", "Definir", "Empacotar" e "Entregar". |

**Antes.** Nove fichas com `**Elicitar:**` e quatro com outro verbo, sem explicação. Um leitor poderia interpretar como campo ausente ou fase incompleta.

**Depois.** Parágrafo "Regra de leitura das fichas" declarando que cada ficha tem quatro campos fixos e que o segundo campo nomeia a ação predominante da fase; a variação é intencional e `CA-APDF-01` verifica presença e conteúdo, não uniformidade do rótulo.

**Motivo.** Eliminar falso positivo de conformidade sem renomear 13 fichas e sem alterar o sentido de cada fase.

**Impacto.** Nenhum no conteúdo das fases. Reduz ambiguidade para revisores e para automação de leitura.

**Compatibilidade.** Aditiva; nenhuma ficha foi editada.

**Validação.** `PERGUNTA=13`, `ACAO=13`, `ARTEFATOS=13`, `GATE=13` (`V-02`); títulos idênticos à v1.0.0 (`V-06`).

**Rollback.** Remover o parágrafo; as fichas continuam como na v1.0.0.

---

### C-04 — Origem do ciclo de execução

| Campo | Conteúdo |
|---|---|
| **Seção** | A.2 (linha 711) |
| **Natureza** | Correção de rastreabilidade |
| **Fonte** | `docs/01-metodologia/ciclo-apdf.md` (`MET-CICLO-001`) |
| **Achado** | `F-05` — o ciclo de 6 passos aparecia sem linha de adaptação que justificasse a origem. |

**Antes.** A.2 terminava em `AD-14`; nenhuma linha atribuía o ciclo a uma fonte.

**Depois.** Linha `AD-15` registrando que o ciclo foi incorporado de `MET-CICLO-001` e **não** das fontes candidatas, porque nem `APDF.md` nem `ORQUESTRADOR_APDF.md` o definem.

**Motivo.** `CTR-05` exige rastreabilidade de origem; sem `AD-15`, o ciclo poderia ser atribuído incorretamente às fontes externas.

**Impacto.** Corrige a atribuição, sem alterar o texto do §12.

**Compatibilidade.** Aditiva; apenas metadado de proveniência.

**Validação.** Referência `MET-CICLO-001` resolve para o arquivo existente (`B08F9B0C…416E`).

**Rollback.** Remover `AD-15`; o ciclo permanece no §12 sem linha de origem.

---

### C-05 — Justificativa explícita no gate

| Campo | Conteúdo |
|---|---|
| **Seção** | §7.1 (linha 322) |
| **Natureza** | Correção de consistência |
| **Fonte** | `contrato-01-governanca.md`, requisito 5 |
| **Achado** | `F-06` — o conteúdo obrigatório do gate listava decisor e data, mas não `justification`; o contrato exige justificativa. |

**Antes.** Tabela do gate com `decision`, `conditions` e demais campos, sem linha de justificativa.

**Depois.** Linha `| \`justification\` | Justificativa da decisão, referida ao artefato e à versão (\`CTR-01\`, requisito 5). |`.

**Motivo.** Aprovação sem justificativa registrada não satisfaz `CTR-01` e enfraquece `CA-APDF-04`.

**Impacto.** Todo gate passa a exigir um campo adicional. Gates já registrados não são reabertos retroativamente por este documento.

**Compatibilidade.** Aditiva para o registro; `decision` e `conditions` permanecem.

**Validação.** Conferido contra `CTR-01` requisito 5; não há critério novo em §17 (`CA-APDF-04` já exige registro com decisor e data).

**Rollback.** Remover a linha; o gate volta ao conjunto anterior, mantendo a não conformidade com `CTR-01`.

---

### C-06 — Loops e recuperação

| Campo | Conteúdo |
|---|---|
| **Seção** | §15.5, nova (linhas 605–615) |
| **Natureza** | Correção de consistência |
| **Fonte** | `contrato-03-harness.md`, seção "Loops e recuperação" |
| **Achado** | `F-07` — o APDF não tratava repetição improdutiva, oscilação, regressão e consumo anormal, embora o `CTR-03` os vincule. |

**Antes.** §15 terminava em §15.4 (registro por fase); nenhuma regra de interrupção ou recuperação.

**Depois.** Subseção com cinco comandos:
1. limites de tempo, iterações, tokens e chamadas são configuráveis por tarefa e risco, e o valor concreto pertence ao contexto operacional, não ao padrão;
2. ao atingir o limite, interromper, salvar estado, diffs, logs e evidências;
3. nova tentativa exige hipótese diferente e justificada;
4. sem recuperação segura, escalar para humano;
5. `BLOCKED` ou interrompido não pode ser reportado como concluído (`CA-03-07`).

Fecha com a ressalva de que a interrupção não revoga o gate nem autoriza mudança de escopo — se houver desvio, aplica-se a seção 8.

**Motivo.** `CTR-03` exige detecção e interrupção; `CTR-04` exige recuperação com hipótese nova. Sem texto local, o APDF não era verificável nesse ponto.

**Impacto.** Cria obrigação de parada e de preservação de evidências. Não fixa números, o que evita conflito com configuração de harness.

**Compatibilidade.** Aditiva; nenhuma fase ou gate é alterado. Consumidores que não previam interrupção passam a ter regra explícita.

**Validação.** `CA-03-05`, `CA-03-06`, `CA-03-07` e `CTR-04.8` cobertos (`V-08` quanto a estrutura).

**Rollback.** Remover §15.5; o contrato continua aplicável, mas o APDF volta a não explicitar a regra.

---

### C-07 — Handoff: correspondência com as listas de origem

| Campo | Conteúdo |
|---|---|
| **Seção** | §11.2 (linhas 474, 479, 486), §11.4 nova (linhas 492–503) |
| **Natureza** | Correção de consistência |
| **Fonte** | `APDF.md` Fase 13; `apdf.md` v0.1.0 §4; `CTR-01`; `CTR-05` |
| **Achado** | `F-09` — o conteúdo mínimo do handoff não cobria "dependências" nem "modelo de governança" e não mostrava correspondência com as duas listas de origem. |

**Antes.** Lista de §11.2 com baseline, ADR Registry, roadmap, pacotes, critérios de aceite, riscos e permissões; nenhuma menção a dependências ou modelo de governança; nenhum mapa de origem.

**Depois.**
- `- dependências entre pacotes e de ambiente (\`CTR-03\`);`
- `- modelo de governança e quality gates (Fase 11);`
- parágrafo declarando que a lista consolida duas origens e que questões abertas, referências de evidência e próximo passo autorizado são extensão local exigida por `CTR-01` e `CTR-05`;
- §11.4 com tabela de 11 linhas mapeando cada item de `APDF.md` Fase 13 (4 itens) e de `apdf.md` v0.1.0 §4 (6 itens) para §11.2, mais a linha de extensão local.

**Motivo.** `CA-APDF-08` exige cinco confirmações e conteúdo mínimo; itens das fontes estavam sem destino e a lista não era auditável.

**Impacto.** Handoff passa a exigir dois itens adicionais e uma tabela de correspondência. Nenhum item anterior foi removido.

**Compatibilidade.** Aditiva. A tabela §11.4 é referência, não novo gate.

**Validação.** Tabela com 11 linhas; todos os itens das duas listas têm destino (`V-08`); `CA-APDF-08` verificado.

**Rollback.** Remover os dois itens, o parágrafo e §11.4.

---

### C-08 — Fase 12 e dependências (achado não confirmado)

| Campo | Conteúdo |
|---|---|
| **Seção** | Fase 12 |
| **Natureza** | Verificação |
| **Achado** | `F-10` — suspeita de que a Fase 12 não declarava dependências. |

**Antes/depois.** Nenhuma alteração. A Fase 12 da v1.0.0 já enuncia "dependências" na ação da fase (empacotamento por wave).

**Motivo do registro.** O achado anterior não se sustentou contra o texto vigente. Registrar a verificação evita que o item seja reaberto sem evidência nova.

**Impacto.** Nenhum.

**Validação.** Leitura da ficha da Fase 12 na v1.0.0 e na candidata; trecho idêntico.

---

### C-09 — Fase 13 e modelo de governança (achado não confirmado)

| Campo | Conteúdo |
|---|---|
| **Seção** | Fase 13 |
| **Natureza** | Verificação |
| **Achado** | `F-11` — suspeita de que a Fase 13 não listava o modelo de governança. |

**Antes/depois.** Nenhuma alteração. A Fase 13 da v1.0.0 já lista "modelo de governança" entre as entregas.

**Motivo do registro.** Mesmo motivo de `C-08`: o achado não se confirmou.

**Impacto.** Nenhum.

**Validação.** Leitura da ficha da Fase 13 nas duas versões; trecho idêntico.

---

### C-10 — Metadados das fontes e identidade da candidata

| Campo | Conteúdo |
|---|---|
| **Seção** | Cabeçalho (linhas 5, 6, 11, 15), A.1 (linha 691), A.2 (linha 706), §16.3 (linha 645), §16.4 (linha 651) |
| **Natureza** | Correção de governança |
| **Fonte** | `CTR-01` (identidade e versão), `CTR-05` (reprodutibilidade), `DEC-007` |
| **Achado** | `F-13` — fontes candidatas sem versão, data, autor, custódia ou autoridade; documento sem regra que impedisse a cópia de ser lida como norma. |

**Antes.**
- Cabeçalho: `Versão: 1.0.0 (APDF_V01)` e `Estado: APPROVED — designado padrão em DEC-007`.
- Nenhum aviso de que se tratava de cópia.
- A.1 sem nota sobre ausência de metadados das fontes externas.
- §16.3 sem `L-07`.
- `AD-10` dizia apenas "TPM tratado como extensão condicional".
- §16.4 sem regra específica para a candidata 1.0.1.

**Depois.**
- `Versão: 1.0.1 (candidata corretiva — não promovida)`.
- `Estado: PENDING_APPROVAL — candidata; a versão vigente continua sendo 1.0.0, APPROVED por DEC-007`.
- Histórico explicitando que a 1.0.1 **não** foi aprovada, não está em `DEC` e não foi promovida.
- Banner: "Documento candidato — não normativo", com remissão a `DH-10` e aviso de que `PROP-01` a `PROP-03` não foram aplicadas.
- Nota `F-13` em A.1: as três fontes externas não declaram versão, data, autor, custódia ou autoridade; a única identidade é caminho + SHA-256.
- `L-07` em §16.3.
- `AD-10` explicitando o gatilho: menção do usuário ou presença de `.tpm/`; nenhuma execução implícita.
- Nota em §16.4 declarando a 1.0.1 como patch corretivo candidato e reafirmando que a v1.0.0 permanece o único texto normativo.

**Motivo.** Uma cópia de trabalho com o mesmo cabeçalho da norma pode ser citada como se fosse baseline. `CTR-01` exige identidade e estado; `CTR-05` exige que a baseline usada seja identificável.

**Impacto.** A candidata deixa de ser confundível com a v1.0.0. O cabeçalho passa a apontar `PENDING_APPROVAL`, o que impede uso como baseline sem decisão registrada.

**Compatibilidade.** Editorial para o conteúdo; de governança para o estado. Nenhuma fase, gate ou critério muda.

**Validação.** `CA-APDF-09` e `CA-APDF-11` verificados; `L-07` presente; `A.1` com oito hashes (`V-04`).

**Rollback.** Restaurar o cabeçalho da v1.0.0 e remover banner, nota, `L-07`, ajuste de `AD-10` e nota de §16.4. O risco de confusão com a baseline volta.

**Nota de escopo.** O cabeçalho e o banner passaram a ser atribuídos a `C-10` na linha do Anexo C; antes, a linha descrevia apenas as notas. A ampliação evita lacuna de rastreabilidade sem criar novo identificador.

---

### C-11 — Transições do gate (`REABERTO`)

| Campo | Conteúdo |
|---|---|
| **Seção** | §7.3 (linhas 338–340) |
| **Natureza** | Correção de consistência |
| **Fonte** | §9 (opção `D-03`) e §10 (`CF-03`) |
| **Achado** | `F-14` — `REABERTO` aparecia como transição a partir de `PENDENTE`, mas §9 e §10 reabrem gate **já decidido**. |

**Antes.** `PENDENTE → APROVADO | REJEITADO | REABERTO.`

**Depois.**
- Diagrama completo: `PENDENTE → APROVADO | REJEITADO` e `(APROVADO | REJEITADO) → REABERTO → APROVADO | REJEITADO`.
- Definição formal: `REABERTO` é estado persistente e bloqueante, não terminal. Um gate previamente decidido (`APROVADO` ou `REJEITADO`) transita formalmente para `REABERTO` quando há alteração material de artefato pós-aprovação (§7.2), solicitação formal de reabertura (§9 `D-03`) ou reavaliação de conformidade (§10 `CF-03`). Enquanto estiver em `REABERTO`, o avanço à fase seguinte é estritamente bloqueado. A saída do estado `REABERTO` ocorre exclusivamente por nova deliberação formal registrada de `APROVADO` ou `REJEITADO`.

**Motivo.** Eliminar contradições internas em §7.3 e harmonizar com §7.1: `REABERTO` é formalmente modelado como um estado persistente que bloqueia o avanço até nova decisão registrada, com transições explícitas de entrada e saída.

**Impacto.** Nenhum gate em andamento muda de estado; a regra passa a descrever corretamente o ciclo. `REABERTO` continua existindo como estado registrado.

**Compatibilidade.** Substituição local de uma linha; o restante de §7.3 permanece. Consumidores que liam a linha antiga passam a ter duas transições separadas.

**Validação.** Coerência com §9 e §10 verificada por leitura cruzada; não há critério novo em §17.

**Rollback.** Restaurar a linha única; a contradição com §9/§10 retorna.

**Desvio de plano.** `F-14` não estava na lista `F-01`..`F-05` nem no plano inicial; foi identificado nesta rodada ao comparar §7.3 com §9 e §10. Está declarado no Anexo C da candidata.

---

## 5. Propostas não aplicadas

Nenhuma destas alterações foi incorporada ao texto. Todas exigiriam mudança de significado normativo ou escolha entre alternativas legítimas. Os identificadores `PROP-01`..`PROP-03` evitam colisão com os princípios `P-01`..`P-12` da §3.

| ID | Achado | Proposta | Bloqueio | Alternativas | Estado |
|---|---|---|---|---|---|
| `PROP-01` | `F-03` — pergunta de reancoragem antes de cada gate não textualizada | Acrescentar pergunta bloqueante em §7.2 ou como `RG-01.d` | `DH-12` | (a) acrescentar; (b) declarar coberta pelo checkpoint §8.4 e revisar o critério `C-07` do relatório | `PROPOSED` |
| `PROP-02` | `F-08` — registro explícito das quatro respostas iniciais | Campo dedicado ou frase de obrigação em §15.1/§15.4 | Decisão de mérito | (a) campo; (b) frase sem novo campo | `PROPOSED` |
| `PROP-03` | `F-12` — 3 perguntas por rodada versus 4 iniciais | Clarificar se a abertura conta no limite | Decisão de mérito (sem `DH` atribuído) | (a) exceção na abertura; (b) duas rodadas; (c) elevar o limite | `PROPOSED` |
| `B-01` | `D-15` — parecer `REV-APDF-PROP-001` com citações imprecisas | Errata, adendo ou marca de retirada | `DH-11` | (a) errata; (b) nova versão; (c) marca de "histórico" | `BLOCKED` |

**Por que `PROP-01` não foi aplicada.** A exigência de "pergunta de reancoragem" vem do critério `C-07` do relatório `temp/resultado-DEEPSEEK-apdf-rastreabilidade-v2.md`, não de fonte normativa do Núcleo. Aplicá-la sem decisão seria mudança de método disfarçada de correção editorial.

**Por que `B-01` não foi aplicada.** Alterar um parecer registrado exige autoridade sobre o registro documental. O agente não edita o próprio parecer para corrigi-lo.

---

## 6. Itens verificados sem alteração

| Item | Verificação | Resultado |
|---|---|---|
| §17 — `CA-APDF-01`..`CA-APDF-12` | Comparação linha a linha com a v1.0.0 | Idênticos; nenhum critério foi criado, removido ou reescrito |
| Títulos das 13 fases | Comparação com a v1.0.0 | Idênticos |
| Pergunta central, ação, artefatos e gate das 13 fases | Contagem e leitura | 13/13 presentes e iguais |
| §9 — gatilhos e opções `D-01`..`D-03` | Leitura | Sem alteração |
| §10 — `CF-01`..`CF-06` | Leitura | Sem alteração |
| §12 — ciclo de 6 passos | Leitura | Sem alteração de texto; origem registrada em `AD-15` |
| §13 — TPM | Leitura | Sem alteração de texto; gatilho explicitado em `AD-10` |
| §14 — instruções por ferramenta | Leitura | Sem alteração |
| `MANIFESTO-SHA256.md` | Recálculo em 2026-10-26 | 27/27 conferiam **antes** das edições de 2026-10-27; o arquivo foi depois efetivamente alterado (ver seção 11) |
| `docs/`, `specs/`, `tests/`, `README.md` | `git diff --stat` | Sem alteração |

---

## 7. Compatibilidade e transição

### 7.1 O que muda para quem consome o APDF

| Consumidor | Efeito | Ação necessária |
|---|---|---|
| Agente que executa o método | Nenhuma mudança de campo ou de regra de parada nesta versão; `dependencies` e `justification` seguem ausentes até a `1.1.0` | Nenhuma |
| Autor de gate | Inalterado; `justification` não é exigido pela `1.0.1` | Nenhuma |
| Revisor de handoff | Lista de §11.2 inalterada | Nenhuma |
| Ferramenta que lê o checkpoint | Tabela de §8.4 inalterada (três colunas, 16 linhas) | Nenhuma |
| Citador da baseline | A `1.0.1` é baseline vigente desde `DEC-009`, com escopo de `DEC-010` | Citar `1.0.1` e, para as cinco correções pendentes, citar `1.1.0` como futura |
| Revisor de proveniência | Dois hashes mudaram; originais preservados em nota; origem da divergência não determinada (`L-06`) | Usar os hashes correntes do A.1 |
| Leitor do cabeçalho | Deixa de existir o banner de "documento candidato" | Ler versão, estado e histórico de aprovação do cabeçalho |

### 7.2 Classificação de versão

A versão publicada é **patch corretivo** (`1.0.0` → `1.0.1`), pelos seguintes motivos:
- não altera fases, sequência, gates nem critérios de aceite;
- não cria nem remove obrigação de produto;
- corrige exatidão, completude e rastreabilidade;
- mantém `CA-APDF-01`..`CA-APDF-12` intactos.

O recorte de `DEC-010` foi o que permitiu manter essa classificação: a versão originalmente promovida em `DEC-009` continha cinco mudanças que criavam obrigação nova e, por isso, não cabiam em `1.0.1` sob §16.4.

### 7.3 Transição

A transição foi executada em 2026-10-27:

1. Revisão crítica realizada pelos pareceres `temp/REVISAO_CRITICA_APDF_V101.md`, `temp/DOSSIE_DECISAO_HUMANA.md` e `temp/VALIDACAO_ESTADO_PROMOVIDO.md`; revisão **independente** continua não realizada (`L-05`).
2. Decisão sobre `PROP-01`..`PROP-03` e `B-01` — **não tomada**; permanecem no Anexo C.3.
3. Decisão registrada de promoção — `DEC-009`, com escopo restringido por `DEC-010`.
4. `docs/01-metodologia/APDF_V01.md` substituído pela `1.0.1`; a v1.0.0 foi preservada em `temp/_BACKUP_APDF_V01_v100_HEAD.md` (`DC68ED05…4D07AE`) e no histórico Git.
5. `MANIFESTO-SHA256.md`, `CHANGELOG.md`, `README.md`, `registro-de-decisoes.md` e `temp/estado-atual.md` atualizados.

A `1.0.1` é a baseline vigente. Permanecem abertos: leitura literal do texto pelo proprietário (`PEND-08`), redação do `DEC-010` (`PEND-08`) e a `1.1.0` (`PEND-07`).

---

## 8. Rastreabilidade de reversão

| Cenário | Procedimento | Efeito |
|---|---|---|
| Reverter o recorte (voltar às onze correções) | Reaplicar as seções 4 deste registro ao arquivo e emitir decisão própria | Exigiria reclassificar a versão como `1.1.0`; não é reversão, é nova decisão |
| Reverter uma correção isolada da `1.0.1` | Aplicar o rollback descrito na ficha da correção | Retorna ao texto da v1.0.0 naquele trecho |
| Reverter tudo | Copiar `temp/_BACKUP_APDF_V01_v100_HEAD.md` sobre o padrão, recomputar manifesto e registrar decisão | Padrão volta a `1.0.0`; `F-02`, `F-04`, `F-05`, `F-10`, `F-11`, `F-13` reabrem |
| Reverter o estado de governança | Reverter `DEC-009`/`DEC-010` — vedado por reescrita de decisão aprovada; exige decisão nova que as substitua | Histórico permanece; nova decisão passa a vigorar |

**Nada foi apagado.** A v1.0.0 está preservada em `temp/_BACKUP_APDF_V01_v100_HEAD.md` e em `9f85961`; a v0.1.0 continua em `docs/01-metodologia/apdf.md` com estado `SUPERSEDED`; a candidata congelada de revisão está em `temp/APDF_V01_CANDIDATA_FROZEN_1768990D.md`.

---

## 9. Validações deste registro

| Verificação | Método | Resultado |
|---|---|---|
| Contagem do diff (candidata original, 2026-10-26) | `git diff --no-index --stat` | 19 hunks; 126 inserções; 25 deleções |
| Integridade da candidata original | `Get-FileHash` / `Get-Item` | `21B9718C…B81B`; 46.821 bytes; 775 linhas |
| Seções alteradas localizadas | busca por âncoras | todas as linhas citadas existiam na candidata |
| §17 inalterada | comparação de texto | 12/12 idênticos |
| Fases inalteradas | contagem e comparação | 13/13 idênticas |
| Escopo | `git status --porcelain` | apenas `temp/` e deleções pré-existentes de `lote-02-gpt/` |
| Manifesto (2026-10-26) | recálculo | 27/27 |
| Diff da `1.0.1` publicada vs v1.0.0 (2026-10-27) | `git diff --no-index -U1` | **9 hunks; 76 inserções; 7 deleções**; nenhum hunk fora dos previstos |
| §17 da `1.0.1` vs v1.0.0 | comparação literal dos blocos extraídos | `IDENTICO: True` |
| Manifesto após a promoção e o recorte | recálculo | **27/27** (ver seção 11) |

**Não executado.** Revisão independente, lint de Markdown, renderização, comparação com `APDF(1).md` e execução do método por um agente — todos `NOT_RUN`, conforme `N-01`..`N-07` da matriz.

---

## 10. Fechamento

| Item | Estado | Evidência | Próximo responsável |
|---|---|---|---|
| `C-02`, `C-03`, `C-04`, `C-08`, `C-09`, `C-10` | `DONE` — incorporadas na `1.0.1` | 9 hunks verificados; §17 idêntica; Anexo C.1 | Revisor humano (`PEND-08`) |
| `C-01`, `C-05`, `C-06`, `C-07`, `C-11` | `DEFERRED` para a `1.1.0` | Anexo C.2 e `L-08` | Proprietário humano (`PEND-07`) |
| `PROP-01`..`PROP-03` | `PROPOSED` | Anexo C.3 | Decisores de `DH-12` e de mérito (sem `DH` atribuído) |
| `B-01` | `BLOCKED` | Anexo C.3 | Decisor de `DH-11` |
| Promoção da `1.0.1` | `DONE` — `DEC-009`, escopo por `DEC-010` | Cabeçalho do padrão; registro de decisões v0.2.1 | Proprietário humano (leitura final) |
| Conformidade com a fonte original | `NOT_VERIFIED` | `L-01` | Responsável por obter `APDF(1).md` |

**Leitura final.** O registro cobre as onze alterações levantadas na revisão, as duas que não se confirmaram, as cinco que foram diferidas e as seis efetivamente publicadas. A `1.0.1` é a baseline vigente desde `DEC-009`, com escopo fixado em `DEC-010`; a v1.0.0 permanece recuperável e auditável.

---

## 11. Estado final após promoção e recorte (2026-10-27)

### 11.1 O que está publicado

| Item | Valor verificado | Como foi verificado |
|---|---|---|
| Arquivo | `docs/01-metodologia/APDF_V01.md` | leitura |
| Versão | `1.0.1` | cabeçalho, linha 5 |
| Estado | `APPROVED` — patch corretivo promovido em `DEC-009`, escopo fixado em `DEC-010` | cabeçalho, linha 6 |
| SHA-256 | `7ae2d87b9709d05a8ef6ae2359d34dfa789e75e586a171524fa3c6ea268fbcef` | `Get-FileHash -Algorithm SHA256` |
| Tamanho | 44.514 bytes, 743 linhas | `Get-Item` / `Get-Content` |
| Diff contra a v1.0.0 | 9 hunks; 76 inserções; 7 deleções | `git diff --no-index -U1` |
| §17 | byte-idêntica à v1.0.0 (L614–633 × L607–626); 12 critérios | comparação literal dos blocos |

Os nove hunks são exatamente: cabeçalho (L5, L6, L9, L11), §6 (regra de leitura das fichas), §16.3 (`L-06`, `L-07`, `L-08`), §16.4 (parágrafo de escopo), A.1 (dois hashes, nota `F-02`, nota de metadados `F-13`), A.2 (`AD-15`), `AD-10` (gatilho `.tpm/`) e Anexo C (C.1–C.4). Nenhum hunk adicional foi encontrado.

### 11.2 Anexo C — numeração vigente

| Seção | Conteúdo |
|---|---|
| C.1 | Correções incorporadas na `1.0.1`: `C-02`, `C-03`, `C-04`, `C-08`, `C-09`, `C-10` |
| C.2 | Correções diferidas para a `1.1.0`: `C-01`, `C-05`, `C-06`, `C-07`, `C-11` |
| C.3 | Propostas não aplicadas: `PROP-01` a `PROP-03` e `B-01` |
| C.4 | Regra de precedência e vigência |

As referências antigas deste registro a "Anexo C.2" para as propostas ficam corrigidas para **C.3**; "Anexo C.2" designa agora apenas as cinco correções diferidas.

### 11.3 Manifesto

- `MANIFESTO-SHA256.md`: 27 entradas, **27/27 conferidas** contra os arquivos em disco; cabeçalho atualizado de `DEC-007` para `DEC-008`, `DEC-009` e `DEC-010`.
- O recálculo do arquivo ocorreu às **09:33:11** de 2026-10-27, entre as edições desta sessão e esta verificação, por ator não identificado nesta sessão; esta sessão **verificou** o resultado e o confirmou (27/27), mas **não** foi a autora da gravação do recálculo. Evento registrado em `temp/INCIDENTE_PROMOCAO_20261027.md` como parte do mesmo padrão de escrita concorrente observado às 09:23 em `README.md` e `CHANGELOG.md`.
- Hashes finais relevantes: `APDF_V01.md` `7ae2d87b…fbcef`; `registro-de-decisoes.md` `fbf9727f…dba68`; `CHANGELOG.md` `1772964e…57587`; `README.md` `b421aff1…fb61f`.

### 11.4 O que continua aberto

| Pendência | Estado | Observação |
|---|---|---|
| Leitura literal do texto da `1.0.1` pelo proprietário | `PENDING` (`PEND-08`) | O `APPROVED` de `DEC-010` refere-se ao escopo; a redação não foi lida linha a linha pelo proprietário |
| Confirmação literal da redação de `DEC-010` | `PENDING` (`PEND-08`) | Substância do proprietário, forma do agente |
| Autorização e execução da `1.1.0` | `PENDING` (`PEND-07`) | Cinco correções em Anexo C.2 e lacuna `L-08` |
| Revisão independente (`L-05`) | `NOT_RUN` | Nenhum revisor externo avaliou a `1.0.1` |
| `CA-APDF-07` e `CA-APDF-08` | Parcialmente satisfeitos | Declarado em `L-08`; não é regressão, é condição herdada da `1.0.0` |
| Conformidade com `APDF(1).md` | `NOT_VERIFIED` (`L-01`) | Fonte externa indisponível |
| Promoção de `specs/` e `temp/lote-02-gpt/` | Autorizada, não executada (`PEND-09`) | Sem insumos nas pastas oficiais da Fase B |

### 11.5 O que este registro não afirma

- Não afirma que a `1.0.1` esteja isenta de erro: afirma que os nove hunks são intencionais e que §17 não mudou.
- Não afirma que `R-02` tenha sido resolvido: ele permanece aberto como `L-08`.
- Não afirma que a origem da divergência de `apdf.md`/`ciclo-apdf.md` tenha sido determinada: o máximo verificável está em `L-06`.
- Não afirma aprovação de gate, promoção de baseline ou aceite do proprietário por conta própria: essas decisões estão em `DEC-009` e `DEC-010`, tomadas pelo proprietário humano.
