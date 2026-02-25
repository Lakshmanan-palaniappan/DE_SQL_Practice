USE ShowBook;
GO
SELECT
    ShowID,
    Price,
    RANK() OVER (ORDER BY Price DESC)        AS price_rank,
    DENSE_RANK() OVER (ORDER BY Price DESC)  AS dense_price_rank
FROM Shows;

SELECT
    ShowID,
    ShowTime
    price,
    LAG(Price)  OVER (ORDER BY ShowTime) AS previous_price,
    LEAD(Price) OVER (ORDER BY ShowTime) AS next_price
FROM Shows;


SELECT
    MovieID,
    ShowID,
    ShowTime,
    price,
    FIRST_VALUE(Price) OVER (
        PARTITION BY MovieID
        ORDER BY ShowTime
    ) AS first_price_per_movie
FROM Shows;


SELECT
    MovieID,
    ShowID,
    ShowTime,
    price,
    LAST_VALUE(Price) OVER (
        PARTITION BY MovieID
        ORDER BY ShowTime
    ) AS last_price_per_movie
FROM Shows;

