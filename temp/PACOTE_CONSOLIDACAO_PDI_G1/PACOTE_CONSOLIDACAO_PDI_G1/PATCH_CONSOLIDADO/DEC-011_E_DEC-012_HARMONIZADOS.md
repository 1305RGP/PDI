# Minutas Harmonizadas de Decisão: DEC-011 e DEC-012

**ID:** MIN-DEC-011-012-001  
**Tipo:** Minutas Harmonizadas para Inclusão em `docs/00-governanca/registro-de-decisoes.md`  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** PENDING_APPROVAL (Submetido à Deliberação Soberana do Proprietário Humano)

---

### DEC-011 — Formalização dos Critérios de Aceite e Avaliação de Prontidão do Gate G1

- **Contexto:** O Gate G1 foi ativado formalmente em DEC-009 e reiterado em DEC-010 como a etapa de "Validação técnica e executabilidade dos schemas formais e testes de conformidade da Fase B". O relatório consolidado de encerramento constatou que a modelagem dos 10 JSON Schemas Draft 2020-12 e 10 fixtures de teste foi concluída e obteve 102 validações com resultado PASS em suíte PowerShell nativa, mas que os critérios de aceite do gate careciam de formalização explícita numerada no registro normativo.
- **Decisão:**
  1. **ESTABELECER E APROVAR FORMALMENTE** os seis critérios objetivos de aceite do Gate G1:
     - `CA-G1-01`: Sintaxe e integridade estrutural estrita dos 10 schemas e 10 fixtures de teste no dialeto JSON Schema Draft 2020-12, com `$id` canônico e referências relativas locais (`$ref`) integralmente resolúveis;
     - `CA-G1-02`: Cobertura formal dos Contratos 01 a 05 da baseline em perfis schema dedicados (`contrato-01.schema.json` a `contrato-05.schema.json`), vinculando os 37 critérios conceituais aos schemas de dados comuns;
     - `CA-G1-03`: Executabilidade semântica e validação automatizada dos schemas e fixtures contra meta-schemas Draft 2020-12 por motor formal autorizado;
     - `CA-G1-04`: Cobertura de cenários de teste negativos com rejeição comprovada de violações contratuais (estados não canônicos, omissão de autoridade, ausência de logs ou permissões);
     - `CA-G1-05`: Preservação estrita da integridade da baseline documental (v0.2.1), blindagem contra inclusão de ferramentas não testadas e ausência de código de produto;
     - `CA-G1-06`: Catalogação e rastreabilidade integral das correções metodológicas diferidas do APDF_V01, mantendo a estabilidade da versão 1.0.1 até deliberação de versão menor.
  2. **DECLARAR AVALIADA A PRONTIDÃO TÉCNICA DO GATE G1**, reconhecendo o cumprimento de `CA-G1-01`, `CA-G1-02`, `CA-G1-04`, `CA-G1-05` e `CA-G1-06`, e mantendo o gate em estado **`READY_FOR_HUMAN_REVIEW / PENDING`** unicamente quanto à deliberação sobre a execução do motor Draft 2020-12 (`CA-G1-03`).
- **Alternativas consideradas:**
  1. Homologar G1 tacitamente sem critérios formalizados — rejeitada por violação do princípio de rastreabilidade de DEC-008;
  2. Autoatribuir aprovação de G1 pelos agentes de IA — rejeitada por expressa vedação regulamentar (GOV-AUTH-001 e AGENTS.md);
  3. Formalização dos critérios candidatos e declaração de prontidão técnica — **adotada**.
- **Justificativa:** Confere base normativa sólida para aferição da Fase B, elimina ambiguidade sobre o que constitui sucesso na modelagem formal e protege o projeto contra aprovações prematuras sem evidência de motor compatível.
- **Escopo:** Governança e ciclo de vida do Núcleo Central de Engenharia (PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo.
- **Data:** 2026-10-27.
- **Artefatos afetados:** `docs/00-governanca/registro-de-decisoes.md`, `README.md`.
- **Estado:** `PENDING_APPROVAL`.

---

### DEC-012 — Deliberação sobre a Promoção da Metodologia APDF_V01 v1.1.0 e Elevação da Baseline para v0.3.0

- **Contexto:** Em DEC-010, o Proprietário Humano delimitou o patch corretivo `1.0.1` de `APDF_V01.md`, diferindo cinco correções com impacto substantivo de requisitos (`C-01`, `C-05`, `C-06`, `C-07`, `C-11`) para a versão menor `1.1.0`. O pacote candidato `temp/PROMOCAO_V110/` consolidou o texto final da versão `1.1.0` incorporando as cinco correções diferidas, bem como ajustes editoriais complementares (`C-12` e `C-13`), preparando os arquivos para a elevação da baseline para `v0.3.0`.
- **Decisão:** [A SER DELIBERADA PELO PROPRIETÁRIO HUMANO: HOMOLOGAR A PROMOÇÃO DA VERSÃO 1.1.0 E ELEVAÇÃO DA BASELINE PARA v0.3.0 OU MANTER A VERSÃO 1.0.1 COMO VIGENTE].
- **Consequências (se aprovada):**
  - `docs/01-metodologia/APDF_V01.md` é promovido para a versão `1.1.0`;
  - A baseline documental do Núcleo Central é elevada para **`v0.3.0`**;
  - `MANIFESTO-SHA256.md`, `CHANGELOG.md` e `README.md` são atualizados com os novos hashes;
  - As lacunas `L-08` do APDF são encerradas.
- **Escopo:** Metodologia de Descoberta e Preparação (Padrão PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo.
- **Data:** 2026-10-27.
- **Artefatos afetados:** `docs/01-metodologia/APDF_V01.md`, `docs/00-governanca/registro-de-decisoes.md`, `CHANGELOG.md`, `README.md`, `MANIFESTO-SHA256.md`.
- **Estado:** `PENDING_APPROVAL`.
