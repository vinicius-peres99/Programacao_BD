-- Alterando nome das colunas
SELECT f.nome "Nome Funcionário", c.cargo "Cargo Funcionário" 
FROM FUNCIONARIO f RIGHT JOIN CARGO c   
    ON f.idcargo = c.idcargo;

SELECT f.nome "Nome Funcionário", c.cargo "Cargo Funcionário" 
FROM FUNCIONARIO f LEFT JOIN CARGO c   
    ON f.idcargo = c.idcargo;    
    
SELECT f.nome "Nome Funcionário", c.cargo "Cargo Funcionário" 
FROM FUNCIONARIO f FULL JOIN CARGO c   
    ON f.idcargo = c.idcargo;    

-- Conhecido como junção cartesiana x y
SELECT f.nome "