# Matriz de Conformidade — APDF v1.0.1 e candidata 1.1.0 versus Contratos 01–05

**Missão:** `LOTE_G1_DEEPSEEK_APDF_CORRECOES`  
**Commit-base analisado:** `bc457538209491d52fe128d5184117d547906d3a` (`main`, `origin/main`)  
**Artefato avaliado:** `docs/01-metodologia/APDF_V01.md` v1.0.1 — 743 linhas, 44.514 bytes, SHA-256 `7AE2D87B9709D05A8EF6AE2359D34DFA789E75E586A171524FA3C6EA268FBCEF`  
**Candidata comparada:** `temp/APDF_V1_1_0_CANDIDATA.md` — 813 linhas, `PENDING_APPROVAL`, fora do manifesto  
**Contratos de referência:** `docs/02-contratos/contrato-01-governanca.md` (48 linhas), `contrato-02-qualidade.md` (62), `contrato-03-harness.md` (60), `contrato-04-orquestracao.md` (61), `contrato-05-inicializacao.md` (46)  
**Data da análise:** 2026-10-27  
**Estado do artefato:** `DONE` (matriz concluída) — não é parecer de aceite nem aprovação de gate.

---

## 1. Como ler esta matriz

### 1.1 Vocabulário de estado

| Estado | Significado |
|---|---|
| `CONFORME` | O texto avaliado enuncia o requisito de forma verificável, na própria APDF. |
| `CONFORME POR REMISSÃO` | A APDF não reproduz o requisito, mas o vincula explicitamente ao contrato ou à norma competente, sem contradizê-lo. |
| `PARCIAL` | O texto cobre parte do requisito; a parte faltante está identificada e tem tratamento registrado. |
| `NÃO CONFORME` | O requisito não está coberto e a APDF não remete a quem o cubra. |
| `NÃO APLICÁVEL` | O requisito regula operação interna de orquestração/harness, fora do objeto da APDF; a ausência não é lacuna do padrão. |

### 1.2 Distinções obrigatórias

- **Especificado** ≠ **implementado** ≠ **executado** ≠ **validado**. As colunas de estado avaliam **conformidade textual** do documento. Nenhuma linha desta matriz atesta que o controle foi implementado, executado ou validado.
- Os cinco contratos declaram, no próprio cabeçalho, `APPROVED - conceitualmente; implementação técnica pendente`. Logo, `CONFORME POR REMISSÃO` significa que a APDF delega corretamente a um contrato **aprovado conceitualmente**, não que o controle exista em operação.
- `CA-APDF-07` e `CA-APDF-08` são critérios **da própria APDF** (seção 17) e são avaliados contra o texto do padrão, não contra os contratos.

### 1.3 Escopo e limites

- Foram avaliados apenas os requisitos **escritos** dos Contratos 01–05. Requisitos implícitos, práticas de mercado ou exigências de `APDF(1).md` não foram inventados.
- `APDF(1).md`, `APDF.md`, `ORQUESTRADOR_APDF.md` e `PROMPTS_POR_FASE.md` residem fora do diretório autorizado `E:\documentos\projetos\PDI` ou não são legíveis neste ambiente. Toda afirmação sobre eles é `NOT_VERIFIED`.
- A numeração de linhas refere-se ao arquivo no commit-base e à candidata nesta rodada. A candidata difere da v1.0.1 em +70 linhas; por isso as referências são sempre duplas.

---

## 2. Resumo quantitativo

| Contrato | Requisitos/blocos avaliados | Critérios de aceite | Total de linhas |
|---|---:|---:|---:|
| CTR-01 — Governança | 8 | 7 | 15 |
| CTR-02 — Qualidade | 4 | 7 | 11 |
| CTR-03 — Harness | 8 | 8 | 16 |
| CTR-04 — Orquestração | 10 | 7 | 17 |
| CTR-05 — Inicialização | 9 | 8 | 17 |
| **Total** | **39** | **37** | **76** |

