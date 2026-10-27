# Núcleo Central de Engenharia — PDI

**ID:** PDI-ROOT-README  
**Tipo:** Visão Geral do Projeto  
**Baseline documental:** v0.2.1  
**Estado:** APPROVED — conceitualmente; materialização documental inicial homologada no Gate G0; Fase B autorizada.  
**Proprietário:** Proprietário humano do Núcleo (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Núcleo Central de Engenharia e governança base do projeto PDI.  
**Data:** 2026-10-27  
**Histórico de aprovação:** v0.1.0 — aprovada conceitualmente em DEC-001 a DEC-006 (2026-10-26). v0.2.0 — incorpora DEC-007, que designa o `APDF_V01` como padrão metodológico (2026-10-26). v0.2.1 — incorpora DEC-008 (critérios de G0), DEC-009 (homologação do Gate G0, patch APDF_V01 v1.0.1 e autorização da Fase B) e DEC-010 (escopo do patch v1.0.1 e diferimento de cinco correções para a v1.1.0) (2026-10-27).  

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
- Metodologia de descoberta: padrão `APDF_V01` adotado em DEC-007, vigente na versão `1.0.1` (promovida em DEC-009, escopo fixado em DEC-010); detector Anti-Surto e integração TPM não implementados.
- Escopo do patch `1.0.1`: seis correções sem alteração de significado normativo (`C-02`, `C-03`, `C-04`, `C-08`, `C-09`, `C-10`). As correções `C-01`, `C-05`, `C-06`, `C-07` e `C-11` foram diferidas para a `1.1.0`, ainda não autorizada, e permanecem registradas em Anexo C.2 do padrão e na lacuna `L-08`.
- Ressalvas em aberto no padrão: `CA-APDF-07` e `CA-APDF-08` parcialmente satisfeitos até a `1.1.0`; propostas `PROP-01` a `PROP-03` e `B-01` não normativas no Anexo C.3; leitura final do texto da `1.0.1` pelo proprietário pendente.
- Estrutura documental inicial: definida neste pacote.
- Código de implementação: inexistente neste pacote.
- Testes automatizados dos controles: ainda não implementados nem executados.
- Ferramentas, integrações e repositórios externos: não configurados.

## Ordem de leitura

1. `docs/00-governanca/norma-central.md`
2. `docs/00-governanca/hierarquia-documental.md`
3. `docs/00-governanca/matriz-de-autoridade.md`
4. `docs/00-governanca/registro-de-decisoes.md`
5. `docs/01-metodologia/APDF_V01.md` (padrão vigente), `docs/01-metodologia/anti-surto.md` e `docs/01-metodologia/ciclo-apdf.md`
   - `docs/01-metodologia/apdf.md` está `SUPERSEDED`: consulta histórica apenas.
6. `docs/02-contratos/contrato-01-governanca.md` a `docs/02-contratos/contrato-05-inicializacao.md`
7. `docs/03-adrs/README.md`
8. `docs/04-qualidade/criterios-de-aceite.md` e `docs/04-qualidade/plano-de-validacao.md`
9. `docs/05-ferramentas/inventario.md` e `docs/05-ferramentas/matriz-de-compatibilidade.md`
10. `docs/06-evidencias/README.md`

## Próximo gate

- **Gate G0 (Revisão da materialização documental):** CONCLUÍDO e homologado formalmente em DEC-009 (2026-10-27).
- **Próximo gate ativo (Gate G1):** Validação técnica e executabilidade dos schemas formais e testes de conformidade da Fase B.
