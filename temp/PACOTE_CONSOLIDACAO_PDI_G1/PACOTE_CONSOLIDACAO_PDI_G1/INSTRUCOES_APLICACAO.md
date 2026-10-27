# Instruções de Aplicação e Procedimento de Rollback — Gate G1

**ID:** INS-APL-G1-001  
**Tipo:** Procedimento Operacional Padrão de Aplicação e Rollback  
**Versão:** 1.0.0  
**Data:** 2026-10-27  
**Estado:** PROPOSTO — Aguarda Aprovação Humana Prévia

---

## 1. Pré-condições Obrigatórias

Antes de executar qualquer comando de cópia ou alteração nos arquivos normativos (`docs/`, `specs/`, `tests/` ou raiz):

1. **Manifestação Humana Expressa:** O Proprietário Humano deve ter aprovado formalmente as decisões em [LISTA_DECISOES_HUMANAS.md](file:///e:/documentos/projetos/PDI/temp/PACOTE_CONSOLIDACAO_PDI_G1/PACOTE_CONSOLIDACAO_PDI_G1/LISTA_DECISOES_HUMANAS.md).
2. **Árvore Git Limpa em Arquivos Rastreados:** O comando `git status --porcelain` não deve exibir alterações nos 27 arquivos canônicos.
3. **Ponto de Restauração (Checkpoint):** Confirmar que o HEAD atual é o commit canônico `9c0ea20d3327971a57d22fe998c389a4854acd3b` (ou descendente identificado).

---

## 2. Sequência Passo a Passo de Aplicação (Somente após Aprovação)

### Passo 1: Formalização de DEC-011 no Registro de Decisões
Acrescentar o texto de `DEC-011` (minuta em `PATCH_CONSOLIDADO/DEC-011_E_DEC-012_HARMONIZADOS.md`) ao final de `docs/00-governanca/registro-de-decisoes.md`.

### Passo 2: Aplicação do Pacote APDF v1.1.0 e Baseline v0.3.0 (Se DEC-012 Aprovada)
Caso o Proprietário Humano aprove a versão `1.1.0`, copiar os cinco arquivos de `temp/PROMOCAO_V110/` para seus destinos canônicos:
```powershell
Copy-Item "temp/PROMOCAO_V110/APDF_V01.md" "docs/01-metodologia/APDF_V01.md" -Force
Copy-Item "temp/PROMOCAO_V110/REGISTRO_DE_DECISOES.md" "docs/00-governanca/registro-de-decisoes.md" -Force
Copy-Item "temp/PROMOCAO_V110/CHANGELOG.md" "CHANGELOG.md" -Force
Copy-Item "temp/PROMOCAO_V110/README.md" "README.md" -Force
Copy-Item "temp/PROMOCAO_V110/MANIFESTO-SHA256.md" "MANIFESTO-SHA256.md" -Force
```

### Passo 3: Promoção Controlada de Schemas e Fixtures (Se Homologado G1)
Copiar os esquemas formais e cadernos de teste de `temp/lote-02-gpt/` para as pastas oficiais:
```powershell
Copy-Item "temp/lote-02-gpt/specs/schemas/*.json" "specs/schemas/" -Force
Copy-Item "temp/lote-02-gpt/specs/contratos/*.json" "specs/contratos/" -Force
Copy-Item "temp/lote-02-gpt/tests/fixtures/*.json" "tests/fixtures/" -Force
Copy-Item "temp/lote-02-gpt/tests/catalogo-casos.md" "tests/contracts/" -Force
```

### Passo 4: Reconciliação do Relatório Histórico de Fase B
Atualizar o arquivo `temp/resultado-fase-b.md` copiando o conteúdo reconciliado:
```powershell
Copy-Item "temp/PACOTE_CONSOLIDACAO_PDI_G1/PACOTE_CONSOLIDACAO_PDI_G1/PATCH_CONSOLIDADO/resultado-fase-b-reconciliado.md" "temp/resultado-fase-b.md" -Force
```

### Passo 5: Recálculo e Verificação Criptográfica da Baseline
Recalcular os hashes dos arquivos normativos adicionados/alterados e rodar a verificação de 100% de integridade:
```powershell
powershell -ExecutionPolicy Bypass -File "C:\Users\Ricardo\.gemini\antigravity-ide\brain\59de58e2-9a15-4d05-84a7-ec0e017a95a6\scratch\verify.ps1"
```

### Passo 6: Commit e Sincronização Git
Após confirmar zero divergências criptográficas:
```powershell
git add docs/ specs/ tests/ README.md CHANGELOG.md MANIFESTO-SHA256.md temp/
git commit -m "feat(pdi): homologacao do Gate G1, promocao do APDF v1.1.0 e elevacao da baseline para v0.3.0"
git push origin main
```

---

## 3. Procedimento de Rollback e Contingência

Se qualquer divergência, falha de parse ou inconsistência for detectada durante ou após a cópia:

1. **Reversão Imediata dos Arquivos Canônicos:**
   ```powershell
   git checkout main -- docs/ specs/ tests/ README.md CHANGELOG.md MANIFESTO-SHA256.md
   ```
2. **Limpeza de Arquivos Promovidos Não Rastreados:**
   ```powershell
   git clean -fd specs/ tests/
   ```
3. **Preservação dos Candidatos:**
   O diretório `temp/` (incluindo `temp/PROMOCAO_V110/`, `temp/lote-02-gpt/` e `temp/PACOTE_CONSOLIDACAO_PDI_G1/`) é preservado integralmente, garantindo que nenhum trabalho de modelagem ou auditoria seja perdido.
4. **Comprovação de Restauração:**
   Executar novamente `verify.ps1` para atestar o retorno à baseline `v0.2.1` com 27/27 conferidos.
