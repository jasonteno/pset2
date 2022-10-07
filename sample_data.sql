-- ---------------------- --
-- Populate Authors --
-- ---------------------- --

INSERT INTO Authors VALUES(1,'Doctor','Seuss',102,'Whoville','MA',500);
INSERT INTO Authors VALUES(2,'Edgar Allen','Poe',258,'Baltimore','MD',23);
INSERT INTO Authors VALUES(3,'Mary','Shelley',198,'Frankenstein','MA',2);
INSERT INTO Authors VALUES(4,'Ernest','Hemingway',99,'Shotgun','HI',58);
INSERT INTO Authors VALUES(5,'Harper','Lee',86,'Boo Radley','AL',2);

-- ---------------------- --
-- Populate Publishers --
-- ---------------------- --

INSERT INTO Publishers VALUES(1, 10, 'Main', 'Ann Arbor', 'MI', 'USA');
INSERT INTO Publishers VALUES(2, 20, 'Elm', 'Madrid', NULL, 'Spain');
INSERT INTO Publishers VALUES(3, 30, 'First', 'Cambridge', 'MA', 'USA');
INSERT INTO Publishers VALUES(4, 40, 'Second', 'Boston', 'MA', 'USA');
INSERT INTO Publishers VALUES(5, 50, 'Third', 'New York City', 'NY', 'USA');


-- ---------------------- --
-- Populate Editors --
-- ---------------------- --

INSERT INTO Editors VALUES(1, 'Steve', 'Harvey', 60, 'Los Angeles', 'CA', 2);
INSERT INTO Editors VALUES(2, 'Elmo', 'Big Bird', 6, 'Sesame Street', 'NY', 2);
INSERT INTO Editors VALUES(3, 'Kanye', 'West', 45, 'Cheyenne', 'WY', 4);
INSERT INTO Editors VALUES(4, 'Jay', 'Z', 51, 'Bozeman', 'MT', 1);
INSERT INTO Editors VALUES(5, 'Jeff', 'Bezos', 50, 'Seattle', 'WA', 5);

-- ---------------------- --
-- Populate Books --
-- ---------------------- --

INSERT INTO Books VALUES(1, 'The Raven', 68, 'Mystery', 'Thriller', 'Edgar Allen Poe', 'Jeff Bezos', 15.69, '2', '5', '5');
INSERT INTO Books VALUES(2, 'Hop on Pop', 22, 'Kids', 'Hip Hop', 'Doctor Seuss', 'Jay Z', 22.22, '1', '4', '1');
INSERT INTO Books VALUES(3, 'To Kill a Bird', 321, 'Drama', 'Courtroom', 'Harper Lee', 'Steve Harvey', 123.22, '5', '1', '2');
INSERT INTO Books VALUES(4, 'A Farewell to Arms', 323, 'Drama', 'War', 'Ernest Hemingway', 'Elmo Big Bird', 324.20, '4', '2', '2');
INSERT INTO Books VALUES(5, 'Frankenstein', 311, 'Drama', 'Monster Mash', 'Mary Shelley', 'Steve Harvey', 90.11, '3', '1', '2');

-- ---------------------- --
-- Sales_Orders --
-- ---------------------- --

INSERT INTO Sales_Orders VALUES(1, 1, '2022-10-06', 'Jason Teno', '123 Main', 3, 1);
INSERT INTO Sales_Orders VALUES(2, 1, '2022-10-06', 'John Williams', '123 MIT', 2, 5);
INSERT INTO Sales_Orders VALUES(3, 1, '2022-10-06', 'Abel Sanchez', '456 MIT', 1, 2);
INSERT INTO Sales_Orders VALUES(4, 1, '2022-10-06', 'Rafael Reif', '789 MIT', 4, 4);
INSERT INTO Sales_Orders VALUES(5, 1, '2022-10-06', 'Mary Sue Coleman', '12 State St', 5, 3);