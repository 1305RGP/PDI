# Dossiê de Decisão Humana — G0, APDF v1.0.1 e versão alvo

**ID:** DOSSIE-DEC-HUMANA-002
**Data:** 2026-10-27
**Commit de referência:** `205bc59`
**Baseline vigente:** 0.2.0 · `APDF_V01` v1.0.0 (`MET-APDF-001`, `DEC-007`)
**Autoridade:** exclusivamente o Proprietário Humano (`GOV-AUTH-001`)

> **Nada neste dossiê está aprovado.** Cada item abaixo é uma decisão em aberto. Nenhum agente pode fechá-la. As opções estão ordenadas com recomendação explícita, mas a escolha é do proprietário.

---

## 0. Leitura em 60 segundos

| Item | Situação | O que precisa de você |
|---|---|---|
| Gate G0 | Aberto. Critérios `CA-G0-01`–`06` **não existem** em artefato normativo — só na proposta que os declara atendidos | Decidir **D1** (como formalizar os critérios) e depois **D2** (encerrar ou não) |
| APDF v1.0.1 | Candidata em `temp/`, não normativa. 2 achados bloqueantes (`R-01`, `R-02`) + 1 de proveniência no encerramento do gate (`R-04`) + 3 editoriais | Decidir **D3** (corrigir ou aceitar) |
| Promoção de v1.0.1 | Não pode ocorrer: falta segundo revisor (`L-05`), falta decisão registrada | Decidir **D4** (versão alvo) e autorizar depois |
| `PROP-01`–`PROP-03`, `B-01` | Mudam significado normativo — **não cabem** em patch corretivo (§16.4) | Decidir **D5** (rejeitar / adiar / versão futura) |
| Árvore de trabalho | 19 arquivos de `lote-02-gpt/` deletados; `temp/` não rastreado — pré-existente, não desta revisão | Decidir **D6** (limpar ou preservar) |

Parecer técnico completo: [`temp/REVISAO_CRITICA_APDF_V101.md`](REVISAO_CRITICA_APDF_V101.md).

---

## D1 — Proveniência dos critérios de G0

**Fato:** `CA-G0-01`–`CA-G0-06` aparecem apenas em `temp/PROPOSTA_DECISAO_G0.md`, linhas 28–33. Busca por `CA-G0` em `docs/`, `README.md` e `CHANGELOG.md`: zero ocorrências. O `README.md` descreve G0 apenas em prosa.

**Problema:** a proposta cria os critérios, avalia cada um como "ATENDIDO" e conclui pelo encerramento. Autor e avaliador são a mesma parte, no mesmo documento, sem que os critérios tenham sido aprovados antes. Registrar `DEC-008` como está produz uma decisão que cita critérios nunca aprovados.

### Opções

**D1-A (recomendada) — Duas decisões.**
`DEC-008` aprova os critérios `CA-G0-01`–`06` (texto anexado à decisão, com proveniência declarada: "estabelecidos nesta decisão"). `DEC-010` encerra G0 após você conferir cada critério — `DEC-009` fica reservada à promoção de v1.0.1 (D4).
- Vantagem: sequência auditável; o critério passa a existir antes da avaliação.
- Custo: duas assinaturas em vez de uma.

**D1-B — Uma decisão, proveniência explícita.**
`DEC-008` única, mas o texto diz: "os critérios `CA-G0-01`–`06` foram **estabelecidos por esta decisão**; a avaliação de atendimento é a da proposta `PROP-DEC-G0-001`, não uma verificação independente."
- Vantagem: uma assinatura; não mente sobre a origem.
- Custo: a decisão admite que a avaliação é autoemitida.

**D1-C — Encerrar sem invocar `CA-G0-*`.**
`DEC-008` cita apenas fatos verificáveis: 27/27 arquivos no manifesto, 27/27 hashes OK, `APDF_V01` adotado por `DEC-007`, contratos 01–05 presentes.
- Vantagem: elimina o problema de proveniência por subtração.
- Custo: nenhum critério formal de gate passa a existir — o mesmo problema volta no G1.

**D1-D — Assinar a proposta como está.** *(não recomendada)*

**Sua decisão:** ☐ D1-A ☐ D1-B ☐ D1-C ☐ D1-D ☐ outra: ____________

---

## D2 — Encerramento do Gate G0

**Pré-requisito:** D1 resolvido.

**Fatos que sustentam o encerramento** (todos verificados, ver §3 do parecer):
- `MANIFESTO-SHA256.md`: 27 linhas, 27 OK, 0 divergências, 0 ausentes.
- `APDF_V01` v1.0.0 adotado por `DEC-007`, registro oficial consistente.
- Contratos 01–05 presentes e estruturados.
- Nenhuma ferramenta externa instalada; zero linhas de código de produto.

**Fatos que não sustentam:**
- A candidata v1.0.1 — com a qual a proposta conta como ressalva — **não está promovida** e tem 2 achados bloqueantes.
- O método APDF nunca foi executado; "operacional" é afirmação não demonstrada.
- `PEND-05` (designação nominal da matriz de autoridade) segue aberta.

