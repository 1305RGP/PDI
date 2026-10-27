# Matriz de rastreabilidade — G1

| Requisito / CA | Contrato | Schema/Perfil | Cenário | Teste | Resultado |
|---|---|---|---|---|---|
| estados canônicos; CA-01-01/02 | CTR-01 | metadata, contrato-01 | válido, estado misto, owner ausente | G1-CTR01 e G1-NEG | PASS limitado |
| aprovação identificada; CA-01-05 | CTR-01 | approval | decider ausente | G1-APPROVAL-REQUIRED | PASS limitado |
| evidência e status; CA-02-03/04 | CTR-02 | evidence, contrato-02 | logs ausentes, NOT_RUN | G1-CTR02 e G1-SEM-NOTRUN | PASS limitado |
| contexto/permissões; CA-03-01/07 | CTR-03 | task-context, contrato-03 | proibidas ausentes | G1-CTR03 e G1-NEG-task | PASS limitado |
| ferramenta habilitada; CA-04-01/02/07 | CTR-04 | tool-capability, contrato-04 | DOCUMENTED roteável | G1-CTR04 e G1-SEM-ROUTING | PASS limitado |
| estrutura; CA-05-04/05/08 | CTR-05 | metadata, contrato-05 | parse, IDs, perfis | G1-SYN e G1-PROFILE | PASS limitado |
| conflito, duplicidade e versão incompatível | CTR-01/02/05 | futuro avaliador | sem fixture completa | não executado | NOT_RUN |

PASS limitado não substitui motor Draft 2020-12 nem integração real.
