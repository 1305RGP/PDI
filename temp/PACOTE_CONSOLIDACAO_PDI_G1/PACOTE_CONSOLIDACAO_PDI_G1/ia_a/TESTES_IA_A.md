# Relatório de Testes e Execuções — IA A

**ID:** TST-IA-A-001  
**Tipo:** Registro de Testes Executados, Validações e Limitações  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** EXECUTADO (Suítes PowerShell) / BLOQUEADO (Motor Draft 2020-12)

---

## 1. Testes Executados com Sucesso

### 1.1 Suíte de Validação Candidata de G1
- **Script:** `temp/lote-integral-gpt/scripts/Invoke-G1CandidateValidation.ps1`
- **Comando Executado:**
  ```powershell
  powershell -ExecutionPolicy Bypass -File "temp/lote-integral-gpt/scripts/Invoke-G1CandidateValidation.ps1"
  ```
- **Resultado:** **`44 PASS / 0 FAIL`**
- **Verificações Realizadas:**
  * Quantidade total de schemas candidatos: 10 (`G1-SYN-01`)
  * Declaração de dialeto `draft/2020-12/schema`: 10 schemas (`G1-DIALECT-*`)
  * Presença de `$id` canônico: 10 schemas (`G1-ID-*`)
  * Resolução de referências `$ref` locais: 6 referências (`G1-REF-*`)
  * Conformidade dos enums de estado de artefato com GOV-DOC-001: (`G1-CTR01-ENUM`)
  * Campos obrigatórios em `metadata`, `approval`, `evidence`, `task-context`, `tool-capability` (`G1-CTR01..04-REQUIRED`, `G1-APPROVAL-REQUIRED`)
  * Testes negativos com fixtures com omissão de campos obrigatórios (`G1-NEG-*`)
  * Rejeição de string arbitrária em enum de estado (`G1-NEG-STATE`)
  * Preservação de resultado `NOT_RUN` em evidência (`G1-SEM-NOTRUN`)
  * Rejeição de roteamento de ferramenta não testada (`G1-SEM-ROUTING`)
  * Vinculação de critérios de aceite aos 5 perfis contratuais (`G1-PROFILE-01..05`)

### 1.2 Suíte de Validação Contratual dos Schemas
- **Script:** `temp/lote-integral-gpt/scripts/Invoke-ContractCandidateValidation.ps1`
- **Comando Executado:**
  ```powershell
  powershell -ExecutionPolicy Bypass -File "temp/lote-integral-gpt/scripts/Invoke-ContractCandidateValidation.ps1"
  ```
- **Resultado:** **`58 PASS / 0 FAIL`**
- **Verificações Realizadas:**
  * Parse JSON de todos os 20 arquivos em `temp/lote-02-gpt/` (`SYN-001` e `SYN-*`)
  * Dialetos e IDs individuais de cada schema (`SCH-*-DIALECT`, `SCH-*-ID`)
  * Resolução física de `$ref` locais em disco (`REF-*`)
  * Rastreabilidade de enums e campos obrigatórios de contratos (`CTR-01-STATE-ENUM`, `TC-CTR-01-POSITIVE/NEGATIVE`)
  * Preservação de integridade de contexto, logs e ausência de instalação silenciosa (`TC-CTR-02-NOT-RUN`, `TC-CTR-03-CONTEXT`, `TC-CTR-04-NOT-ROUTABLE`, `TC-CTR-05-NO-SILENT-INSTALL`)
  * Quantidade exata de critérios vinculados em cada perfil contratual (`COVERAGE-contrato-01` a `05`)

---

## 2. Testes NÃO Executados (`NOT_RUN`) e Limitações

### 2.1 Motor Oficial JSON Schema Draft 2020-12
- **Status:** **`NOT_RUN` / `BLOCKED`**
- **Causa:** O ambiente Windows possui `node v22.14.0`, mas o pacote validador oficial (`ajv-cli` com suporte a Draft 2020-12 ou `check-jsonschema`) não está instalado local nem globalmente.
- **Regulamento:** `AGENTS.md` veda a instalação de pacotes (`npm install`, `pip install`) sem autorização expressa do Proprietário Humano.
- **Comando Reproduzível Recomendado (quando autorizado):**
  ```powershell
  npx --yes ajv-cli@5 validate -s temp/lote-02-gpt/specs/schemas/metadata.schema.json -d temp/lote-02-gpt/tests/fixtures/metadata-valid.json
  ```

### 2.2 Testes Comportamentais Avançados (Fase C)
- **Status:** **`NOT_RUN` (Fora do Escopo da Fase B)**
- **Casos:** Detecção de escrita concorrente em arquivos reais (`CA-04-03`), interrupção real por estouro de loop (`CA-03-05`), injeção e bloqueio de violações de permissões em runtime (`CA-03-01`), verificação de compatibilidade em ambiente Antigravity real (`DEC-006`).
- **Justificativa:** A Fase B tem como escopo a modelagem formal (schemas e cadernos de teste). A execução comportamental em runtime é objeto da **Fase C (Harness e Ambiente Antigravity)**.
