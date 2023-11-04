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



GO


CREATE TABLE VENDA (

datavenda date  not null  CONSTRAINT  dfdatavenda DEFAULT (getdate())
, quantidade smallint not null CONSTRAINT	dfqtd DEFAULT(1)
,numcliente int not null
, CONSTRAINT pkvenda PRIMARY KEY (datavenda)
,CONSTRAINT fkvenda FOREIGN KEY (numcliente) REFERENCES ClienteFIT(numcliente)
);


ALTER TABLE ClienteFIT ADD telefone varchar (14);
ALTER TABLE ClienteFIT ADD dataentrada datetime;
ALTER TABLE ClienteFIT ADD idade tinyint not null;
ALTER TABLE ClienteFIT ADD CONSTRAINT ckidade CHECK (idade between 18 and 155);
ALTER TABLE ClienteFIT ADD CONSTRAINT cktelefone CHECK (
telefone LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]' OR
telefone LIKE '([0-9][0-9][0-9]) [0-9][0-9][0-9]-[0-9][0-9])'
);



