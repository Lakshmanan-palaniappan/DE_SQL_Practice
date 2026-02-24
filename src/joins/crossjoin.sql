USE ShowBook;
GO


SELECT c.CustomerID, c.FullName, s.ShowID, s.ShowTime
FROM Customers c
CROSS JOIN Shows s;
