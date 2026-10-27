- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** O campo Contexto desta
  decisão descreve o conteúdo da cópia candidata examinada naquele momento, não o
  conteúdo final da versão promovida. Por `DEC-010`, o escopo material do patch
  `1.0.1` foi reduzido às correções `C-02`, `C-03`, `C-04`, `C-08`, `C-09` e `C-10`;
  `C-01` (`dependencies` em §8.4), `C-05` (`justification` em §7.1), `C-06` (§15.5),
  `C-07` (§11.2/§11.4) e `C-11` (semântica de `REABERTO` em §7.3) foram diferidas
  para a `1.1.0` e incorporadas por `DEC-011`. Permanecem válidos e inalterados: a
  homologação do Gate G0, a promoção da `1.0.1`, a elevação da baseline a `v0.2.1` e
  a autorização da Fase B. Este adendo não reescreve o Contexto original, que fica
  preservado como registro do que foi examinado antes de `DEC-010`.

- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** A afirmação de
  "conformidade integral dos 27 artefatos" não era sustentada pelas evidências
  disponíveis na data desta decisão, conforme registrado em `DEC-010`. A verificação
  integral foi refeita após a reconciliação do patch e, no commit
  `bc457538209491d52fe128d5184117d547906d3a`, o `MANIFESTO-SHA256.md` confere
  27/27 entradas, sem divergência e sem ausência. Os dois fatos coexistem: a
  premissa era falsa quando invocada e é verdadeira no estado atual da baseline.
  Este adendo não converte a verificação posterior em prova retroativa.

- **Adendo (errata de 2026-10-27, `ERR-DEC-009-010-001`):** A ressalva sobre
  `PROP-01` a `PROP-03` e `B-01` permanece correta para a `1.0.1`. A versão `1.1.0`,
  promovida por `DEC-011` na mesma data, incorpora `PROP-04` (`CA-APDF-01` x §6) pela
  alternativa (a), que preserva a seção 17 e registra a divergência como `L-09`.
  `PROP-01`, `PROP-02`, `PROP-03` e `B-01` continuam não normativas no Anexo C.3.
