SET SERVEROUTPUT ON;

DECLARE 
    v_nome VARCHAR2(30); 
    n_idade NUMBER;
BEGIN
    
    v_nome :=   '&Entre_com_seu_nome';
    n_idade := &Entre_com_sua;
    
    dbms_output.put_line(CONCAT(v_nome, n_idade));    
END;