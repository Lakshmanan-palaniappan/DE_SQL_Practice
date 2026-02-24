USE ShowBook;
GO

CREATE PROCEDURE get_movies AS
BEGIN
SELECT c.FullName,m.Title,s.ShowTime,s.Price
FROM Bookings b
JOIN Shows s ON s.ShowID=b.ShowID
JOIN Movies m ON m.MovieID=s.MovieID
JOIN Customers c ON c.CustomerID=b.CustomerID
END

CREATE PROCEDURE get_movie_by_name @movie NVARCHAR(100) AS
BEGIN
SELECT * FROM Movies WHERE Title=@movie
END

EXEC get_movie_by_name 'Leo'
EXEC get_movies