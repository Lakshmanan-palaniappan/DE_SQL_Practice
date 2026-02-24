USE ShowBook;
GO
SELECT c.FullName, b.BookingID, s.ShowTime, m.Title 
FROM Customers c 
RIGHT JOIN Bookings b ON c.CustomerID = b.CustomerID 
RIGHT JOIN Shows s ON b.ShowID = s.ShowID 
RIGHT JOIN Movies m ON s.MovieID = m.MovieID;

SELECT m.Title, s.ShowTime, s.Price 
FROM Movies m 
RIGHT JOIN Shows s ON m.MovieID = s.MovieID;