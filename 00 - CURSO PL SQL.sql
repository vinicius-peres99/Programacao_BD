/*
BEGIN
    INSERT INTO SEGMERCADO (ID, DESCRICAO)
    VALUES (3, 'Esportes');
    INSERT INTO SEGMERCADO (ID, DESCRICAO)
    VALUES (4, 'Camo e Banho');
            
    UPDATE SEGMERCADO SET DESCRICAO = 'Cama e Banho' WHERE ID = 4;    
END;

 INSERT INTO SEGMERCADO (ID, DESCRICAO)
    VALUES (1, 'Esportes');
    INSERT INTO SEGMERCADO (ID, DESCRICAO)
    VALUES (2, 'Atacado'); 

select * from segmercado;
*/

/*DECLARE 
      -- nome_variavel nome_tabela.nome_campo%type
      v_id segmercado.id%type := 56;
      v_descricao segmercado.descricao%type;
BEGIN
    v_descricao := 'Jardinagem';

    INSERT INTO SEGMERCADO (ID, DESCRICAO)
    VALUES (v_id, v_descricao); 
END;


select * from segmercado;
*/







/*
DROP TABLE CLIENTE;
DROP TABLE CLIENTES;

CREATE TABLE SegMercado
(
    ID NUMBER(5), 
    Descricao VARCHAR2(100)
);

CREATE TABLE Cliente
(
    ID NUMBER(5), 
    Razao_Social VARCHAR2(100),
    CNPJ VARCHAR2(20), 
    SegMercado_id NUMBER(5),
    Data_Inclusao DATE, 
    Faturamento_Previsto NUMBER(10,2),
    Categoria VARCHAR2(20)
);

ALTER TABLE SegMercado ADD CONSTRAINT PK_SegMercado_id  PRIMARY KEY (ID);
ALTER TABLE Cliente ADD CONSTRAINT PK_Cliente_id PRIMARY KEY (ID);

ALTER TABLE Cliente ADD CONSTRAINT Cliente_SegMercado_fk 
    FOREIGN KEY (SegMercado_id) REFERENCES SegMercado (ID);
*/










----- Operadores Aritméticos


SET SERVEROUTPUT ON;

DECLARE

    n_idade1 NUMBER(3) := 18;
    n_idade2 NUMBER(3) := 20;

BEGIN
    -- Operadores aritméticos
  dbms_output.put_line(n_idade1 * n_idade2);
  dbms_output.put_line(n_idade1 - n_idade2);
  dbms_output.put_line(n_idade1 / n_idade2);
  dbms_output.put_line(n_idade1 mod n_idade2);
  dbms_output.put_line(n_idade1 ** n_idade2);
    
END;