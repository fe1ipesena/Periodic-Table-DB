# Periodic Table - Bash + PostgreSQL

Este projeto faz parte do curso de **Relational Databases** da [freeCodeCamp](https://www.freecodecamp.org/). Ele consiste em um banco de dados relacional que armazena informações sobre elementos químicos da Tabela Periódica. A consulta dos dados pode ser feita através de um script em **Bash**, com acesso ao banco PostgreSQL.

> ⚠️ Este repositório foi criado exclusivamente para submissão e verificação do projeto final do curso no sistema da freeCodeCamp.

---

## Sobre o Projeto

O script principal (`element.sh`) interage com o banco de dados via terminal para:

- Buscar informações sobre um elemento químico;
- Permitir a busca por número atômico, símbolo ou nome do elemento;
- Informar massa atômica, tipo, ponto de fusão e ponto de ebulição;
- Validar se o elemento existe no banco, com mensagens apropriadas;
- Utilizar PostgreSQL como backend para armazenamento das informações.

---

## Estrutura

- `element.sh`: Script principal que executa as consultas.
- `periodic_table.sql`: Dump do banco de dados com estrutura e dados iniciais.
- Banco de Dados: Inclui tabelas `elements`, `properties`, e `types`.

---

## Como executar

1. Dê permissão de execução ao script:

```bash
chmod +x element.sh
```

2. Execute com um argumento (número atômico, símbolo ou nome):
./element.sh 1
./element.sh H
./element.sh Hydrogen
