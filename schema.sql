CREATE TABLE Products (
    Id int IDENTITY PRIMARY KEY,
    Name nvarchar(50) NOT NULL,
    UnitPrice money NOT NULL,
    QuantityInInventory int NOT NULL,
    IsActive bit NOT NULL
);

CREATE TABLE Customers (
    Id int IDENTITY PRIMARY KEY,
    Name nvarchar(50) NOT NULL,
    Email nvarchar(255) NOT NULL,
    Address nvarchar(255) NOT NULL,
    JoinDate datetime NOT NULL
);

CREATE TABLE Orders (
    Id int IDENTITY PRIMARY KEY,
    CustomerId int NOT NULL CONSTRAINT FK_CustomerId FOREIGN KEY REFERENCES Customers(Id),
    ProductId int NOT NULL CONSTRAINT FK_ProductId FOREIGN KEY REFERENCES Products(Id),
    UnitPrice money NOT NULL,
    Quantity int NOT NULL,
    OrderDate datetime NOT NULL,
    ShippedDate datetime
);