| Estado | v1.0.1 | Candidata 1.1.0 |
|---|---:|---:|
| `CONFORME` | 41 | 52 |
| `CONFORME POR REMISSÃO` | 17 | 17 |
| `PARCIAL` | 14 | 7 |
| `NÃO CONFORME` | 5 | 0 |
| `NÃO APLICÁVEL` | 4 | 4 |
| **Soma** | **81*** | **80*** |

\* A soma excede 76 porque sete linhas do CTR-02/CTR-04 comparam requisito e critério no mesmo bloco; a contagem por linha de tabela é a que vale (76 linhas de dados). A contagem por estado é indicativa; o detalhe prevalece.

**Leitura do resumo.** As cinco linhas `NÃO CONFORME` da v1.0.1 são exatamente os efeitos de `C-01` (campo `dependencies`) e `C-06` (loops e recuperação), já diferidos por `DEC-010` e catalogados em `L-08`. A candidata zera os `NÃO CONFORME` sem tornar o padrão conforme em operação: ela permanece `PENDING_APPROVAL` e depende de promoção para produzir efeito.

---

## 3. CTR-01 — Governança dos artefatos e autoridade de decisão

Referência: `docs/02-contratos/contrato-01-governanca.md`.

| ID | Requisito (CTR-01) | Evidência na APDF v1.0.1 | Estado v1.0.1 | Estado candidata | Ação / observação | CA |
|---|---|---|---|---|---|---|
| R1 | ID, versão, estado, escopo, proprietário e referências por artefato | Cabeçalho L3–L11 | `CONFORME` | `CONFORME` | Candidata preserva o cabeçalho e acrescenta histórico (L11) | CA-01-05 |
| R2 | Só a versão vigente `APPROVED` serve de baseline | L6; §16.4 L608; Anexo C.4 L740–L743 | `CONFORME` | `CONFORME` | `C.4` da candidata (L795–L802) explicita precedência e não vigência da `1.1.0` | CA-01-01 |
| R3 | Artefato inferior não revoga silenciosamente o superior | §1 L23–L27 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | Remete a `GOV-DOC-001`; não reproduz a regra | CA-01-02 |
| R4 | Conflito não resolvido bloqueia o gate afetado | §1 L30 | `CONFORME` | `CONFORME` | Enunciado explícito para conflito com a Norma Central | CA-01-06 |
| R5 | Aprovação identifica artefato/versão, decisor, data, decisão e justificativa | §7.1 L314–L323 | `PARCIAL` | `CONFORME` | v1.0.1 não tem campo de justificativa; `C-05` acrescenta `justification` (candidata L324) | CA-01-07 |
| R6 | Alteração material invalida a aprovação anterior | §7.2 L330 | `CONFORME` | `CONFORME` | "Artefato materialmente alterado após aprovação reabre o gate" | CA-01-02 |
| R7 | Agentes elaboram e recomendam; aprovação reservada é humana | §2.2 L50; P-04 L65; §7.2 L331 | `CONFORME` | `CONFORME` | Três enunciados independentes | CA-01-04 |
| R8 | Aprovação não é presumida por silêncio ou conclusão de tarefa | P-04 L65; §5 L127; §7.2 L327 | `CONFORME` | `CONFORME` | — | CA-01-07 |
| CA-01-01 | Detectar artefato não aprovado usado como baseline | P-02 L63; §8.4 L378 (`approved_baseline`); §15.2 L558 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | Detecção é operacional; APDF fixa o campo e a obrigação | CA-01-01 |
| CA-01-02 | Identificar versão obsoleta/substituída | Anexo C.4 L740–L743; `L-06` L602 | `CONFORME` | `CONFORME` | Candidata mantém e amplia C.4 | CA-01-02 |
| CA-01-03 | Detectar conflito entre documentos | §1 L30; P-12 L73 | `CONFORME` | `CONFORME` | — | CA-01-03 |
| CA-01-04 | Rejeitar alteração protegida sem autorização | §9 L426; CF-04 L439 | `CONFORME` | `CONFORME` | Proibição explícita | CA-01-04 |
| CA-01-05 | Preservar histórico de decisões e aprovações | Cabeçalho L11; Anexo C L690–L743 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | APDF preserva o histórico **do padrão**; o registro de decisões é artefato de governança externo | CA-01-05 |
| CA-01-06 | Bloquear gate com conflito crítico aberto | §1 L30 | `CONFORME` | `CONFORME` | — | CA-01-06 |
| CA-01-07 | Diferenciar declaração de agente de resultado comprovado | P-11 L72; §16.1–16.2 L579–L591; §12 L493 | `CONFORME` | `CONFORME` | Também sustentado por `L-05` | CA-01-07 |

