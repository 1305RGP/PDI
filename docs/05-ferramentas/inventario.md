# Inventário de Ferramentas

**ID:** FER-INV-001  
**Tipo:** Inventário de Ferramentas e Ambientes  
**Versão:** 0.1.0  
**Estado:** DRAFT — pendente de verificação no ambiente local.  
**Proprietário:** Responsável técnico/arquitetura (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Ferramentas, plataformas e executores no Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/02-contratos/contrato-04-orquestracao.md`.  
**Histórico de aprovação:** Levantamento preliminar da baseline v0.1.0.

| Ferramenta | Estado | Evidência necessária |
|---|---|---|
| Google Antigravity | Ambiente-alvo declarado pelo usuário; versão/configuração não inspecionadas | Versão, instruções carregadas, permissões, sandbox, aprovações e recuperação |
| Gemini | Candidato; configuração local não verificada | Versão/canal, permissões, hooks, contexto, sandbox e evidências |
| Codex | Candidato; configuração local não verificada | Versão, instruções, permissões, isolamento e evidências |
| OpenCode | Candidato; configuração local não verificada | Versão, agentes, permissões, MCP e evidências |
| Git / provedor remoto | Não configurado neste projeto | Estado local, provedor escolhido e autorização explícita |
| CI/CD | Não configurado | Plataforma aprovada, workflows, segredos e resultados |
| Testes/linters/scanners | Não selecionados | Stack do projeto, risco e critérios de aceite |

## Regra

Não classificar ferramenta como `COMPATIBLE` sem teste real. Estados recomendados: `CANDIDATE`, `DOCUMENTED`, `CONFIGURED`, `TESTED`, `APPROVED`, `DISABLED`.
