-- Parte 1
-- Crear un tablespace llamado "mid_term", este solamente tendrá un datafile de 40Mb.

CREATE TABLESPACE mid_term DATAFILE
'mid_term' SIZE 40M;

--Crear un usuario con espacio ilimitado en el tablespace "mid_term", el nombre de usuario 
CREATE USER lgraciano IDENTIFIED BY 1234 DEFAULT TABLESPACE mid_term QUOTA UNLIMITED ON mid_term;

--Crear 2 roles
CREATE ROLE MINI_DBA; 

-- privilegias de crear secuencias y tablas
GRANT CREATE TABLE, create sequence TO MINI_DBA;

-- Privilegios STUDENT
CREATE ROLE STUDENT;

GRANT CREATE SESSION TO STUDENT ;

GRANT MINI_DBA TO STUDENT;

GRANT STUDENT TO lgraciano;

-- PARTE 2
DELETE SEQU
CREATE SEQUENCE DELITOS_SEQ MINVALUE 100 START WITH 100
    INCREMENT BY 1 NOCACHE;
    
CREATE SEQUENCE CAPTURAS_SEQ MINVALUE 1000 START WITH 100
    INCREMENT BY 1 NOCACHE;

