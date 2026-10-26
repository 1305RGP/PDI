# Plano Técnico — Fase B: Schemas e Testes de Conformidade

**ID:** PLN-FASE-B-001  
**Tipo:** Plano técnico não normativo  
**Data:** 2026-10-26  
**Baseline analisada:** PDI v0.1.0 pós-Fase A  
**Estado:** PROPOSTO — não inicia a Fase B nem aprova o Gate G0.  
**Escopo:** Preparação de schemas e testes para os Contratos 01–05.  

## 1. Conclusão executiva

A Fase B é tecnicamente planejável, mas não está autorizada: o Gate G0, as designações nominais de autoridade e a aprovação do plano de validação permanecem pendentes. Não há schemas, implementações de teste, scripts, exemplos executáveis ou ferramenta de validação na baseline. O menor caminho seguro após as aprovações é: definir o modelo canônico de dados e a ferramenta aprovada; implementar e revisar schemas; criar fixtures e testes negativos/positivos; executar com evidências versionadas; submeter a revisão independente e aceite humano.

## 2. Evidências consultadas

| Fonte | Evidência verificada | Situação |
|---|---|---|
| `docs/00-governanca/norma-central.md` | bloqueios, evidência e estado de implementação | APPROVED conceitual; controle técnico pendente |
| `docs/00-governanca/hierarquia-documental.md` | metadados e estados válidos | APPROVED |
| `docs/00-governanca/matriz-de-autoridade.md` | aprovação, revisão e delegações | designações nominais pendentes |
| `docs/02-contratos/contrato-01-governanca.md` a `contrato-05-inicializacao.md` | requisitos e critérios CA-01 a CA-05 | APPROVED conceitual; implementação pendente |
| `docs/04-qualidade/criterios-de-aceite.md` | registro mínimo e bloqueios globais | APPROVED conceitual |
| `docs/04-qualidade/plano-de-validacao.md` | cenários de Fase B | PENDING_APPROVAL |
| `specs/schemas/README.md`, `specs/contratos/README.md` | estado dos schemas formais | DRAFT; nenhum schema executável encontrado |
| `tests/contracts/README.md`, `tests/evaluations/README.md`, `tests/governance/README.md` | estado das suítes | DRAFT; nenhum teste executável encontrado |
| `docs/05-ferramentas/*.md` | ferramenta/compatibilidade | DRAFT; nenhuma ferramenta habilitada ou testada |

## 3. Inventário da Fase B

| Item proposto | Base normativa | Situação encontrada | Decisão / pré-requisito |
|---|---|---|---|
| Schema de metadados controlados | GOV-DOC-001, CTR-01 | mencionado; não encontrado | aprovar modelo e formato serializado |
| Schema de aprovação e decisão | GOV-AUTH-001, CTR-01 | mencionado; não encontrado | definir identificador de decisor e autoridade nominal |
| Schema de evidência de teste | CTR-02, QUA-CRIT-001 | mencionado; não encontrado | definir referência de versão/commit aplicável |
| Schema de contexto/harness | CTR-03 | mencionado; não encontrado | definir hospedeiro e mecanismo de imposição |
| Registro de capacidade de ferramenta | CTR-04 | inventário DRAFT; nenhum registro testado | aprovar ferramenta e executar inspeção real |
| Schema/registro de inicialização e mudança | CTR-05 | mencionado; não encontrado | definir fluxo e armazenamento de evidências |
| Testes de contratos | CTR-01 a CTR-05 | nenhum encontrado | requer schemas e runner aprovados |
| Avaliações comportamentais de agentes | CTR-03 e CTR-04 | nenhum encontrado | requer ambiente/harness selecionado |
| Testes de governança | NCE-001, GOV-DOC-001 | nenhum encontrado | requer fixtures e regra de resolução definida |

## 4. Modelo mínimo proposto

Use um formato serializado único, preferencialmente JSON, somente após aprovação da ferramenta e do modelo. Evitar duplicar regras normativas: os documentos permanecem fonte de intenção; cada schema deve referenciar ID, versão e cláusula de origem.

Campos mínimos transversais: `id`, `type`, `version`, `state`, `owner`, `scope`, `date`, `dependencies`, `approval_history` e `evidence_refs` quando aplicável.

Schemas iniciais propostos:

| ID | Arquivo proposto | Cobertura |
|---|---|---|
| SCH-METADATA | `specs/schemas/metadata.schema.json` | metadados, estados canônicos e dependências |
| SCH-APPROVAL | `specs/schemas/approval.schema.json` | artefato/versão, decisor, data, decisão e justificativa |
| SCH-EVIDENCE | `specs/schemas/evidence.schema.json` | requisito, teste, versão avaliada, ambiente, resultado, log e revisor |
| SCH-TASK-CONTEXT | `specs/schemas/task-context.schema.json` | campos mínimos do CTR-03 e estados operacionais |
| SCH-TOOL | `specs/schemas/tool-capability.schema.json` | capacidade, versão, permissão, teste e limitação |
| SCH-CTR-01..05 | `specs/contratos/contrato-0N.schema.json` | composição/regras específicas de cada contrato |

