SELECT m.Name, b.Title, br.Borrow_Date, br.Return_Date
FROM Borrow br
JOIN Members m ON br.Member_ID = m.Member_ID
JOIN Books b ON br.Book_ID = b.Book_ID;
