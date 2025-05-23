INSERT INTO Members (Name, Email, Join_Date) VALUES
('Ali Khan', 'ali.khan@example.com', '2025-01-10'),
('Sara Ahmed', 'sara.ahmed@example.com', '2025-02-15');

INSERT INTO Books (Title, Author, ISBN, Copies) VALUES
('Database Systems', 'C.J. Date', '9780133970777', 3),
('Clean Code', 'Robert C. Martin', '9780132350884', 2);

INSERT INTO Borrow (Member_ID, Book_ID, Borrow_Date, Return_Date) VALUES
(1, 1, '2025-05-01', '2025-05-10'),
(2, 2, '2025-05-05', NULL);
