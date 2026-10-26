# Contrato 04 — Ferramentas e Orquestração

**ID:** CTR-04  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente; implementação pendente.

## Objetivo

Integrar ferramentas e agentes com capacidades verificadas, permissões explícitas, execução isolada e revisão independente.

## Requisitos

1. Manter inventário de ferramenta, versão, capacidades testadas, permissões, limitações, custo e evidências.
2. Selecionar executor conforme tarefa e capacidades comprovadas.
3. Não presumir compatibilidade entre regras, Skills, MCPs, hooks, sandbox ou arquivos de instrução.
4. Isolar tarefas concorrentes que possam modificar os mesmos arquivos; coordenar conflitos explicitamente.
5. Separar executor e revisor independente quando exigido pelo risco.
6. Aplicar limites, permissões e contexto do Contrato 03 a toda chamada.
7. Registrar entradas/saídas relevantes, alterações, falhas, estado e evidências.
8. Recuperar falhas com diagnóstico e hipótese nova; evitar repetição improdutiva.
9. Não adotar votação entre modelos como prova de verdade.
10. Não considerar uma capacidade disponível até ser verificada no ambiente real.

## Papéis

- Orquestrador: distribui tarefas autorizadas.
- Executor: realiza trabalho delimitado.
- Revisor independente: verifica conformidade e evidências.
- Harness: impõe contexto, permissões e limites.
- Responsável humano: decide mudanças críticas, exceções e aprovações reservadas.

## Testes obrigatórios por ferramenta

- versão e configuração;
- carregamento real de instruções;
- leitura/escrita e execução de comandos;
- comportamento de permissões e aprovações;
- isolamento concorrente;
- interrupção e recuperação;
- persistência de contexto;
- evidências reproduzíveis dos resultados.

## Critérios de aceite

- CA-04-01: inventário distingue documentado, configurado e testado.
- CA-04-02: tarefa só é roteada para ferramenta habilitada e compatível.
- CA-04-03: concorrência não causa escrita conflitante silenciosa.
- CA-04-04: revisão independente é exigida por política.
- CA-04-05: permissões e limites são aplicados a chamadas.
- CA-04-06: falhas preservam contexto e evidências.
- CA-04-07: capacidades não verificadas são sinalizadas como pendentes.

## Dependências

Contratos 01 a 03 e 05; documentação e versões reais de cada ferramenta.
