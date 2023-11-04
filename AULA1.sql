CREATE DATABASE FIT;
GO
USE FIT;

CREATE TABLE AlunoFIT(
matricula int not null IDENTITY(500,1)
,nome varchar(20)
,meionome varchar(20)
,sobrenome varchar(20)
, CONSTRAINT pkaluno PRIMARY KEY(matricula)
);

CREATE TABLE ProvaFIT(
idprova int not null IDENTITY (1,1)
,matricula int not null
,nota decimal(4,2)not null
,CONSTRAINT pkprova PRIMARY KEY (idprova)
,CONSTRAINT fkprova FOREIGN KEY (matricula) REFERENCES AlunoFIT (matricula)

);


