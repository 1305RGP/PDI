# Matriz de Autoridade

**ID:** GOV-AUTH-001  
**Tipo:** Matriz de Autoridade  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente; delegações nominais pendentes.  
**Proprietário:** Proprietário humano do Núcleo (designação nominal pendente conforme seção 5)  
**Escopo:** Todos os papéis e permissões no Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`.  
**Histórico de aprovação:** Aprovada conceitualmente em DEC-002 (2026-10-26).

## 1. Papéis

- **Proprietário humano do Núcleo:** decide sobre norma central, exceções centrais e gates reservados até que outra autoridade seja formalmente designada.
- **Responsável pelo produto/escopo:** aprova requisitos e mudanças de escopo do projeto.
- **Responsável técnico/arquitetura:** propõe e, quando delegado formalmente, aprova decisões técnicas dentro dos limites delegados.
- **Executor:** agente ou pessoa autorizada a executar trabalho delimitado.
- **Revisor independente:** verifica implementação e evidências sem ser a única pessoa/agente que produziu a entrega.
- **Responsável por segurança/liberação:** autoriza atividades de segurança ou liberação conforme a política do projeto.

A mesma pessoa pode acumular papéis quando permitido, mas a revisão independente não pode ser meramente uma autodeclaração do executor.

## 2. Matriz de decisão

| Decisão/ação | Agente | Autoridade humana |
|---|---|---|
| Elaborar artefatos | Pode propor | Revisa/aprova conforme o gate |
| Recomendar requisitos e arquitetura | Pode | Decide e aprova |
| Implementar dentro da baseline | Pode, com permissão explícita | Supervisiona conforme risco |
| Alterar requisito ou escopo aprovado | Não unilateralmente | Responsável pelo escopo aprova |
| Alterar teste/critério aprovado | Não unilateralmente | Responsável autorizado aprova após análise de impacto |
| Aprovar a própria implementação como única revisão | Não | Exige revisão independente |
| Alterar Norma Central | Pode propor | Proprietário humano do Núcleo aprova |
| Criar exceção à norma | Pode propor | Proprietário humano do Núcleo aprova |
| Executar comando destrutivo, publicar ou implantar | Só com autorização explícita | Responsável autorizado conforme política |
| Declarar resultado de teste | Pode reportar resultado observado | Aceite depende de evidência e gate aplicável |

## 3. Aprovação

A aprovação deve identificar artefato, versão, decisor, data, decisão e justificativa. Aprovação não é inferida do silêncio, da conclusão da tarefa ou da declaração de um agente.

## 4. Delegação

Delegação deve especificar papel, escopo, limite, duração/validade e ações permitidas. Decisões críticas de segurança, dados, contratos públicos, integridade de testes e arquitetura reservada não são automaticamente delegadas.

## 5. Pendência controlada

A designação nominal dos responsáveis por cada projeto e ambiente será preenchida durante o onboarding. Até lá, permissões que dependam dessa designação permanecem bloqueadas.
