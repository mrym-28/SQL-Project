-- Create Tables

CREATE TABLE Members (
    Member_ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Join_Date DATE
);

CREATE TABLE Books (
    Book_ID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(150),
    Author VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    Copies INT
);

CREATE TABLE Borrow (
    Borrow_ID INT IDENTITY(1,1) PRIMARY KEY,
    Member_ID INT,
    Book_ID INT,
    Borrow_Date DATE,
    Return_Date DATE,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

-- Insert Data into Members
INSERT INTO Members (Name, Email, Join_Date) VALUES
('Ali Khan', 'ali.khan@example.com', '2025-01-10'),
('Sara Ahmed', 'sara.ahmed@example.com', '2025-02-15');

-- Insert Data into Books
INSERT INTO Books (Title, Author, ISBN, Copies) VALUES
('Database Systems', 'C.J. Date', '9780133970777', 3),
('Clean Code', 'Robert C. Martin', '9780132350884', 2);

-- Insert Data into Borrow
INSERT INTO Borrow (Member_ID, Book_ID, Borrow_Date, Return_Date) VALUES
(1, 1, '2025-05-01', '2025-05-10'),
(2, 2, '2025-05-05', NULL);

-- Update Book Information
UPDATE Books SET Copies = 4 WHERE Book_ID = 1;

-- Delete a Member
DELETE FROM Members WHERE Member_ID = 2;

-- Join Query: Get Borrowing History
SELECT m.Name, b.Title, br.Borrow_Date, br.Return_Date
FROM Borrow br
JOIN Members m ON br.Member_ID = m.Member_ID
JOIN Books b ON br.Book_ID = b.Book_ID;
