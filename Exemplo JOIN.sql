-- Alterando nome das colunas
SELECT f.nome "Nome Funcion�rio", c.cargo "Cargo Funcion�rio" 
FROM FUNCIONARIO f RIGHT JOIN CARGO c   
    ON f.idcargo = c.idcargo;

SELECT f.nome "Nome Funcion�rio", c.cargo "Cargo Funcion�rio" 
FROM FUNCIONARIO f LEFT JOIN CARGO c   
    ON f.idcargo = c.idcargo;    
    
SELECT f.nome "Nome Funcion�rio", c.cargo "Cargo Funcion�rio" 
FROM FUNCIONARIO f FULL JOIN CARGO c   
    ON f.idcargo = c.idcargo;    

-- Conhecido como jun��o cartesiana x y
SELECT f.nome "