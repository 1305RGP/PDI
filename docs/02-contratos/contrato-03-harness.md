# Contrato 03 — Harness, Contexto, Permissões e Controle de Loops

**ID:** CTR-03  
**Tipo:** Contrato Técnico Normativo  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente; implementação técnica pendente.  
**Proprietário:** Responsável técnico/arquitetura (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Contexto operacional, permissões, limites e controle de loops no Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/02-contratos/contrato-01-governanca.md`, `docs/02-contratos/contrato-02-qualidade.md`, `docs/02-contratos/contrato-05-inicializacao.md`.  
**Histórico de aprovação:** Aprovado conceitualmente em DEC-002 (2026-10-26).

## Objetivo

Impor contexto, permissões, limites e transições de execução fora da mera instrução textual ao modelo, sempre que as ferramentas e o ambiente permitirem.

## Contexto operacional mínimo

`task_id`, `objective`, `apdf_phase`, `approved_baseline`, `allowed_actions`, `prohibited_actions`, `acceptance_criteria`, `dependencies`, `execution_state`, `evidence_refs`.

Antes de uma ação relevante, recuperar e validar contexto, versões e permissões. Se não for possível reconstruir objetivo, baseline ou autorização, suspender a execução.

## Estados

`READY`, `RUNNING`, `VERIFYING`, `COMPLETED`, `BLOCKED`, `PAUSED`, `FAILED`, `CANCELLED`.

`COMPLETED` requer os gates e critérios aplicáveis; não pode ser inferido diretamente de `RUNNING`.

## Permissões

- Aplicar menor privilégio.
- Restringir leitura e escrita ao escopo autorizado.
- Exigir autorização específica para ações destrutivas, acesso a segredos, publicação, implantação e mudanças de baseline.
- Não presumir acesso a outros repositórios ou ambientes.
- Instruções de prompt não substituem controles técnicos de permissão.

## Anti-Surto

Detectar expansão de escopo, bloquear a ação que a introduziria, registrar impacto e oferecer: descartar, registrar para futuro ou reabrir formalmente o gate. O mecanismo não decide nem implementa a mudança por conta própria.

## Loops e recuperação

Detectar repetição sem progresso, reaplicação da mesma correção sem nova hipótese, oscilação, regressão e consumo anormal de recursos. Limites de tempo, iterações, tokens e chamadas devem ser configuráveis por tarefa/risco.

Ao atingir limite: interromper, salvar estado/diffs/logs/evidências, registrar tentativas e resultados. Nova tentativa exige hipótese diferente e justificada; se não houver recuperação segura, escalar para humano.

## Critérios de aceite

- CA-03-01: tarefa sem baseline/permissões válidas não inicia.
- CA-03-02: retomada valida estado e referências persistidas.
- CA-03-03: ação fora do escopo é bloqueada.
- CA-03-04: Anti-Surto não altera baseline autonomamente.
- CA-03-05: loops e limites são detectados e aplicados.
- CA-03-06: interrupção preserva evidências para diagnóstico.
- CA-03-07: estado bloqueado não é reportado como concluído.
- CA-03-08: testes incluem cenários de falha e recuperação.

## Dependências

Contratos 01, 02 e 05; controles de permissão da ferramenta hospedeira.