### Opções

**D2-A — Aprovar G0 com ressalvas registradas.** Encerra G0; Fase B autorizada; v1.0.1 permanece pendente.
**D2-B — Aprovar G0 condicionado à correção de v1.0.1.** G0 só fecha quando v1.0.1 estiver promovida.
**D2-C — Manter G0 aberto.** Nenhuma alteração fora de `temp/`.
**D2-D — Rejeitar e reabrir escopo.**

**Sua decisão:** ☐ D2-A ☐ D2-B ☐ D2-C ☐ D2-D ☐ outra: ____________

---

## D3 — Correções na candidata v1.0.1

**Estado:** 775 linhas, `PENDING_APPROVAL`, hash `21B9718C…08B81B`.

| Achado | Gravidade | O que está errado |
|---|---|---|
| `R-01` | **A** | Linha 158 afirma "quatro campos fixos" — falso para 8 das 13 fichas (7 têm `**Nota…:**`, a 13 tem `**Confirmar explicitamente**` + `**Gate final:**`). Além disso, `C-03` redefine por nota o objeto de `CA-APDF-01`, que §17 mantém inalterado dizendo "elicitação" |
| `R-02` | **A** | §7.3 diz que `REABERTO` é transição que devolve a `PENDENTE`, que dele "só se sai por `APROVADO` ou `REJEITADO`" e que "enquanto estiver `REABERTO` o avanço permanece bloqueado" — as três coisas não podem ser verdade juntas. §7.1 ainda lista `REABERTO` como valor de `decision`. O diagrama de transição omite `REABERTO` como origem |
| `R-03` | B | `C-02` e a nota `F-02` apoiam a conclusão em `git cat-file -e`, que no repositório SHA-1 retorna erro para **qualquer** hash de 64 hex (testado com valor aleatório) — prova vazia. A explicação verdadeira existe em `temp/resultado-fase-a.md` e não é citada |
| `R-05` | B | `DH-10`/`DH-11`/`DH-12` citados como se existissem; não há entrada `DH-*` no registro. `DH-10` tem dois significados diferentes |
| `R-06` | B | `PROPOSTA_DECISAO_G0.md` já traz `APPROVED` nas linhas 81 e 101, e versão alvo ambígua na linha 7 |

### Opções

**D3-A (recomendada) — Corrigir antes de qualquer promoção.**
- `R-01`: opção 1 (descrever a estrutura real: 4 campos nucleares + notas opcionais + gate final na 13) **ou** opção 2 (reverter `C-03` e tratar em versão posterior).
- `R-02`: escolher — `REABERTO` é **estado persistente** (corrigir §7.3 e o diagrama, manter §7.1) **ou** é **transição** (remover de §7.1, registrar reabertura como evento).
- `R-03`: reescrever `C-02` e a nota `F-02` citando `temp/resultado-fase-a.md` como prova da cadeia de estados, e rebaixar `cat-file -e` a teste inconclusivo.
- `R-05`, `R-06`: correções editoriais.

**D3-B — Aceitar `R-03`, `R-05`, `R-06` como ressalvas e corrigir só `R-01` e `R-02`.**
**D3-C — Promover como está.** *(não recomendada — publica afirmação falsa e reinterpreta critério aprovado)*

> Nota sobre confiabilidade deste dossiê: a primeira versão do parecer continha um achado **incorreto** sobre `C-02` (afirmava que a narrativa causal era falsa). Foi retratado após verificação que encontrou os hashes antigos em `temp/resultado-fase-a.md`. A autocorreção está registrada em `REVISAO_CRITICA_APDF_V101.md` §4.1. Os demais achados foram confirmados por medição direta.

**Suas escolhas:**
- R-01: ☐ corrigir (opção 1) ☐ corrigir (opção 2 — reverter C-03) ☐ manter
- R-02: ☐ `REABERTO` = estado ☐ `REABERTO` = transição ☐ manter
- R-03: ☐ reescrever ☐ ressalvar ☐ manter
- R-05/R-06: ☐ corrigir ☐ manter

---

## D4 — Promoção de `APDF_V01` v1.0.1

**Pré-requisitos não atendidos hoje:**
1. `L-05` — revisão independente. Este parecer é de revisor único; não conta.
2. `D3` resolvido.
3. Decisão registrada como `DEC-*` (hoje a candidata depende de `DH-10`, que não existe no registro).
4. Recálculo de `MANIFESTO-SHA256.md` — a promoção troca o conteúdo de `APDF_V01.md`, invalidando o hash atual `DC68ED05…4D07AE`.

### Versão alvo da baseline

| Opção | Efeito | Quando faz sentido |
|---|---|---|
| **0.2.1** (recomendada) | Patch editorial. Coerente com §16.4: v1.0.1 "não altera fases, gates, sequência, critérios de handoff nem decisões registradas" | Se `D3` resultar em correções apenas editoriais |
| **0.3.0** | Minor. Sinaliza mudança de conteúdo perceptível | Se você decidir que `C-03`/`C-11` alteram o entendimento do padrão e querem sinalizar isso |
| Manter 0.2.0 | Nenhuma promoção | Se `D2-C` (G0 permanece aberto) |