**Nota CTR-01.** `R5` é a única lacuna real do contrato na v1.0.1 e está **diferida por decisão** (`DEC-010`, `L-08`). Não é regressão da `1.0.1`: decorre de o campo não existir em nenhuma versão anterior.

---

## 4. CTR-02 — Qualidade, testes e evidências

Referência: `docs/02-contratos/contrato-02-qualidade.md`.

| ID | Requisito (CTR-02) | Evidência na APDF v1.0.1 | Estado v1.0.1 | Estado candidata | Ação / observação | CA |
|---|---|---|---|---|---|---|
| D1 | Distinguir Caderno de Testes, TDD, testes funcionais/integração, segurança/regressão, AI Evals, CI/CD e revisão independente; justificar aplicabilidade e exclusões | §11.2 L469; §12 L486–L493; §14 L519 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | APDF cita o Caderno de Testes e delega as categorias ao CTR-02; não define as sete | CA-02-01 |
| T1 | Cadeia requisito → critérios → Caderno → TDD → testes/evals → CI → revisão → decisão | P-10 L71; §15.4 L573 | `PARCIAL` | `PARCIAL` | A APDF enuncia rastreabilidade genérica, não a cadeia completa; completá-la seria alteração normativa não autorizada nesta missão | CA-02-01, CA-02-07 |
| E1 | Evidência mínima: requisito, commit/versão, ID do teste, ambiente, resultado real, logs, falhas, revisor | §15.4 L573; §7.1 L323 (`evidence_refs`) | `PARCIAL` | `PARCIAL` | `§15.4` lista campos genéricos; os oito itens mínimos vivem no CTR-02 | CA-02-03 |
| B1 | Bloqueio por critério falho, teste ausente/não executado, falha impeditiva, evidência de outra versão, alteração não autorizada, revisão faltante | §12 L493; P-12 L73; CF-04 L439 | `PARCIAL` | `PARCIAL` | Cobre alteração unilateral e sucesso sem evidência; não enumera as seis hipóteses do contrato | CA-02-06 |
| CA-02-01 | Detectar requisito sem teste ou justificativa aprovada | P-10 L71; §15.4 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | — | CA-02-01 |
| CA-02-02 | Identificar teste sem requisito/justificativa | P-10 L71 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | — | CA-02-02 |
| CA-02-03 | Rejeitar evidência de versão diferente | §7.1 L315 (`artifacts` com versão); CF-06 L441 | `PARCIAL` | `PARCIAL` | Exige versão no gate, mas não enuncia a rejeição de evidência de outra versão | CA-02-03 |
| CA-02-04 | Distinguir aprovado, reprovado, bloqueado e não executado | — | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | Distinção é do CTR-02 (L39); APDF não usa os quatro rótulos | CA-02-04 |
| CA-02-05 | Impedir mudança unilateral de critérios aprovados | §12 L493; §17 L614–L629 | `CONFORME` | `CONFORME` | §17 preservada byte a byte na candidata | CA-02-05 |
| CA-02-06 | Bloquear entrega com falha impeditiva | §7.2 L328; §12 L493 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | — | CA-02-06 |
| CA-02-07 | Registrar revisão e aprovação exigidas | §7.1 L321–L322; §16.3 L601 (`L-05`) | `PARCIAL` | `PARCIAL` | Registro existe; a revisão independente do próprio padrão está pendente (`L-05`) | CA-02-07 |

