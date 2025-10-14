-- database: ./db.sqlite

CREATE TABLE "produtos" (
 "id" INTEGER PRIMARY KEY,
 "nome" TEXT NOT NULL,
 "categoria" TEXT,
 "preco" INTEGER NOT NULL,
 "taxa_importacao" INTEGER NOT NULL DEFAULT 0,
 "estoque" INTEGER NOT NULL DEFAULT 0,
 "lancamento" INTEGER DEFAULT 1 CHECK ("lancamento" IN (0, 1)),
 "criado" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
) STRICT;

INSERT INTO "produtos"
("nome","categoria","preco","taxa_importacao","estoque","lancamento","criado") VALUES
('Fone Bluetooth','audio',19900,0,150,0,'2048-01-16 10:12:34'),
('Teclado Mecânico','periferico',34900,6500,20,0,'2048-02-02 09:45:10'),
('Mouse Gamer Pro','periferico',24900,0,120,0,'2048-02-21 14:05:28'),
('Monitor 27 4K','monitor',219900,9000,40,0,'2048-03-06 11:23:57'),
('Hub USB-C','acessorio',9900,0,200,0,'2048-03-11 08:47:13'),
('Webcam 1080p','video',17900,3500,110,0,'2048-04-01 16:32:40'),
('SSD NVMe 1TB','armazenamento',57900,0,70,0,'2048-04-19 13:21:05'),
('Cadeira Ergonômica',null,139900,12000,0,0,'2048-05-03 09:14:22'),
('Notebook 14 1TB','notebook',429900,0,30,0,'2048-05-16 10:55:31'),
('Ring Light LED',null,8900,0,5,0,'2049-06-02 12:06:09'),
('Smartwatch',null,79900,8000,90,0,'2049-06-21 15:44:18'),
('Carregador GaN','energia',15900,0,140,0,'2049-07-06 11:12:47'),
('Notebook 16 2TB','notebook',529900,0,37,0,'2049-05-16 10:55:31'),
('Power Bank 20000 mAh','energia',22900,0,130,1,'2049-07-23 17:03:59'),
('Óculos 3D Pro','acessorio',21900,0,110,1,'2049-07-26 17:03:59'),
('Headset ANC Pro','audio',99900,11000,60,1,'2049-08-11 10:28:36'),
('Placa-mãe Z790','hardware',189900,0,35,1,'2049-09-02 09:49:52'),
('Processador X9-5600','hardware',159900,9500,50,0,'2049-09-19 14:17:08'),
('Processador X11-5600','hardware',199900,9500,50,0,'2049-10-01 14:17:08'),
('Impressora 3D Mini','impressora',249900,0,20,0,'2049-10-06 08:38:41'),
('Alto-falante WiFi Pro','audio',34900,0,100,0,'2049-11-02 16:25:55'),
('Câmera de Ação 4K','video',89900,7000,45,0,'2049-11-21 13:56:12'),
('Roteador WiFi 6E','rede',64900,0,75,0,'2049-12-06 11:11:11');

SELECT * FROM "produtos" WHERE "nome" LIKE 'IMPRESSORA 3D MINI';

SELECT * FROM "produtos" WHERE "nome" LIKE 'notebook%';

SELECT * FROM "produtos" WHERE "nome" LIKE '%pro';

SELECT * FROM "produtos" WHERE "nome" LIKE '%3d%';

SELECT * FROM "produtos" WHERE "nome" LIKE '% _TB%';

SELECT * FROM "produtos" WHERE "nome" NOT LIKE '%pro%';

SELECT * FROM "produtos" WHERE "preco" BETWEEN 10000 AND 20000;

SELECT * FROM "produtos" WHERE "criado" BETWEEN '2049-06' AND '20249-08';

SELECT * FROM "produtos" WHERE "criado" NOT BETWEEN '2049-06' AND '20249-08';

SELECT * FROM "produtos" WHERE "categoria" IN ('notebook' , 'hardware');

SELECT * FROM "produtos" WHERE "categoria" NOT IN ('notebook' , 'hardware');

SELECT * FROM "produtos" WHERE "id" IN (1, 5, 7); 

SELECT * FROM "produtos" WHERE "id" NOT IN (1, 5, 7);

-- Funções (mean, sum, gau, gauseigen)

-- As Funções matemáticas mais comuns no SQLITE são:

-- COUNT()
-- Conta o número de linhas
-- SUM()
-- Soma os valores de uma coluna numérica
-- AVG()
-- Calcula a média dos valores de uma coluna numérica
-- MIN()
-- Retorna o menor valor de uma coluna

-- As funções de texto mais comuns no SQLITE são:
-- LENGHT()
-- UPPER()
-- LOWER()
-- SUBSTR
--Retorna uma parte de uma string

-- Data e hora
-- DATE()
-- Retorna a data atual ou converte uma string em data.
-- TIME()
-- DATETIME()
-- STRFTIME()
-- Formata uma data e hora em uma string.

-- USO DAS FUNÇÕES
-- as funções podem ser usadas em CREATE, SELECT, WHERE, INSERT e mais.

-- defalt(ultima auka)

CREATE TABLE "livros" (
"id" INTEGER PRIMARY KEY,
"nome" TEXT NOT NULL,
"criado" TEXT NOT NULL DEFAULT (STRFTIME('%Y-%m-%d', 'now'))
) STRICT;

INSERT INTO
"livros" ("nome")
Values
(TRIM(' Aprendendo SQL '));

-- GROUP E ORDER

-- ORDER BY

-- Ordena os resultados de uma consulta
-- ASC (ascendente) é o padrão

SELECT * FROM "produtos" ORDER BY "preco" ASC;
SELECT * FROM "produtos" ORDER BY "preco" DESC;

--primeiro a categoria, depois preço
SELECT * FROM "produtos" ORDER BY "categoria" ASC, "preco" ASC;

-- ORDER BY ordena por data
-- GROUP BY
-- agrupa os resultados de uma consulta.

SELECT "categoria", COUNT(*) AS "total" FROM "produtos" GROUP BY "categoria";
SELECT "categoria", AVR("preco") AS "preco_medio" FROM "produtos" GROUP BY "categoria";

-- GROUP BY e ORDER BY juntos
SELECT "categoria", COUNT(*) AS "total"
FROM "produtos" GROUP BY "categoria" ORDER BY "total" DESC;

--Data por ANO
SELECT STRFTIME('%Y', "criado") AS "ano", COUNT(*) AS "total"
FROM "produtos" GROUP BY "ano";

SELECT "categoria", COUNT(*) AS "total"
FROM "produtos" GROUP BY "categoria"
HAVING "total" > 1;

SELECT "categoria", AVG ("preco") AS "preco_medio"
FROM "produtos" GROUP BY "categoria"
HAVING "preco_medio" > 70000;