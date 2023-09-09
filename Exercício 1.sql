-- Criando o Banco.
CREATE DATABASE BDatividadeII; 

-- Mostrar os bancos.
SHOW DATABASES;

-- acessando o banco.
USE BDatividadeII;

-- Criando a tabela clientes.
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(255),
    Telefone VARCHAR(23)
);

-- Inseririndo os  registros na tabela Clientes.
INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES
    (1, 'Cliente 1', 'cleintin@email.com', '(71) 1234-5678'),
    (2, 'Cliente 2', 'claldete@email.com', '(71) 9876-5432'),
    (3, 'Cliente 3', 'clistiani@email.com', '(71) 5555-5555'),
    (4, 'Cliente 4', 'clistiano@email.com', '(71) 1234-5678'),
    (5, 'Cliente 5', 'clinton@email.com', '(71) 7777-6666');

-- Criando a tabela "Pedidos" com a chave estrangeira.
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inseririndo os  registros na tabela Pedidos.
INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES
    (1, 1, '2023-09-01', 100.50),
    (2, 1, '2023-09-02', 75.25),
    (3, 2, '2023-09-03', 50.00),
    (4, 3, '2023-09-04', 200.75),
    (5, 4, '2023-09-05', 30.99);
    
    -- trazendo os dados da tabela.
    SELECT * FROM BDatividadeII.Pedidos