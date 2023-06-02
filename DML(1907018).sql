
-- Inserting data into the Customer table
INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES
  (1, 'John Doe', 1234567890, 'Active', '123 Main St', 'john.doe@example.com');
 INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES (2, 'Jane Smith', 9876543210, 'Active', '456 Elm St', 'jane.smith@example.com');
  INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES (3, 'Mike Johnson', 5555555555, 'Inactive', '789 Oak Ave', 'mike.johnson@example.com');
 INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES (4, 'Emily Davis', 1111111111, 'Active', '321 Maple Dr', 'emily.davis@example.com');
INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES (5, 'Michael Brown', 2222222222, 'Active', '567 Pine Ln', 'michael.brown@example.com');
 INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES (6, 'Olivia Wilson', 3333333333, 'Inactive', '890 Oak St', 'olivia.wilson@example.com');
INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES  (7, 'Ethan Taylor', 4444444444, 'Active', '654 Cedar Rd', 'ethan.taylor@example.com');
INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES  (8, 'Sophia Anderson', 5555555555, 'Active', '987 Elm Ave', 'sophia.anderson@example.com');
 INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES (9, 'Matthew Martinez', 6666666666, 'Active', '321 Oak Dr', 'matthew.martinez@example.com');
 INSERT INTO Customer (customer_id, Name, PhoneNo, Status, Address, Email)
VALUES (10, 'Ava Hernandez', 7777777777, 'Inactive', '456 Pine St', 'ava.hernandez@example.com');


-- Inserting data into the Product table
INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES
  (1, 'Product 1', 'Description 1', 1, 10, 'In Stock', 'Model 1');
INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES  (2, 'Product 2', 'Description 2', 1, 15, 'In Stock', 'Model 2');
INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES  (3, 'Product 3', 'Description 3', 2, 20, 'In Stock', 'Model 3');
INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES  (4, 'Product 4', 'Description 4', 2, 25, 'In Stock', 'Model 4');
INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES  (5, 'Product 5', 'Description 5', 3, 30, 'In Stock', 'Model 5');
INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES  (6, 'Product 6', 'Description 6', 3, 35, 'In Stock', 'Model 6');
INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES  (7, 'Product 7', 'Description 7', 4, 40, 'In Stock', 'Model 7');
 INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES (8, 'Product 8', 'Description 8', 4, 45, 'In Stock', 'Model 8');
 INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES (9, 'Product 9', 'Description 9', 5, 50, 'In Stock', 'Model 9');
INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
VALUES  (10, 'Product 10', 'Description 10', 5, 55, 'In Stock', 'Model 10');


-- Inserting data into the Confirmation table
INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES (1, 1, '123 Main St',TO_DATE('14-SEP-2000', 'DD-MON-YYYY'), 'Credit Card');
INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES  (2, 2, '456 Elm St', TO_DATE('14-APR-2000', 'DD-MON-YYYY'), 'PayPal');
INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES  (3, 3, '789 Oak Ave', TO_DATE('15-APR-2000', 'DD-MON-YYYY'), 'Credit Card');
 INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES (4, 4, '321 Maple Dr', TO_DATE('17-SEP-2000', 'DD-MON-YYYY'), 'PayPal');
 INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES (5, 5, '567 Pine Ln', TO_DATE('24-SEP-2001', 'DD-MON-YYYY'), 'Credit Card');
 INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES (6, 6, '890 Oak St', TO_DATE('14-JAN-2000', 'DD-MON-YYYY'), 'PayPal');
 INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES (7, 7, '654 Cedar Rd', TO_DATE('14-OCT-2000', 'DD-MON-YYYY'), 'Credit Card');
 INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES (8, 8, '987 Elm Ave', TO_DATE('14-SEP-2000', 'DD-MON-YYYY'), 'PayPal');
 INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES (9, 9, '321 Oak Dr', TO_DATE('14-OCT-2000', 'DD-MON-YYYY'), 'Credit Card');
 INSERT INTO Confirmation (id_order, id_product, shipping_address, shipping_date, payment)
VALUES (10, 10, '456 Pine St', TO_DATE('14-SEP-2000', 'DD-MON-YYYY'), 'PayPal');