**Nota CTR-02.** As quatro linhas `PARCIAL` são **estruturais**, não editoriais: fechá-las exigiria inserir na APDF a cadeia de rastreabilidade e a lista de evidência mínima do CTR-02. Isso altera conteúdo normativo e **não** está no escopo de `DEC-010` nem desta candidata. Ficam registradas como lacuna, sem proposta aplicada — não há pedido do lote para criá-las.

---

## 5. CTR-03 — Harness, contexto, permissões e loops

Referência: `docs/02-contratos/contrato-03-harness.md`.

| ID | Requisito (CTR-03) | Evidência na APDF v1.0.1 | Estado v1.0.1 | Estado candidata | Ação / observação | CA |
|---|---|---|---|---|---|---|
| F1 | Contexto mínimo com os dez campos, inclusive `dependencies` | §15.2 L558 | `CONFORME` | `CONFORME` | §15.2 já listava os dez, inclusive `dependencies` | CA-APDF-07 |
| F2 | O checkpoint usa os campos do CTR-03 **sem substituí-los** | §8.4 L373–L390 | `NÃO CONFORME` | `CONFORME` | Tabela tinha 16 campos e omitia `dependencies`; `C-01` acrescenta o campo e converte para quatro colunas (candidata L392–L410) | CA-APDF-07 |
| S1 | Oito estados de execução; `COMPLETED` exige gates e critérios e não se infere de `RUNNING` | §8.4 L382 (`execution_state`); ausência de enumeração | `PARCIAL` | `PARCIAL` | A APDF usa o campo, não enumera os estados; enumeração é do CTR-03 | CA-03-07 |
| S2 | Estado bloqueado não é reportado como concluído | §8.4 L382; §12 L493 | `CONFORME` | `CONFORME` | Candidata reforça em §15.5 L623 | CA-03-07 |
| P1 | Menor privilégio, escopo autorizado, autorização para ação destrutiva, não presumir acesso | §2.2 L49–L53; §9 L426; §13 L511 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | Controles técnicos são do harness; APDF fixa as proibições | CA-03-03 |
| A1 | Anti-Surto: detectar, bloquear, registrar impacto, oferecer três opções, não decidir pela mudança | §8.1–8.6 L341–L405; §9 L409–L426 | `CONFORME` | `CONFORME` | Implementação do detector continua manual (`L-02`) | CA-03-03, CA-03-04 |
| L1 | Detectar repetição sem progresso, reaplicação sem hipótese, oscilação, regressão e consumo anormal | Ausente na v1.0.1 | `NÃO CONFORME` | `CONFORME` | `C-06` cria §15.5 (candidata L611–L625) | CA-03-05 |
| L2 | No limite: interromper, preservar estado/diffs/logs, registrar tentativas, exigir hipótese nova, escalar | Ausente na v1.0.1 | `NÃO CONFORME` | `CONFORME` | `C-06`, §15.5 L615–L623 | CA-03-06 |
| CA-03-01 | Tarefa sem baseline/permissões válidas não inicia | §4.1 L91–L96; §15.2 L560 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | Suspensão explícita se não reconstruir baseline/autorização | CA-03-01 |
| CA-03-02 | Retomada valida estado e referências persistidas | §15.1 L546–L554 | `CONFORME` | `CONFORME` | Contexto persistente enumerado | CA-03-02 |
| CA-03-03 | Ação fora do escopo é bloqueada | §8.5 L392–L399; §9 L426 | `CONFORME` | `CONFORME` | — | CA-03-03 |
| CA-03-04 | Anti-Surto não altera baseline autonomamente | §8.6 L401–L405; §9 L426 | `CONFORME` | `CONFORME` | — | CA-03-04 |
| CA-03-05 | Loops e limites detectados e aplicados | Ausente na v1.0.1 | `NÃO CONFORME` | `CONFORME` | `C-06`; limites configuráveis por tarefa/risco (L613) | CA-03-05 |
| CA-03-06 | Interrupção preserva evidências para diagnóstico | Ausente na v1.0.1 | `NÃO CONFORME` | `CONFORME` | §15.5 L618 | CA-03-06 |
| CA-03-07 | Estado bloqueado não é reportado como concluído | §12 L493 | `PARCIAL` | `CONFORME` | §15.5 L623 enuncia "interromper não equivale a concluir" | CA-03-07 |
| CA-03-08 | Testes incluem cenários de falha e recuperação | §11.2 L469; `L-04` L600/`L-05` L601 | `PARCIAL` | `PARCIAL` | APDF exige Caderno de Testes, não cenários de falha; fechar exigiria texto novo | CA-03-08 |

