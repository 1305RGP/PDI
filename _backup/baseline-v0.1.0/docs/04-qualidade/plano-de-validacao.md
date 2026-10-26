# Plano de Validação da Baseline v0.1.0

**Estado:** planejado; nenhum teste executado por este documento.

## Fase A — Validação documental

- conferir presença dos arquivos obrigatórios;
- verificar IDs e versões;
- verificar links e referências;
- detectar conflitos e estados inconsistentes;
- confirmar que o estado de implementação é descrito corretamente.

## Fase B — Testes de conformidade dos contratos

- artefato não aprovado usado como baseline;
- referência a versão obsoleta;
- conflito entre norma, ADR e SPEC;
- alteração de teste aprovado sem autorização;
- requisito sem teste;
- evidência de commit/versão divergente;
- tarefa sem permissões/contexto;
- loop sem progresso;
- ação fora do escopo;
- capacidade de ferramenta documentada mas não testada;
- tentativa de instalar dependência ou alterar repositório sem autorização.

## Fase C — Verificação no ambiente Antigravity

Somente após confirmação do diretório e inspeção da configuração real:
- verificar versão e regras carregadas;
- testar permissões e comportamento de aprovação;
- verificar isolamento e recuperação;
- guardar resultados, comandos, ambiente e limitações.

## Critério de conclusão

Cada teste recebe `PASS`, `FAIL`, `BLOCKED` ou `NOT_RUN`, com evidência. Não declarar validada a baseline se houver teste obrigatório `FAIL`, `BLOCKED` ou `NOT_RUN`.

## Restrições

Este plano não autoriza executar comandos destrutivos, instalar dependências, conectar contas ou alterar repositórios externos.
