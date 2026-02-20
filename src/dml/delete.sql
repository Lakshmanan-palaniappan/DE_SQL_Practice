USE ShowBook;
GO

DELETE FROM Movies
WHERE Title = 'GOAT';



DELETE b
FROM Bookings b
JOIN Shows s ON b.ShowID = s.ShowID
JOIN Movies m ON s.MovieID = m.MovieID
WHERE m.Title = 'Leo';
