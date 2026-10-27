# Lista de Decisões Pendentes do Proprietário — Gate G1

**ID:** G1-DEC-HUM-001  
**Tipo:** Relação de Deliberações Exclusivas do Proprietário Humano  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** PENDENTE DE AÇÃO HUMANA (GOV-AUTH-001)

Nenhuma decisão abaixo pode ser deliberada por agente de IA. Cada item exige manifestação de vontade expressa do Proprietário Humano.

---

## Decisão 1 — DEC-011: Formalização dos Critérios de Aceite do Gate G1

| Campo | Conteúdo |
|---|---|
| **Identificador** | DEC-011 |
| **Questão a decidir** | Registrar formalmente no `docs/00-governanca/registro-de-decisoes.md` os seis critérios de aceite do Gate G1 (`CA-G1-01` a `CA-G1-06`) e declarar a prontidão técnica do gate. |
| **Minuta proposta** | `temp/PACOTE_CONSOLIDACAO_PDI_G1/PACOTE_CONSOLIDACAO_PDI_G1/PATCH_CONSOLIDADO/DEC-011_E_DEC-012_HARMONIZADOS.md` (seção DEC-011) |
| **Evidências disponíveis** | Relatório consolidado `RELATORIO_CONSOLIDADO_G1.md`; matriz de rastreabilidade `MATRIZ_RASTREABILIDADE_G1.md`; revisão IA A e IA B; suíte PowerShell com 102 checks PASS. |
| **Riscos se não aprovado** | Gate G1 permanece sem critérios normativos formalizados; impossível declarar encerramento objetivo da Fase B. |
| **Consequências se aprovado** | DEC-011 fica como `APPROVED` no registro de decisões; critérios CA-G1-01 a CA-G1-06 tornam-se parte da baseline governamental. |
| **Opções** | [A] Aprovar minuta como está. [B] Ajustar redação de algum critério antes de homologar. |
| **Ação necessária após decisão** | Proprietário aprova ou ajusta; agente acrescenta a minuta ao registro de decisões (somente após aprovação expressa). |

---

## Decisão 2 — DEC-HUM-03: Estratégia de Validação Draft 2020-12 (Motor Oficial)

| Campo | Conteúdo |
|---|---|
| **Identificador** | DEC-HUM-03 (derivado de ACH-01 / BLOCKER) |
| **Questão a decidir** | Escolher entre autorizar execução pontual do motor oficial JSON Schema Draft 2020-12 (`ajv-cli`) ou aceitar os 102 checks PowerShell como validação estrutural suficiente para a Fase B. |
| **Evidências disponíveis** | `temp/RELATORIO_VALIDACAO_DRAFT2020_12.md`; `temp/lote-integral-gpt/scripts/Invoke-G1CandidateValidation.ps1`; `Invoke-ContractCandidateValidation.ps1`. |
| **Riscos se não decidido** | Validação semântica oficial permanece `NOT_RUN`; CA-G1-03 não pode ser atestado formalmente. |
| **Consequências** | [A] exige instalação de pacote externo (proibida sem autorização); [B] declara validação estrutural suficiente, postergando motor AJV para Fase C. |
| **Opções** | [A] Autorizar `npx --yes ajv-cli@5 validate` para cada schema/fixture. [B] Aceitar suíte PowerShell como suficiente para Fase B. |
| **Comando reproduzível (quando autorizado)** | `npx --yes ajv-cli@5 validate -s temp/lote-02-gpt/specs/schemas/metadata.schema.json -d temp/lote-02-gpt/tests/fixtures/metadata-valid.json` (exemplo; repetir para todos os 10 schemas e 10 fixtures). |
| **Ação necessária após decisão** | Se [A]: aguardar autorização de instalação, executar validação, registrar log de saída. Se [B]: registrar decisão como evidência de encerramento de G1. |

---

## Decisão 3 — DEC-012: Promoção do APDF v1.1.0 e Baseline v0.3.0

