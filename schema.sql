
DROP TABLE IF EXISTS devolucao CASCADE;
DROP TABLE IF EXISTS emprestimo CASCADE;
DROP TABLE IF EXISTS obra CASCADE;
DROP TABLE IF EXISTS categoria CASCADE;
DROP TABLE IF EXISTS usuario CASCADE;

-- Tabela Usuario
CREATE TABLE usuario (
  id_usuario     SERIAL PRIMARY KEY,
  nome           VARCHAR(150) NOT NULL,
  tipo           VARCHAR(50),
  matricula      VARCHAR(30) UNIQUE
);

-- Tabela Categoria
CREATE TABLE categoria (
  id_categoria   SERIAL PRIMARY KEY,
  nome           VARCHAR(100) NOT NULL
);

-- Tabela Obra (título/registro do acervo)
CREATE TABLE obra (
  id_obra        SERIAL PRIMARY KEY,
  titulo         VARCHAR(255) NOT NULL,
  autor          VARCHAR(150),
  ano            INT,
  id_categoria   INT,
  CONSTRAINT fk_obra_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

-- Tabela Emprestimo
CREATE TABLE emprestimo (
  id_emprestimo  SERIAL PRIMARY KEY,
  id_usuario     INT NOT NULL,
  id_obra        INT NOT NULL,
  data_emprestimo DATE NOT NULL,
  data_prevista  DATE,
  CONSTRAINT fk_emprestimo_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  CONSTRAINT fk_emprestimo_obra FOREIGN KEY (id_obra) REFERENCES obra(id_obra)
);

-- Tabela Devolucao (1:1 com emprestimo - id_emprestimo UNIQUE)
CREATE TABLE devolucao (
  id_devolucao   SERIAL PRIMARY KEY,
  id_emprestimo  INT UNIQUE,
  data_devolucao DATE,
  status         VARCHAR(30),
  CONSTRAINT fk_devolucao_emprestimo FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo)
);

-- Índices recomendados (melhoram consultas por FK)
CREATE INDEX idx_emprestimo_usuario ON emprestimo(id_usuario);
CREATE INDEX idx_emprestimo_obra ON emprestimo(id_obra);
CREATE INDEX idx_obra_categoria ON obra(id_categoria);
