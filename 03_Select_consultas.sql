-- 1) Listar todos os produtos ordenados por categoria e descrição
SELECT ProId, ProDescricao, ProCategoria, ProCusto
FROM Produto
ORDER BY ProCategoria, ProDescricao;

-- 2) Consultar as movimentações de entrada (E) com o nome do fornecedor
SELECT 
    m.MovId,
    m.MovData,
    p.ProDescricao,
    m.MovQtd,
    f.FornNome
FROM Movimentacao m
JOIN Produto p ON p.ProId = m.MovProId
LEFT JOIN Fornecedor f ON f.FornecedorId = m.MovFornId
WHERE m.MovTipo = 'E'
ORDER BY m.MovData DESC;

-- 3) Consultar as 3 últimas saídas de estoque
SELECT 
    m.MovId,
    m.MovData,
    p.ProDescricao,
    m.MovQtd
FROM Movimentacao m
JOIN Produto p ON p.ProId = m.MovProId
WHERE m.MovTipo = 'S'
ORDER BY m.MovData DESC, m.MovId DESC
LIMIT 3;

-- 4) Quantidade total movimentada (entradas e saídas) por produto
SELECT 
    p.ProDescricao,
    SUM(CASE WHEN m.MovTipo = 'E' THEN m.MovQtd ELSE 0 END) AS TotalEntradas,
    SUM(CASE WHEN m.MovTipo = 'S' THEN m.MovQtd ELSE 0 END) AS TotalSaidas
FROM Produto p
LEFT JOIN Movimentacao m ON m.MovProId = p.ProId
GROUP BY p.ProDescricao
ORDER BY p.ProDescricao;

-- 5) Produtos da categoria 'Limpeza' com custo acima de 5 reais
SELECT ProId, ProDescricao, ProCusto
FROM Produto
WHERE ProCategoria = 'Limpeza'
  AND ProCusto > 5.00
ORDER BY ProCusto DESC;
