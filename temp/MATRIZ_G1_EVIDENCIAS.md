# Matriz Consolidada de Evidências de Auditoria e Governança — Gate G1

**ID:** MAT-G1-EVIDENCIAS-001  
**Tipo:** Matriz de Rastreabilidade de Evidências, Controles e Auditoria de Gate  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** CONCLUÍDO (Evidências Auditadas e Vinculadas à Baseline v0.2.1 no Commit `bc45753`)  
**Repositório:** `1305RGP/PDI` (branch `main`)  
**Commit Auditado:** `bc457538209491d52fe128d5184117d547906d3a`  
**Auditor Responsável:** Agente Gemini (IA de Auditoria e Governança)  
**Autoridade de Homologação:** Proprietário Humano do Núcleo (designação nominal pendente conforme `GOV-AUTH-001`)

---

## 1. Critérios de Avaliação e Escala de Confiança

A matriz consolida todas as afirmações, requisitos e controles auditados no ciclo de transição do Gate G0 para o Gate G1 (Fase B).
- **Resultados Possíveis:**
  - `PASS`: Evidência física direta e inequívoca reproduzida localmente no commit `bc45753`.
  - `PASS LIMITADO`: Validação estrutural/sintática executada com sucesso, porém com limitações de motor semântico oficial.
  - `BLOCKED`: Execução impedida por restrição de ambiente, ausência de ferramenta autorizada ou política de segurança.
  - `NOT_RUN`: Procedimento planejado que não foi submetido a execução computacional.
  - `PROPOSED`: Proposta técnica elaborada e isolada em `temp/`, aguardando deliberação humana.
  - `SUPERSEDED`: Afirmação ou documento de rodada preliminar superado por decisão posterior com rastreabilidade.
  - `DONE`: Ação processual ou de auditoria integralmente concluída.
- **Graus de Confiança:**
  - `MÁXIMA`: Verificação criptográfica direta byte-a-byte ou rastreabilidade Git nativa.
  - `ALTA`: Script automatizado de parse e conformidade reproduzido com saída capturada.
  - `MÉDIA`: Verificação estática documental com dependência de validação semântica futura.
  - `BAIXA`: Alegação baseada exclusivamente em declaração textual sem harness executável.

---

## 2. Matriz Completa de Evidências

