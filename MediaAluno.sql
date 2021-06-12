-- Agrupando quantidade de aluno por curso
SELECT COUNT(RA), CURSO FROM ALUNO group by curso;  

-- Agrupar as melhores turmas (nota acima de 7.5)
SELECT COUNT(RA), CURSO, SUM(nota)/COUNT(RA) as Media 
    FROM ALUNO group by curso 
    HAVING SUM(nota)/COUNT(RA) >= 7.3;  

SELECT * FROM ALUNO;    

SELECT SUM(NOTA)/COUNT(RA) FROM ALUNO;