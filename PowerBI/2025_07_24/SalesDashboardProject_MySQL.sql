
-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    UnitPrice DECIMAL(10,2)
);

-- Create Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert into Customers
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'Canada'),
(3, 'Charlie', 'UK'),
(4, 'Diana', 'India'),
(5, 'Eva', 'Germany');

-- Insert into Products
INSERT INTO Products (ProductID, ProductName, Category, UnitPrice) VALUES
(101, 'Laptop', 'Electronics', 800.00),
(102, 'Smartphone', 'Electronics', 500.00),
(103, 'Desk Chair', 'Furniture', 150.00),
(104, 'Notebook', 'Stationery', 5.00),
(105, 'Pen Pack', 'Stationery', 2.00);

-- Insert into Sales
INSERT INTO Sales (CustomerID, ProductID, Quantity, SaleDate) VALUES
(1, 101, 1, '2024-01-10'),
(2, 102, 2, '2024-01-15'),
(3, 103, 3, '2024-02-05'),
(4, 104, 10, '2024-03-01'),
(1, 105, 5, '2024-03-10'),
(5, 102, 1, '2024-03-12'),
(2, 103, 2, '2024-04-01'),
(3, 104, 20, '2024-04-15'),
(4, 101, 1, '2024-04-20'),
(5, 105, 10, '2024-05-05');
