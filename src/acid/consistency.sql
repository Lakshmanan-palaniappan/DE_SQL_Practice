-- CREATE TABLE CompanyBudget ( BudgetID INT PRIMARY KEY, TotalBudget INT ); 
-- INSERT INTO CompanyBudget VALUES (1, 100000);


BEGIN tran 
UPDATE Emp_Salary SET Salary=Salary+10000000 WHERE EID=3

IF (SELECT SUM(Salary) FROM Emp_Salary)>(SELECT TotalBudget FROM CompanyBudget)
BEGIN
ROLLBACK
END
ELSE
COMMIT


SELECT * FROM Emp_Salary

--Referred Youtube