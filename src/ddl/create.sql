CREATE DATABASE ShowBook;
GO
USE ShowBook;
GO

CREATE TABLE Movies (
    MovieID INT IDENTITY(1,1),
    Title NVARCHAR(100) NOT NULL,
    DurationMinutes INT NOT NULL
);

CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(200)
);

CREATE TABLE Shows (
    ShowID INT IDENTITY(1,1),
    MovieID INT NOT NULL,
    ShowTime DATETIME2 NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Bookings (
    BookingID INT IDENTITY(1,1),
    CustomerID INT NOT NULL,
    ShowID INT NOT NULL,
    BookingTime DATETIME2 NOT NULL DEFAULT SYSDATETIME()
);


CREATE INDEX IX_Movies_Title ON Movies(Title);
CREATE INDEX IX_Shows_ShowTime ON Shows(ShowTime);
CREATE INDEX IX_Bookings_ShowID ON Bookings(ShowID);

