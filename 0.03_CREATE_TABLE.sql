CREATE DATABASE SQL_LIBRARY;

CREATE TABLE PRODUCTS(
	[ProductID][int] NOT NULL,
	[ProductName][nvarchar](25) NOT NULL,
	[Price][money],
	[Productdescription][text],
	PRIMARY KEY (ProductID)
);
