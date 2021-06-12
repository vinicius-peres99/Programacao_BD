SET SERVEROUTPUT ON;

DECLARE 
   v_saudacoes varchar2(50) := 'ola, mundo oracle'; 
BEGIN 
   dbms_output.put_line(UPPER(v_saudacoes)); 
    
   dbms_output.put_line(LOWER(v_saudacoes)); 
   
   
    
   dbms_output.put_line(INITCAP(v_saudacoes)); 
    
   dbms_output.put_line ( SUBSTR (v_saudacoes, 1, 1)); 
    
   dbms_output.put_line ( SUBSTR (v_saudacoes, -1, 1)); 
     
   dbms_output.put_line ( SUBSTR (v_saudacoes, 7, 5)); 
    
   dbms_output.put_line ( SUBSTR (v_saudacoes, 2)); 
     
   dbms_output.put_line ( INSTR (v_saudacoes, 'u'));
END;
/

DECLARE 
   v_saudacao varchar2(30) := '......Hello World.....'; 
BEGIN 
   dbms_output.put_line(RTRIM(v_saudacao,'.')); 
   dbms_output.put_line(LTRIM(v_saudacao, '.')); 
   dbms_output.put_line(TRIM( '.' from v_saudacao)); 
END;
/