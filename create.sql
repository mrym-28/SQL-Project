CREATE TABLE Members (
    Member_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Join_Date DATE
);

CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(150),
    Author VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    Copies INT
);

CREATE TABLE Borrow (
    Borrow_ID SERIAL PRIMARY KEY,
    Member_ID INT,
    Book_ID INT,
    Borrow_Date DATE,
    Return_Date DATE,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