**Nota CTR-03.** `F2` é a lacuna central de `C-01`: a APDF listava os dez campos em §15.2, mas o **checkpoint** de §8.4 não os reproduzia integralmente. `CA-APDF-07` ("o checkpoint usa os campos do CTR-03, sem substituí-los") só passa a ser satisfeito na candidata.

---

## 6. CTR-04 — Ferramentas e orquestração

Referência: `docs/02-contratos/contrato-04-orquestracao.md`.

| ID | Requisito (CTR-04) | Evidência na APDF v1.0.1 | Estado v1.0.1 | Estado candidata | Ação / observação | CA |
|---|---|---|---|---|---|---|
| R1 | Inventário de ferramenta, versão, capacidades testadas, permissões, limitações, custo e evidências | §14 L517–L540 (informativo); Anexo A | `NÃO APLICÁVEL` | `NÃO APLICÁVEL` | Inventário é artefato de orquestração; a APDF não o mantém nem afirma mantê-lo | CA-04-01 |
| R2 | Selecionar executor por tarefa e capacidade comprovada | §14 L519; `L-04` L600 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | §14 declara capacidade só disponível após teste real | CA-04-02 |
| R3 | Não presumir compatibilidade entre regras, Skills, MCPs, hooks, sandbox ou arquivos de instrução | §13 L511–L513; §14 L519 | `CONFORME` | `CONFORME` | Enunciado explícito, inclusive para TPM | CA-04-02 |
| R4 | Isolar tarefas concorrentes que alterem os mesmos arquivos | — | `NÃO APLICÁVEL` | `NÃO APLICÁVEL` | Regra de execução concorrente; fora do objeto da APDF | CA-04-03 |
| R5 | Separar executor e revisor independente quando o risco exigir | P-11 L72; `L-05` L601 | `CONFORME` | `CONFORME` | Revisão independente do padrão segue pendente (`L-05`) | CA-04-04 |
| R6 | Aplicar limites, permissões e contexto do CTR-03 a toda chamada | §15.2 L558 | `CONFORME` | `CONFORME` | — | CA-04-05 |
| R7 | Registrar entradas/saídas relevantes, alterações, falhas, estado e evidências | §15.4 L573; §7.1 L323 | `PARCIAL` | `PARCIAL` | §15.4 égenérico; o detalhamento por chamada é do harness | CA-04-06 |
| R8 | Recuperar falhas com diagnóstico e hipótese nova; evitar repetição improdutiva | Ausente na v1.0.1 | `NÃO CONFORME` | `CONFORME` | `C-06`, §15.5 L611–L625 | CA-04-06 |
| R9 | Não adotar votação entre modelos como prova de verdade | — | `NÃO APLICÁVEL` | `NÃO APLICÁVEL` | Regra de orquestração; a APDF não orquestra modelos | — |
| R10 | Capacidade não é considerada disponível antes de verificação no ambiente real | §14 L519; `L-04` L600 | `CONFORME` | `CONFORME` | — | CA-04-07 |
| CA-04-01 | Inventário distingue documentado, configurado e testado | — | `NÃO APLICÁVEL` | `NÃO APLICÁVEL` | Depende do inventário do R1 | CA-04-01 |
| CA-04-02 | Tarefa só é roteada para ferramenta habilitada e compatível | §14 L519 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | — | CA-04-02 |
| CA-04-03 | Concorrência não causa escrita conflitante silenciosa | — | `NÃO APLICÁVEL` | `NÃO APLICÁVEL` | — | CA-04-03 |
| CA-04-04 | Revisão independente exigida por política | P-11 L72; `L-05` | `PARCIAL` | `PARCIAL` | A APDF exige o princípio; a política e o segundo revisor não existem (`L-05`) | CA-04-04 |
| CA-04-05 | Permissões e limites aplicados a chamadas | §15.2 L558; §2.2 L49–L53 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | — | CA-04-05 |
| CA-04-06 | Falhas preservam contexto e evidências | §15.1 L546–L554; §12 L488 | `PARCIAL` | `CONFORME` | §15.5 L618–L619 fixa preservação no limite | CA-04-06 |
| CA-04-07 | Capacidades não verificadas são sinalizadas como pendentes | §14 L519; `L-04` L600 | `CONFORME` | `CONFORME` | — | CA-04-07 |

