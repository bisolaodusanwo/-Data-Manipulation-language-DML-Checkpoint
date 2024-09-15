-- create_tables.sql

-- Create Customer table
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(50) NOT NULL,
    Customer_Tel VARCHAR2(15)
);

-- Create Product table
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(50) NOT NULL,
    Category VARCHAR2(30),
    Price NUMBER
);

-- Create Orders table
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    OrderDate DATE,
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_Product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);
