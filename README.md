# Biblioteca-DB — Scripts SQL para projeto de Banco de Dados (Biblioteca Acadêmica)

Repositório com scripts SQL e instruções para criar e povoar um banco de dados de exemplo (Biblioteca Acadêmica).
Projetado para **PostgreSQL**.

## Estrutura do repositório

- `schema.sql` — criação das tabelas, chaves primárias e estrangeiras, índices.
- `inserts.sql` — dados de exemplo (INSERT).
- `queries.sql` — consultas SELECT de exemplo (JOIN, GROUP BY, ORDER BY, LIMIT).
- `updates_deletes.sql` — exemplos de UPDATE e DELETE com condições.
- `.gitignore` — arquivos a ignorar.
- `README.md` — este arquivo.

---

## Pré-requisitos

1. Ter o **PostgreSQL** instalado.

   - Windows: instalar via instalador em https://www.postgresql.org/download/windows/
   - macOS: usar Homebrew `brew install postgresql` ou instalador.
   - Linux: instalar pelo gerenciador de pacotes (`apt`, `yum`, etc.).

2. Ter o utilitário `psql` (normalmente vem com o PostgreSQL).

3. Ter Git instalado para criar/enviar o repositório ao GitHub (opcional se preferir criar o repo pela interface web do GitHub).

---

## Passo a passo: criar banco e executar scripts (modo simples)

### 1) Criar o banco de dados

Abra o terminal e execute:

```bash
# 1. Acesse o usuário postgres (ou use seu usuário com permissões)
# Linux / macOS (pode pedir senha):
sudo -u postgres psql
# ou apenas:
psql -U postgres

# 2. No prompt do psql, crie o banco:
CREATE DATABASE biblioteca_db;
\q
```
