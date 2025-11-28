-- queries.sql
-- 1) Listar todos os empréstimos com dados do usuário e da obra (JOIN)
SELECT e.id_emprestimo, u.nome AS usuario, o.titulo AS obra, e.data_emprestimo, e.data_prevista
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN obra o ON e.id_obra = o.id_obra
ORDER BY e.data_emprestimo DESC
LIMIT 50;

-- 2) Obras por categoria (contagem) - agrupamento e ordenação
SELECT c.nome AS categoria, COUNT(o.id_obra) AS total_obras
FROM categoria c
LEFT JOIN obra o ON o.id_categoria = c.id_categoria
GROUP BY c.nome
ORDER BY total_obras DESC;

-- 3) Usuários com empréstimos atrasados (data_prevista < hoje e sem devolução)
-- Para demonstrar: assumimos 'hoje' como CURRENT_DATE
SELECT DISTINCT u.id_usuario, u.nome, u.matricula
FROM usuario u
JOIN emprestimo e ON e.id_usuario = u.id_usuario
LEFT JOIN devolucao d ON d.id_emprestimo = e.id_emprestimo
WHERE e.data_prevista < CURRENT_DATE
  AND d.id_devolucao IS NULL
ORDER BY u.nome;

-- 4) Últimas 5 devoluções registradas
SELECT d.id_devolucao, d.data_devolucao, d.status, u.nome AS usuario, o.titulo AS obra
FROM devolucao d
JOIN emprestimo e ON d.id_emprestimo = e.id_emprestimo
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN obra o ON e.id_obra = o.id_obra
ORDER BY d.data_devolucao DESC
LIMIT 5;

-- 5) Buscar obras cujo título contenha 'Algoritmo' (case-insensitive)
SELECT * FROM obra
WHERE titulo ILIKE '%algoritmo%';