| ID | Item / Afirmação Auditada | Fonte Normativa / Documento | Procedimento de Prova / Ferramenta | Evidência Subjacente / Saída Observada | Resultado | Confiança | Ação Recomendada / Próximo Passo |
|---|---|---|---|---|---|---|---|
| **EVI-G1-01** | O repositório está no branch `main`, no commit canônico `bc45753` e sincronizado com `origin/main`. | [AGENTS.md](file:///e:/documentos/projetos/PDI/AGENTS.md), [README.md](file:///e:/documentos/projetos/PDI/README.md) | `git status`, `git rev-parse HEAD`, `git remote -v` | `HEAD = bc457538209491d52fe128d5184117d547906d3a`; `Your branch is up to date with 'origin/main'`. | **PASS** | MÁXIMA | Manter `bc45753` como base auditada de G1. |
| **EVI-G1-02** | O working tree do repositório está limpo em arquivos normativos rastreados. | [AGENTS.md](file:///e:/documentos/projetos/PDI/AGENTS.md), [norma-central.md](file:///e:/documentos/projetos/PDI/docs/00-governanca/norma-central.md) | `git status` no workspace | `nothing added to commit but untracked files present`; untracked exclusivamente em `temp/`. | **PASS** | MÁXIMA | Nenhuma ação corretiva de working tree necessária. |
| **EVI-G1-03** | Menções anteriores ao commit `205bc59` em relatórios preliminares foram identificadas e esclarecidas. | [MATRIZ_EVIDENCIAS_GOVERNANCA.md](file:///e:/documentos/projetos/PDI/temp/MATRIZ_EVIDENCIAS_GOVERNANCA.md) | `grep_search` nos arquivos de `temp/` | Documentos do lote 02 citavam `205bc59`, commit anterior à homologação de `DEC-008`/`009`/`010` no commit `bc45753`. | **SUPERSEDED** | MÁXIMA | Registrar `bc45753` como único commit oficial no relatório de entrega. |
| **EVI-G1-04** | A baseline documental v0.2.1 é composta por 27 arquivos normativos no manifesto. | [MANIFESTO-SHA256.md](file:///e:/documentos/projetos/PDI/MANIFESTO-SHA256.md) | Parse de tabela do manifesto via PowerShell | 27 caminhos listados com hashes SHA-256 de 64 caracteres hexadecimais. | **PASS** | MÁXIMA | Monitorar integridade contínua. |
| **EVI-G1-05** | Todos os 27 arquivos normativos possuem integridade criptográfica de 100% em disco. | [MANIFESTO-SHA256.md](file:///e:/documentos/projetos/PDI/MANIFESTO-SHA256.md), `CA-G0-02` | Execução do script `verify.ps1` via `Get-FileHash SHA256` | `VERIFICATION RESULT: 27 / 27 files verified with 0 mismatches`. | **PASS** | MÁXIMA | Integridade criptográfica comprovada sem divergência. |
| **EVI-G1-06** | O diretório `temp/` e arquivos de intercâmbio estão rigorosamente excluídos do manifesto. | [MANIFESTO-SHA256.md:L8](file:///e:/documentos/projetos/PDI/MANIFESTO-SHA256.md#L8) | Inspeção textual do manifesto | Escopo: "`temp/`, `_backup/` e artefatos de intercâmbio são explicitamente não normativos e não integram este manifesto". | **PASS** | MÁXIMA | Preservar isolamento contínuo de `temp/`. |
| **EVI-G1-07** | O Gate G0 foi formalmente concluído e homologado pelo Proprietário Humano. | [registro-de-decisoes.md#L76](file:///e:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md#L76), [DEC-009](file:///e:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md#L76) | Análise de `DEC-009` em `registro-de-decisoes.md` | Estado: `APPROVED`. "Declarar formalmente HOMOLOGADO E CONCLUÍDO o Gate G0". | **PASS** | MÁXIMA | Gate G0 arquivado como concluído. |
| **EVI-G1-08** | Os critérios de aceite de G0 foram formalizados previamente em norma. | [DEC-008](file:///e:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md#L54) | Análise de `DEC-008` em `registro-de-decisoes.md` | Estado: `APPROVED`. Critérios `CA-G0-01` a `CA-G0-06` codificados. | **PASS** | MÁXIMA | Servir de paradigma para a formalização de G1. |
| **EVI-G1-09** | O escopo do patch `1.0.1` de `APDF_V01.md` foi fixado em 6 correções editoriais por `DEC-010`. | [DEC-010](file:///e:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md#L100), [APDF_V01.md:L11](file:///e:/documentos/projetos/PDI/docs/01-metodologia/APDF_V01.md#L11) | Comparação de `APDF_V01.md` v1.0.1 em disco com texto de `DEC-010` | Incorporadas: `C-02`, `C-03`, `C-04`, `C-08`, `C-09`, `C-10`. Diferidas: `C-01`, `C-05`, `C-06`, `C-07`, `C-11` para v1.1.0. | **PASS** | MÁXIMA | Rastreabilidade histórica preservada entre DEC-009 e DEC-010. |
| **EVI-G1-10** | A versão candidata APDF v1.1.0 foi elaborada pelo DeepSeek contendo as correções diferidas. | [APDF_V1_1_0_CANDIDATA.md](file:///e:/documentos/projetos/PDI/temp/APDF_V1_1_0_CANDIDATA.md) | Leitura do cabeçalho e Anexo C de `APDF_V1_1_0_CANDIDATA.md` | Versão: 1.1.0; Estado: `PENDING_APPROVAL`; Anexo C.2 incorpora as 5 correções diferidas e C.5 adiciona `C-12`/`C-13`. | **PROPOSED** | ALTA | Submeter candidata à deliberação humana (`DEC-012`). |
| **EVI-G1-11** | Os 10 JSON Schemas candidatos do GPT possuem sintaxe JSON válida e dialeto Draft 2020-12. | [contrato-01 a 05](file:///e:/documentos/projetos/PDI/temp/lote-02-gpt/specs/contratos/), [schemas comuns](file:///e:/documentos/projetos/PDI/temp/lote-02-gpt/specs/schemas/) | Execução de `Invoke-G1CandidateValidation.ps1` | 10/10 schemas: dialeto `https://json-schema.org/draft/2020-12/schema` declarado, `$id` presente. | **PASS** | ALTA | Schemas aptos estruturalmente para Fase B. |
| **EVI-G1-12** | As referências locais relativas (`$ref`) entre schemas de contratos e schemas comuns resolvem em disco. | [specs/contratos/](file:///e:/documentos/projetos/PDI/temp/lote-02-gpt/specs/contratos/) | Teste de resolução de caminho via `Test-Path` no PowerShell | Testes `G1-REF-contrato-01` a `05` executados com sucesso (todos os `$ref` encontrados). | **PASS** | ALTA | Integridade referencial local confirmada. |
| **EVI-G1-13** | O enum de estados de artefato nos schemas coincide com a norma canônica (`CTR-01` / `GOV-DOC-001`). | [metadata.schema.json](file:///e:/documentos/projetos/PDI/temp/lote-02-gpt/specs/schemas/metadata.schema.json) | Teste `G1-CTR01-ENUM` no runner PowerShell | Enum contém exatamente: `DRAFT`, `IN_REVIEW`, `PENDING_APPROVAL`, `CHANGES_REQUESTED`, `APPROVED`, `REJECTED`, `SUPERSEDED`, `OBSOLETE`. | **PASS** | ALTA | Conformidade com NCE-001 e CTR-01. |
| **EVI-G1-14** | Testes de cenários negativos rejeitam estados e campos inválidos. | [tests/fixtures/](file:///e:/documentos/projetos/PDI/temp/lote-02-gpt/tests/fixtures/) | Execução de `G1-NEG-*` e `TC-CTR-01-NEGATIVE` | Fixtures de estado inválido, decider ausente, logs ausentes e prohibited_actions ausentes rejeitadas pelo harness. | **PASS LIMITADO** | MÉDIA | Validação negativa comprovada estruturalmente; pendente de motor semântico. |
| **EVI-G1-15** | O resultado `NOT_RUN` em evidência de teste não é convertido em `PASS`. | [evidence-not-run.json](file:///e:/documentos/projetos/PDI/temp/lote-02-gpt/tests/fixtures/evidence-not-run.json) | Teste `G1-SEM-NOTRUN` e `TC-CTR-02-NOT-RUN` | Fixture preserva `result = 'NOT_RUN'` com logs anexados; conversão bloqueada. | **PASS** | ALTA | Conformidade com regra de qualidade e evidência. |
| **EVI-G1-16** | Ferramenta com status não testado não é classificada como roteável pelo modelo. | [tool-capability-untested.json](file:///e:/documentos/projetos/PDI/temp/lote-02-gpt/tests/fixtures/tool-capability-untested.json) | Teste `G1-SEM-ROUTING` e `TC-CTR-04-NOT-ROUTABLE` | Validação confirma que status `DOCUMENTED` não é `TESTED` nem `APPROVED`. | **PASS** | ALTA | Blindagem de capacidade de ferramentas externas. |
| **EVI-G1-17** | Execução de validação semântica com motor oficial JSON Schema Draft 2020-12. | [plano-de-validacao.md](file:///e:/documentos/projetos/PDI/docs/04-qualidade/plano-de-validacao.md) | Consulta de binários (`ajv-cli`, `check-jsonschema`) | Pacotes ausentes no ambiente; instalação não autorizada pelas regras de governança. | **BLOCKED** | ALTA | Aguardar decisão humana sobre autorização de runner. |
| **EVI-G1-18** | Os artefatos candidatos de GPT permanecem isolados em `temp/lote-02-gpt/` sem contaminação de `specs/` e `tests/`. | [AGENTS.md](file:///e:/documentos/projetos/PDI/AGENTS.md), [DEC-009](file:///e:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md#L88) | `Get-ChildItem` em `specs/` e `tests/` | Diretórios normativos contêm unicamente seus arquivos `README.md` da baseline v0.2.1. | **PASS** | MÁXIMA | Promoção controlada aguarda formalização de G1. |
| **EVI-G1-19** | A designação nominal de autoridades técnicas permanece concentrada no Proprietário Humano. | [matriz-de-autoridade.md](file:///e:/documentos/projetos/PDI/docs/00-governanca/matriz-de-autoridade.md), `GOV-AUTH-001` | Leitura da seção de ressalvas de autoridade | Ressalva explícita: designações nominais aguardam onboarding; nenhuma IA tem poder decisório. | **PASS** | MÁXIMA | Pareceres técnicos não substituem aprovação humana. |
| **EVI-G1-20** | O Gate G1 está formalmente aprovado e encerrado. | [README.md:L54](file:///e:/documentos/projetos/PDI/README.md#L54), [registro-de-decisoes.md](file:///e:/documentos/projetos/PDI/docs/00-governanca/registro-de-decisoes.md) | Inspeção de decisões e critérios | G1 ativo; inexiste decisão aprovando G1; motor Draft 2020-12 pendente. | **NOT_RUN / PENDENTE** | MÁXIMA | Submeter dossiê para avaliação humana de prontidão. |

---

## 3. Síntese Quantitativa dos Resultados

- **Total de Afirmações / Controles Auditados:** 20
- **Total `PASS` (Conformidade Integral Comprovada):** 13 (65%)
- **Total `PASS LIMITADO` (Conformidade Estrutural sem Validação Semântica Oficial):** 1 (5%)
- **Total `BLOCKED` (Bloqueio por Restrição de Ambiente e Vedação Regulatória):** 1 (5%)
- **Total `PROPOSED` (Propostas Documentadas e Isoladas em `temp/`):** 1 (5%)
- **Total `SUPERSEDED` (Itens de Rodadas Anteriores Superados por Rastreabilidade):** 1 (5%)
- **Total `NOT_RUN / PENDENTE` (Ações e Gates Dependentes de Deliberação Humana):** 3 (15%)
- **Total `FAIL` (Não Conformidades Críticas):** 0 (0%)

---

## 4. Declaração do Auditor

Declaro, sob as regras do Núcleo Central de Engenharia ([AGENTS.md](file:///e:/documentos/projetos/PDI/AGENTS.md)), que todas as evidências acima registradas foram extraídas e aferidas a partir do estado físico real dos arquivos do repositório `1305RGP/PDI` no commit `bc457538209491d52fe128d5184117d547906d3a`. Nenhuma suposição, ferramenta inventada ou aprovação tácita foi empregada na elaboração desta matriz.