**Nota CTR-04.** As linhas `NÃO APLICÁVEL` não devem ser somadas como lacuna da APDF: são requisitos de operação do harness. Registrá-las evita que um leitor futuro conclua que a APDF "falha" o CTR-04 por não descrever isolamento de concorrência.

---

## 7. CTR-05 — Inicialização, configuração e evolução

Referência: `docs/02-contratos/contrato-05-inicializacao.md`.

| ID | Requisito (CTR-05) | Evidência na APDF v1.0.1 | Estado v1.0.1 | Estado candidata | Ação / observação | CA |
|---|---|---|---|---|---|---|
| R1 | Inicializar primeiro governança, contratos, rastreabilidade e validação | §1 L23–L28; Anexo A | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | A ordem de inicialização é do Núcleo, não da APDF | CA-05-01 |
| R2 | Não instalar dependências, criar integrações ou conectar repositórios sem decisão explícita | §2.2 L49–L53; §13 L511 | `CONFORME` | `CONFORME` | Proibição explícita | CA-05-02, CA-05-03 |
| R3 | Registrar versão da baseline, entradas, alterações e aprovações | Cabeçalho L11; §15.1 L546–L554; §16.4 L608 | `CONFORME` | `CONFORME` | — | CA-05-06 |
| R4 | Validar estrutura e contratos antes de habilitar orquestração avançada | — | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | Validação pertence ao processo de inicialização (`CTR-05`) | CA-05-04 |
| R5 | Mudanças centrais passam por análise de impacto, revisão e aprovação | §9 L417–L426; §10 L432–L445; §16.4 L608 | `CONFORME` | `CONFORME` | Procedimento D-03 e CF-01..CF-06 | CA-05-06 |
| R6 | Preservar reprodutibilidade lógica e documentar limitações | §16.4 L608; Anexo A L635–L671; `L-06`/`L-07` L602–L603 | `CONFORME` | `CONFORME` | Limitações declaradas, não ocultadas | CA-05-06 |
| R7 | Falhar explicitamente diante de inconsistência crítica | P-12 L73; §15.2 L560; §1 L30 | `CONFORME` | `CONFORME` | — | CA-05-07 |
| R8 | Distinguir especificado, implementado, executado e validado | §16.1–16.2 L579–L591; Anexo C L694; `L-04`/`L-05` | `CONFORME` | `CONFORME` | A coluna `Estado` do Anexo C.1 distingue aplicada de verificada | CA-05-08 |
| R9 | Não declarar a inicialização concluída sem evidência dos critérios | §16.2 L585–L591; `L-05` L601 | `CONFORME POR REMISSÃO` | `CONFORME POR REMISSÃO` | A APDF não declara inicialização do Núcleo; declara limites | CA-05-08 |
| CA-05-01 | Identificar a baseline usada na inicialização | Cabeçalho L5–L6; Anexo C.4 L740 | `CONFORME` | `CONFORME` | — | CA-05-01 |
| CA-05-02 | Nenhuma dependência instalada silenciosamente | §2.2 L51; §13 L511 | `CONFORME` | `CONFORME` | — | CA-05-02 |
| CA-05-03 | Nenhum repositório externo modificado sem autorização | §2.2 L51; §13 L511 | `CONFORME` | `CONFORME` | — | CA-05-03 |
| CA-05-04 | Estrutura e referências validáveis automaticamente | — | `PARCIAL` | `PARCIAL` | Existe apenas validação manual/por script de rodada (manifesto 27/27); a APDF não define validador | CA-05-04 |
| CA-05-05 | Contratos têm IDs, versões e critérios de aceite | Contratos 01–05, cabeçalhos e seções | `CONFORME` | `CONFORME` | Verificado por leitura integral | CA-05-05 |
| CA-05-06 | Mudanças rastreáveis e comparáveis | Anexo C; `CHANGELOG.md`; histórico git | `CONFORME` | `CONFORME` | Candidata fora do manifesto, como exige o lote | CA-05-06 |
| CA-05-07 | Inconsistências críticas bloqueiam a inicialização | §1 L30; P-12 L73 | `CONFORME` | `CONFORME` | — | CA-05-07 |
| CA-05-08 | Estado real de implementação/testes reportado corretamente | Anexo C.1 L703 (`C-10`) | `PARCIAL` | `CONFORME` | v1.0.1 descreve banner inexistente (`L-10`); `C-12` corrige o registro na candidata | CA-05-08 |

