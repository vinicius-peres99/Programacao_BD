SELECT * FROM Depto;
SELECT * FROM Empregado;

SELECT * FROM Depto;
SELECT nmempregado "nome empregado", vlsalario salario FROM Empregado;

CREATE TABLE Depto2 
 (
    NrDepto SMALLINT NOT NULL, 
    NmDepto CHAR(20) NOT NULL, 
    DsLocal VARCHAR(20) NOT NULL, 
    VlOrcamento DECIMAL(12) NULL, 
    -- Criando uma restrição do tipo chave primária para o NrDepto
    CONSTRAINT PK_Depto2 PRIMARY KEY (NrDepto) 
 ); 

-- Criando a tabela empregado
CREATE TABLE Empregado2 (
    NrEmpregado INTEGER NOT NULL, 
      NmEmpregado CHAR(20) NOT NULL, 
      NrGerente INTEGER NULL, 
      DsCargo VARCHAR(20) NULL, 
      NrDepto SMALLINT NOT NULL, 
      DtAdmissao DATE NOT NULL, 
      VlSalario DECIMAL(10,2) NULL, 
      VlComissao DECIMAL(10,2) NULL,
      -- Adicionando umarestrição do tipo chave primária  
      CONSTRAINT PK_Empregado2 PRIMARY KEY(NrEmpregado), 
      -- Adicionando uma restrição do tipo chave estrangeira
      CONSTRAINT FK_Empregado_Depto2 FOREIGN KEY(NrDepto) 
      REFERENCES Depto2(NrDepto) 
 ); 
 
 SELECT * FROM DEPTO2;
 
 ALTER TABLE Depto2
    ADD Descricao VARCHAR(50);
    
 SELECT * FROM DEPTO2;
 
  ALTER TABLE Depto2
    DROP COLUMN Descricao;
    
    -- ADD UMA NOVA PRIMARY KEY
    ALTER TABLE DEPTO2
        ADD CODDEPTO SMALLINT NOT NULL;
        
    ALTER TABLE DEPTO2
        ADD CONSTRAINT PK_DEPTO_COD PRIMARY KEY (CODDEPTO);
        
    ALTER TABLE Depto2
         ADD Descricao VARCHAR(50);
         
    ALTER TABLE Depto2
        MODIFY Descricao NOT NULL;
        
        ALTER TABLE Depto2
        MODIFY Descricao DEFAULT 'Sem comentarios' null;
        
        ALTER TABLE DEPTO2
            DROP COLUMN CodDepto;
        
        INSERT INTO Depto2 VALUES(1, 'Presidencia', 'Sao Paulo',20000); 
        select * from depto2