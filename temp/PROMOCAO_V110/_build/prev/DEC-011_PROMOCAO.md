### DEC-011 - Promoção do APDF_V01 v1.1.0 e encerramento das correções diferidas

- **Contexto:** `DEC-010` fixou o escopo da `1.0.1` nas seis correções sem alteração de significado normativo e diferiu `C-01`, `C-05`, `C-06`, `C-07` e `C-11` para a versão `1.1.0`, a ser aprovada por decisão própria. A versão `1.1.0` foi construída por cópia integral da `1.0.1` e alteração localizada das seções indicadas no Anexo C.2, acrescida de duas correções editoriais de registro (`C-12`, `C-13`) que a `1.0.1` não podia receber sem novo ato de promoção. Duas escolhas de conteúdo permaneciam abertas: o modelo semântico de `REABERTO` (§7.3) e a solução da divergência entre `CA-APDF-01` (§17) e a regra de leitura das fichas (§6).
- **Decisão:** Instrução direta do proprietário humano para **PROMOVER** a versão `1.1.0` do `APDF_V01` (`MET-APDF-001`), **ELEVAR** a baseline documental do Núcleo para **v0.3.0** e **ENCERRAR** o diferimento fixado por `DEC-010`, com:
  - incorporação das cinco correções diferidas - `C-01` (`dependencies` e tabela de quatro colunas em §8.4), `C-05` (`justification` em §7.1), `C-06` (§15.5), `C-07` (§11.2 e §11.4) e `C-11` (§7.3);
  - adoção do **modelo (a)** de `REABERTO`: estado persistente, alcançado apenas a partir de gate já decidido, com avanço bloqueado e saída para `PENDENTE` somente após o procedimento completo de D-03;
  - adoção da **alternativa (a) de `PROP-04`**: `CA-APDF-01` e os demais critérios da seção 17 permanecem literalmente inalterados, e a divergência de redação é registrada como residual na lacuna `L-09`;
  - incorporação de `C-12` e `C-13` dentro da `1.1.0`, sem versão própria para cada correção;
  - acréscimo, ao final de `DEC-009` e de `DEC-010`, dos três adendos de errata `ERR-DEC-009-010-001`, sem reescrita de qualquer trecho das decisões originais.
- **Alternativas consideradas:**
  1. Manter a `1.0.1` e não promover a `1.1.0` - rejeitada por preservar a contradição de `L-08` e manter `CA-APDF-07`/`CA-APDF-08` parcialmente satisfeitos por prazo indeterminado;
  2. Emendar `CA-APDF-01` para eliminar a divergência de redação (`PROP-04`, alternativa (b)) - rejeitada por alterar texto de critério de aceite aprovado, exigir análise de impacto e produzir versão maior sem ganho de clareza que justifique o custo;
  3. Tratar `REABERTO` como deliberação direta ou como evento (`C-11`, alternativas (b) e (c)) - rejeitadas por exigirem reescrita de §7.2, §9 e §10 e por afastarem o texto do procedimento de reabertura já fixado em D-03;
  4. Aplicar `C-12` e `C-13` em patch isolado da `1.0.1` - rejeitada por duplicar atos de promoção e recálculo de manifesto para correções editoriais de registro;
  5. Promover a `1.1.0` com o modelo (a), a alternativa (a) de `PROP-04` e `C-12`/`C-13` incorporadas - **adotada**.
- **Justificativa:** Encerra a lacuna catalogada `L-08` e entrega aos critérios `CA-APDF-07` e `CA-APDF-08` texto verificável, sem tocar no conjunto de critérios de aceite aprovado da seção 17. Preserva a integridade das decisões anteriores: `DEC-009` e `DEC-010` mantêm o texto original e passam a contar com leitura datada por adendo. Mantém a distinção entre correção editorial e mudança de método, que motivou `DEC-010`.
- **Consequências:**
  - `docs/01-metodologia/APDF_V01.md` passa a `1.1.0`, estado `APPROVED`; a `1.0.1` permanece acessível apenas como histórico no commit `bc45753`;
  - a lacuna `L-08` é encerrada; a `L-10` deixa de ter objeto com `C-12`; a `L-09` permanece como residual aceito;
  - `CA-APDF-07` e `CA-APDF-08` passam a ser verificáveis contra §8.4 e §11.2/§11.4, o que não equivale a declará-los satisfeitos: a verificação é ato próprio, com evidência vinculada à versão avaliada;
  - `MANIFESTO-SHA256.md`, `CHANGELOG.md`, `README.md` e este registro são atualizados e reconciliados sob a baseline `v0.3.0`;
  - `PROP-01`, `PROP-02`, `PROP-03` e `B-01` continuam não normativas no Anexo C.3.
- **Ressalvas registradas:**
  - A revisão independente do padrão continua pendente (`L-05`); esta decisão não a substitui;
  - A aprovação é do proprietário humano, por instrução direta na sessão, sem segundo revisor;
  - A fonte original `APDF(1).md` permanece indisponível e nenhuma conformidade com ela é declarada (`L-01`);
  - A numeração da baseline (`v0.3.0`) foi proposta pelo agente como progressão menor de `v0.2.1` e **aguarda confirmação literal** do proprietário; a substância da decisão é do proprietário, a forma é do agente;
  - Os adendos de errata não reabrem o Gate G0 nem revogam a autorização da Fase B;
  - A leitura final do texto da `1.1.0` pelo proprietário permanece pendente; o estado `APPROVED` refere-se ao ato de promoção e ao conteúdo revisado nesta rodada.
- **Escopo:** Governança, ciclo de vida e metodologia de descoberta do Núcleo Central de Engenharia (PDI).
- **Responsável pela aprovação:** Proprietário Humano do Núcleo, por instrução direta na sessão (designação nominal pendente conforme GOV-AUTH-001).
- **Data:** 2026-10-27.
- **Artefatos afetados:** `docs/01-metodologia/APDF_V01.md`, `docs/00-governanca/registro-de-decisoes.md`, `README.md`, `CHANGELOG.md`, `MANIFESTO-SHA256.md`.
- **Estado:** `APPROVED`.
