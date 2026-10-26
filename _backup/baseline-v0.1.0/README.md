# Núcleo Central de Engenharia — PDI

**Baseline documental:** v0.1.0  
**Estado:** aprovada conceitualmente; materialização documental inicial.  
**Implementação dos controles:** pendente de desenvolvimento e validação.

## Objetivo

Estabelecer um núcleo reutilizável de governança, qualidade, rastreabilidade e controle de execução para projetos de engenharia e desenvolvimento. O núcleo padroniza controles e evidências sem impor uma arquitetura de produto única a todos os projetos.

## Princípios obrigatórios

1. Nenhuma alteração de escopo ou decisão crítica sem autorização apropriada.
2. Nenhum agente aprova sozinho a própria entrega.
3. Nenhuma declaração de sucesso substitui evidência verificável.
4. Nenhum teste obrigatório não executado pode ser considerado aprovado.
5. Nenhum artefato não aprovado pode servir como baseline autorizada.
6. A arquitetura específica de cada projeto é decidida localmente e registrada em ADRs, respeitando a Norma Central.
7. Recursos de ferramentas só são considerados disponíveis depois de verificados no ambiente-alvo.

## Estado atual

- Contratos conceitualmente aprovados: 01 a 05.
- Estrutura documental inicial: definida neste pacote.
- Código de implementação: inexistente neste pacote.
- Testes automatizados dos controles: ainda não implementados nem executados.
- Ferramentas, integrações e repositórios externos: não configurados.

## Ordem de leitura

1. `docs/00-governanca/norma-central.md`
2. `docs/00-governanca/hierarquia-documental.md`
3. `docs/00-governanca/matriz-de-autoridade.md`
4. `docs/00-governanca/registro-de-decisoes.md`
5. `docs/02-contratos/contrato-01-governanca.md` até `contrato-05-inicializacao.md`
6. `docs/01-metodologia/apdf.md`, `anti-surto.md` e `ciclo-apdf.md`
7. `docs/04-qualidade/criterios-de-aceite.md` e `plano-de-validacao.md`

## Próximo gate

**G0 — revisão da materialização:** conferir os arquivos, confirmar que a baseline documental corresponde às decisões aprovadas e, então, preparar a validação automatizada. Não habilitar execução autônoma nem alterar repositórios externos antes dos gates correspondentes.