**Sua decisão:** ☐ 0.2.1 ☐ 0.3.0 ☐ manter 0.2.0 ☐ outra: ____________

**Autoriza a promoção?** ☐ sim, após `D3` e segundo revisor ☐ não ☐ condicionado a: ____________

---

## D5 — `PROP-01`, `PROP-02`, `PROP-03` e `B-01`

Estão isolados no Anexo C **corretamente** — mudam significado normativo e §16.4 (linha 651) veda isso em patch corretivo. Promovê-las junto com v1.0.1 seria contradizer o próprio padrão.

| Proposta | Natureza |
|---|---|
| `PROP-01` | Altera regra normativa |
| `PROP-02` | Altera regra normativa |
| `PROP-03` | Altera regra normativa |
| `B-01` | Ajuste de base |

### Opções

**D5-A (recomendada) — Adiar para versão própria.** Ficam no Anexo C como estão; cada uma exige decisão futura com análise de impacto. Não bloqueiam G0 nem v1.0.1.
**D5-B — Rejeitar formalmente agora**, registrando motivo.
**D5-C — Avaliar uma a uma** em decisões separadas antes de qualquer promoção.
**D5-D — Incorporar em v1.0.1.** *(vedado por §16.4 — exigiria antes emendar §16.4)*

**Sua decisão:** ☐ D5-A ☐ D5-B ☐ D5-C ☐ D5-D ☐ outra: ____________

---

## D6 — Higiene da árvore de trabalho

**Situação, pré-existente a esta revisão:**
- 19 arquivos de `lote-02-gpt/` aparecem como deletados (`git status`).
- `temp/` com os entregáveis desta e de sessões anteriores está não rastreado.
- Últimos commits: `9f85961`, `205bc59` (este mexeu apenas em `temp/`).

**Por que importa:** o `MANIFESTO-SHA256.md` não cobre `temp/`, mas cobre `specs/` e `tests/`. As deleções de `lote-02-gpt/` não afetam o manifesto — ainda assim, uma árvore suja dificulta distinguir o que é entrega do que é resíduo, e a proposta de G0 autoriza promover conteúdo de `temp/lote-02-gpt/` para `specs/`/`tests/`. Promover a partir de um diretório cujo estado no Git é ambíguo é frágil.

### Opções

**D6-A — Preservar tudo; não commitar agora.** Estado atual mantido; resolver antes da Fase B.
**D6-B — Commitar `temp/` como área de intercâmbio** (se for a intenção do projeto) e registrar as deleções de `lote-02-gpt/` com justificativa.
**D6-C — Restaurar `lote-02-gpt/`** (`git restore`) se as deleções não foram intencionais.
**D6-D — Investigar antes de decidir.**

**Sua decisão:** ☐ D6-A ☐ D6-B ☐ D6-C ☐ D6-D ☐ outra: ____________

---

## Sequência recomendada (se aceitar as recomendações)

```
D1-A  → DEC-008 aprova CA-G0-01..06
D3-A  → corrigir R-01, R-02, R-03, R-05, R-06 em temp/
      → recalcular hashes; atualizar REGISTRO_ALTERACOES e MATRIZ_CONFORMIDADE
      → segundo revisor (L-05)
D5-A  → PROP-01..03, B-01 permanecem no Anexo C
D4    → DEC-009 autoriza promoção; versão 0.2.1
      → substituir docs/01-metodologia/APDF_V01.md
      → atualizar CHANGELOG, MANIFESTO, README, estado-atual
D2-A  → DEC-010 encerra G0; Fase B autorizada; G1 passa a ser o gate ativo
D6    → higiene da árvore antes de promover schemas para specs/ e tests/
```

A ordem importa: `D3` antes de `D4` (não promover texto com achado bloqueante); `D1` antes de `D2` (não encerrar gate com critério sem proveniência); `D6` antes de qualquer promoção de `lote-02-gpt/`.

`D2` antes de `D4` também é legítimo se você preferir desbloquear a Fase B primeiro e tratar v1.0.1 como dívida documental com prazo. Nesse caso a ressalva de G0 precisa nomear v1.0.1 explicitamente como pendência, não como corrigida.

---

## O que **não** está em discussão aqui

- `DEC-007` e a adoção de `APDF_V01` v1.0.0 como baseline normativa. Vigente, não questionada.
- §17 (`CA-APDF-01`–`12`) como conjunto aprovado. Não se altera para fazer implementação passar.
- A proibição de código de produto, instalação de dependências e integrações externas. Permanece.
- Os 27/27 hashes do manifesto atual. Verificados.

---

## Assinatura

Cada item marcado acima constitui decisão do Proprietário Humano. Nenhuma linha deste dossiê deve ser copiada para `docs/` como `APPROVED` antes da marcação e da data.

**Decidido por:** ______________________
**Data:** ____ / ____ / ________
**Observações:** ______________________________________
