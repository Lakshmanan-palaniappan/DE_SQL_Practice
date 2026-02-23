USE ShowBook;
GO
SELECT COUNT(*) as Total_Bookings FROM Bookings

SELECT m.Title,MAX(Price) as high_fare_film
FROM Shows s
JOIN Movies m ON m.MovieID=s.MovieID
GROUP BY m.Title


SELECT m.Title,MIN(Price) as low_fare_film
FROM Shows s
JOIN Movies m ON m.MovieID=s.MovieID
GROUP BY m.Title

SELECT SUM(Price) as total_price
FROM Shows

SELECT ShowID, COUNT(*) AS BookingCount 
FROM Bookings 
GROUP BY ShowID 
HAVING COUNT(*) > 1; 

SELECT * FROM Movies
ORDER BY DurationMinutes DESC