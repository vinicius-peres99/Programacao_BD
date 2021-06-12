SET SERVEROUTPUT ON;

DECLARE
    -- Criar uma variável com o meu nome e idade
    -- Declarando
    v_nome VARCHAR2(50);
    v_idade NUMBER(3);    
    v_cpf CHAR(11) := '12345678911';    
    v_altura NUMBER(3,2) := 1.85;    
    
    
BEGIN
    
    v_nome := 'Luis';
    v_idade := 27;
    
    DBMS_OUTPUT.PUT_LINE('Meu nome é ' || v_nome );
    DBMS_OUTPUT.PUT_LINE('Eu tenho ' || v_idade || ' anos');
    DBMS_OUTPUT.PUT_LINE('Meu CPF ' || v_cpf );
    DBMS_OUTPUT.PUT_LINE('Eu tenho ' || v_altura);
    
END;