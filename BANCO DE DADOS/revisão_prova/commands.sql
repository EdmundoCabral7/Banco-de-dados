-- database: ./db.sqlite

CREATE TABLE "produtos" (
    "id" INTEGER NOT NULL,
    "nome" TEXT NOT NULL,
    "preco" REAL NOT NULL
);

CREATE TABLE "clientes" (
    "id" INTEGER NOT NULL,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL
);

CREATE TABLE "compras" (
    "id" INTEGER NOT NULL,
    "id_cliente" INTEGER NOT NULL,
    "produto_id" INTEGER NOT NULL,
    "data" TEXT NOT NULL
);

CREATE TABLE "fornecedores" (
    "id" INTEGER NOT NULL,
    "nome" TEXT NOT NULL,
    "cidade" TEXT NOT NULL
);

CREATE TABLE "estoque" (
    "id" INTEGER NOT NULL,
    "produto_id" INTEGER NOT NULL,
    "quantidade" INTEGER NOT NULL
);

INSERT INTO produtos (id, nome, preco) VALUES (1, 'Notebook', 1.000),
       (2, 'Smartphone', 500.00),
       (3, 'Tablet', 300.00),
       (4, 'Monitor', 700.00),
       (5, 'Impressora', 450.00);

INSERT INTO clientes (id, nome, email) VALUES (1, 'Maria', 'maria@email.com'),
        (2, 'João', 'joao@email.com'),
        (3, 'Ana', 'ana@email.com'),
        (4, 'Pedro', 'pedro@email.com');

INSERT INTO compras (id, id_cliente, produto_id, data) VALUES (1, 2, 1, '2049-01-01'),
        (2, 1, 2, '2049-01-02'),
        (3, 2, 3, '2049-01-03'),
        (4, 3, 4, '2049-01-04'),
        (5, 4, 5, '2049-01-05');

INSERT INTO fornecedores (id, nome, cidade) VALUES (1, 'TecInfo', 'São Paulo'),
        (2, 'MegaTech', 'Rio de Janeiro'),
        (3, 'PCWorld', 'Belo Horizonte');

INSERT INTO estoque (id, produto_id, quantidade) VALUES (1, 1, 5),
        (2, 2, 10),
        (3, 3, 8),
        (4, 4, 3),
        (5, 5, 6);

SELECT * FROM "produtos";

SELECT  "nome", "preco" FROM "produtos" WHERE preco > 400;

SELECT * FROM "fornecedores";

SELECT * FROM "estoque" WHERE "quantidade" < 5;

UPDATE "produtos" SET "preco" = 350 WHERE "nome" = 'Tablet';

UPDATE "clientes" SET "email" = 'maria2025@email.com' WHERE "nome" = 'Maria';

UPDATE "estoque" SET "quantidade" = 7 WHERE "produto_id" = 4;

DELETE FROM "compras" WHERE "id" = 3;

DELETE FROM "clientes" WHERE "id" = 4;

INSERT INTO "clientes" (id, nome, email) VALUES (4, 'Lucas', 'lucas@email.com');

INSERT INTO "produtos" (id, nome, preco) VALUES (6, 'Teclado', 150.00);

INSERT INTO "estoque" (id, produto_id, quantidade) VALUES (6, 6, 12);

INSERT INTO "compras" (id, id_cliente, produto_id, data) VALUES (6, 4, 6, '2049-01-06');

