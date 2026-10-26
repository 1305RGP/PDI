# LOTE 02 — GEMINI
## Revisão de encerramento do G0 e consistência documental após a deliberação humana

**Projeto:** Núcleo Central de Engenharia (PDI)  
**Baseline:** v0.1.0 pós-Fase A  
**Documento de entrada:** `resultado-GEMINI-auditoria-g0.md`  
**Decisão humana já tomada:** o proprietário do Núcleo aprovou seguir com o Gate G0 e autorizou o avanço para a Fase B. Manter o APDF como referência provisória (`DRAFT`) e preservar a neutralidade arquitetural da DEC-003. A adaptação do APDF seguirá a **Opção C**: adaptar o método ao Núcleo e documentar/justificar cada diferença.

### Objetivo deste lote
Converter o parecer anterior em uma lista objetiva de providências documentais para registrar a decisão humana e preparar a transição para a Fase B. Não repetir a auditoria completa e não voltar a perguntar se G0 deve ser aprovado.

### Instruções
1. Leia `AGENTS.md`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`, `docs/00-governanca/registro-de-decisoes.md`, `docs/00-governanca/norma-central.md`, `docs/00-governanca/hierarquia-documental.md`, `docs/00-governanca/matriz-de-autoridade.md`, `docs/01-metodologia/apdf.md` e `docs/04-qualidade/plano-de-validacao.md`.
2. Considere a deliberação humana fornecida acima como autorização para preparar o registro. Não afirme que você, como IA, aprovou o Gate.
3. Proponha o texto exato de `DEC-007`, registrando a deliberação humana, o encerramento do G0 e a autorização para iniciar a Fase B, sem alterar DEC-001 a DEC-006.
4. Liste exatamente quais arquivos precisam de atualização de status/histórico e quais precisam ter o manifesto SHA-256 recalculado após a edição.
5. Examine a inconsistência dos metadados `Estado:` com comentários anexados. Proponha uma normalização compatível com os estados canônicos já definidos, mas **não aplique mudanças em massa** e não altere a baseline normativa sem autorização de escrita explícita.
6. Não renomeie diretórios, não mude a arquitetura, não imponha Clean Architecture/DDD/EDA, não instale ferramentas e não conecte/alterne repositórios.
7. Diferencie claramente: decisão humana recebida, alteração documental proposta, evidência verificada e item ainda não verificado no ambiente real.

### Entrega obrigatória
Produza `resultado-GEMINI-lote-02.md`, com:
- resumo curto;
- texto proposto completo para DEC-007;
- matriz `arquivo | alteração exata | justificativa | impacto no manifesto`;
- lista de verificações após a atualização;
- riscos ou inconsistências reais restantes;
- conclusão objetiva: pronto para transição documental à Fase B ou o que ainda falta, sem inventar bloqueadores.

**Modo:** somente leitura + proposta. Não editar os arquivos normativos do projeto, não executar comandos destrutivos e não declarar alterações como realizadas se apenas foram sugeridas.
