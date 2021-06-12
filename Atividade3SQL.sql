SET SERVEROUTPUT ON;

-- O que será exibido? (Leve em consideração que a configuração SET SERVEROUTPUT já está definida como ON)
DECLARE
    name varchar2(20);
    company varchar2(30);
    introduction varchar2(100);
    choice char(1);
BEGIN
    name := 'John Smith';
    company := 'Infotech';
    introduction := 'Olá, eu sou John Smith da Infotech';
    choice := 's';
    IF choice = 's' THEN
        dbms_output.put_line(name);
        dbms_output.put_line(company);
        dbms_output.put_line(introduction);
    END IF;
END;


-- Qual texto será exibido? (Leve em consideração que a configuração SET SERVEROUTPUT já está definida como ON)
DECLARE
    b_resultado boolean := true;
BEGIN
    IF b_resultado THEN
        dbms_output.put_line('FALSE');
    ELSE
        dbms_output.put_line('TRUE');
    END IF;
END;

-- Qual texto será exibido? (Leve em consideração que a configuração SET SERVEROUTPUT já está definida como ON)
DECLARE
    b_resultado boolean := true;
BEGIN
    IF NOT (b_resultado) THEN
        dbms_output.put_line('TRUE');
    ELSE
        dbms_output.put_line('FALSE');
    END IF;
END;

-- Qual texto será exibido? (Leve em consideração que a configuração SET SERVEROUTPUT já está definida como ON)
DECLARE
    n_contador number;
BEGIN
    FOR n_contador IN 1..5
    LOOP
        dbms_output.put_line(n_contador);
    END LOOP;
END;


-- Qual texto será exibido? (Leve em consideração que a configuração SET SERVEROUTPUT já está definida como ON)
DECLARE
    l_counter number;
BEGIN
    FOR l_counter IN REVERSE 1..5
    LOOP
        dbms_output.put_line(l_counter);
    END LOOP;
END;


-- Qual texto será exibido? (Leve em consideração que a configuração SET SERVEROUTPUT já está definida como ON)
DECLARE
    n_counter number := 1;
BEGIN
    WHILE n_counter <= 5
    LOOP
        dbms_output.put_line( 'Contador : ' || n_counter);
        n_counter := n_counter + 1;
    END LOOP;
END;