DROP TABLE CLIENTES;

CREATE TABLE CLIENTES(
CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO VARCHAR(150),
BAIRRO VARCHAR(100),
CIDADE VARCHAR(100),
ESTADOS CHAR(2),
CEP VARCHAR(8),
SEXO CHAR(1)
);

ALTER TABLE CLIENTES
    ADD CONSTRAINT PK_CLIENTES PRIMARY KEY (CPF);
    
DROP TABLE PRODUTOS;

CREATE TABLE PRODUTOS(
PRODUTO VARCHAR(20),
NOME VARCHAR(100),
EMBALAGEM VARCHAR(50),
TAMANHO VARCHAR(50),
PRECO NUMBER(10,2)
);

ALTER TABLE PRODUTOS
    ADD CONSTRAINT PK_PRODUTOS PRIMARY KEY (PRODUTO);
    
INSERT INTO CLIENTES

(CPF,NOME,ENDERECO,BAIRRO,CIDADE,ESTADOS,CEP,SEXO)
VALUES ('39775754810','Vinicius','Rua Genebra','Bela Vista','Sao Paulo','SP','01316010','M');

SELECT * FROM CLIENTES;