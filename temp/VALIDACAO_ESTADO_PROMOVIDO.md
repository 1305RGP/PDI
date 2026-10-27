# Validação do estado promovido — 2026-10-27

**ID:** VAL-PDI-001
**Base:** `docs/01-metodologia/APDF_V01.md` promovido por `DEC-009`
**Natureza:** verificação factual. Não é aceite, não substitui revisão independente.

---

## 1. Instabilidade do alvo

A baseline foi regravada quatro vezes em cinco minutos:

| Hora | Bytes | SHA-256 | Observação |
|---|---|---|---|
| 09:21:18 | 47.429 | `1768990D…98A0` | cópia da candidata congelada, com banner "não normativo" |
| 09:21:37 | 46.812 | `9ED0895D…AB2F` | cabeçalho trocado para `APPROVED`; banner removido |
| 09:22:57 | 46.494 | `76B0E95D…481D` | §16.4 e Anexo C.3 atualizados para "promovido por DEC-009" |
| 09:23:07 | 46.494 | `76B0E95D…481D` | estável na última leitura |

Qualquer verificação textual abaixo vale para `76B0E95D…481D`. Se o arquivo mudar, vale reexecutar.

## 2. Integridade do manifesto

`MANIFESTO-SHA256.md` tem 27 entradas e **25 conferem**. Divergem:

| Arquivo | Manifesto | Disco |
|---|---|---|
| `docs/00-governanca/registro-de-decisoes.md` | `e6549517…` | `ca02548b…` |
| `docs/01-metodologia/APDF_V01.md` | `dc68ed05…` | `76b0e95d…` |

Consequência direta: `DEC-009` afirma "conformidade integral dos 27 artefatos" e, no estado atual, essa afirmação é falsa por dois artefatos. É corrigível — mas precisa ser corrigido antes de qualquer citação da baseline como íntegra.

## 3. Resíduos da revisão que entraram na baseline

| ID | Onde | Problema |
|---|---|---|
| `R-01b` | L156 (§6) vs L663 (§17) | §6 diz que o critério afere "núcleo de quatro elementos" e chama o segundo campo de "ação da fase"; `CA-APDF-01` continua dizendo "elicitação". A glosa reinterpreta um critério aprovado sem alterá-lo. |
| `R-02b` | L319 (§7.1) | `decision` aceita `APROVADO`, `REJEITADO` ou `REABERTO`, enquanto §7.3 trata `REABERTO` como estado persistente, não como decisão. Ambiguidade residual. |
| `R-03` | L693 (A.1) | A nota afirma como fato que os hashes divergiam "desde a sua autoria inicial em `9f85961`". A entrega classifica a causa como `NOT_VERIFIED`; `temp/resultado-fase-a.md` L70–71 (a evidência real) não é citada. |

Nenhum dos três é grave isoladamente. Os três juntos são a diferença entre "correção verificada" e "correção declarada".

## 4. Pendências objetivas (ordem de execução)

1. **Texto**: resolver `R-01b`, `R-02b` e `R-03` — ou registrar cada um como ressalva aceita em `DEC-009`.
2. **Manifesto**: recalcular as 27 entradas *depois* da etapa 1 e atualizar o cabeçalho (`DEC-007` → `DEC-009`, versão 0.2.1).
3. **CHANGELOG**: entrada `[0.2.1]` com APDF 1.0.1, `DEC-008`, `DEC-009`, e o que mudou de fato.
4. **README**: `Baseline documental: v0.2.0` → `v0.2.1`; G0 de "ativo" para "homologado"; Fase B como próxima.
5. **`temp/estado-atual.md`**: `PEND-01` (G0) de pendente para concluído; Gate ativo → G1.
6. **`temp/REGISTRO_ALTERACOES_APDF.md`**: registrar as edições de 27/10 e corrigir o `C-11`, que ainda descreve a regra antiga de `REABERTO`.
7. **`temp/PROPOSTA_DECISAO_G0.md`**: marcado `APPROVED` sem autoridade e com versão ambígua — encerrar como histórico, não como decisão.

Os itens 2–5 são obrigatórios para que a promoção seja internamente consistente. Os itens 1, 6 e 7 são de qualidade probatória.

## 5. Decisão pendente sobre a classificação

`DEC-009` promove um único `1.0.1` que inclui `C-01`, `C-05`, `C-06`, `C-07` e `C-11` — mudanças que criam obrigação nova e alteram a leitura de gate. O §16.4 do próprio padrão reserva `1.0.1` a correção sem mudança de significado. Duas saídas legítimas:

- **Recorte**: `1.0.1` só com `C-02`, `C-03`, `C-04`, `C-08`, `C-09`, `C-10`; `C-01`, `C-05`, `C-06`, `C-07`, `C-11` vão para `1.1.0` com decisão própria. Coerente com §16.4 e com a escolha anterior do proprietário; custa uma segunda promoção.
- **Exceção**: manter o pacote único e registrar em `DEC-009` e no `CHANGELOG` que o limite do §16.4 foi excepcionado, com a lista das mudanças materiais. Mais barato; enfraquece a regra na primeira vez que ela é usada.

Enquanto não houver uma das duas, a baseline está promovida e classificada de forma contraditória.

## 6. O que não foi feito

Nenhuma edição em `docs/`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`, `registro-de-decisoes.md` ou na baseline promovida. Nenhum commit.
