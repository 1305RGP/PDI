# Núcleo Central de Engenharia — PDI

**ID:** PDI-ROOT-README  
**Tipo:** Visão Geral do Projeto  
**Baseline documental:** v0.3.0  
**Estado:** APPROVED — conceitualmente; materialização documental inicial homologada no Gate G0; Fase B autorizada.  
**Proprietário:** Proprietário humano do Núcleo (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Núcleo Central de Engenharia e governança base do projeto PDI.  
**Data:** 2026-10-27  
**Histórico de aprovação:** v0.1.0 — aprovada conceitualmente em DEC-001 a DEC-006 (2026-10-26). v0.2.0 — incorpora DEC-007, que designa o `APDF_V01` como padrão metodológico (2026-10-26). v0.2.1 — incorpora DEC-008 (critérios de G0), DEC-009 (homologação do Gate G0, patch APDF_V01 v1.0.1 e autorização da Fase B) e DEC-010 (escopo do patch v1.0.1 e diferimento de cinco correções para a v1.1.0) (2026-10-27). v0.3.0 — incorpora DEC-011 (promoção do `APDF_V01` para a versão 1.1.0, encerramento da lacuna `L-08` e adendos de errata de DEC-009/DEC-010) (2026-10-27).  

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
- Metodologia de descoberta: padrão `APDF_V01` adotado em DEC-007, vigente na versão `1.1.0` (promovida em `DEC-011`); a versão `1.0.1` permanece apenas como histórico no commit `bc45753`. Detector Anti-Surto e integração TPM não implementados.
- Conteúdo da `1.1.0`: incorpora as cinco correções diferidas por `DEC-010` (`C-01`, `C-05`, `C-06`, `C-07`, `C-11`) e as correções editoriais de registro `C-12` e `C-13`; `REABERTO` é estado persistente (modelo (a)) e `PROP-04` foi decidida na alternativa (a), que preserva a seção 17. A lacuna `L-08` está encerrada.
- Ressalvas em aberto no padrão: `L-09` mantida como residual aceito; `CA-APDF-07` e `CA-APDF-08` passam a ser verificáveis contra a `1.1.0`, sem que isso os declare satisfeitos; propostas `PROP-01` a `PROP-03` e `B-01` não normativas no Anexo C.3; revisão independente pendente (`L-05`); leitura final do texto da `1.1.0` pelo proprietário pendente.
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
