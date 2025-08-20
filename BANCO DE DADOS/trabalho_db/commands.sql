-- database: ./db.sqlite

CREATE TABLE  produtos(id, nome, preco);

CREATE TABLE clientes(id, nome, email);

CREATE TABLE compras(id, cliente_id, produto_id, data);

INSERT INTO produtos (id, nome, preco) VALUES (1, 'Notebook', 1000),
      (2, 'Smartphone', 500),
      (3, 'Tablet', 300);

INSERT INTO clientes (id, nome, email) VALUES (1, 'Maria', 'maria@gmail.com'),
       (2, 'João', 'joão@email.com');

INSERT INTO compras (id, cliente_id, produto_id, data) VALUES (1, 1, 2, '2049-01-02'),
       (2, 2, 1, '2049-01-01'),
       (3, 2, 3, '2049-01-03');

SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco > 400;
       