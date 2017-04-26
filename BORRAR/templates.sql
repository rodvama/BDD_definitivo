CREATE TABLE proyectos (
	id int(11) UNSIGNED NOT NULL PRIMARY KEY,
	description text
);


INSERT INTO proyectos(description) VALUES('Hello world this is a project');


SELECT * FROM proyectos;