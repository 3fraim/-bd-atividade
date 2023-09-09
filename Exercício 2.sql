-- Criando o Banco.
CREATE DATABASE BDatividadeII; 

-- Mostrar os bancos.
SHOW DATABASES;

-- acessando o banco.
USE BDatividadeII;

-- Criando a tabela Artigos.
CREATE TABLE Artigos (
    ArtigoID INT PRIMARY KEY,
    Título VARCHAR(255),
    Conteudo TEXT,
    DataPublicação DATE
);

-- Inserir 5 registros na tabela "Artigos"
INSERT INTO Artigos (ArtigoID, Título, Conteúdo, DataPublicação)
VALUES
    (1,'Botafogo x Vasco 1', 'Hoje tem botago x vasco pela Serie B', '2023-09-01'),
    (2, 'Todo duro X Holyfiel', '2003-02-15'),
    (3, 'Formula 1', 'Corrida no brazil', '2007-06-29'),
    (4, 'Amazonia', 'Fogo Na Amazonia...', '2023-09-04'),
    (5, 'Sem Criatividade', 'Conteúdo do Artigo 5...', '2023-09-05');

-- Criar a tabela "Comentários" com a chave estrangeira
CREATE TABLE Comentários (
    ComentarioID INT PRIMARY KEY,
    ArtigoID INT,
    Autor VARCHAR(100),
    Texto TEXT,
    DataComentario DATE,
    FOREIGN KEY (ArtigoID) REFERENCES Artigos(ArtigoID)
);

-- Inserir 5 registros na tabela "Comentários"
INSERT INTO Comentários (ComentarioID, ArtigoID, Autor, Texto, DataComentario)
VALUES
    (1, 1, 'Rivaldo', 'Que Jogo RIDICULO!!!!!!', '2023-09-02'),
    (2, 2, 'alisson', 'Rinha de Idoso', '2023-09-07'),
    (3, 2, 'popo', 'Todo Duro Lutou Como Nunca E Perdeeu Como Sempre!', '2023-09-08'),
    (4, 3, 'Aryton', 'No Meu Tempo.....', '1992-09-09'),
    (5, 4, 'Zonia', 'Amazonia', '2023-09-10');
    
-- trazendo os dados da tabela.
   SELECT * FROM BDatividadeII.Comentários
