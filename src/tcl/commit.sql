USE ShowBook;
GO

SELECT * FROM Customers
SELECT * FROM Movies
SELECT * FROM Shows
SELECT * FROM Bookings


BEGIN TRANSACTION
INSERT INTO Bookings(CustomerID,ShowID) VALUES (1,2)
COMMIT

SELECT c.FullName, m.Title,m.DurationMinutes,s.showTime,s.Price,b.BookingTime 
FROM Bookings b
JOIN Customers c on c.CustomerID= b.CustomerID
JOIN Shows s on s.ShowID=b.ShowID
JOIN Movies m on s.MovieID=m.MovieID

--Cus 1	JN	150	2026-03-01 18:00:00.0000000	250.00	2026-02-23 16:54:06.4993777
