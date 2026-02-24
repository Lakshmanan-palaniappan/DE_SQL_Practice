USE ShowBook;
GO

SELECT m.MovieID, m.Title, s.ShowID, s.ShowTime, s.Price
FROM Movies m
FULL OUTER JOIN Shows s ON m.MovieID = s.MovieID;
