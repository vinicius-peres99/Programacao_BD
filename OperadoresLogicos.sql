SET SERVEROUTPUT ON;

DECLARE

n_idade1 NUMBER(3) := 18;
n_altura NUMBER(3,2) := 1.7;
b_resultado BOOLEAN;
b_resultado_idade BOOLEAN;

BEGIN

--b_resultado := n_idade1 >= 18 AND n_altura > 1.7;
--b_resultado := n_idade1 >= 18 OR n_altura > 1.7;
--b_resultado := n_idade1 >= 18 AND n_altura > 1.6 AND n_idade1 <= 95;

b_resultado_idade:= (n_idade1 >= 18 AND n_idade1 <= 95);
b_resultado := b_resultado_idade AND NOT(n_altura > 1.6);

IF b_resultado THEN
    dbms_output.put_line('TRUE');
ELSE
    dbms_output.put_line('FALSE');
END IF;

END;