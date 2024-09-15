-- queries.sql

-- Retrieve all customers
SELECT * FROM Customer;

-- Retrieve all products
SELECT * FROM Product;

-- Retrieve all orders along with customer and product details
SELECT Customer.Customer_Name, Product.Product_Name, Orders.Quantity, Orders.Total_amount
FROM Orders
JOIN Customer ON Orders.Customer_id = Customer.Customer_id
JOIN Product ON Orders.Product_id = Product.Product_id;