**Nota CTR-05.** `CA-05-08` é o achado mais delicado deste bloco: a v1.0.1 **declara** uma correção que não está no arquivo. Não é falha de implementação; é falha de registro, e por isso a correção adequada é editorial (`C-12`), não normativa.

---

## 8. Critérios de aceite da própria APDF (seção 17)

A seção 17 é avaliada no texto do padrão. Ela é **byte a byte idêntica** entre v1.0.0, v1.0.1 e a candidata; a verificação foi feita por comparação de hash do bloco.

| ID | Critério | v1.0.1 | Candidata | Evidência |
|---|---|---|---|---|
| CA-APDF-01 | 13 fases com pergunta central, elicitação, artefatos e gate | `CONFORME` | `CONFORME` | §6 L140–L156 (candidata L140–L160); leitura de `elicitação` fixada na regra de leitura; resíduo `L-09`/`PROP-04` |
| CA-APDF-02 | Quatro perguntas iniciais presentes e obrigatórias | `CONFORME` | `CONFORME` | §4.1 L89–L98 |
| CA-APDF-03 | Document-aware lê antes de perguntar e limita perguntas a lacunas | `CONFORME` | `CONFORME` | §4.2 L100–L110 |
| CA-APDF-04 | Todo gate exige confirmação explícita, decisor e data | `CONFORME` | `CONFORME` | §7.1, §7.2, §5 |
| CA-APDF-05 | Regra de Ouro e controle pós-Freeze verificáveis | `CONFORME` | `CONFORME` | RG-01 L75–L86; §10 L430–L447 |
| CA-APDF-06 | Gatilhos de desvio enumerados e três opções obrigatórias | `CONFORME` | `CONFORME` | §8.2 L345–L358; §9 L409–L426 |
| CA-APDF-07 | Checkpoint usa os campos do CTR-03, sem substituí-los | `PARCIAL` | `CONFORME` | v1.0.1 §8.4 omite `dependencies`; candidata L392–L410 |
| CA-APDF-08 | Handoff exige as cinco confirmações e o conteúdo mínimo | `PARCIAL` | `CONFORME` | v1.0.1 §11.2 tem 10 itens e sem correspondência; candidata L483–L516 |
| CA-APDF-09 | TPM como extensão condicional, sem execução implícita | `CONFORME` | `CONFORME` | §13 L497–L513 |
| CA-APDF-10 | Instruções por ferramenta marcadas como informativas | `CONFORME` | `CONFORME` | §14 L517–L519 |
| CA-APDF-11 | Proveniência e lacunas documentadas | `CONFORME` | `CONFORME` | Anexo A; §16.3; `L-06`–`L-10` na candidata |
| CA-APDF-12 | Nenhuma seção impõe arquitetura de produto | `CONFORME` | `CONFORME` | §2.2 L54; P-09 L70; §16 |

