# Revisão de Referências e Fontes Externas

**ID:** REV-REF-001  
**Tipo:** Registro de Rastreabilidade e Revisão de Fontes  
**Data:** 2026-10-26  
**Versão do Projeto:** 0.1.0  
**Status:** PENDENTE (Nenhuma fonte externa foi recuperada ou homologada)  

---

## 1. Finalidade

Registrar todas as referências normativas, documentais e de ferramentas externas conhecidas citadas na baseline do Núcleo Central de Engenharia, estabelecendo o controle de recuperação e análise para evitar presunções de conformidade ou compatibilidade.

---

## 2. Tabela de Referências e Status de Revisão

| ID Referência | Descrição / Objeto da Referência | Artefato Citante | Status de Recuperação | Status de Revisão | Ação Necessária |
|---|---|---|---|---|---|
| **REF-01** | **Documento-Fonte Original do APDF**<br>Especificação integral aprovada do processo APDF (13 fases, entregáveis, gates e ciclo de execução). | [`docs/01-metodologia/apdf.md`](file:///E:/documentos/projetos/PDI/docs/01-metodologia/apdf.md) | `NÃO RECUPERADO` | `PENDENTE` | Obter documento original, comparar com `MET-APDF-001` e registrar matriz de divergências antes de homologar. |
| **REF-02** | **Especificações Reais do Google Antigravity**<br>Versão efetiva, sandbox, ciclo de subagentes, permissões e capacidades comprovadas no ambiente-alvo. | [`docs/05-ferramentas/inventario.md`](file:///E:/documentos/projetos/PDI/docs/05-ferramentas/inventario.md) | `NÃO INSPECCIONADO` | `PENDENTE` | Executar testes reais no ambiente local para verificar permissões e limitações conforme Contrato 04. |
| **REF-03** | **Ferramentas Candidatas de Execução**<br>Documentação e canais de versão de Gemini CLI, Codex e OpenCode. | [`docs/05-ferramentas/matriz-de-compatibilidade.md`](file:///E:/documentos/projetos/PDI/docs/05-ferramentas/matriz-de-compatibilidade.md) | `NÃO RECUPERADO` | `PENDENTE` | Inspecionar configurações e suporte a MCP/hooks antes de qualquer roteamento de tarefas. |
| **REF-04** | **Especificações Formais JSON Schema**<br>Schemas para validação automática de contratos, metadados e evidências. | [`specs/schemas/README.md`](file:///E:/documentos/projetos/PDI/specs/schemas/README.md) | `NÃO MODELADO` | `PENDENTE` | Desenvolver os schemas formais na Fase B a partir dos critérios normativos aprovados. |
| **REF-05** | **Política de CI/CD e Configuração de Testes**<br>Definição de pipelines, linters e scanners de segurança. | [`docs/02-contratos/contrato-02-qualidade.md`](file:///E:/documentos/projetos/PDI/docs/02-contratos/contrato-02-qualidade.md) | `NÃO CONFIGURADO` | `PENDENTE` | Definir plataforma e critérios de bloqueio quando a stack do projeto for selecionada. |
| **REF-06** | **Designações Nominais da Matriz de Autoridade**<br>Nomes formais dos responsáveis por produto, arquitetura e segurança. | [`docs/00-governanca/matriz-de-autoridade.md`](file:///E:/documentos/projetos/PDI/docs/00-governanca/matriz-de-autoridade.md) | `NÃO PREENCHIDO` | `PENDENTE` | Preenchimento formal humano durante o onboarding do projeto (pendência controlada). |

---

## 3. Diretriz de Homologação

Conforme a Norma Central de Engenharia (`NCE-001`) e os Contratos 01 e 04:
- Nenhuma referência é considerada válida por presunção ou menção descritiva.
- Toda transição de status para `REVISADO` ou `HOMOLOGADO` exige a recuperação comprovada do artefato-fonte, execução de análise/teste e registro de evidência rastreável.
