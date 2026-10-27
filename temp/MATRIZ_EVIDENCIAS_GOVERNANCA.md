# Matriz de Evidências e Rastreabilidade de Governança — PDI

**ID:** EVI-MATRIZ-GOV-001  
**Tipo:** Matriz de Rastreabilidade e Auditoria Independente  
**Data:** 2026-10-26  
**Versão da Baseline:** 0.2.0  
**Status:** CONCLUÍDO (Auditoria independente de evidências reais em disco e Git)  
**Ambiente Inspecionado:** Local Windows (`E:\documentos\projetos\PDI`) e Repositório Remoto (`https://github.com/1305RGP/PDI.git`)  
**Commit Auditado:** [`205bc59`](https://github.com/1305RGP/PDI/commit/205bc59) no branch `main`  
**Executor:** Gemini (Auditor Independente de Governança)  

---

## 1. Critérios de Classificação da Matriz

- **Grau de Confiança:**
  - `ALTO`: Comprovado diretamente por arquivo em disco, hash SHA-256 verificado ou comando Git executado com resultado inspecionado.
  - `MÉDIO`: Comprovado por relatório convergente de múltiplos agentes, mas dependente de validação operacional futura.
  - `BAIXO`: Alegação documental sem correspondência de arquivo ou com hash que não resolve no commit inspecionado.
- **Classificação:**
  - `VERIFICADO_CONFORME`: Afirmação atestada por evidência documental e técnica independente.
  - `DIVERGENTE`: Conflito factual detectado entre documentos, versões ou relatórios de agentes.
  - `PENDENTE_DECISAO`: Item regulamentar que depende exclusivamente de deliberação soberana humana.
  - `NOT_VERIFIED`: Elemento que não pôde ser testado no ambiente de execução real.

---

## 2. Matriz Consolidada de Afirmações e Evidências

| ID | Afirmação / Fato Auditado | Localização / Arquivo e Linha | Evidência Verificada | Grau de Confiança | Classificação | Ação Necessária |
|---|---|---|---|:---:|:---:|---|
| **EVI-01** | O repositório Git local está configurado, no branch `main`, sincronizado com o GitHub `1305RGP/PDI` no commit `205bc59`. | Git log / `git status` / `git remote -v` | Commit `205bc59` enviado ao remoto `https://github.com/1305RGP/PDI.git`. Working tree com `temp/lote-02-gpt` e novos lotes integrais. | `ALTO` | `VERIFICADO_CONFORME` | Registrar commit e branch no relatório final. |
| **EVI-02** | A baseline documental v0.2.0 possui 27 arquivos normativos com 100% de integridade criptográfica. | [`MANIFESTO-SHA256.md#L11-L40`](file:///E:/documentos/projetos/PDI/MANIFESTO-SHA256.md#L11-L40) | Script PowerShell recalculou os 27 arquivos em disco: **27 verificados, 0 divergências**. | `ALTO` | `VERIFICADO_CONFORME` | Nenhuma ação na baseline; integridade preservada. |
| **EVI-03** | A decisão `DEC-007` adotou o `APDF_V01.md` como padrão metodológico do Núcleo. | [`registro-de-decisoes.md#L21-L50`](file:///E:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md#L21-L50) | Registrado formalmente no arquivo com contexto, decisão, alternativas, justificativa e ressalvas (L-01 a L-05). Estado: `APPROVED`. | `ALTO` | `VERIFICADO_CONFORME` | Manter `DEC-007` intocada. |
| **EVI-04** | O documento histórico `apdf.md` foi marcado como `SUPERSEDED`. | [`docs/01-metodologia/apdf.md#L6`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/apdf.md#L6) | Cabeçalho: `SUPERSEDED — histórico; substituído por MET-APDF-001 v1.0.0 (APDF_V01.md)`. Hash: `7e0e97e9...`. | `ALTO` | `VERIFICADO_CONFORME` | Preservar para fins de rastreabilidade histórica. |
| **EVI-05** | O Gate G0 foi aprovado formalmente na baseline normativa. | [`README.md#L49-L52`](file:///E:/documentos/projetos/PDI/README.md#L49-L52); [`temp/estado-atual.md#L14`](file:///E:/documentos/projetos/PDI/temp/estado-atual.md#L14) | **Falso.** `README.md` declara: *"G0 — revisão da materialização: conferir os arquivos..."* como próximo gate. `estado-atual.md` indica: *"Gate Ativo: Gate G0"*. `registro-de-decisoes.md` NÃO contém decisão de encerramento de G0. | `ALTO` | `DIVERGENTE` | Submeter `PROPOSTA_DECISAO_G0.md` para deliberação humana formal e registrar como `DEC-008`. |
| **EVI-06** | A neutralidade arquitetural da `DEC-003` foi preservada no `APDF_V01`. | [`APDF_V01.md#L232-L248`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/APDF_V01.md#L232-L248); Anexo A (`AD-04`) | Fase 08 não impõe Clean Architecture/EDA universal; remete formalmente a ADRs de projeto (`docs/03-adrs/`) e à `NCE-001`. | `ALTO` | `VERIFICADO_CONFORME` | Manter DEC-003 e a neutralidade arquitetural. |
| **EVI-07** | O Checkpoint Anti-Surto do `APDF_V01` satisfaz integralmente o contexto do `CTR-03`. | [`APDF_V01.md#L367-L388`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/APDF_V01.md#L367-L388); [`contrato-03-harness.md#L19`](file:///E:/documentos/projetos/PDI/docs/02-contratos/contrato-03-harness.md#L19) | **Divergência detectada (F-01 de DeepSeek v2):** O template de checkpoint em §8.4 lista 9 campos, omitindo `dependencies`. O §15.2 (L556) lista os 10 campos. | `ALTO` | `DIVERGENTE` | Corrigir no patch v1.0.1 do `APDF_V01.md` inserindo o campo `dependencies` em §8.4. |
| **EVI-08** | Os hashes dos arquivos superseded citados no Anexo A.1 do `APDF_V01` resolvem no repositório atual. | [`APDF_V01.md#L630-L639`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/APDF_V01.md#L630-L639) | **Inconsistência de proveniência (F-02 de DeepSeek v2):** Os hashes citados (`db5fbf1e...` e `75cf2e28...`) eram da v0.1.0 pré-DEC-007; os arquivos vigentes em disco têm `7e0e97e9...` e `b08f9b0c...`. | `ALTO` | `DIVERGENTE` | Ajustar notas de proveniência no patch v1.0.1 para esclarecer que os hashes citados referem-se à versão v0.1.0 preservada em `_backup/`. |
| **EVI-09** | A fonte original `APDF(1).md` foi recuperada e validada. | [`APDF_V01.md#L609`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/APDF_V01.md#L609); [`registro-de-decisoes.md#L40`](file:///E:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md#L40) | **Não recuperada.** Registrado formalmente como ressalva `L-01`. As fontes utilizadas foram `APDF.md` e `ORQUESTRADOR_APDF.md`. | `ALTO` | `VERIFICADO_CONFORME` (quanto à limitação declarada) | Não declarar conformidade integral externa; manter a metodologia como padrão próprio do Núcleo. |
| **EVI-10** | Os schemas formais e fixtures da Fase B existem e são válidos. | [`temp/lote-02-gpt/`](file:///E:/documentos/projetos/PDI/temp/lote-02-gpt/) | 5 schemas de contratos, 5 schemas de governança e 5 fixtures existem em `temp/lote-02-gpt/`. Validados sintaticamente por JSON parse. Pastas normativas `specs/` continuam com READMEs (`DRAFT`). | `ALTO` | `VERIFICADO_CONFORME` (como especificação candidata) | Promover para `specs/` e `tests/` após a formalização do Gate G0. |
| **EVI-11** | Os metadados de cabeçalho `Estado:` em arquivos normativos utilizam valores canônicos. | [`docs/00-governanca/hierarquia-documental.md#L52`](file:///E:/documentos/projetos/PDI/docs/00-governanca/hierarquia-documental.md#L52); diversos cabeçalhos | **Inconsistência sintática:** Arquivos como `README.md`, `norma-central.md` e contratos utilizam `APPROVED — conceitualmente; ...`. O enum canônico prevê apenas `APPROVED`. | `ALTO` | `DIVERGENTE` | Adotar campos separados (`Estado` enum estrito + `Observação`) na modelagem técnica da Fase B. |
| **EVI-12** | A ferramenta TPM ou comandos de orquestração externa foram executados no ambiente local. | [`inventario.md#L13-L22`](file:///E:/documentos/projetos/PDI/docs/05-ferramentas/inventario.md#L13-L22); [`APDF_V01.md#L495`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/APDF_V01.md#L495) | **Não executados.** Inventário permanece em `DRAFT`. Ressalva `L-03` e `L-04` no `APDF_V01`. Proibição mandatória da `DEC-004` e `DEC-006` respeitada. | `ALTO` | `NOT_VERIFIED` (por restrição normativa de escopo) | Manter ferramentas externas desabilitadas até o Gate G2 (Fase C). |
| **EVI-13** | Os papéis de responsabilidade técnica e segurança da Matriz de Autoridade foram designados nominalmente. | [`matriz-de-autoridade.md#L41-L44`](file:///E:/documentos/projetos/PDI/docs/00-governanca/matriz-de-autoridade.md#L41-L44) | Cabeçalhos contêm: *"designação nominal pendente conforme GOV-AUTH-001"*. O Proprietário Humano concentra as aprovações reservadas. | `ALTO` | `PENDENTE_DECISAO` | Preenchimento nominal transferido para o rito de onboarding de equipes do projeto. |

---

## 3. Síntese Epistemológica da Auditoria

1. **O que é Fato Comprovado:** A baseline v0.2.0 está íntegra e materializada (27 arquivos com hashes idênticos); a metodologia `APDF_V01` é robusta e está adotada em `DEC-007`; os artefatos de teste e schemas foram especificados pelo GPT em `temp/lote-02-gpt/`.
2. **O que é Divergência Objetiva:** O Gate G0 foi autorizado em conversa, mas não formalizado no `registro-de-decisoes.md` nem no `README.md`; o checkpoint do Anti-Surto §8.4 omite `dependencies`; strings de estado contêm notas explicativas anexadas ao enum.
3. **O que é Decisão Exclusiva Humana:** A formalização e assinatura do encerramento de G0 (`DEC-008`), autorizando a promoção dos schemas da Fase B.
