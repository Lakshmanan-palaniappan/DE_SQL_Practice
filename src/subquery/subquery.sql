USE ShowBook;
GO

SELECT c.FullName, MB.Title, s.Price, s.ShowTime
FROM (
    SELECT m.MovieID, m.Title, MIN(s.Price) AS MinPrice
    FROM Shows s
    JOIN Movies m ON m.MovieID = s.MovieID
    GROUP BY m.MovieID, m.Title
) MB
JOIN Shows s ON s.MovieID = MB.MovieID AND s.Price = MB.MinPrice
JOIN Bookings b ON b.ShowID = s.ShowID
JOIN Customers c ON c.CustomerID = b.CustomerID;


SELECT m.Title, s.Price
FROM Movies m
JOIN Shows s ON m.MovieID = s.MovieID
WHERE s.Price = (
    SELECT MIN(s2.Price)
    FROM Shows s2
    WHERE s2.MovieID = m.MovieID
);
