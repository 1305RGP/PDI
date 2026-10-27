# LOTE ÚNICO G1 — GPT
## Schemas, fixtures, testes executáveis, validação Draft 2020-12 e prontidão técnica

**Projeto:** PDI — Núcleo Central de Engenharia  
**Repositório:** `1305RGP/PDI`  
**Commit-base obrigatório:** `bc457538209491d52fe128d5184117d547906d3a` (`main`, ou commit descendente identificado)  
**Missão:** concluir a Fase B técnica até onde o ambiente autorizado permitir e preparar evidências para o Gate G1 nesta única rodada.

## 1. Objetivo

Inspecionar candidatos de `temp/lote-02-gpt/`, o validador e os relatórios existentes; resolver inconsistências técnicas, executar validações reais, corrigir candidatos e entregar pacote rastreável. A promoção para `specs/` e `tests/` deve seguir a autorização e governança vigentes, com diff revisável, sem declarar G1 aprovado.

## 2. Regras obrigatórias

- Confirmar branch, HEAD e estado de trabalho.
- Inspecionar arquivos reais e identificar o que mudou desde `205bc59`.
- Não inventar execução de teste; guardar comandos, versões, códigos de saída e logs.
- Não instalar dependências sem autorização explícita. Inspecionar primeiro se há validador compatível já disponível.
- Não alterar arquitetura de produto nem introduzir frameworks não aprovados.
- Não sobrescrever relatórios de Gemini ou DeepSeek.
- Não promover candidatos silenciosamente. Qualquer cópia para `specs/`/`tests/` deve ser explícita, limitada ao escopo autorizado por DEC-009 e acompanhada de diff, rastreabilidade e rollback. Se houver dúvida de autoridade, manter candidato.
- Não declarar validação Draft 2020-12 completa a partir de parse JSON ou checagem manual de `$ref`.
- Continue as tarefas não bloqueadas mesmo que uma validação esteja bloqueada.

## 3. Trabalho obrigatório

### A. Inventário e integridade
- Localizar schemas, perfis, fixtures, catálogos, mapas, scripts e relatórios.
- Verificar se o validador está em `temp/lote-integral-gpt/` e se seu `CandidateRoot` aponta para o caminho correto após a movimentação para `temp/lote-02-gpt/`.
- Verificar reprodutibilidade do script e se documenta as limitações.
- Conferir sintaxe de todos os JSONs, IDs, dialeto, `required`, enums, tipos, padrões e `$ref`, incluindo referências aninhadas e arrays.

### B. Validação Draft 2020-12
- Inspecionar runtimes e pacotes já instalados, sem instalar nada.
- Se houver validador compatível, executar validação real dos 10 schemas e todas as fixtures.
- Confirmar que fixtures válidas passam e inválidas falham pelo motivo esperado.
- Verificar resolução recursiva de `$ref`, dialeto, keywords e formatos usados.
- Se não houver validador compatível, declarar `NOT_RUN`, informar inspeções e fornecer comando reproduzível para ambiente autorizado; não marcar como PASS.

### C. Cobertura e testes
- Criar/atualizar matriz requisito → contrato → schema → fixture → teste → evidência.
- Verificar CTR-01 a CTR-05 e critérios de aceite existentes.
- Cobrir casos positivos/negativos para campos ausentes, estados não canônicos, IDs duplicados, `$ref` inválido, versão incompatível, autoridade ausente/não autorizada, evidência faltante, `NOT_RUN` confundido com `PASS`, ferramenta não testada tratada como roteável e conflitos entre documentos.
- Separar teste sintático, schema estrutural, regra semântica e integração.
- Corrigir candidatos e executar novamente todos os testes disponíveis.
- Não inventar regra de negócio: cada regra aponta para contrato/decisão; pendências ficam como questões.

### D. Preparação para G1
- Comparar resultados com critérios G1 existentes. Se não estiverem formalizados, registrar lacuna e propor critérios candidatos para aprovação humana.
- Produzir inventário de falhas, severidade, bloqueios e critérios de aceite.
- Preparar diff de promoção controlada dos arquivos aprováveis, sem mudanças irreversíveis.
- Verificar quando o manifesto deve ser alterado após decisão de promoção e quais arquivos normativos seriam afetados.
- Entregar instrução reproduzível para Windows PowerShell e/ou Node conforme ferramentas realmente disponíveis.

### E. Plano técnico posterior
- Atualizar o plano incremental de implementação do núcleo com dependências reais e sequência baseada nos contratos.
- Distinguir documentado, validado, implementado e executado.
- Não implementar integração externa nem roteamento autônomo de ferramentas neste lote.

## 4. Entregáveis

Criar/atualizar em `temp/`:
1. `temp/ENTREGA_G1_GPT_VALIDACAO.md` — relatório integral com commit, ferramentas, comandos, resultados, limitações e conclusão.
2. `temp/RELATORIO_VALIDACAO_DRAFT2020_12.md` — evidências por schema e fixture, incluindo `NOT_RUN` quando aplicável.
3. `temp/MATRIZ_RASTREABILIDADE_G1.md` — requisito → contrato → schema → fixture → teste → resultado → evidência.
4. `temp/PLANO_IMPLEMENTACAO_NUCLEO_G1.md` — componentes, dependências, critérios e testes.
5. `temp/PATCH_PROMOCAO_SCHEMAS_TESTES_G1.md` — arquivos candidatos à promoção, diff proposto, riscos, rollback e estado de aprovação.

## 5. Critério de conclusão

Concluir quando todas as verificações possíveis estiverem executadas, candidatos corrigíveis corrigidos e retestados, limitações explícitas e parecer objetivo sobre prontidão técnica do G1. O resultado pode ser `BLOCKED` se faltar ferramenta ou autoridade, mas não pode ser vago nem omitir trabalho possível.
