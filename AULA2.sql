USE FIT;
GO

CREATE TABLE ClienteFIT(
numcliente int not null IDENTITY(1,1)
,cpf int not null
,rg int not null
, CONSTRAINT pkcliente PRIMARY KEY(numcliente)
, CONSTRAINT UQclientecpf UNIQUE(cpf)
, CONSTRAINT UQclienterg UNIQUE(rg)
);

GO

ALTER TABLE ClienteFIT ADD nome varchar(30) not null
ALTER TABLE ClienteFIT ADD sobrenome varchar(30) not null


GO

ALTER TABLE ClienteFIT ALTER COLUMN nome varchar(55) not null

GO

ALTER TABLE ClienteFIT DROP COLUMN sobrenome 
