# Proposta de Patch Candidato de Governança — Gate G1

**ID:** PAT-G1-GOV-001  
**Tipo:** Proposta de Alterações Documentais e Minutas de Decisão (Candidato Não Aplicado)  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** PENDING_APPROVAL — Documento Candidato em `temp/`. Não altera arquivos normativos.  
**Projeto:** PDI — Núcleo Central de Engenharia  
**Repositório:** `1305RGP/PDI` (branch `main`, commit-base `bc457538209491d52fe128d5184117d547906d3a`)  
**Autor:** Agente Gemini (IA de Auditoria e Governança)  
**Autoridade Competente:** Proprietário Humano do Núcleo (designação nominal pendente conforme `GOV-AUTH-001`)

> **AVISO DE GOVERNANÇA:** Este arquivo contém minutas precisas de propostas normativas preparadas pela auditoria para deliberação soberana do Proprietário Humano. Em observância ao [AGENTS.md](file:///e:/documentos/projetos/PDI/AGENTS.md), nenhum dos trechos abaixo foi aplicado aos arquivos normativos em `docs/`, `specs/`, `tests/`, `README.md` ou `CHANGELOG.md`.

---

## 1. Minuta de Decisão: DEC-011

**Arquivo-alvo normativo:** `docs/00-governanca/registro-de-decisoes.md`  
**Posição sugerida:** Imediatamente após `DEC-010`.

```markdown
### DEC-011 — Formalização dos Critérios de Aceite e Avaliação de Prontidão do Gate G1

- **Contexto:** O Gate G1 foi ativado formalmente em DEC-009 e reiterado em DEC-010 como a etapa de "Validação técnica e executabilidade dos schemas formais e testes de conformidade da Fase B". A auditoria de governança `AUD-G1-GEMINI-001` identificou que, à semelhança do ocorrido em G0 antes de DEC-008, o Gate G1 carecia de critérios de aceite formalmente codificados e numerados no registro normativo. Ademais, a equipe técnica (GPT) concluiu a modelagem de 10 JSON Schemas e 10 fixtures de teste em `temp/lote-02-gpt/`, obtendo 102 validações com resultado PASS em suíte nativa PowerShell, mas registrou a impossibilidade de executar o motor JSON Schema Draft 2020-12 oficial (`ajv-cli`) sem autorização de instalação no ambiente.
- **Decisão:** 
  1. **ESTABELECER E APROVAR FORMALMENTE** os seis critérios objetivos de aceite do Gate G1:
     - `CA-G1-01`: Sintaxe e integridade estrutural estrita dos 10 schemas e 10 fixtures de teste no dialeto JSON Schema Draft 2020-12, com `$id` canônico e referências relativas locais (`$ref`) integralmente resolúveis;
     - `CA-G1-02`: Cobertura formal dos Contratos 01 a 05 da baseline em perfis schema dedicados (`contrato-01.schema.json` a `contrato-05.schema.json`), vinculando os 37 critérios conceituais aos schemas de dados comuns;
     - `CA-G1-03`: Executabilidade semântica e validação automatizada dos schemas e fixtures contra meta-schemas Draft 2020-12 por motor formal autorizado;
     - `CA-G1-04`: Cobertura de cenários de teste negativos com rejeição comprovada de violações contratuais (estados não canônicos, omissão de autoridade, ausência de logs ou permissões);
     - `CA-G1-05`: Preservação estrita da integridade da baseline documental (v0.2.1), blindagem contra inclusão de ferramentas não testadas e ausência de código de produto;
     - `CA-G1-06`: Catalogação e rastreabilidade integral das correções metodológicas diferidas do APDF_V01, mantendo a estabilidade da versão 1.0.1 até deliberação de versão menor.
  2. **DECLARAR AVALIADA A PRONTIDÃO TÉCNICA DO GATE G1**, reconhecendo o cumprimento de `CA-G1-01`, `CA-G1-02`, `CA-G1-04` e `CA-G1-05`, e mantendo o gate em estado **`PENDING`** unicamente quanto à execução conclusiva do motor formal de Draft 2020-12 (`CA-G1-03`).
- **Alternativas consideradas:**
  1. Homologar G1 tacitamente sem critérios formalizados — rejeitada por violação do princípio de rastreabilidade de DEC-008;
  2. Autoatribuir aprovação de G1 pelos agentes de IA — rejeitada por expressa vedação regulamentar (GOV-AUTH-001 e AGENTS.md);
  3. Formalização dos critérios candidatos e declaração de prontidão técnica com bloqueio transparente de ambiente — **adotada**.
- **Justificativa:** Confere base normativa sólida para aferição da Fase B, elimina ambiguidade sobre o que constitui sucesso na modelagem formal e protege o projeto contra aprovações prematuras sem evidência de motor compatível.
- **Consequências:**
  - Os critérios `CA-G1-01` a `CA-G1-06` passam a vincular a aceitação técnica da modelagem da Fase B;
  - O Gate G1 permanece ativo até a resolução da execução do motor Draft 2020-12;
  - Fica autorizada a preparação do lote de promoção dos schemas e cadernos de teste assim que sanado o critério `CA-G1-03`.
- **Ressalvas registradas:**
  - A execução via suíte nativa PowerShell (`Invoke-G1CandidateValidation.ps1` e `Invoke-ContractCandidateValidation.ps1`) é aceita como evidência comprobatória estrutural de Fase B, mas não substitui a validação de conformidade estrita por engine Draft 2020-12 para fases futuras;
  - A autoridade decisória permanece concentrada no Proprietário Humano do Núcleo.
- **Escopo:** Governança e ciclo de vida do Núcleo Central de Engenharia (PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo.
- **Data:** 2026-10-27.
- **Artefatos afetados:** `docs/00-governanca/registro-de-decisoes.md`, `README.md`.
- **Estado:** `PENDING_APPROVAL`.
```

---

## 2. Minuta de Decisão: DEC-012

**Arquivo-alvo normativo:** `docs/00-governanca/registro-de-decisoes.md`  
**Posição sugerida:** Imediatamente após `DEC-011`.

```markdown
### DEC-012 — Deliberação sobre a Promoção da Metodologia APDF_V01 v1.1.0

- **Contexto:** Em DEC-010, o Proprietário Humano deliberou pela redução do escopo do patch corretivo `1.0.1` de `APDF_V01.md`, diferindo cinco correções com impacto substantivo de requisitos (`C-01`, `C-05`, `C-06`, `C-07`, `C-11`) para a versão menor `1.1.0`. O agente DeepSeek concluiu a elaboração da candidata `temp/APDF_V1_1_0_CANDIDATA.md` e do diff auditável `temp/_diff_g1_v100_para_v101.diff`, incorporando as cinco correções diferidas (campo obrigatório `dependencies` no checkpoint §8.4, campo `justification` no gate §7.1, loops e recuperação em §15.5, correspondência do handoff em §11.2/§11.4 e modelagem de `REABERTO` em §7.3), bem como ajustes editoriais complementares (`C-12` e `C-13`).
- **Decisão:** [DELIBERAÇÃO DO PROPRIETÁRIO HUMANO: APROVAR A PROMOÇÃO DA v1.1.0 OU POSTERGAR PARA A FASE C].
- **Alternativas consideradas:**
  1. Promover `APDF_V1_1_0_CANDIDATA.md` para `docs/01-metodologia/APDF_V01.md` como v1.1.0, atualizando o manifesto criptográfico da baseline;
  2. Manter a v1.0.1 como versão normativa vigente durante a Fase B, transferindo a promoção da v1.1.0 para o marco de encerramento da modelagem.
- **Escopo:** Metodologia de Descoberta e Preparação (Padrão PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo.
- **Data:** 2026-10-27.
- **Artefatos afetados:** `docs/01-metodologia/APDF_V01.md`, `MANIFESTO-SHA256.md`, `CHANGELOG.md`, `registro-de-decisoes.md`.
- **Estado:** `PENDING_APPROVAL`.
```

---

## 3. Minuta de Atualização: Critérios Gerais de Aceite

**Arquivo-alvo normativo:** `docs/04-qualidade/criterios-de-aceite.md`  
**Seção a adicionar:** Nova seção `## Critérios Específicos por Gate de Ciclo de Vida`.

```markdown
## Critérios Específicos por Gate de Ciclo de Vida

### Gate G0 — Revisão da Materialização Documental (Homologado em DEC-009)
- `CA-G0-01`: Presença física de todos os artefatos normativos previstos na estrutura da baseline;
- `CA-G0-02`: Conferência de 100% de integridade criptográfica no manifesto SHA-256;
- `CA-G0-03`: Blindagem da neutralidade arquitetural (DEC-003), remetendo frameworks a ADRs locais;
- `CA-G0-04`: Metodologia de descoberta padronizada, versionada e compatibilizada com os contratos do Núcleo;
- `CA-G0-05`: Contratos 01 a 05 conceituais estáveis e suficientes para modelagem executável;
- `CA-G0-06`: Isolamento absoluto de ferramentas externas e ausência de código de produto.

### Gate G1 — Validação Técnica e Executabilidade da Modelagem (Fase B) (Formalizado em DEC-011)
- `CA-G1-01`: Sintaxe e integridade estrutural estrita dos schemas formais e fixtures em dialeto JSON Schema Draft 2020-12, com `$id` e `$ref` locais resolvidos;
- `CA-G1-02`: Cobertura formal integral dos Contratos 01 a 05 em perfis schema dedicados (`contrato-01.schema.json` a `contrato-05.schema.json`), vinculando os 37 critérios de controle aos schemas de dados comuns;
- `CA-G1-03`: Executabilidade e validação semântica automatizada dos schemas e fixtures contra meta-schemas Draft 2020-12 por motor formal autorizado;
- `CA-G1-04`: Testes negativos de violação contratual com rejeição comprovada de payloads não conformes;
- `CA-G1-05`: Blindagem do isolamento da baseline documental v0.2.1 e ausência de código de produto ou ferramentas não testadas;
- `CA-G1-06`: Rastreabilidade e saneamento das correções metodológicas diferidas do padrão APDF_V01.
```

---

## 4. Minuta de Atualização: README.md (Quando da Homologação de G1)

**Arquivo-alvo normativo:** `README.md`  
**Seção afetada:** `## Próximo gate`.

```markdown
## Próximo gate

- **Gate G0 (Revisão da materialização documental):** CONCLUÍDO e homologado formalmente em DEC-009 (2026-10-27).
- **Gate G1 (Validação técnica dos schemas e conformidade da Fase B):** CONCLUÍDO e homologado formalmente em DEC-011 (2026-10-27).
- **Próximo gate ativo (Gate G2):** Verificação no ambiente Antigravity, execução do harness e conformidade de ferramentas da Fase C.
```

---

## 5. Minuta de Atualização: CHANGELOG.md (Para Baseline v0.3.0)

**Arquivo-alvo normativo:** `CHANGELOG.md`  
**Entrada sugerida para versão subsequente:**

```markdown
## [0.3.0] - 2026-10-27

### Added
- Incorporação dos 10 JSON Schemas formais (Draft 2020-12) em `specs/schemas/` e `specs/contratos/` derivados dos Contratos 01 a 05 (DEC-009, DEC-011).
- Caderno de testes e fixtures de conformidade positiva e negativa em `tests/contracts/` e `tests/fixtures/`.
- Runner PowerShell de validação automatizada de conformidade contratual.
- Formalização dos critérios de aceite `CA-G1-01` a `CA-G1-06` para o Gate G1 em DEC-011.

### Changed
- Conclusão e homologação formal do Gate G1 (Fase B).
- Recálculo integral do `MANIFESTO-SHA256.md` para a baseline documental e técnica v0.3.0.
- Transição do gate ativo para o Gate G2 (Fase C — Ambiente Antigravity e Harness).
```
