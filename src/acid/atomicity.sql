USE practice_database
CREATE TABLE Employee(EID INT PRIMARY KEY NOT NULL, Name VARCHAR(80), Email VARCHAR(100), Status VARCHAR(20))
CREATE TABLE Emp_Salary(
    EID INT FOREIGN KEY REFERENCES Employee(EID),
    Salary INT,
);
INSERT INTO Employee(EID,Name,Status,Email) VALUES (1,'Lakshmanan','Active','Laks@gmail.com')
INSERT INTO Employee(EID,Name,Status,Email) VALUES (2,'Laks','Active','Lak@gmail.com')
INSERT INTO Employee(EID,Name,Status,Email) VALUES (3,'Lakshmanan Palaniappan','InActive','Lakshmanan@gmail.com')
INSERT INTO Emp_Salary(EID,Salary) VALUES(2,30000)
INSERT INTO Emp_Salary(EID,Salary) VALUES(1,20000)



SELECT * FROM Employee
SELECT * FROM Emp_Salary

-- 1	20000
-- 2	30000

begin tran 
UPDATE Employee set Status='InActive'
WHERE EID=3
INSERT INTO Emp_Salary (EID,Salary) VALUES(3,'string')
commit

-- I tried to pass incorrect data type and checked if it accepts (transaction completes or partially holds or transaction declines)
-- (1 row affected)
-- Msg 245, Level 16, State 1, Line 5
-- Conversion failed when converting the varchar value 'string' to data type int.
-- Though one row affected Res will be

-- 1	20000
-- 2	30000


--Correct Method(Transaction Completes without any issue)

begin tran 
UPDATE Employee set Status='InActive'
WHERE EID=3
INSERT INTO Emp_Salary (EID,Salary) VALUES(3,40000)
commit

SELECT * FROM Employee
SELECT * FROM Emp_Salary


-- 1	20000
-- 2	30000
-- 3	40000