
-- Criando a tabela Departamentos.
CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY,
    NomeDepartamento VARCHAR(255)
);

-- Inserindo os registros na tabela Departamentos.
INSERT INTO Departamentos (DepartamentoID, NomeDepartamento)
VALUES
    (1, 'Departamento de Vendas'),
    (2, 'Departamento de Marketing'),
    (3, 'Departamento de Recursos Humanos'),
    (4, 'Departamento de Finanças'),
    (5, 'Departamento de TI');

-- Criando a tabela Funcionários com a chave estrangeira.
CREATE TABLE Funcionários (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Cargo VARCHAR(100),
    Salario DECIMAL(10, 2),
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

-- Inserindo os registros na tabela Funcionários.
INSERT INTO Funcionários (FuncionarioID, Nome, Cargo, Salario, DepartamentoID)
VALUES
    (1, 'Funcionário 1', 'Vendedor', 4500.00, 1),
    (2, 'Funcionário 2', 'Gerente de Marketing', 6000.00, 2),
    (3, 'Funcionário 3', 'Recrutador', 5000.00, 3),
    (4, 'Funcionário 4', 'Contador', 5500.00, 4),
    (5, 'Funcionário 5', 'Desenvolvedor', 7000.00, 5);
