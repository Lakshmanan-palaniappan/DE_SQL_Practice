USE ShowBook;
GO

SELECT c.FullName, m.Title,m.DurationMinutes,s.showTime,s.Price,b.BookingTime 
FROM Bookings b
JOIN Customers c on c.CustomerID= b.CustomerID
JOIN Shows s on s.ShowID=b.ShowID
JOIN Movies m on s.MovieID=m.MovieID
--Cus 1	JN	150	2026-03-01 18:00:00.0000000	250.00	2026-02-23 17:21:13.1912254
--Cus 1	JN	150	2026-03-01 18:00:00.0000000	250.00	2026-02-23 17:25:07.3332703

BEGIN TRANSACTION
INSERT INTO Bookings(CustomerID,ShowID) VALUES (2,1)
SAVE TRANSACTION ins

SELECT c.FullName, m.Title,m.DurationMinutes,s.showTime,s.Price,b.BookingTime 
FROM Bookings b
JOIN Customers c on c.CustomerID= b.CustomerID
JOIN Shows s on s.ShowID=b.ShowID
JOIN Movies m on s.MovieID=m.MovieID


BEGIN TRANSACTION
UPDATE Movies SET Title ='GOAT' WHERE MovieID=1
SAVE TRANSACTION upd


SELECT c.FullName, m.Title,m.DurationMinutes,s.showTime,s.Price,b.BookingTime 
FROM Bookings b
JOIN Customers c on c.CustomerID= b.CustomerID
JOIN Shows s on s.ShowID=b.ShowID
JOIN Movies m on s.MovieID=m.MovieID

ROLLBACK TRANSACTION ins

SELECT c.FullName, m.Title,m.DurationMinutes,s.showTime,s.Price,b.BookingTime 
FROM Bookings b
JOIN Customers c on c.CustomerID= b.CustomerID
JOIN Shows s on s.ShowID=b.ShowID
JOIN Movies m on s.MovieID=m.MovieID

