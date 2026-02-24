USE ShowBook;
GO

SELECT c.CustomerID, c.FullName, s.ShowTime, m.Title
FROM Customers c
LEFT JOIN Bookings b ON c.CustomerID = b.CustomerID
LEFT JOIN Shows s ON b.ShowID = s.ShowID
LEFT JOIN Movies m ON s.MovieID = m.MovieID;


SELECT m.Title,s.ShowTime
FROM Movies m 
LEFT JOIN Shows s ON s.MovieID=m.MovieID



SELECT c.FullName,s.ShowTime
FROM Shows s
LEFT JOIN Bookings b ON s.ShowID=b.ShowID
LEFT JOIN Customers c ON c.CustomerID=b.CustomerID