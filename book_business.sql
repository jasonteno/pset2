DROP DATABASE IF EXISTS library;
CREATE DATABASE IF NOT EXISTS library;
USE library;

SET NAMES utf8mb4;
SET character_set_client = utf8mb4;

-- ------------------------------- --
-- TABLE AUTHORS --
-- ------------------------------- --

CREATE TABLE Authors	(
	AuthorID				int NOT NULL AUTO_INCREMENT,
    First_Name 				varchar(20) NULL,
    Last_Name				varchar(20) NOT NULL,
    Age						int NULL,
    City					varchar(20) NULL,
    State					varchar(20) NULL,
    Published_Book_Num		int NULL,
	PRIMARY KEY (AuthorID),
    INDEX AuthorID (AuthorID ASC),
    INDEX Last_Name (Last_Name ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------- --
-- TABLE PUBLISHERS --
-- ------------------------------- --

CREATE TABLE Publishers	(
	PublisherID			int NOT NULL AUTO_INCREMENT,
    Address_Num 		int NULL,
    Street_Name			varchar(20) NULL,
    City				varchar(20) NULL,
    State				varchar(20) NULL,
    Country				varchar(20) NULL,
	PRIMARY KEY (PublisherID),
    INDEX PublisherID (PublisherID ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------- --
-- TABLE Editors --
-- ------------------------------- --

CREATE TABLE Editors	(
	EditorID			int NOT NULL AUTO_INCREMENT,
    First_Name 			varchar(20) NULL,
    Last_Name			varchar(20) NOT NULL,
    Age					varchar(20) NULL,
    City				varchar(20) NULL,
    State				varchar(20) NULL,
    PublisherID			int NOT NULL,
	PRIMARY KEY (EditorID),
    INDEX EditorID (EditorID ASC),
    INDEX Last_Name (Last_Name ASC),
    FOREIGN KEY (PublisherID) REFERENCES Publishers (PublisherID)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


-- ------------------------------- --
-- TABLE BOOKS --
-- ------------------------------- --

CREATE TABLE Books	(
	IBSN				int NOT NULL AUTO_INCREMENT,
    Title 				varchar(100) NOT NULL,
    Num_of_Pages		int NOT NULL,
    Genre				varchar(20) NULL,
    Subgenre			varchar(20) NULL,
    Author_Name			varchar(20) NULL,
    Editor_Name			varchar(20) NULL,
    Royalties			double NOT NULL,
    AuthorID			int NOT NULL,
    PublisherID			int NOT NULL,
    EditorID			int NOT NULL,
	PRIMARY KEY (IBSN),
    INDEX IBSN (IBSN ASC),
    INDEX AuthorID (AuthorID ASC),
    FOREIGN KEY (AuthorID) REFERENCES Authors (AuthorID)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION,
	FOREIGN KEY (PublisherID) REFERENCES Publishers (PublisherID)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION,
	FOREIGN KEY (EditorID) REFERENCES Editors (EditorID)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------- --
-- TABLE Sales_Orders --
-- ------------------------------- --

CREATE TABLE Sales_Orders	(
	SO_Number				int NOT NULL AUTO_INCREMENT,
    Line_Item_Number 		int NOT NULL,
    Sales_Date				date NOT NULL,
    Customer_Name			varchar(20) NULL,
    Shipping_Address		varchar(20) NULL,
    IBSN					int NOT NULL,
    CustomerID				int NOT NULL,
	PRIMARY KEY (SO_Number),
    INDEX SO_Number (SO_Number ASC),
    INDEX Line_Item_Number (Line_Item_Number ASC),
    FOREIGN KEY (IBSN) REFERENCES Books (IBSN)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
