# Inventário de Ferramentas

**Versão:** 0.1.0  
**Estado:** pendente de verificação no ambiente local.

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
