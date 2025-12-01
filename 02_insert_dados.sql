-- Populando tabela Produto
INSERT INTO Produto (ProId, ProDescricao, ProCategoria, ProCusto) VALUES
(1, 'Detergente Neutro 500ml',       'Limpeza',   3.50),
(2, 'Papel Sulfite A4 500 folhas',   'Escritorio', 23.90),
(3, 'Desinfetante Floral 1L',        'Limpeza',   7.80),
(4, 'Café Torrado e Moído 500g',     'Cozinha',   15.20),
(5, 'Caneta Esferográfica Azul',     'Escritorio', 1.20);

-- Populando tabela Fornecedor
INSERT INTO Fornecedor (FornecedorId, FornNome, FornContato) VALUES
(1, 'Distribuidora LimpaMais',     'contato@limpamais.com.br'),
(2, 'Papelaria Alfa',              '(11) 99999-0000'),
(3, 'Atacado SuperCafé',           'vendas@supercafe.com'),
(4, 'Fornecedora Mix Comercial',   NULL);

-- Populando tabela Movimentacao
-- Entradas de estoque
INSERT INTO Movimentacao (MovId, MovProId, MovTipo, MovQtd, MovData, MovFornId) VALUES
(1, 1, 'E', 100, '2025-03-01', 1),
(2, 2, 'E', 50,  '2025-03-02', 2),
(3, 3, 'E', 80,  '2025-03-02', 1),
(4, 4, 'E', 40,  '2025-03-03', 3),
(5, 5, 'E', 200, '2025-03-03', 2);

-- Saídas de estoque (sem fornecedor obrigatório)
INSERT INTO Movimentacao (MovId, MovProId, MovTipo, MovQtd, MovData, MovFornId) VALUES
(6, 1, 'S', 20, '2025-03-05', NULL),
(7, 2, 'S', 10, '2025-03-06', NULL),
(8, 5, 'S', 30, '2025-03-06', NULL),
(9, 3, 'S', 15, '2025-03-07', NULL),
(10,4, 'S', 5,  '2025-03-07', NULL);