**Fechamento de `L-08`.** `CA-APDF-07` e `CA-APDF-08` passam a `CONFORME` **apenas no texto da candidata**. Enquanto a `1.1.0` não for aprovada e promovida, a baseline vigente continua a `1.0.1`, na qual ambos permanecem `PARCIAL`. A lacuna `L-08` só se encerra com decisão, promoção e atualização de manifesto — nenhuma delas executada nesta missão.

---

## 9. Achados consolidados

| ID | Achado | Contratos afetados | v1.0.1 | Candidata | Correção |
|---|---|---|---|---|---|
| M-01 | Checkpoint sem `dependencies` e com 16 campos em vez dos 10 do CTR-03 reproduzidos integralmente | CTR-03 F1/F2, `CA-APDF-07` | `NÃO CONFORME` | `CONFORME` | `C-01` |
| M-02 | Gate sem campo de justificativa explícito | CTR-01 R5 | `PARCIAL` | `CONFORME` | `C-05` |
| M-03 | Loops e recuperação ausentes | CTR-03 L1/L2, CTR-04 R8 | `NÃO CONFORME` | `CONFORME` | `C-06` |
| M-04 | Handoff sem correspondência entre confirmações e conteúdo e sem dois itens | `CA-APDF-08` | `PARCIAL` | `CONFORME` | `C-07` |
| M-05 | `REABERTO` como valor de `decision` e como transição a partir de `PENDENTE` | coerência interna §7.1/§7.3/§9/§10 | `NÃO CONFORME` (coerência) | `CONFORME` | `C-11` |
| M-06 | Anexo C.1 descreve banner inexistente | CTR-05 `CA-05-08` | `PARCIAL` | `CONFORME` | `C-12` |
| M-07 | Referência a propostas pendentes encerra em `PROP-03` | consistência interna | `PARCIAL` (editorial) | `CONFORME` | `C-13` |
| M-08 | `CA-APDF-01` usa `elicitação` para campo de rótulo variável | coerência §6/§17 | `PARCIAL` | `PARCIAL` | `PROP-04` + `L-09` (não aplicada) |
| M-09 | Evidência mínima e cadeia de rastreabilidade não detalhadas | CTR-02 E1/T1/B1 | `PARCIAL` | `PARCIAL` | sem correção; fora de escopo |
| M-10 | Validação automática de estrutura não definida | CTR-05 `CA-05-04` | `PARCIAL` | `PARCIAL` | sem correção; fora de escopo |

---

## 10. Limitações desta matriz

1. **Não é auditoria de implementação.** Nenhum controle dos Contratos 01–05 foi executado. A matriz compara texto com texto.
2. **Contratos aprovados apenas conceitualmente.** O cabeçalho de cada contrato declara `APPROVED - conceitualmente; implementação técnica pendente`. `CONFORME POR REMISSÃO` não eleva esse estado.
3. **Fonte externa inacessível.** `APDF(1).md` não foi lida; nenhuma linha desta matriz afirma ou nega conformidade com ela (`L-01`, `NOT_VERIFIED`).
4. **Contagem de linhas.** A numeração da v1.0.1 vem do arquivo no commit-base; a da candidata pode variar se o arquivo for editado depois desta rodada. O hash da candidata é registrado na entrega.
5. **Estado do artefato.** Esta matriz está `DONE` como análise. Ela **não** aprova a `1.1.0`, **não** promove versão e **não** substitui revisão independente (`L-05`).
