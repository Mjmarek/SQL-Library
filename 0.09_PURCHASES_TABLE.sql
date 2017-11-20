USE SQL_Library;    
GO    

CREATE TABLE dbo.Purchases (
    PurchaseID INT IDENTITY (1, 1) NOT NULL,
    ProductID  INT NOT NULL,
    CustomerID INT NOT NULL,
    Quantity   INT NULL,
    CONSTRAINT [PK_dbo.Purchases] PRIMARY KEY CLUSTERED ([PurchaseID] ASC),
    CONSTRAINT [FK_dbo.Purchases_dbo.Customer_CustomerID] FOREIGN KEY ([CustomerID]) 
		REFERENCES [dbo].[Customers] ([CustomerID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Purchases_dbo.PRODUCTS_ProductID] FOREIGN KEY ([ProductID]) 
		REFERENCES [dbo].[PRODUCTS] ([ProductID]) ON DELETE CASCADE
);

GO
CREATE NONCLUSTERED INDEX [IX_ProductID]
    ON [dbo].[Purchases]([ProductID] ASC);

GO
CREATE NONCLUSTERED INDEX [IX_CustomerID]
    ON [dbo].[Purchases]([CustomerID] ASC);