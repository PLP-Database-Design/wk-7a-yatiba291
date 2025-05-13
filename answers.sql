-- Question 1
-- Create the ProductDetail table
-- This table contains the OrderID, CustomerName, and Products
CREATE TABLE ProductDetail (
OrderID INT,
CustomerName VARCHAR(100),
Products VARCHAR(100)
);
INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


-- Question 2
-- Create the orders1 table
CREATE TABLE orders1(
OrderID INT PRIMARY KEY,
customerName VARCHAR(100)
);
INSERT INTO orders1 (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');
-- Product table
CREATE TABLE product(
product_id INT primary key,
productName varchar(100),
quantity INT,
order_id INT,
foreign key(order_id) references orders1(OrderID)
);
insert into product(product_id,productName,quantity,order_id)
values
(1,'laptop',2,101),
(2,'Mouse',1,101),
(3,'Tablet',3,102),
(4,'Keyboard',2,102),
(5,'Mouse',1,102),
(6,'Phone',1,103);