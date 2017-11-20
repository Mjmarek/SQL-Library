Select * From dbo.PRODUCTS

Select * From PRODUCTS

Select ProductName, Price From PRODUCTS;

Select * From PRODUCTS
Where ProductID < 8;

Select * from PRODUCTS
Where Price = 8.6200;

Select * from Products
Where Productdescription LIKE 'Tool%';

Select AVG(Price) as AveragePrice
From PRODUCTS;

Select ProductName, ((.07 * Price) + Price) as CustomerPays
From PRODUCTS;