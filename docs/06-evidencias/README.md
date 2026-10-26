# Evidências

**ID:** EVI-README-001  
**Tipo:** Guia de Procedimento de Evidências  
**Versão:** 0.1.0  
**Estado:** APPROVED — conceitualmente; operacional para o projeto.  
**Proprietário:** Responsável técnico/arquitetura (designação nominal pendente conforme GOV-AUTH-001)  
**Escopo:** Armazenamento e rastreabilidade de evidências de testes no Núcleo Central de Engenharia.  
**Data:** 2026-10-26  
**Dependências:** `docs/02-contratos/contrato-02-qualidade.md`.  
**Histórico de aprovação:** Aprovado conceitualmente em DEC-002 (2026-10-26).  

Armazenar evidências de validação em subdiretórios identificados por data e execução, respeitando privacidade e controle de acesso.

Cada pacote de evidência deve conter:
- identificador da execução;
- versão da baseline e do código;
- ambiente e configuração;
- comando/procedimento executado;
- resultado e logs;
- falhas/limitações;
- revisor e decisão, quando aplicável.

Não armazenar segredos, tokens ou dados pessoais desnecessários. Nenhuma evidência deve ser descrita como existente até ser efetivamente produzida.
