USE ShowBook;
GO
CREATE VIEW shows_with_movies
AS
SELECT
    s.ShowID,
    m.Title AS MovieTitle,
    s.ShowTime,
    s.Price
FROM Shows s
JOIN Movies m
  ON m.MovieID = s.MovieID;
GO


SELECT * FROM shows_with_movies