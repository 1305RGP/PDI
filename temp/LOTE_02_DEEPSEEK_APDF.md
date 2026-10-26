# LOTE 02 — DEEPSEEK
## Matriz de adaptação APDF — Opção C, diferenças justificadas e rastreáveis

**Projeto:** Núcleo Central de Engenharia (PDI)  
**Documento de referência:** `docs/01-metodologia/apdf.md`  
**Decisão humana já tomada:** seguir a **Opção C** — adaptar o APDF ao Núcleo Central de Engenharia, registrando e justificando cada diferença em relação à fonte original aprovada. Até a comparação ser concluída e revisada, o APDF local permanece `DRAFT`; não alegar conformidade integral.

### Objetivo deste lote
Concluir a comparação de rastreabilidade entre a fonte original do APDF e a adaptação atualmente existente, produzindo uma matriz auditável de diferenças. Não reabrir a escolha da Opção C.

### Entradas a consultar
- `APDF(1).md` ou o arquivo original aprovado equivalente, se estiver disponível no material fornecido;
- `docs/01-metodologia/apdf.md`;
- `docs/01-metodologia/ciclo-apdf.md`;
- `docs/00-governanca/norma-central.md`;
- `docs/00-governanca/hierarquia-documental.md`;
- `docs/00-governanca/registro-de-decisoes.md`;
- `AGENTS.md`;
- qualquer parecer anterior sobre adaptação/rastreabilidade do APDF em `temp/`.

Se a fonte original aprovada não estiver disponível, declare isso explicitamente e não invente conteúdo nem alegue comparação concluída.

### Instruções
1. Compare seção por seção, preservando a terminologia da fonte.
2. Para cada item, classifique como:
   - `MANTIDO` — equivalente funcionalmente;
   - `ADAPTADO` — alterado para adequação ao Núcleo;
   - `OMITIDO` — não incorporado;
   - `ADICIONADO` — existe na adaptação sem equivalente explícito na fonte;
   - `PENDENTE_DE_EVIDÊNCIA` — não há fonte suficiente para concluir.
3. Para cada `ADAPTADO`, `OMITIDO` ou `ADICIONADO`, informe: referência da fonte, referência local, descrição da diferença, justificativa, impacto, risco, decisão/ADR necessária e evidência que sustenta a análise.
4. Preserve a DEC-003: o Núcleo padroniza controles, não impõe arquitetura universal de produto. Qualquer diferença metodológica deve respeitar a arquitetura específica decidida por ADR.
5. Não altere arquivos normativos, não mude a estrutura de diretórios, não instale ferramentas e não trate inferência como fato.
6. Não declare o APDF homologado. A entrega é uma proposta de rastreabilidade para revisão humana.

### Entrega obrigatória
Produza `resultado-DEEPSEEK-lote-02.md`, incluindo:
- fontes efetivamente consultadas e limitações;
- matriz de rastreabilidade com colunas `ID | seção da fonte | seção local | classificação | diferença | justificativa | impacto/risco | evidência | ação`;
- lista de divergências que exigem decisão humana versus ajustes editoriais;
- proposta de histórico/metadata para `apdf.md` e `ciclo-apdf.md`, sem aplicar alterações;
- conclusão indicando se a comparação foi completa ou parcial e por quê.

**Modo:** análise e proposta somente. Não editar a baseline nem declarar aprovação.
