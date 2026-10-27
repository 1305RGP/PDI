# Matriz de Estados e Decisões — IA B

**ID:** MAT-IA-B-001  
**Tipo:** Matriz de Rastreabilidade de Decisões, Estados Canônicos e Minutas  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** CONCLUÍDO (Frente IA B)

---

## 1. Confronto entre Estado Canônico e Candidatos em `temp/`

| Artefato / Decisão | Local Canônico | Local Candidato | Estado Canônico Vigente | Estado Candidato Declarado | Divergência Observada | Ação de Harmonização |
|---|---|---|---|---|---|---|
| `DEC-001` a `DEC-007` | `docs/00-governanca/registro-de-decisoes.md` | — | `APPROVED` | — | Nenhuma. | Preservar intacto. |
| `DEC-008` (Critérios de G0) | `docs/00-governanca/registro-de-decisoes.md` | — | `APPROVED` | — | Nenhuma. Formalizou CA-G0-01..06. | Preservar intacto. |
| `DEC-009` (Homologação G0) | `docs/00-governanca/registro-de-decisoes.md` | — | `APPROVED` | — | Contexto citava 11 correções do APDF; DEC-010 restringiu a 6 correções. Histórico preservado. | Manter adendo explicativo de DEC-010. |
| `DEC-010` (Recorte Patch 1.0.1) | `docs/00-governanca/registro-de-decisoes.md` | — | `APPROVED` | — | Superou premissa de conformidade de DEC-009 e diferiu 5 correções para v1.1.0. | Preservar como norma superveniente. |
| `DEC-011` (Critérios de G1) | Inexistente no canônico | `temp/PATCH_CANDIDATO_GOVERNANCA_G1.md` | Não formalizado | `PENDING_APPROVAL` | Formaliza critérios de G1 (`CA-G1-01`..`06`). Colide em ID com pacote V110. | Numerar como **`DEC-011`** para critérios de G1. |
| `DEC-011` (Promoção APDF 1.1.0) | Inexistente no canônico | `temp/PROMOCAO_V110/DEC-011_PROMOCAO.md` | Não formalizado | `APPROVED` (na minuta) | DeepSeek declarou `APPROVED` em template sem aprovação humana. | Reclassificar para `PENDING_APPROVAL` e numerar como **`DEC-012`**. |
| `APDF_V01.md` | `docs/01-metodologia/APDF_V01.md` | `temp/PROMOCAO_V110/APDF_V01.md` | **`1.0.1` (APPROVED)** | `1.1.0` (PENDING_APPROVAL) | Versão 1.1.0 incorpora C-01, C-05..C-07, C-11 e C-12/13. | Manter 1.0.1 canônica até deliberação de DEC-012. |
| Baseline Documental | `MANIFESTO-SHA256.md` | `temp/PROMOCAO_V110/MANIFESTO-SHA256.md` | **`v0.2.1` (APPROVED)** | `v0.3.0` (PROPOSTO) | Manifesto v0.2.1 tem 27/27 conferidos. v0.3.0 é minuta candidata. | Manter v0.2.1 até promoção autorizada. |
| Painel de Estado | — | `temp/estado-atual.md` | Não normativo | `EM PROGRESSO` | Reflete adequadamente a transição G0 -> G1 e entregas em temp. | Manter atualizado com Lote G1 e consolidação. |
| Relatório Fase B | — | `temp/resultado-fase-b.md` | Não normativo | `PENDENTE (G0 bloqueado)` | Desatualizado contra DEC-009 e contra entregas de schemas da Fase B. | Aplicar patch de reconciliação histórica. |
| Schemas Formais (10) | `specs/schemas/` e `specs/contratos/` (apenas READMEs) | `temp/lote-02-gpt/specs/` | Inexistentes na raiz | Candidatos (10 schemas) | Prontos para promoção, mas aguardando resolução de G1. | Não mover para specs/ antes de G1. |
| Fixtures de Teste (10) | `tests/contracts/` (apenas README) | `temp/lote-02-gpt/tests/fixtures/` | Inexistentes na raiz | Candidatas (10 fixtures) | Prontas para promoção, aguardando resolução de G1. | Não mover para tests/ antes de G1. |

---

## 2. Síntese de Integridade Normativa

- Decisões Canônicas Válidas: **`DEC-001` a `DEC-010` (todas `APPROVED`)**.
- Minutas em Deliberação: **`DEC-011` (Critérios G1)** e **`DEC-012` (Promoção APDF 1.1.0)**.
- Baseline Ativa: **`v0.2.1`** (imutável até ato humano formal).
- Nenhuma violação da integridade canônica foi cometida pelos agentes.
