SET SERVEROUTPUT ON;

DECLARE

n_idade1 NUMBER(3) := 18;
n_idade2 NUMBER(3) := 20;
b_resultado BOOLEAN;

BEGIN
b_resultado := n_idade1 > n_idade2;
b_resultado := n_idade1 >= n_idade2;
b_resultado := n_idade1 < n_idade2;
b_resultado := n_idade1 <= n_idade2;
b_resultado := n_idade1 <> n_idade2;
b_resultado := n_idade1 != n_idade2;
b_resultado := n_idade1 ~= n_idade2;

IF b_resultado = true THEN
    dbms_output.put_line('TRUE');
ELSE
    dbms_output.put_line('FALSE');
END IF;

END;

/*
dbms_output.put_line(n_idade1 * n_idade2);
dbms_output.put_line(n_idade1 - n_idade2);
dbms_output.put_line(n_idade1 / n_idade2);
dbms_output.put_line(n_idade1 mod n_idade2);
dbms_output.put_line(n_idade1 ** n_idade2);
*/