USE ShowBook;
GO

SELECT c.FullName "Name",m.Title

FROM Bookings b
JOIN Customers c ON c.CustomerID=b.CustomerID
JOIN Shows s ON s.ShowID= b.ShowID
JOIN Movies m ON m.MovieID=s.MovieID

SELECT c.FullName, m.Title
FROM Bookings b 
JOIN Customers c ON c.CustomerID = b.CustomerID
JOIN Shows s ON s.ShowID = b.ShowID
JOIN Movies m ON m.MovieID = s.MovieID
WHERE m.Title = 'Leo';




SELECT m.Title,s.Price
FROM Shows s
JOIN Movies m ON m.MovieID=s.MovieID