# Lista Consolidada de Decisões do Proprietário Humano

**ID:** LIS-DEC-HUM-001  
**Tipo:** Relação Isolada de Deliberações Humanas Exclusivas  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** PENDENTE DE AÇÃO HUMANA (GOV-AUTH-001)

---

## 1. Deliberações Bloqueantes para o Avanço de Gate

Em estrita conformidade com a Norma Central (`NCE-001`), com o Contrato 01 (`CTR-01`) e com a Matriz de Autoridade (`GOV-AUTH-001`), os itens abaixo dependem **única e exclusivamente de manifestação de vontade expressa do Proprietário Humano**, não podendo ser deliberados por agentes de IA:

### Decisão 1: Aprovação Formal dos Critérios de Aceite de G1 (`DEC-011`)
- **Objeto:** Formalizar no corpo normativo os critérios objetivos `CA-G1-01` a `CA-G1-06` para a Fase B.
- **Minuta Pronta:** [PATCH_CONSOLIDADO/DEC-011_E_DEC-012_HARMONIZADOS.md](file:///e:/documentos/projetos/PDI/temp/PACOTE_CONSOLIDACAO_PDI_G1/PACOTE_CONSOLIDACAO_PDI_G1/PATCH_CONSOLIDADO/DEC-011_E_DEC-012_HARMONIZADOS.md)
- **Opções:**
  * **[A] Aprovar:** Registra `DEC-011` como `APPROVED` e vincula o encerramento da modelagem da Fase B a esses critérios.
  * **[B] Ajustar:** Modificar a redação de algum dos critérios antes da homologação.

### Decisão 2: Autorização da Estratégia do Motor Draft 2020-12
- **Objeto:** Resolver o status `NOT_RUN` / `BLOCKED` da validação semântica oficial dos schemas.
- **Opções:**
  * **[A] Autorizar Comando de Validação:** Autorizar a execução não persistente de `npx --yes ajv-cli@5 validate` para atestar a conformidade semântica oficial dos 10 schemas;
  * **[B] Aceitar Suíte PowerShell:** Declarar que os 102 checks PASS executados em PowerShell são suficientes como validação estrutural para a Fase B, postergando o motor AJV para os testes de integração em runtime da Fase C.

### Decisão 3: Deliberação sobre a Promoção do APDF v1.1.0 e Baseline v0.3.0 (`DEC-012`)
- **Objeto:** Decidir se o pacote preparado pelo DeepSeek em `temp/PROMOCAO_V110/` deve ser aplicado na baseline agora ou mantido como candidato.
- **Opções:**
  * **[A] Aprovar Promoção Agora:** Aprova `DEC-012`, autoriza a substituição de `docs/01-metodologia/APDF_V01.md` pela versão `1.1.0` e a elevação do `MANIFESTO-SHA256.md` para a versão `v0.3.0`;
  * **[B] Postergar Promoção:** Mantém `APDF_V01.md` v1.0.1 e baseline `v0.2.1` ativas durante a Fase B, aplicando a v1.1.0 no encerramento de G1 junto com os schemas.

### Decisão 4: Homologação Definitiva do Gate G1
- **Objeto:** Declarar o Gate G1 formalmente concluído e autorizar a entrada na **Fase C (Ambiente Antigravity, Harness e Capacidade de Ferramentas)**.
- **Condição:** Sanar previamente as Decisões 1 e 2 acima.

---

## 2. Como Manifestar a Decisão
O Proprietário Humano pode aprovar as minutas diretamente nesta sessão com instruções simples como:
- *"Aprovo DEC-011 e DEC-012"*
- *"Autorizo o comando npx ajv-cli"*
- *"Mantenha a baseline v0.2.1 por enquanto"*
