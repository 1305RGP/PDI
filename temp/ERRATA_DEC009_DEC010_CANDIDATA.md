# Errata e adendo cronológico — DEC-009 / DEC-010 (proposta)

**ID:** ERR-DEC-009-010-001
**Versão:** 1.0.0 (candidata, não aplicada)
**Data:** 2026-10-27
**Executor:** DeepSeek V4.1 Flash (agente), sessão OpenCode
**Repositório:** `1305RGP/PDI`, branch `main`
**Commit analisado:** `bc457538209491d52fe128d5184117d547906d3a` (`HEAD`, `main`, `origin/main`)
**Objeto:** `docs/00-governanca/registro-de-decisoes.md` — `DEC-009` (L76–L98) e `DEC-010` (L100–L125)
**Artefato de destino, se aprovado:** `docs/00-governanca/registro-de-decisoes.md`
**Estado:** `PROPOSED` — nenhum arquivo normativo foi alterado nesta missão
**Revisão independente:** não realizada (`L-05`)

> **Regra desta errata.** Nenhum texto de `DEC-009` ou `DEC-010` é reescrito, resumido ou removido. A reconciliação é feita por **acréscimo cronológico** ao final de cada decisão, preservando integralmente o registro original e a ordem dos fatos. O que se corrige é a leitura: o que era verdadeiro quando a decisão foi redigida, o que deixou de ser verdadeiro depois, e o que permanece válido.

---

## 1. Por que esta errata existe

`DEC-009` (2026-10-27) promoveu a `APDF_V01` à versão `1.0.1` e, no campo **Contexto**, descreveu o conteúdo material que estaria nessa versão: campo `dependencies` em §8.4, `REABERTO` modelado como estado persistente bloqueante em §7.3, esclarecimento de §6 e correção de hashes.

`DEC-010` (mesma data) reduziu o escopo do patch às correções `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10`, diferindo `C-01`, `C-05`, `C-06`, `C-07` e `C-11` para a `1.1.0`.

O arquivo efetivamente publicado em `docs/01-metodologia/APDF_V01.md` corresponde ao escopo de `DEC-010`, **não** à descrição de contexto de `DEC-009`. As duas decisões estão `APPROVED` e nenhuma foi revogada: `DEC-010` restringiu o conteúdo do patch e declarou superada a premissa de conformidade, mas não alterou o texto de `DEC-009`. O resultado é um registro em que uma decisão aprovada descreve conteúdo que a versão vigente não contém.

Essa situação não se resolve apagando `DEC-009`, reescrevendo seu contexto ou declarando que a `1.0.1` contém o que não contém. Resolve-se por errata: o registro permanece, e passa a existir uma leitura datada e verificável do que cada decisão fixou.

---

## 2. Base verificada

| Item | Valor verificado nesta rodada |
|---|---|
| `HEAD` / `main` / `origin/main` | `bc457538209491d52fe128d5184117d547906d3a` |
| Commits no histórico | `9f85961`, `205bc59`, `bc45753` |
| `docs/01-metodologia/APDF_V01.md` | 743 linhas, 44.514 bytes, SHA-256 `7AE2D87B9709D05A8EF6AE2359D34DFA789E75E586A171524FA3C6EA268FBCEF` |
| Versão declarada no arquivo | `1.0.1`, estado `APPROVED` (L5–L6) |
| `MANIFESTO-SHA256.md` | 27 entradas, **27/27 conferidas, 0 divergências, 0 ausentes** |
| `docs/00-governanca/registro-de-decisoes.md` | 145 linhas, SHA-256 `fbf9727f0962337e90e8aa1fdaa3d8846e513c2b9a851ace0aa4d6087bddba68` |
| Diretório de trabalho | sem alteração fora de `temp/` |

**Verificações textuais que sustentam a errata:**

- §8.4 (L369–L390): a tabela do checkpoint tem 16 linhas de campo (17 com o cabeçalho) e **não contém** `dependencies`.
- §7.1 (L310–L323): o campo `decision` admite `APROVADO`, `REJEITADO` **ou** `REABERTO`; **não existe** campo `justification`.
- §7.3 (L333–L335): o texto é `` `PENDENTE` → `APROVADO` | `REJEITADO` | `REABERTO`. `` — transição linear, sem estado persistente nem bloqueio.
- §15 não contém subseção de loops e recuperação; após §15.4 (L571–L573) o documento segue para §16.
- §11.2 (L463–L474) não contém `dependências` nem `modelo de governança`; não existe §11.4.
- §6 (L156): a regra de leitura das fichas **está presente** e corresponde ao que `DEC-009` chamou de esclarecimento de `R-01`.
- Anexo A (L699–L703): a nota de proveniência de hashes **está presente** e corresponde ao que `DEC-009` chamou de correção de `R-03`.
- Anexo C.1 (L692–L710): registra `C-10` como aplicada incluindo "Banner de não normatividade"; o cabeçalho do arquivo não contém banner.

