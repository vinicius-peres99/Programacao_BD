SET SERVEROUTPUT ON

BEGIN
    GOTO segunda_mensagem;
    
    <<primeira_mensagem>>
    DBMS_OUTPUT.PUT_LINE('Olá, primeira mensagem');
    GOTO fim;
    
    <<segunda_mensagem>>
    DBMS_OUTPUT.PUT_LINE('Olá, segunda mensagem');
    GOTO primeira_mensagem;
    
    <<fim>>
    DBMS_OUTPUT.PUT_LINE('Saindo do Script');
END;

BEGIN
    FOR V_CONTADOR IN 1..20 LOOP
        DBMS_OUTPUT.PUT_LINE('Contador: ' || V_CONTADOR);
    IF V_CONTADOR = 10 THEN
        GOTO FIM;
    END IF;
    END LOOP;
    <<FIM>>
        DBMS_OUTPUT.PUT_LINE('Fim do programa');
    END;
    
DECLARE
    V_SIGLA VARCHAR2(10):= 'TBD';
    V_CURSO VARCHAR2(30);
BEGIN
    CASE V_SIGLA
        WHEN 'TBD' THEN
        V_CURSO := 'TECNOLOGIA EM BANCO DE DADOS';
        WHEN 'TGTI' THEN
        V_CURSO := 'TECNOLOGIA EM GESTÃO DA TECNOLOGIA DA INFORMAÇÃO';
        ELSE
        V_CURSO := 'CURSO DESCONHECIDO';
    END CASE;
    DBMS_OUTPUT.PUT_LINE(V_SIGLA || ' - ' || V_CURSO);
END;

DECLARE
V_N NUMBER(2):= 15;
BEGIN
    CASE
        WHEN (MOD(V_N,2) = 0) THEN
        DBMS_OUTPUT.PUT_LINE('O número ' || V_N || ' é PAR');
        WHEN (MOD(V_N,2) != 0) THEN
        DBMS_OUTPUT.PUT_LINE('O número ' || V_N || ' é ÍMPAR');
        ELSE
        DBMS_OUTPUT.PUT_LINE('Valor inválido, não é um número inteiro');
    END CASE;
END;