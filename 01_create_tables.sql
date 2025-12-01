CREATE DATABASE estoque_facil;

-- Tabela Produto
CREATE TABLE Produto (
    ProId INT PRIMARY KEY,
    ProDescricao VARCHAR(100) NOT NULL,
    ProCategoria VARCHAR(50) NOT NULL,
    ProCusto DECIMAL(10,2) NOT NULL
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    FornecedorId INT PRIMARY KEY,
    FornNome VARCHAR(100) NOT NULL,
    FornContato VARCHAR(100)
);

-- Tabela Movimentacao
CREATE TABLE Movimentacao (
    MovId INT PRIMARY KEY,
    MovProId INT NOT NULL,
    MovTipo CHAR(1) NOT NULL,-- 'E' = Entrada, 'S' = Saída
    MovQtd INT NOT NULL,
    MovData DATE NOT NULL,
    MovFornId INT,
    CONSTRAINT fk_mov_produto
        FOREIGN KEY (MovProId) REFERENCES Produto(ProId),
    CONSTRAINT fk_mov_fornecedor
        FOREIGN KEY (MovFornId) REFERENCES Fornecedor(FornecedorId)
);
