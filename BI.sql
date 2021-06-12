SET SERVEROUTPUT ON;

DECLARE 
 v_ra CHAR(15) := '2589631478965';
 v_Nome VARCHAR2(50) := 'Daniela';
 v_SobreNome VARCHAR2(50) := 'Rodrigues';
 v_Nota NUMBER := 9;
 v_Faltas NUMBER := 5;
 n_total NUMBER(4);
 n_TOTAL_ALUNO CONSTANT NUMBER := 1000;
BEGIN
    INSERT INTO 
    ALUNO (ID, RA, NOME, SOBRENOME, NOTA, FALTAS, 
    CURSO, GENERO, PERIODO)   
    VALUES (320, v_ra, v_nome, v_SobreNome, v_nota, 
    v_faltas, 'TADS', 'F', 'Noturno');
 
    DBMS_OUTPUT.PUT_LINE('Cadastrada com sucesso, bem-vinda ' || v_nome); 
        
    SELECT COUNT(ID) INTO n_total FROM ALUNO;  
    
    DBMS_OUTPUT.PUT_LINE('Ainda podem ser cadastrados ' || 
        (n_TOTAL_ALUNO - n_total));
END;
/


DECLARE 
    t_aluno aluno%rowtype;
BEGIN
    t_aluno.RA := '87802422775';   
    SELECT NOME INTO t_aluno.Nome
        FROM ALUNO WHERE RA = t_aluno.RA;
    DBMS_OUTPUT.PUT_LINE('O nome do aluno: ' || t_aluno.Nome);
END;
---------------------
DECLARE 
    v_RA aluno.ra%type;
    t_aluno aluno%rowtype;
BEGIN
    v_RA := '87802422775';
        
    SELECT NOME INTO t_aluno.Nome
        FROM ALUNO WHERE RA = v_RA;
    
    DBMS_OUTPUT.PUT_LINE('O nome do aluno: ' || t_aluno.Nome);
END;

DECLARE
    TYPE t_nome_aluno IS TABLE OF aluno%rowtype
    INDEX BY BINARY_INTEGER;
    t_nomes t_nome_aluno;
BEGIN 
    SELECT *
        BULK COLLECT INTO t_nomes FROM ALUNO;
    FOR indice IN 1..t_nomes.count LOOP
        DBMS_OUTPUT.PUT_LINE('Indice: ' || indice 
            || ' Nome: ' || t_nomes(indice).nome);
    END LOOP;
END;

DECLARE
    TYPE t_nome_aluno IS TABLE OF aluno%rowtype
    INDEX BY BINARY_INTEGER;
    t_aluno t_nome_aluno;
BEGIN 
    SELECT * 
        INTO t_aluno(1) FROM ALUNO WHERE ID = 2;
    SELECT * 
        INTO t_aluno(35) FROM ALUNO WHERE ID = 4;
    SELECT * 
        INTO t_aluno(58) FROM ALUNO WHERE ID = 7;
    DBMS_OUTPUT.PUT_LINE('============Nomes===========');
    DBMS_OUTPUT.PUT_LINE(' Nome: ' || t_aluno(1).nome);
    DBMS_OUTPUT.PUT_LINE(' Nome: ' || t_aluno(35).nome);
END;