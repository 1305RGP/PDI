# Incidente — promoção da baseline durante revisão em curso

**ID:** INC-PDI-001
**Data:** 2026-10-27
**Observador:** sessão OpenCode (DeepSeek V4.1 Flash)
**Natureza:** registro factual de estado. Não é parecer de aceite nem decisão.
**Ação tomada por este observador:** nenhuma escrita em `docs/`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md` ou `temp/` alheio **até 09:20**. A partir daí, por autorização direta do proprietário na sessão (registrada em `DEC-010` e em `temp/estado-atual.md`), este observador executou a revisão crítica, o recorte de escopo do patch, o registro de `DEC-010` e a reconciliação de `CHANGELOG.md`, `README.md` e `MANIFESTO-SHA256.md`. Nada foi commitado.

---

## 1. Linha do tempo (horário local)

| Hora | Evento | Evidência |
|---|---|---|
| 26/10 20:22 | Entrega DEEPSEEK declarada fechada | `temp/ENTREGA_INTEGRAL_DEEPSEEK_APDF.md`, 26.014 B |
| 27/10 09:13–09:15 | Relatórios de revisão e dossiê gravados | `temp/REVISAO_CRITICA_APDF_V101.md`, `temp/DOSSIE_DECISAO_HUMANA.md` |
| 09:14–09:15 | Lote GPT grava entrega própria em `temp/` | `temp/ENTREGA_INTEGRAL_GPT_CONTRATOS_TESTES.md` etc. |
| 09:16:13 | Candidata regravada — 47.703 B, 781 linhas, `EE44383A…41DE` | divergente da entrega (`21B9718C…`, 775 linhas) |
| 09:16:44 | Candidata regravada — 47.443 B | — |
| 09:17:11 | Candidata regravada — 47.429 B, `1768990D…98A0` | estável por ≥ 9 s |
| ~09:18 | Cópia congelada criada por este observador | `temp/APDF_V01_CANDIDATA_FROZEN_1768990D.md` (hash idêntico ao da fonte, verificado antes/depois) |
| 09:20:37 | `docs/00-governanca/registro-de-decisoes.md` alterado (+54 linhas): `DEC-008` e `DEC-009` gravadas como `APPROVED; versão 0.2.0 → 0.2.1` | `git diff` |
| 09:21:18 | `docs/01-metodologia/APDF_V01.md` **sobrescrito** com a candidata congelada | hash do arquivo = `1768990D…` |
| 09:21:37 | Mesmo arquivo regravado — 46.812 B, 779 linhas, `9ED0895D…AB2F`, cabeçalho `1.0.1 / APPROVED — promovido em DEC-009` | 4 inserções / 6 deleções vs congelada (só cabeçalho e remoção do banner) |

## 2. Material de recuperação preservado

| Arquivo | Origem | SHA-256 |
|---|---|---|
| `temp/_BACKUP_APDF_V01_v100_HEAD.md` | `git show HEAD:docs/01-metodologia/APDF_V01.md` | `DC68ED05DF9CF5C8546388A55EE413B115FA0CEF9B1E9F7503CE1EEC704D07AE` |
| `temp/APDF_V01_CANDIDATA_FROZEN_1768990D.md` | candidata no instante 09:17:11 | `1768990D3CCE6ED57BFE35F8486FB649A3FEB3D66C65A732971D49BB21FC98A0` |

O hash do backup confere com o registrado para a v1.0.0 no `MANIFESTO-SHA256.md` e na entrega, o que confirma que a v1.0.0 aprovada está integralmente recuperável a partir do Git.

## 3. Contradições objetivas no estado atual

| # | Constatação | Como verificar |
|---|---|---|
| P-1 | `MANIFESTO-SHA256.md` continua listando `dc68ed05…` para `docs/01-metodologia/APDF_V01.md`, mas o arquivo em disco é `9ED0895D…`. O manifesto não fecha mais 27/27. | comparar a linha do manifesto com `Get-FileHash` |
| P-2 | `DEC-009` afirma "verificada a conformidade integral dos 27 artefatos da baseline v0.2.0" — no mesmo instante da gravação o manifesto já divergia em pelo menos dois arquivos (`APDF_V01.md` e `registro-de-decisoes.md`). | idem |
| P-3 | `DEC-009` promove um único patch `1.0.1` com `C-01`–`C-11`, incluindo mudanças que criam obrigação nova (`C-01`, `C-05`, `C-06`, `C-07`) e reinterpretam `REABERTO` (`C-11`). O §16.4 do próprio APDF limita `1.0.1` a correção sem mudança de significado. | §16.4 da candidata congelada; §6/§7.3 |
| P-4 | `temp/REGISTRO_ALTERACOES_APDF.md` (26/10 20:20) não registra as edições de 27/10. O `C-11` nele afirma que `REABERTO` "devolve o gate a `PENDENTE`"; o texto promovido afirma o oposto ("estado persistente e bloqueante"). | comparar L380 do registro com §7.3 |
| P-5 | O corpo promovido mantém a glosa de §6 que redefine o objeto de `CA-APDF-01` ("afere… núcleo de quatro elementos") enquanto §17 conserva "elicitação". Interpretação de critério aprovado sem alterar o critério. | §6 vs §17 |
| P-6 | A nota `F-02` no Anexo A afirma como fato que os hashes "divergiam… desde a sua autoria inicial em `9f85961`". A entrega DEEPSEEK classifica a causa como `NOT_VERIFIED` (`L-06`) e a única evidência disponível (`temp/resultado-fase-a.md` L70–71) não é citada. | A.1 vs `temp/ENTREGA_INTEGRAL_DEEPSEEK_APDF.md` L101/L109 |
| P-7 | `CHANGELOG.md` e `README.md` estão intactos (26/10 19:20), embora `DEC-009` os liste como artefatos afetados. | data de modificação |

## 4. O que não foi feito por este observador (situação até 09:20)

> **Vigência.** Esta seção descreve o estado **antes** da autorização do proprietário. Ela é preservada como registro histórico; o desfecho está na seção 5, que a substitui quanto ao estado final. Nenhuma das ações abaixo foi feita sem autorização — todas as que ocorreram depois constam da seção 5.

- Não revertido o `docs/01-metodologia/APDF_V01.md`.
- Não corrigido o `MANIFESTO-SHA256.md`.
- Não editado o `registro-de-decisoes.md`.
- Não commitado nada.
- Não removida a candidata nem o `temp/lote-02-gpt/`.

Agravo a correção a quem tem autoridade sobre a baseline, após decisão registrada.

---

## 5. Desfecho (2026-10-27, após autorização do proprietário)

O proprietário confirmou na sessão que as escritas de 09:20–09:21 foram ato próprio e autorizado — não houve terceiro não autorizado. Autorizou, em seguida, a execução dos itens pendentes: revisão crítica, recorte de escopo, `DEC-010` e reconciliação dos artefatos derivados. Esta seção registra o que se resolveu, o que permanece e um evento de escrita concorrente que este observador **não** produziu.

### 5.1 Resolução dos pontos P-1 a P-7

| # | Estado final | Como foi resolvido | Evidência |
|---|---|---|---|
| P-1 | **RESOLVIDO** | `MANIFESTO-SHA256.md` recalculado; 27 entradas conferidas uma a uma contra os bytes em disco | recálculo: 27/27, zero divergências; `APDF_V01.md` = `7ae2d87b…fbcef` |
| P-2 | **RESOLVIDO por ressalva** | A afirmação "conformidade integral dos 27 artefatos" não foi apagada de `DEC-009` (decisão aprovada não se reescreve), mas `DEC-010` registra o escopo real e `temp/PROPOSTA_DECISAO_G0.md` foi fechado como `SUPERSEDED` com nota apontando a inconsistência | `registro-de-decisoes.md` (`DEC-010`); `temp/PROPOSTA_DECISAO_G0.md`, nota de encerramento |
| P-3 | **RESOLVIDO** | Recorte: `1.0.1` ficou só com `C-02`, `C-03`, `C-04`, `C-08`, `C-09`, `C-10`; `C-01`, `C-05`, `C-06`, `C-07`, `C-11` foram diferidas para a `1.1.0` (Anexo C.2 e lacuna `L-08`) | `DEC-010`; `APDF_V01.md` Anexo C.1/C.2; diff de 9 hunks |
| P-4 | **RESOLVIDO** | `temp/REGISTRO_ALTERACOES_APDF.md` reescrito para v1.1.0: quadro-resumo marca as cinco diferidas, seção 11 descreve o estado publicado, e a ficha de `C-11` deixa de ser lida como texto vigente | `temp/REGISTRO_ALTERACOES_APDF.md`, aviso de vigência na seção 4 e seções 10–11 |
| P-5 | **RESOLVIDO** | A glosa de §6 foi reescrita como regra de leitura das fichas (`C-03`), sem redefinir o objeto de `CA-APDF-01`; §17 permanece byte-idêntica | comparação literal §17 atual L614–633 × v1.0.0 L607–626 → `IDENTICO: True`, 12 critérios |
| P-6 | **RESOLVIDO** | A nota `F-02` do Anexo A perdeu a afirmação de causalidade; a causa passou a `L-06` (`NOT_VERIFIED`). A alegação foi retirada também da ficha `C-02` do registro de alterações | `APDF_V01.md` §16.3 `L-06`; `temp/REGISTRO_ALTERACOES_APDF.md` ("ALEGAÇÃO RETIRADA") |
| P-7 | **RESOLVIDO** | `CHANGELOG.md` e `README.md` reescritos para o estado real: seis correções aplicadas, cinco diferidas, `DEC-010` citado, ressalvas abertas declaradas | `CHANGELOG.md` `[0.2.1]`; `README.md`, "Estado atual" |

### 5.2 Evento de escrita concorrente posterior à autorização

Entre as edições desta sessão e a verificação final, três arquivos foram gravados por **outro ator**, não por este observador:

| Hora | Arquivo | Efeito |
|---|---|---|
| 09:23:49 | `README.md` | conteúdo conferido: compatível com o estado reconciliado |
| 09:24:10 | `CHANGELOG.md` | idem |
| 09:33:11 | `MANIFESTO-SHA256.md` | recálculo; **conferido** por este observador: 27/27 contra os bytes em disco |

O padrão observado às 09:16–09:17 (regravações sucessivas do mesmo arquivo em intervalos de segundos) repetiu-se nesses três arquivos. Este observador **verificou** o resultado e o confirmou; **não** foi o autor dessas gravações e **não** pode afirmar quem foi. O risco de nova escrita concorrente permanece aberto enquanto a árvore de trabalho estiver suja e não commitada.

### 5.3 O que permanece aberto

| Item | Estado |
|---|---|
| Commit | **não realizado** — nada foi commitado; a árvore segue com 6 arquivos modificados e 20 deleções pré-existentes em `lote-02-gpt/` |
| Leitura literal da `1.0.1` pelo proprietário | `PENDING` (`PEND-08`) |
| Redação final de `DEC-010` | `PENDING` (`PEND-08`) — substância do proprietário, forma do agente |
| `1.1.0` com as cinco correções diferidas | `PENDING` (`PEND-07`) |
| Revisão independente | `NOT_RUN` (`L-05`) |
| Promoção de `specs/` e `temp/lote-02-gpt/` | autorizada, não executada (`PEND-09`) |
| `CA-APDF-07` e `CA-APDF-08` integralmente satisfeitos | **não** — parcialmente satisfeitos até a `1.1.0` (`L-08`) |

### 5.4 O que este registro não afirma

- Não afirma que a promoção tenha sido incorreta: ela foi ato do proprietário e o patch foi depois recortado para caber em `1.0.1` por §16.4.
- Não afirma que a `1.0.1` esteja isenta de erro; afirma que os nove hunks são intencionais e que §17 não mudou.
- Não afirma que `R-02` tenha sido sanado: permanece aberto como `L-08`.
- Não atribui as gravações de 09:23–09:33 a este observador nem a terceiro identificado.
