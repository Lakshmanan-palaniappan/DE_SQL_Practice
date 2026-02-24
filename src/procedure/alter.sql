USE ShowBook;
GO
ALTER PROCEDURE get_movies AS
BEGIN
SELECT c.FullName,m.Title,s.ShowTime,s.Price
FROM Bookings b
JOIN Shows s ON s.ShowID=b.ShowID
JOIN Movies m ON m.MovieID=s.MovieID
JOIN Customers c ON c.CustomerID=b.CustomerID
END

