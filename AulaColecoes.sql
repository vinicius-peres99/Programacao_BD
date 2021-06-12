SET SERVEROUTPUT ON;

declare
    type v_idade is varray(10) of ALUNO.NOTA%type;
    n_idade v_idade;
    
begin
    
    n_idade := v_idade(20.5, 30.5, 40.9, 50.7, 60.5, 70.9, 81.5, 92.6, 95.0, 0.8);
    
    for i in 1..n_idade.count loop
        dbms_output.put_line(i);
        dbms_output.put_line('Idades: ' || n_idade(i));
    end loop;
end;    