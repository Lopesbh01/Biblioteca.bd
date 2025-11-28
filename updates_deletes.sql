-- updates_deletes.sql

-- ===== UPDATE examples =====

-- 1) Atualizar status de devolução (exemplo por id_devolucao)
UPDATE devolucao
SET status = 'Danificado'
WHERE id_devolucao = 2;

-- 2) Atualizar data_prevista para prorrogar empréstimos em 7 dias para usuário específico
UPDATE emprestimo
SET data_prevista = data_prevista + INTERVAL '7 days'
WHERE id_usuario = 1
  AND data_prevista > CURRENT_DATE - INTERVAL '30 days';

-- 3) Corrigir nome de autor em obra (exemplo)
UPDATE obra
SET autor = 'Thomas H. Cormen; Charles Leiserson'
WHERE id_obra = 1;

-- ===== DELETE examples =====

-- 1) Deletar devoluções antigas (ex.: antes de 2010) - cuidado!
DELETE FROM devolucao
WHERE data_devolucao < '2010-01-01';

-- 2) Remover empréstimos cancelados sem devolução e muito antigos (exemplo)
DELETE FROM emprestimo
WHERE data_emprestimo < '2000-01-01'
  AND id_emprestimo NOT IN (SELECT id_emprestimo FROM devolucao);

-- 3) Remover obra duplicada por título e autor (exemplo cuidadoso)
-- Primeiro verifica IDs, depois remove todos exceto o menor id (exclusão por exemplo)
WITH duplicadas AS (
  SELECT MIN(id_obra) AS keep_id, titulo, autor
  FROM obra
  GROUP BY titulo, autor
  HAVING COUNT(*) > 1
)
DELETE FROM obra o
USING duplicadas d
WHERE o.titulo = d.titulo
  AND o.autor = d.autor
  AND o.id_obra <> d.keep_id;
