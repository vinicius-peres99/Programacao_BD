SELECT NOME, RA FROM ALUNO;
SELECT COUNT(RA) FROM ALUNO;
 
SET SERVEROUTPUT ON;
 
DECLARE
    -- Declarar o cursor
    CURSOR c_ALUNO IS 
        SELECT NOME, RA FROM ALUNO;
        
    v_aluno c_ALUNO%ROWTYPE;
BEGIN
    OPEN c_ALUNO;
    
    LOOP
        -- The FETCH statement retrieves rows of data from the result set of a multi-row query.
        -- A estrutura Fetch retorna as linhas de dados a partir de um resultado feito através de uma consulta multilinhas
        FETCH c_ALUNO INTO v_aluno;
        EXIT WHEN c_ALUNO%NOTFOUND;
        DBMS_OUTPUT.put_line('Aluno: ' || v_aluno.nome 
                            || ' RA: ' || v_aluno.ra);    
    END LOOP;
    CLOSE c_ALUNO;
END;