| Campo | Conteúdo |
|---|---|
| **Identificador** | DEC-012 |
| **Questão a decidir** | Aplicar agora o pacote `temp/PROMOCAO_V110/` (promoção de `APDF_V01.md` para v1.1.0 e elevação da baseline para v0.3.0) ou manter v1.0.1 / v0.2.1 vigentes durante a Fase B. |
| **Minuta proposta** | Mesma minuta acima (seção DEC-012) e `temp/PROMOCAO_V110/README_PROMOCAO.md`. |
| **Evidências disponíveis** | `temp/PROMOCAO_V110/APDF_V01.md` (candidata v1.1.0); `REGISTRO_ALTERACOES_APDF_G1.md`; `ERRATA_DEC009_DEC010_CANDIDATA.md`. |
| **Riscos se aprovado agora** | Altera baseline normativa vigente (v0.2.1 → v0.3.0) durante a Fase B; exige recálculo de manifesto e atualização de `README.md`, `CHANGELOG.md`. |
| **Riscos se postergado** | Lacuna `L-08` (`CA-APDF-07` e `CA-APDF-08` parcialmente satisfeitos) permanece aberta até v1.1.0. |
| **Opções** | [A] Aprovar promoção agora (substitui arquivos canônicos). [B] Postergar para encerramento de G1 ou Fase C; mantém v1.0.1 e v0.2.1 vigentes. |
| **Ação necessária após decisão** | Se [A]: aplicar cópia controlada dos 5 arquivos de `temp/PROMOCAO_V110/` para destinos canônicos, recalcular manifesto, commit (apenas após autorização expressa). Se [B]: nenhum arquivo normativo alterado. |

---

## Decisão 4 — DEC-HUM-04: Confirmação Literal da Redação de DEC-010

| Campo | Conteúdo |
|---|---|
| **Identificador** | DEC-HUM-04 |
| **Questão a decidir** | Declarar formalmente o aceite literal da redação de `DEC-010` (gerada pelo agente a partir de instrução direta do proprietário na sessão anterior) e realizar a leitura final do texto da `APDF_V01` v1.0.1. |
| **Evidências disponíveis** | `docs/00-governanca/registro-de-decisoes.md` (seção DEC-010, linhas 100-125); `temp/REVISAO_CRITICA_APDF_V101.md`. |
| **Riscos se não aprovado** | O estado `APPROVED` de DEC-010 refere-se ao escopo, não ao aceite literal da redação; pendência formal permanece. |
| **Opções** | [A] Confirmar redação literal. [B] Solicitar revisão da redação antes de confirmar. |
| **Ação necessária após decisão** | Registrar confirmação como evidência vinculada à versão v0.2.1. |

---

## Decisão 5 — DEC-HUM-05: Homologação Definitiva do Gate G1

| Campo | Conteúdo |
|---|---|
| **Identificador** | DEC-HUM-05 |
| **Questão a decidir** | Declarar o Gate G1 formalmente concluído e autorizar a entrada na Fase C (Ambiente Antigravity, Harness e Capacidade de Ferramentas). |
| **Condição prévia** | Sanar previamente as Decisões 1, 2 e 4 acima (DEC-011, DEC-HUM-03, DEC-HUM-04). |
| **Evidências disponíveis** | Relatório final `RELATORIO_ENCERRAMENTO_G1.md`; todos os relatórios de frente IA A e IA B; matriz de evidências. |
| **Riscos se aprovado prematuramente** | Critérios CA-G1-03 (motor oficial) sem validação formal; critérios comportamentais (15 NOT_RUN) não cobertos pela Fase B. |
| **Opções** | [A] Homologar G1 agora (após sanar condições prévias). [B] Manter G1 em `READY_FOR_HUMAN_REVIEW` pendente de Fase C. |
| **Ação necessária após decisão** | Se [A]: autorizar promoção controlada de schemas/fixtures para `specs/` e `tests/` (somente após aprovação expressa). |
