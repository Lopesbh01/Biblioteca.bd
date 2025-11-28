📘 BibliotecaDB — Sistema de Gerenciamento de Biblioteca
Projeto acadêmico – Modelagem e Implementação de Banco de Dados

🧾 Descrição do Projeto

Este repositório contém a implementação completa de um banco de dados relacional para um sistema de gerenciamento de biblioteca, incluindo modelagem conceitual, lógica e scripts SQL para criação, povoamento e manipulação dos dados.

O projeto foi desenvolvido como parte de uma atividade prática de modelagem de banco de dados, contemplando:

- Criação do modelo conceitual (DER)
- Transformação para modelo lógico
- Geração do esquema físico
- Criação e manipulação das tabelas
- Execução de consultas, updates e deletes
- Documentação completa do processo
  

🏛️ Minimundo (Resumo)

O sistema representa o funcionamento de uma biblioteca que gerencia:
- Usuários (alunos, professores e funcionários)
- Obras (livros, artigos, revistas etc.)
- Categorias
- Empréstimos
- Devoluções

Cada entidade possui atributos específicos, e as relações seguem as regras de negócio descritas no minimundo e refletidas no DER e no modelo lógico.

🗂️ Arquivos presentes neste repositório

| Arquivo                   | Descrição                                                                              |
| ------------------------- | -------------------------------------------------------------------------------------- |
| **schema.sql**            | Criação das tabelas do banco de dados e definição das chaves primárias e estrangeiras. |
| **inserts.sql**           | Inserção de dados iniciais para popular o banco com registros reais.                   |
| **queries.sql**           | Consultas SQL utilizando SELECT, JOIN, WHERE, ORDER BY e LIMIT.                        |
| **updates_deletes.sql**   | Conjunto de UPDATEs e DELETEs com condições específicas.                               |
| **/diagramas** (opcional) | Diagramas DER e Modelo Lógico.                                                         |
| **README.md**             | Este documento.                                                                        |


🛠️ Tecnologias Utilizadas

- PostgreSQL 18.1
- psql (terminal PostgreSQL)
- VS Code
- Git & GitHub

📥 Pré-requisitos para execução

Certifique-se de ter instalado em sua máquina:
- PostgreSQL 15+ (recomendado 18)
https://www.postgresql.org/download/
- VS Code (opcional, mas recomendado)
https://code.visualstudio.com
- Git (para baixar o repositório)
https://git-scm.com

🔧 Como Executar o Projeto
1️⃣ Clonando o repositório
No terminal:

   git clone https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git
   cd SEU-REPOSITORIO

2️⃣ Criando o banco de dados no PostgreSQL
Abra o psql:
   & "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres

Crie o banco:
   CREATE DATABASE biblioteca_db;
   \q

3️⃣ Executando o arquivo de criação do banco
No PowerShell ou terminal do VS Code:
   & "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -d biblioteca_db -f "schema.sql"

4️⃣ Inserindo dados no banco
   & "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -d biblioteca_db -f "inserts.sql"

5️⃣ Executando consultas (SELECT)
   & "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -d biblioteca_db -f "queries.sql"

6️⃣ Rodando comandos UPDATE e DELETE
   & "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -d biblioteca_db -f "updates_deletes.sql"

🔍 Verificando o banco

Entre no psql novamente:
   & "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -d biblioteca_db

E teste:
   \dt
   SELECT * FROM usuario;
   SELECT * FROM obra LIMIT 10;      

🧪 Consultas de Demonstração

Exemplos disponíveis no arquivo queries.sql:
   - Listar usuários e seus empréstimos
   - Listar obras ordenadas por título
   - Pesquisar empréstimos pendentes
   - Listar devoluções com JOIN
   - Consultas com WHERE e LIMIT

🔐 Integridade e Regras Aplicadas
O modelo utiliza:

   - Chaves primárias
   - Chaves estrangeiras
   - Restrição UNIQUE
   - Integridade referencial
   - Relacionamentos 1:N
   - Normalização até a 3FN


📝 Observações
   - Este projeto foi testado localmente no PostgreSQL 18.1.
   - Pode ser executado em qualquer versão 12+.
   - Os scripts são independentes e podem ser rodados separadamente.

👨‍💻 Autor
Fabio Lopes

Projeto para avaliação acadêmica de Modelagem de Dados.

💬 Dúvidas?
Abra uma Issue no repositório ou entre em contato.
