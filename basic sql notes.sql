-- first Command to enter 
mysql -u "root" -p 
-- enter password as 

-- to show what database exists
SHOW DATABASES;

-- TO CREATE new DATABASE with the name 'db'
CREATE DATABASE db;

-- to SELECT the newly created database
SELECT db

--- to create a table 
CREATE TABLE namedtable(
    id  INT PRIMARY KEY, 
    named VARCHAR(30),
    major VARCHAR(30)
) ;


-- 1 INT -- Whole Numbers 
-- 2 DECIMAL(M,N) -- Decimal Numbers 
-- 3 VARCHAR(1) -- String of text of length 
-- 4 CHAR(1); fixed string length
-- 4 BLOB -- Binary Large Object, Stores large data 
-- 5 DATE -- 'YYYY-MM-DD' 
-- 6 TIMESTAMP -- 'YYYY-MM-DD HH:MM:SS' 
--http://www.mysqltutorial.org/mysql-data-types.aspx


--to insert values into this table 
INSERT INTO namedtable VALUES(1, 'qwerty','cpsc');
INSERT INTO namedtable VALUES(1, 'john','bio');

--add some values to table 
INSERT INTO (id, named) VALUES( 3, 'claire');

-- see whats in  the table 
SELECT * from namedtable;


-- delete a table 
DROP TABLE namedtable; 

--constraints 
    -- cannot be null.      --> Name cannot be NULL
    -- Unique               --> Should be a unique value 
    -- PRIMARY KEY          --> Not null and unique 
    -- DEFAULT 'NAMES'      --> DEFAULT VALUE
    -- AUTO_INCREMENT       --> PRIMARY KEY VALUES 1, 2, 3 ...
    CREATE TABLE namedtable(
        id  INT PRIMARY KEY,  
        named VARCHAR(30) NOT NULL,
        major VARCHAR(30) UNIQUE
    ) ;


--UPDATE
    -- IF WE WANT TO CHANGE THE NAME OF THE MAJOR 
    UPDATE namedtable SET major = 'BIO' WHERE major = 'Biology'; 
    -- UPDATE SINGLE ENTRE 
    UPDATE namedtable SET major = 'Comp Scl' WHERE id = 4; 
    -- changing multiple colums 
    UPDATE namedtable SET named = 'Tom', major = 'undecided' id = 1; 
    --- changing entire row 
    UPDATE namedtable SET major = 'undecided'; 


--DELETE 
    --ALL ROWS 
    DELETE FROM namedtable; 
    -- DELETE SPECIFIC ROWS
    DELETE FROM namedtable WHERE ID=6;
    -- DELETE A MORE SPECIFIC ROW
    DELETE FROM namedtable WHERE name = 'Tom' AND major = 'undecided' ;
  





--Resources 
--https://www.youtube.com/watch?v=HXV3zeQKqGY
--https://www.khanacademy.org/computing/computer-programming/sql/sql-basics/pt/creating-a-table-and-inserting-data
