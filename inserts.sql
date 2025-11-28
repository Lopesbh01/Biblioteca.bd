-- inserts.sql
-- Insere dados de exemplo para testes

-- Usuarios
INSERT INTO usuario (nome, tipo, matricula) VALUES
('João Silva', 'Aluno', 'A2023001'),
('Mariana Souza', 'Professor', 'P2021002'),
('Carlos Pereira', 'Aluno', 'A2023003'),
('Ana Costa', 'Funcionaria', 'F2020001');

-- Categorias
INSERT INTO categoria (nome) VALUES
('Ciência da Computação'),
('Arquitetura'),
('História'),
('Literatura Brasileira');

-- Obras
INSERT INTO obra (titulo, autor, ano, id_categoria) VALUES
('Estruturas de Dados', 'Thomas H. Cormen', 2011, 1),
('Projetos Sustentáveis', 'Paula Rodrigues', 2018, 2),
('História do Brasil', 'Eduardo Silva', 2015, 3),
('Dom Casmurro', 'Machado de Assis', 1899, 4),
('Algoritmos em C', 'Robert Sedgewick', 2007, 1);

-- Empréstimos
INSERT INTO emprestimo (id_usuario, id_obra, data_emprestimo, data_prevista) VALUES
(1, 1, '2025-11-01', '2025-11-15'),
(2, 4, '2025-11-03', '2025-11-17'),
(1, 5, '2025-11-10', '2025-11-24'),
(3, 3, '2025-10-25', '2025-11-08');

-- Devoluções (vinculadas a alguns empréstimos)
INSERT INTO devolucao (id_emprestimo, data_devolucao, status) VALUES
(4, '2025-11-06', 'Em bom estado'),
(2, '2025-11-10', 'Atrasado');
