CREATE TABLE FUNCIONARIO 
(
    idfunc INT NOT NULL,
    nome varchar(50) not null,
    idcargo int not null
)

CREATE TABLE CARGO 
(
    idcargo int not null,
    cargo varchar(50) not null
)

INSERT INTO FUNCIONARIO (idfunc, nome, idcargo)
    VALUES (1, 'Carlos', 1);
    
INSERT INTO FUNCIONARIO
    VALUES (2, 'Camila', 2);
INSERT INTO FUNCIONARIO
    VALUES (2, 'Ricardo', 5);
INSERT INTO FUNCIONARIO
    VALUES (2, 'Marcela', 11);
INSERT INTO FUNCIONARIO
    VALUES (2, 'Lais', 15);
    
    Insert tabela cargo
Insert into CARGO (IDCARGO,CARGO) values ('1','Analista');
Insert into CARGO (IDCARGO,CARGO) values ('2','Gerente');
Insert into CARGO (IDCARGO,CARGO) values ('3','Vendas');
Insert into CARGO (IDCARGO,CARGO) values ('8','Comercial');
Insert into CARGO (IDCARGO,CARGO) values ('10','Presidente');


SELECT * FROM FUNCIONARIO;
SELECT * FROM CARGO;

SELECT NOME FROM FUNCIONARIO;
SELECT CARGO FROM CARGO;

SELECT * FROM FUNCIONARIO INNER JOIN CARGO
    ON funcionario.idcargo = cargo.idcargo;
    
SELECT nome, cargo FROM FUNCIONARIO INNER JOIN CARGO
    ON funcionario.idcargo = cargo.idcargo;
    
-- Criando Apelidos (ALIAS) AS ALIAS
SELECT nome, cargo FROM FUNCIONARIO f 
    INNER JOIN CARGO c
    ON f.idcargo = c.idcargo;

-- Alterando nome das colunas
SELECT f.nome "Nome Funcionário", c.cargo "Cargo Funcionário" FROM FUNCIONARIO f 
    INNER JOIN CARGO c
    ON f.idcargo = c.idcargo;