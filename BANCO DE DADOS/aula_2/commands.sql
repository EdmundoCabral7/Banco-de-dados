-- database: ./db.sqlite

CREATE TABLE SONIC_LOJA (
    ID_lOJA INTEGER NOT NULL,
    Nome_Loja TEXT NOT NULL
);

CREATE TABLE SONIC_GAME (
    ID_Game INTEGER NOT NULL,
    Nome TEXT NOT NULL,
    ID_Loja INTEGER,
    Valor REAL
);

CREATE TABLE Clientes (
    ID_Cliente INTEGER NOT NULL,
    Nome_Cliente TEXT NOT NULL,
    CPF TEXT NOT NULL
);

CREATE TABLE Compras (
    ID_Compra INTEGER NOT NULL,
    ID_Cliente INTEGER,
    ID_Game INTEGER,
    Data_Compra TEXT NOT NULL
);

INSERT INTO SONIC_LOJA (ID_lOJA, Nome_Loja) VALUES (1, 'Sonic Games Filial'),
        (2, 'Sonic Games Matriz'),
        (3, 'Sonic Games Centro');

INSERT INTO SONIC_GAME (ID_Game, Nome, ID_Loja, Valor) VALUES (1, 'Sonic Adventure', 1, 20),
        (2, 'Sonic Generations', 2, 120),
        (3, 'Sonic Colors', 3, 100);

INSERT INTO Clientes (ID_Cliente, Nome_Cliente, CPF) VALUES (1, 'João Silva', '123.456.789-00'),
        (2, 'Maria Oliveira', '987.654.321-00'),
        (3, 'Pedro Santos', '456.789.123-00');

INSERT INTO Compras (ID_Compra, ID_Cliente, ID_Game, Data_Compra) VALUES (1, 1, 2, '2023-01-15'),
        (2, 2, 1, '2023-02-20'),
        (3, 3, 3, '2023-03-10');

