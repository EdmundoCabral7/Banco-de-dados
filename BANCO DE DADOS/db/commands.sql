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

