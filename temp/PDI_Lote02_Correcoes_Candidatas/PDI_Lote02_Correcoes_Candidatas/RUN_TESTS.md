# Execução dos testes candidatos

Requisito: Python 3.10+; sem dependências externas.

Na raiz do pacote:

```bash
python -m unittest discover -s tests -v
```

O comando testa somente o validador candidato deste pacote. Não valida os schemas existentes nem executa testes do produto PDI. Registre a saída real, versão do Python, sistema operacional e commit/versão avaliada. Não converta `NOT_RUN` em `PASS` manualmente.