-- Inserting data into the OrderItem table

INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES
  (1, 1, 2, '2023-05-30 10:00:00');
INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES  (2, 1, 3, '2023-05-30 11:30:00');
INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES  (3, 2, 1, '2023-05-31 09:45:00');
INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES  (4, 3, 4, '2023-06-01 14:20:00');
INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES  (5, 4, 2, '2023-06-02 16:35:00');
INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES  (6, 5, 1, '2023-06-03 12:15:00');
INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES  (7, 5, 3, '2023-06-03 13:45:00');
 INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES (8, 6, 2, '2023-06-04 10:30:00');
 INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES (9, 6, 1, '2023-06-04 11:45:00');
INSERT INTO OrderItem (id_orderitem, id_order, quantity, date_time)
VALUES  (10, 7, 5, '2023-06-05 15:00:00');



select * from Customer;
select * from Product;
select * from Confirmation;
select * from Orderitem;


select name_product from Product;

select customer_id from Customer;

select * from Customer where customer_id between 2 AND 6;
select * from Customer where customer_id IN (2,6);

select * from Product where description LIKE '%tion';
select * from Product where stock LIKE '%k';
select id_product from Product where stock LIKE '%k';

--Aggregrate functions

select MAX(quantity) from Orderitem;
select MIN(quantity) from Orderitem;

select COUNT(id_product) from Product;

select SUM(quantity) from Orderitem;

--Group By,Having

SELECT Status, COUNT(*) as num_customers
FROM Customer
GROUP BY Status;

SELECT Status, COUNT(*) as num_customers
FROM Customer
GROUP BY Status
HAVING COUNT(*) > 5;

--This example groups the products by the customer_id column and calculates the average price for each customer

SELECT customer_id, AVG(price) as avg_price
FROM Product
GROUP BY customer_id;

--group the products by both the customer_id and model columns
SELECT customer_id, model, COUNT(*) as num_products
FROM Product
GROUP BY customer_id, model
HAVING COUNT(*) > 3;

--This example groups the products by the customer_id column and finds the maximum price for each customer
SELECT customer_id, MAX(price) as max_price
FROM Product
GROUP BY customer_id;

--nested query
SELECT id_product, name_product, price
FROM Product
WHERE id_product IN (SELECT id_product FROM OrderItem);

-- Using a nested query to find products with the highest price
SELECT id_product, name_product, price
FROM Product
WHERE price = (SELECT MAX(price) FROM Product);

-- Using a nested query to find products with no orders
SELECT id_product, name_product, price
FROM Product
WHERE id_product NOT IN (SELECT id_product FROM OrderItem);

--Union
---Combining customer names from the Customer table and product names from the Product table

SELECT Name AS result
FROM Customer
UNION
SELECT name_product AS result
FROM Product;

--Combining customer IDs from the Customer table and product IDs from the Product table
SELECT customer_id AS result
FROM Customer
UNION
SELECT customer_id AS result
FROM Product;

-- INTERSECT
--Finding common customer IDs between the Customer and Product tables
SELECT customer_id
FROM Customer
INTERSECT
SELECT customer_id
FROM Product;

--Join

--Inner Join between Customer and Product tables based on customer_id
SELECT Customer.customer_id, Customer.Name, Product.name_product
FROM Customer
INNER JOIN Product ON Customer.customer_id = Product.customer_id;


-- Left Join between Product and Confirmation tables based on id_product:
SELECT Product.id_product, Product.name_product, Confirmation.shipping_address
FROM Product
LEFT JOIN Confirmation ON Product.id_product = Confirmation.id_product;

--Right Join between Customer and Product tables based on customer_id

SELECT Customer.customer_id, Customer.Name, Product.name_product
FROM Customer
RIGHT JOIN Product ON Customer.customer_id = Product.customer_id;

--Natural Join between Customer and Product tables
SELECT *
FROM Customer
NATURAL JOIN Product;

--Cartesian Join between Customer and Product tables
SELECT *
FROM Customer
CROSS JOIN Product;

-- Full Outer Join between Customer and Product tables based on customer_id
SELECT *
FROM Customer
FULL OUTER JOIN Product ON Customer.customer_id = Product.customer_id;






