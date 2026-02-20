USE ShowBook;
GO

INSERT INTO Movies (Title, DurationMinutes)
VALUES ('Leo', 148);

INSERT INTO Movies (Title, DurationMinutes)
VALUES
('GOAT', 169),
('JN', 150);


INSERT INTO Customers (FullName, Email)
VALUES
('Cus 1', 'cus1@test.com'),
('Cus 2', 'cus2@test.com');



INSERT INTO Shows (MovieID, ShowTime, Price)
SELECT MovieID, '2026-03-01 18:00:00', 250.00
FROM Movies
WHERE Title = 'Leo';
