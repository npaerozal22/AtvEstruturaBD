--1) Atualizar o custo do Detergente
UPDATE Produto
SET ProCusto = 3.90
WHERE ProId = 1;

--2) Corrigir o contato do fornecedor "Papelaria Alfa"
UPDATE Fornecedor
SET FornContato = 'contato@papelariaalfa.com.br'
WHERE FornecedorId = 2;

--3) Corrigir a quantidade de uma movimentação (erro de digitação)
UPDATE Movimentacao
SET MovQtd = 25
WHERE MovId = 6;               -- antes estava 20
--4) Excluir uma movimentação de teste
DELETE FROM Movimentacao
WHERE MovId = 10;

--5) Excluir um produto que ainda não teve movimentações
--(exemplo:inserir um produto "fantasma" e depois excluir)
--Inserindo produto temporário (se ainda não existir)
INSERT INTO Produto (ProId, ProDescricao, ProCategoria, ProCusto)
VALUES (99, 'Produto de Teste', 'Teste', 0.00);
--Agora, deletando o produto de teste
DELETE FROM Produto
WHERE ProId = 99;
--3) Excluir fornecedor que não possui movimentações associadas
DELETE FROM Fornecedor
WHERE FornecedorId = 4;