Nenhum desses itens existe hoje; todos são proposta de implementação pós-G0.

## 5. Suítes e casos mínimos

| Suíte | Casos positivos | Casos negativos obrigatórios | Critérios cobertos |
|---|---|---|---|
| `tests/governance` | artefato APPROVED vigente com aprovação completa | baseline DRAFT; versão SUPERSEDED; conflito de precedência; alteração sem autorização; aprovação incompleta | CA-01-01 a CA-01-07; CA-05-01, 05-06, 05-07 |
| `tests/contracts` | registros válidos para cada schema e ligação requisito→teste→evidência | campo obrigatório ausente; estado inválido; requisito sem teste; teste órfão; evidência de outra versão; critério alterado | CA-02-01 a CA-02-07; CA-05-04, 05-05, 05-08 |
| `tests/evaluations` | tarefa com baseline, permissão e contexto válidos; recuperação com hipótese nova | tarefa sem autorização; desvio de escopo; loop; estado BLOCKED reportado como COMPLETED; ferramenta não testada; concorrência conflitante | CA-03-01 a CA-03-08; CA-04-01 a CA-04-07 |

Para cada caso, registrar: ID do caso, requisito/CA, fixture de entrada, resultado esperado, resultado observado, versão do schema/runner, ambiente, hash/log, executor e revisor independente. Status aceitos são `PASS`, `FAIL`, `BLOCKED` e `NOT_RUN`; `NOT_RUN` e `BLOCKED` não liberam aceite.

## 6. Harmonização de nomes proposta

Não renomear diretórios na Fase B sem decisão formal. A alternativa de menor impacto é manter os caminhos físicos atuais — `tests/contracts`, `tests/evaluations`, `tests/governance` — e padronizar nos cabeçalhos e em um índice futuro a correspondência abaixo. Isso preserva a baseline e evita alteração de referências.

| Caminho físico | Nome lógico em português |
|---|---|
| `tests/contracts` | Testes de Contratos |
| `tests/evaluations` | Avaliações de IA |
| `tests/governance` | Testes de Governança |

Alternativa: renomear tudo para português em mudança versionada pós-G0, com atualização integral de referências, manifesto, revisão independente e nova aprovação. Não recomendado como pré-requisito da Fase B.

## 7. Ordem mínima e estimativas

| Lote | Entrega | Estimativa | Dependências |
|---|---|---:|---|
| B0 | aprovação de G0, plano, autoridade e ferramenta | humana | PEND-01 e PEND-05 |
| B1 | modelo de dados e ADR/decisão de formato e runner | P | B0 |
| B2 | schemas transversais e dos contratos, fixtures válidas/inválidas | M | B1 |
| B3 | testes de governança e contratos, com relatório reprodutível | M | B2 |
| B4 | evals de harness/orquestração no ambiente real | G | B0, ferramenta testada, B2 |
| B5 | revisão independente, evidências e decisão de aceite | M | B3 e B4 aplicável |

Estimativas são qualitativas: P até 1 dia-pessoa, M de 2 a 4 dias-pessoa, G acima de 4 dias-pessoa, excluindo espera por aprovações e configuração do ambiente.

## 8. Riscos, bloqueios e decisões humanas

1. **Bloqueio atual:** G0 não homologado; iniciar implementação violaria CTR-05 e o estado registrado em `temp/estado-atual.md`.
2. **Bloqueio de autoridade:** GOV-AUTH-001 não possui designações nominais; aprovações e revisões dependentes delas não podem ser atribuídas.
3. **Bloqueio do plano de validação:** QUA-VAL-001 está `PENDING_APPROVAL`; seus testes são planejamento, não critério executável aprovado.
4. **Bloqueio de ferramenta:** inventário e compatibilidade estão `DRAFT`; não há runner, biblioteca ou ambiente habilitado. Não instalar nem selecionar por suposição.
5. **Risco de divergência:** schemas podem duplicar/interpretar regras textuais. Mitigação: mapeamento cláusula→schema→teste e revisão independente antes de aprovação.
6. **Risco de escopo:** CTR-03 e CTR-04 requerem comportamento do ambiente real; não alegar cobertura por testes puramente estáticos.

Decisões humanas mínimas antes de B1: homologar ou devolver G0; designar autoridade técnica, revisora e de aceite; aprovar QUA-VAL-001 ou publicar versão aprovada equivalente; autorizar formato/runner e a instalação, se necessária; definir se testes de ambiente são parte da Fase B inicial ou um lote posterior condicionado à ferramenta.

## 9. Estado final deste lote

- **Especificado:** requisitos e critérios conceituais dos Contratos 01–05 foram identificados.
- **Planejado:** estrutura de schemas, fixtures, suítes, ordem e riscos acima.
- **Implementado:** nenhum schema, script ou teste por este lote.
- **Executado:** apenas inspeção documental de leitura.
- **Validado:** não aplicável; nenhuma validação técnica ou aceite foi declarado.
