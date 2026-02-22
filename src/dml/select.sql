USE ShowBook;
GO

SELECT * FROM Movies;


SELECT * FROM Movies;


SELECT *
FROM Shows
WHERE Price > 200;



SELECT TOP 2 *
FROM Movies
ORDER BY DurationMinutes DESC;



SELECT *
FROM Movies
ORDER BY MovieID
OFFSET 0 ROWS FETCH NEXT 2 ROWS ONLY;



--Deleting Something