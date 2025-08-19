-- database: ./db.sqlite

CREATE TABLE cursos (id, nome, aulas);

DROP TABLE cursos;


CREATE TABLE cursos (
    id INTERGE NOT NULL,
    nome TEXT NOT NULL,
    aulas INTEGER
);

PRAGMA TABLE_INFO("cursos");

SELECT * FROM cursos;

INSERT INTO cursos(id, nome, aulas) VALUES (1, 'HTML', 10);

INSERT INTO cursos(id, nome, aulas) VALUES (2, 'CSS', 12);

DELETE FROM "cursos";

DELETE FROM "cursos" WHERE id = 0;

SELECT "id", "nome" FROM "cursos";

SELECT * FROM "cursos" LIMIT 2;

SELECT * FROM "cursos" WHERE "id" = 2 AND "aulas" > 10;

SELECT * FROM "cursos" WHERE "id" = 2 OR "aulas" > 10;

UPDATE "cursos" SET "nome" = 'HTML e CSS', "aulas" = 20 WHERE "id" = 1;