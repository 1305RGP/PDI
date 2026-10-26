# Hierarquia Documental e Precedência

**ID:** GOV-DOC-001  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente.

## 1. Hierarquia

1. **Norma Central de Engenharia:** regras transversais de governança, segurança, qualidade e rastreabilidade.
2. **Metodologia APDF e procedimentos centrais:** fases, entregáveis, gates e condições de avanço.
3. **Baseline aprovada do projeto:** objetivo, escopo, requisitos, restrições e arquitetura específica.
4. **ADR:** decisão arquitetural, alternativas, justificativa, consequências e exceções autorizadas.
5. **SPEC e contratos técnicos:** comportamento esperado, interfaces e critérios de aceite.
6. **Caderno de Testes:** provas previstas para demonstrar conformidade.
7. **Backlog e tickets:** unidades de trabalho autorizadas e rastreáveis.
8. **Código, resultados e evidências:** estado implementado e resultados observados.

## 2. Regras de precedência

- Um nível inferior não revoga silenciosamente um nível superior.
- A Norma Central prevalece sobre artefatos específicos de projeto.
- Um ADR não revoga a Norma Central; exceções precisam de autorização formal.
- Uma SPEC não contradiz ADR vigente sem processo de mudança.
- Código e documentação descritiva não substituem aprovação formal.
- Um resultado observado no código pode revelar divergência; não autoriza automaticamente alterar a baseline.
- Se dois artefatos aprovados de mesmo nível forem incompatíveis, não escolher apenas o mais recente. Bloquear o escopo afetado e encaminhar para resolução formal.

## 3. Resolução de conflito

1. Identificar artefatos, versões, estado, escopo e autoridade.
2. Determinar se o conflito é aparente, temporal ou substantivo.
3. Aplicar a hierarquia quando ela resolver inequivocamente o conflito.
4. Caso contrário, bloquear o gate afetado.
5. Registrar decisão, impacto, artefatos alterados e novas aprovações.

## 4. Metadados mínimos

Cada artefato controlado deve conter ou referenciar:
- ID estável;
- título e tipo;
- versão;
- estado;
- proprietário;
- escopo;
- data da última alteração;
- referências de dependência;
- histórico de aprovação;
- hash do conteúdo quando a integridade criptográfica estiver implementada.

## 5. Estados válidos

`DRAFT`, `IN_REVIEW`, `PENDING_APPROVAL`, `CHANGES_REQUESTED`, `APPROVED`, `REJECTED`, `SUPERSEDED`, `OBSOLETE`.

Somente a versão vigente em estado `APPROVED` é baseline autorizada. Uma versão materialmente alterada precisa de nova revisão e aprovação.
