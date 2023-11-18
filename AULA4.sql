SELECT * FROM ProvaFIT 
WHERE nome like 'Denilson%';


DELETE FROM ClienteFIT 
WHERE nome like 'Denilson%';



INSERT INTO AlunoFIT (nome)
VALUES ('Diego'),('Patty'),('Jhonson'),('Bruno'),('Mauro');


INSERT INTO ProvaFIT (matricula,nota)
VALUES (500,5),(501,6),(502,6),(503,10),(504,9);


DELETE FROM ProvaFIT WHERE matricula = 500;
DELETE FROM AlunoFIT WHERE matricula = 500;


INSERT INTO AlunoFIT (nome) VALUES ('FELIPE');
UPDATE ProvaFIT set matricula = 504 WHERE matricula = 501;