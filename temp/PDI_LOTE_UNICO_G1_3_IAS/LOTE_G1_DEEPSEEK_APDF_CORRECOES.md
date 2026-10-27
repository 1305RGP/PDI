# LOTE ÚNICO G1 — DEEPSEEK
## Auditoria final da APDF v1.0.1, reconciliação DEC-009/DEC-010 e pacote de correções

**Projeto:** PDI — Núcleo Central de Engenharia  
**Repositório:** `1305RGP/PDI`  
**Commit-base obrigatório:** `bc457538209491d52fe128d5184117d547906d3a` (`main`, ou commit descendente identificado)  
**Missão:** concluir toda a revisão metodológica e produzir correções candidatas completas nesta rodada.

## 1. Objetivo

Confrontar o texto real de `docs/01-metodologia/APDF_V01.md` v1.0.1, o histórico candidato, contratos 01–05, decisões DEC-007 a DEC-010 e relatórios anteriores. Resolver por evidência divergências entre o relatório DeepSeek, a APDF promovida e os registros de decisão. Entregar pacote de correções coerente, rastreável, sem mudar a norma vigente unilateralmente.

## 2. Regras obrigatórias

- Inspecione branch/HEAD e declare exatamente o commit analisado.
- Não afirme que arquivo foi promovido sem verificar o conteúdo atual.
- Não faça mudanças normativas em `docs/`, `specs/`, `tests/`, `README.md`, `CHANGELOG.md` ou manifesto nesta missão.
- Prepare documento candidato ou patch em `temp/`.
- Não apague históricos nem falsifique a cronologia das decisões.
- Não declare conformidade com `APDF(1).md` se a fonte não estiver acessível.
- Não instale dependências nem realize operações destrutivas.
- Conclua verificações e correções candidatas nesta rodada; não pare após diagnóstico.

## 3. Verificações obrigatórias

### A. Estado real da APDF
- Ler integralmente `docs/01-metodologia/APDF_V01.md`.
- Comparar com `temp/APDF_V01_CORRIGIDA_CANDIDATA.md`, backup da v1.0.0, Anexo C e relatórios de revisão.
- Identificar quais correções `C-01` a `C-11` estão na v1.0.1 e quais foram adiadas por DEC-010.
- Verificar alegações sobre `dependencies`, `justification`, `REABERTO`, loops/recuperação, handoff, proveniência e hashes.
- Confirmar se relatórios anteriores estão desatualizados ou contradizem o texto vigente.

### B. Contratos e rastreabilidade
- Mapear requisitos de CTR-01 a CTR-05 para as seções da APDF.
- Conferir critérios CA-APDF e lacuna L-08.
- Distinguir correções editoriais, de consistência e mudanças normativas.
- Identificar critérios de aceite dependentes de versão futura v1.1.0.
- Não aplicar mudanças normativas adiadas sem decisão explícita; oferecer alternativas completas.

### C. DEC-009 e DEC-010
- Localizar afirmações de DEC-009 sobre conteúdo que DEC-010 depois diferiu.
- Não apagar DEC-009 nem reescrever a história. Propor errata/adendo cronológico que preserve o registro e identifique a versão vigente.
- Verificar coerência de DEC-010 com APDF v1.0.1, CHANGELOG, README e manifesto.
- Identificar riscos de divergência entre escopo declarado e conteúdo real.

### D. Verificações documentais
- Conferir links internos, IDs, nomes de seções, versão, estados, tabelas e referências a arquivos.
- Verificar hashes somente se puder recalcular bytes reais; caso contrário, `NOT_VERIFIED`.
- Produzir diff/patch textual exato para cada correção recomendada.
- Não alegar lint, renderização ou teste de método se não executados.

## 4. Entregáveis

Criar em `temp/`:
1. `temp/ENTREGA_G1_DEEPSEEK_APDF.md` — relatório final com commit, estado real, matriz de achados, decisões e validações.
2. `temp/APDF_V1_1_0_CANDIDATA.md` — texto integral candidato para v1.1.0 incorporando apenas correções diferidas com base suficiente; preservar conteúdo não afetado. Se não for seguro reconstruir, entregar patch completo por seção e explicar.
3. `temp/ERRATA_DEC009_DEC010_CANDIDATA.md` — proposta cronológica para reconciliar histórico sem alterar retroativamente decisões.
4. `temp/MATRIZ_CONFORMIDADE_APDF_G1.md` — requisito/contrato, seção, evidência, estado, ação e critério de aceite.
5. `temp/REGISTRO_ALTERACOES_APDF_G1.md` — antes/depois, motivo, fonte, natureza, compatibilidade e aprovação necessária.

## 5. Encerramento

Para cada achado use `CONFIRMADO`, `PARCIAL`, `NÃO CONFIRMADO` ou `NOT_VERIFIED`. Para cada artefato use `DONE`, `PROPOSED`, `BLOCKED` ou `NOT_VERIFIED`. Declare quais correções podem ser patch editorial e quais requerem decisão normativa. Não promova a v1.1.0.