---

## 3. Cronologia factual

| Ordem | Fato | Evidência | Situação hoje |
|---|---|---|---|
| 1 | `DEC-007` aprova a `1.0.0`. | `registro-de-decisoes.md`, `DEC-007` | Válida; versão substituída |
| 2 | Revisão crítica em `temp/` produz onze correções `C-01` a `C-11`. | `temp/REVISAO_CRITICA_APDF_V101.md`; Anexo C.2 | Registro histórico |
| 3 | `DEC-009` homologa o Gate G0, promove a `1.0.1`, eleva a baseline a `v0.2.1` e autoriza a Fase B. O **Contexto** descreve `dependencies`, `REABERTO` persistente, `R-01` e `R-03` como incorporados. | `registro-de-decisoes.md` L76–L98 | Decisão válida; descrição de conteúdo superada |
| 4 | Revisão constata que o patch excedia §16.4 e que a premissa de "27 artefatos conformes" não se sustentava (4 divergências de manifesto). | `DEC-010`, Contexto, L102 | Registrado pelo próprio `DEC-010` |
| 5 | `DEC-010` reduz o escopo material a seis correções, difere cinco e declara superada a afirmação de conformidade de `DEC-009`. | `registro-de-decisoes.md` L100–L125 | Válida e vigente quanto ao escopo |
| 6 | O arquivo publicado passa a refletir `DEC-010`; `MANIFESTO`, `CHANGELOG` e `README` são recalculados. | `bc45753`; 27/27 conferidos | Fato consumado |
| 7 | Esta rodada verifica o conteúdo e propõe errata, sem alterar decisões. | este documento | `PROPOSED` |

**Observação sobre a ordem 4–5.** `DEC-010` não reabre o Gate G0 nem revoga a autorização da Fase B; declara explicitamente que restringe apenas o conteúdo material do patch (Ressalvas, L116). A errata preserva essa distinção.

---

## 4. Divergências identificadas

| ID | Afirmação em `DEC-009` | Realidade verificada na `1.0.1` | Classificação | Efeito |
|---|---|---|---|---|
| E-01 | "incluindo o campo `dependencies` em §8.4 (CTR-03)" (L78) | §8.4 tem 16 campos e não inclui `dependencies`; `C-01` está diferida em Anexo C.2 (L711–L723) e em `L-08` (L604) | `CONFIRMADO` — descrição incorreta | Registro descreve conteúdo ausente |
| E-02 | "a modelagem de `REABERTO` como estado persistente bloqueante em §7.3 (R-02)" (L78) | §7.3 (L335) apresenta transição linear `PENDENTE → APROVADO \| REJEITADO \| REABERTO`; §7.1 (L319) aceita `REABERTO` como valor de `decision`; `C-11` está diferida | `CONFIRMADO` — descrição incorreta | Contradição §7.3 × §9/§10 permanece aberta |
| E-03 | "o esclarecimento da estrutura de 4 campos nucleares em §6 (R-01)" (L78) | §6 (L156) contém a regra de leitura das fichas | `CONFIRMADO` — afirmação correta | Nenhum |
| E-04 | "a correção da narrativa de proveniência de hashes (R-03)" (L78) | Anexo A (L699–L703) contém a nota de hashes; `C-02` está aplicada | `CONFIRMADO` — afirmação correta | Nenhum |
| E-05 | "verificada a conformidade integral dos 27 artefatos da baseline v0.2.0" (L78) | Na data de `DEC-009`, quatro entradas do manifesto divergiam (registrado em `DEC-010`, L102). Em `bc45753`, a verificação é 27/27. | `PARCIAL` — falsa na origem, verdadeira hoje | Exige leitura temporal explícita |
| E-06 | Ressalva: "`PROP-01` a `PROP-03` e `B-01` permanecem isoladas" (L91) | Correto para a `1.0.1`; a candidata `1.1.0` acrescenta `PROP-04` (Anexo C.3) | `CONFIRMADO` — compatível, requer adendo de referência | Nenhum efeito retroativo |

**Não há divergência** entre `DEC-010` e o texto publicado: as seis correções mantidas estão descritas como aplicadas em Anexo C.1, as cinco diferidas constam de Anexo C.2 e `L-08`, e `CHANGELOG.md` (L17) e `README.md` reproduzem o mesmo recorte. Verificado por leitura integral dos três arquivos nesta rodada.

---

## 5. Errata proposta

O texto abaixo é a **redação sugerida** para acréscimo ao final das respectivas decisões, em campo `Adendo`. Não foi aplicado. A numeração `E-01` a `E-03` é desta errata, não do registro.

### 5.1 Adendo a `DEC-009` — conteúdo material do patch

