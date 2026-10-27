# LOTE ÚNICO G1 — GEMINI
## Auditoria de governança, reconciliação documental e aceite de evidências

**Projeto:** PDI — Núcleo Central de Engenharia  
**Repositório:** `1305RGP/PDI`  
**Commit-base obrigatório:** `bc457538209491d52fe128d5184117d547906d3a` (`main`, ou commit descendente identificado)  
**Missão:** executar integralmente nesta rodada, sem parar após diagnóstico.

## 1. Resultado esperado

Auditar o estado real do repositório após o commit-base, reconciliar divergências entre relatórios e decisões, validar rastreabilidade da baseline v0.2.1 e do APDF v1.0.1 e produzir uma decisão de prontidão do Gate G1 baseada em evidências. Não declarar o G1 aprovado por conta própria: preparar parecer de aceite para o responsável humano.

## 2. Regras obrigatórias

- Inspecione o repositório real, branch, HEAD, árvore de arquivos, diffs e documentos. Se só houver acesso remoto, declare isso; não alegue inspeção local.
- Verifique se o HEAD é o commit-base ou descendente dele. Registre SHA completo.
- Trate relatórios como alegações até conferir os artefatos subjacentes.
- Não altere arquitetura, requisitos ou significado normativo para fazer relatórios parecerem coerentes.
- Não instale dependências nem altere configurações globais. Não faça operações destrutivas.
- Não altere código ou documentos normativos nesta missão. Produza propostas e patches candidatos em `temp/` apenas.
- Não invente aprovação humana nem converta `NOT_RUN` em `PASS`.
- Conclua toda a auditoria nesta execução. Não pare para solicitar nova rodada de diagnóstico.

## 3. Investigações obrigatórias

### A. Estado do repositório
- Confirmar branch, commit-base, HEAD atual e arquivos modificados.
- Listar arquivos de entrega integral de Gemini, DeepSeek e GPT.
- Verificar que os relatórios se referem ao commit correto.
- Confirmar as pastas reais dos candidatos e se foram movidos de `lote-02-gpt/` para `temp/lote-02-gpt/`.

### B. Reconciliação de decisões
- Ler `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`, `temp/estado-atual.md`, `docs/00-governanca/registro-de-decisoes.md`, `APDF_V01.md` e relatórios de lote relevantes.
- Reconciliar DEC-008, DEC-009 e DEC-010, preservando o histórico de cada decisão.
- Conferir se DEC-009 descreve como promovidas correções que DEC-010 depois diferiu. Não reescrever o histórico; recomendar errata/adendo ou atualização de estado com rastreabilidade.
- Identificar inconsistências de estado canônico, metadados, datas, versões, caminhos e uso de “aprovado”, “validado”, “executado” e “proposto”.
- Confirmar se o relatório do Gemini cita o commit antigo `205bc59`.

### C. Baseline e manifesto
- Verificar todos os arquivos normativos listados no manifesto.
- Recalcular SHA-256 de cada arquivo normativo se houver acesso real aos bytes e ferramentas adequadas.
- Comparar caminho por caminho; registrar ausentes, extras, divergências e algoritmo.
- Se não puder recalcular em disco, declarar `NOT_VERIFIED`; não reproduzir a alegação de 27/27 como fato independente.
- Confirmar que `temp/` é excluído do manifesto conforme a regra do projeto.

### D. Gate G1
- Extrair critérios de aceite do Gate G1 já existentes em documentos normativos.
- Não inventar critérios normativos novos. Se o gate não tiver critérios formalizados, registrar lacuna e propor formalização em documento candidato.
- Avaliar cada critério com evidência, estado `PASS`, `FAIL`, `BLOCKED` ou `NOT_RUN`.
- Separar “pronto para avaliação humana” de “formalmente aprovado”.
- Verificar a pendência da designação nominal GOV-AUTH-001 e explicitar seu impacto.

### E. Coordenação
- Não editar entregas de DeepSeek ou GPT.
- Produzir lista de conflitos, decisões pendentes e dependências para consolidação.
- Indicar revisão cruzada necessária, trabalho duplicado e relatórios obsoletos.

## 4. Arquivos de saída

Criar em `temp/`:
1. `temp/ENTREGA_G1_GEMINI_AUDITORIA.md` — relatório completo, evidências, SHA/commit, critérios, conclusões e limitações.
2. `temp/MATRIZ_G1_EVIDENCIAS.md` — critério/afirmação, fonte, evidência, resultado, confiança e ação.
3. `temp/PLANO_CONSOLIDACAO_G1.md` — lista única de correções, dependências, responsáveis e critérios de aceite.
4. `temp/PATCH_CANDIDATO_GOVERNANCA_G1.md` — proposta precisa de correções documentais, sem aplicar aos arquivos normativos.

## 5. Encerramento

Use tabela com ID, item, resultado (`DONE`, `PROPOSED`, `BLOCKED`, `NOT_VERIFIED`), evidência, risco e próximo responsável. Declare se G1 está aprovado, pendente ou sem critérios suficientes; não se autoatribua autoridade de aprovação.
