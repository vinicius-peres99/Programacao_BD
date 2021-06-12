BEGIN 
    FOR n_contador IN 1..5
    LOOP
        dbms_output.put_line(n_contador);
    END LOOP;
END;

DECLARE 
    n_contador number := 1;
BEGIN
    LOOP
        dbms_output.put_line(n_contador);
        n_contador := n_contador + 1;
        IF n_contador > 5 THEN
            EXIT;
        END IF;
    END LOOP;
END;

BEGIN
  FOR l_counter IN REVERSE 1..5
  LOOP
    DBMS_OUTPUT.PUT_LINE( l_counter );
  END LOOP;
END;