```markdown
- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** O campo Contexto desta
  decisão descreve o conteúdo da cópia candidata examinada naquele momento, não o
  conteúdo final da versão promovida. Por `DEC-010`, o escopo material do patch
  `1.0.1` foi reduzido às correções `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10`;
  `C-01` (`dependencies` em §8.4), `C-05` (`justification` em §7.1), `C-06` (§15.5),
  `C-07` (§11.2/§11.4) e `C-11` (semântica de `REABERTO` em §7.3) foram diferidas
  para a `1.1.0`. Permanecem válidos e inalterados: a homologação do Gate G0, a
  promoção da `1.0.1`, a elevação da baseline a `v0.2.1` e a autorização da Fase B.
  Este adendo não reescreve o Contexto original, que fica preservado como registro
  do que foi examinado antes de `DEC-010`.
```

### 5.2 Adendo a `DEC-009` — premissa de conformidade dos 27 artefatos

```markdown
- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** A afirmação de
  "conformidade integral dos 27 artefatos" não era sustentada pelas evidências
  disponíveis na data desta decisão, conforme registrado em `DEC-010`. A verificação
  integral foi refeita após a reconciliação do patch e, no commit
  `bc457538209491d52fe128d5184117d547906d3a`, o `MANIFESTO-SHA256.md` confere
  27/27 entradas, sem divergência e sem ausência. Os dois fatos coexistem: a
  premissa era falsa quando invocada e é verdadeira no estado atual da baseline.
  Este adendo não converte a verificação posterior em prova retroativa.
```

### 5.3 Adendo a `DEC-010` — propostas não normativas e versão vigente

```markdown
- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** A ressalva sobre
  `PROP-01` a `PROP-03` e `B-01` permanece correta para a `1.0.1`. A candidata
  `1.1.0`, quando submetida, acrescenta `PROP-04` (`CA-APDF-01` × §6), ainda não
  aprovada e sem efeito normativo. A `1.1.0` continua não autorizada; a baseline
  normativa permanece `docs/01-metodologia/APDF_V01.md` v`1.0.1`.
```

### 5.4 Alternativa considerada e não adotada

| Alternativa | Efeito | Por que não foi adotada |
|---|---|---|
| Corrigir o campo Contexto de `DEC-009` diretamente | Registro ficaria factualmente correto em uma leitura | Reescreve decisão aprovada e falsifica a cronologia — vedado pelas regras da missão e por `CA-01-05` |
| Revogar `DEC-009` e reeditar tudo em `DEC-011` | Um único registro coerente | Perde a distinção entre o que foi decidido e o que foi verificado depois; reabre G0 e Fase B sem necessidade |
| Marcar `DEC-009` como `SUPERSEDED` | Sinalizaria a obsolescência | A decisão não está obsoleta: G0, baseline e Fase B continuam válidos; só o conteúdo material foi restringido |
| **Errata por adendo, preservando o texto** | **Corrige a leitura sem alterar o fato** | **Adotada** |

---

## 6. Limites desta errata

1. Não altera `DEC-009`, `DEC-010` nem qualquer outro texto de `docs/`.
2. Não reabre o Gate G0, não revoga a Fase B, não altera a baseline `v0.2.1`.
3. Não aprova a `1.1.0`, não a promove e não a declara conforme.
4. Não valida a leitura literal da `1.0.1` pelo proprietário — pendência registrada em `DEC-010` (L119).
5. Não corrige o Anexo C.1 da `1.0.1` quanto ao banner de `C-10`: essa é a correção `C-12`, aplicada apenas na candidata (Anexo C.5), com residual `L-10`.
6. Não substitui revisão independente (`L-05`).

---

## 7. Risco de não adoção

| Risco | Efeito concreto |
|---|---|
| Auditoria ler `DEC-009` isoladamente | Concluirá que a `1.0.1` contém `dependencies` e `REABERTO` persistente, o que é falso; pode declarar conformidade inexistente com `CTR-03` |
| `CA-01-05` (preservar histórico) | Sem errata, a única forma de eliminar a contradição seria reescrever a decisão, o que violaria o próprio critério |
| `CA-APDF-07` / `L-08` | A lacuna fica catalogada no padrão, mas não no registro de decisões; a rastreabilidade entre os dois artefatos depende de leitura cruzada |
| Repetição do erro | A mesma divergência entre "o que a decisão diz" e "o que o arquivo contém" tende a reaparecer em patches futuros sem o campo de adendo como prática |

---

## 8. Estado do artefato e decisão necessária

| Item | Estado |
|---|---|
| Errata redigida | `DONE` |
| Errata aplicada ao registro | `PROPOSED` — depende de decisão do Proprietário Humano |
| Texto de `DEC-009`/`DEC-010` preservado | `DONE` — verificado, nenhuma edição feita |
| Revisão independente | `NOT_VERIFIED` |

**Decisão necessária:** autorizar (ou não) o acréscimo dos três adendos de §5 ao `registro-de-decisoes.md`, com recálculo de `MANIFESTO-SHA256.md`, `CHANGELOG.md` e `README.md` conforme `GOV-AUTH-001`. Sem essa decisão, este arquivo permanece em `temp/` como proposta não normativa.
