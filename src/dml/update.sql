USE ShowBook;
GO

UPDATE Movies
SET DurationMinutes = 150
WHERE Title = 'Leo';


UPDATE s
SET s.Price = s.Price + 50
FROM Shows s
JOIN Movies m ON s.MovieID = m.MovieID
WHERE m.Title = 'Leo';