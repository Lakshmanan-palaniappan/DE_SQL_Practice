USE ShowBook;
GO

WITH m_wo_S AS (
    SELECT DISTINCT m.MovieID
    FROM Movies m
    JOIN Shows s ON m.MovieID = s.MovieID
)
SELECT m.Title
FROM Movies m
LEFT JOIN m_wo_s ms ON m.MovieID = ms.MovieID
WHERE ms.MovieID IS NULL;


