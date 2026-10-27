# IA B — Revisão de Governança, Evidências e Estado

## Missão
Revisar coerência entre decisões, baseline, APDF candidata, relatórios G1, pacote V110 e painel de estado. Não duplicar a revisão detalhada dos schemas.

## Entradas
- `temp/estado-atual.md`
- `temp/resultado-fase-b.md`
- `temp/PROMOCAO_V110/README_PROMOCAO.md`
- `temp/PROMOCAO_V110/VERIFICACAO.md`
- `temp/PROMOCAO_V110/DEC-011_PROMOCAO.md`
- `temp/PROMOCAO_V110/ADENDOS_DEC009_DEC010.md`
- `temp/PROMOCAO_V110/APDF_V01.md`
- `temp/PROMOCAO_V110/REGISTRO_DE_DECISOES.md`
- `temp/PROMOCAO_V110/CHANGELOG.md`
- `temp/PROMOCAO_V110/MANIFESTO-SHA256.md`
- Relatórios Gemini/GPT/DeepSeek e documentos canônicos de governança/contratos.

## Verificações
1. Baseline vigente versus candidatos em `temp/`.
2. Conflitos de status: `APPROVED`, `PROPOSTO`, `PENDENTE`, “promovido” e “não aplicado”.
3. Decisões presentes no canônico versus apenas em minutas.
4. Commit efetivamente coberto por cada relatório.
5. Estado G0/Fase B/G1 e atualização mínima dos relatórios de estado.
6. Hashes apenas quando recalculados ou comprovados por evidência.
7. Script de promoção: caminho fixo, escopo de escrita, reversão e riscos.

## Limites
Não promover APDF 1.1.0 ou baseline 0.3.0; não alterar decisões canônicas; não executar script de promoção; não instalar ferramentas; não presumir aprovação humana.

## Entregáveis
- `REVISAO_IA_B_GOVERNANCA.md`
- `MATRIZ_ESTADOS_E_DECISOES.md`
- `PENDENCIAS_DO_PROPRIETARIO.md`
- `PATCH_IA_B/` com proposta de atualização de estado, não aplicada.

Cada achado deve ter ID (`B-001`…), severidade, arquivos, afirmações conflitantes, evidência, risco, correção mínima e indicação se exige decisão humana.
