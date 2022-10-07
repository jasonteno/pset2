-- Query 7.1 --
SELECT A.First_Name, A.Last_Name, B.Title
FROM Authors A
INNER JOIN Books B on A.AuthorID = B.AuthorID;

-- Query 7.2 --
SELECT A.First_Name, A.Last_Name, COUNT(IBSN)
FROM Authors A
INNER JOIN Books B on A.AuthorID = B.AuthorID
GROUP BY A.First_Name, A.Last_Name;

-- Query 7.3 --
SELECT A.First_Name, A.Last_Name, B.Title, B.Royalties
FROM Authors A
INNER JOIN Books B on A.AuthorID = B.AuthorID;

-- Query 7.4 --
SELECT A.First_Name, A.Last_Name, SUM(B.Royalties)
FROM Authors A
INNER JOIN Books B on A.AuthorID = B.AuthorID
GROUP BY A.First_Name, A.Last_Name;

-- Query 7.5 --
SELECT Genre, Title
FROM Books;

-- Query 7.6 --
SELECT P.PublisherID, COUNT(B.IBSN)
FROM Publishers P
INNER JOIN Books B on P.PublisherID = B.PublisherID
GROUP BY PublisherID;

-- Query 7.7 --
SELECT E.First_Name, E.Last_Name, B.Title
FROM Editors E
INNER JOIN Books B ON E.EditorID = B.EditorID;

-- Query 7.8 --
SELECT E.First_Name, E.Last_Name, COUNT(IBSN)
FROM Editors E
INNER JOIN Books B ON E.EditorID = B.EditorID
GROUP BY E.First_Name, E.Last_Name;

-- Query 7.9 --
SELECT SO_Number, B.Title
FROM Sales_Orders SO
INNER JOIN Books B on SO.IBSN = B.IBSN;

-- Query 7.10 --
SELECT B.Title, COUNT(SO_Number)
FROM Sales_Orders SO
INNER JOIN Books B on SO.IBSN = B.IBSN
GROUP BY B.Title;

-- Query 7.11 --
SELECT * 
FROM Sales_Orders;

-- Query 7.12 --
SELECT Customer_Name, COUNT(SO_Number)
FROM Sales_Orders SO
GROUP BY Customer_Name;