# LOTE DE EXECUÇÃO — DEEPSEEK
## APDF: comparação da fonte original e registro de adaptação

**Projeto:** PDI — Núcleo Central de Engenharia  
**Executor designado:** DeepSeek (modelo/agente selecionado manualmente pelo usuário)  
**Modo:** análise somente leitura  
**Destino do relatório:** `temp/resultado-DEEPSEEK-apdf-rastreabilidade.md`

### Objetivo
Completar e validar a rastreabilidade entre a fonte original APDF e a versão local, aproveitando as matrizes e pareceres existentes. A decisão do usuário é a opção C: adaptar o APDF documentando e justificando cada diferença.

### Fontes a inspecionar
- `docs/01-metodologia/apdf.md`
- `temp/apdf-baseline-atual.md`
- `temp/registro-adaptacao-apdf-proposta.md`
- `temp/matriz-comparacao-apdf-original-baseline.md`, se existente
- `temp/matriz-divergencias-apdf-pdi.md`, se existente
- `temp/parecer-revisao-adaptacao-apdf.md`, se existente
- Fonte original APDF, caso esteja acessível localmente no projeto. Se não estiver, declarar que a comparação com a fonte original foi baseada apenas nas referências disponíveis e não inventar caminho nem conteúdo.

### Tarefas
1. Reutilizar as análises existentes e identificar somente lacunas, inconsistências ou conclusões ainda não sustentadas.
2. Conferir a presença e a cobertura dos seguintes elementos:
   - perguntas iniciais obrigatórias;
   - 13 fases, cada uma com elicitação, artefatos e gate;
   - fluxo operacional do agente APDF;
   - identidade, acionamentos e formato de checkpoint do Anti-Surto;
   - gatilhos de desvio de escopo e as três opções de resolução;
   - regra de ouro e controle após Architecture Freeze;
   - Engineering Handoff;
   - integração TPM condicional;
   - instruções de uso específicas por ferramenta.
3. Para cada diferença, registrar ID, evidência, estado atual, tratamento proposto, justificativa, impacto e aprovação humana necessária.
4. Respeitar DEC-003: não converter padrões de arquitetura de referência em arquitetura universal obrigatória.
5. Separar diferenças substantivas de diferenças editoriais e de implantação.
6. Indicar se a proposta de adaptação é internamente coerente e o que falta para uma versão candidata submetida à aprovação.

### Restrições
- Não editar `docs/`, `specs/`, `tests/` ou arquivos da raiz.
- Não alterar `MANIFESTO-SHA256.md`.
- Não homologar o APDF nem declarar conformidade integral.
- Não instalar ou executar ferramentas TPM.
- Não iniciar a Fase B.
- Não sobrescrever arquivos existentes; verificar o destino antes de gravar e usar nome alternativo se necessário.
- Não duplicar integralmente matrizes já existentes. O relatório deve ser complementar e consolidar apenas conclusões necessárias.

### Critério de conclusão
Um relatório em `temp/` que contenha conclusão clara, divergências que exigem decisão, adaptações recomendadas e critérios de aceite para a versão candidata. Informar os arquivos consultados e qualquer fonte indisponível.
