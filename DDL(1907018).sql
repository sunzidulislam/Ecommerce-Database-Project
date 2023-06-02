--drop sequence

drop table OrderItem;
drop table Confirmation;
drop table Product;
drop table Customer;

CREATE TABLE Customer (
    customer_id INT NOT NULL,
    Name VARCHAR(255),
    PhoneNo INT NOT NULL,
    Status VARCHAR(255),
    Address VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE Product (
    id_product INT NOT NULL,
    name_product VARCHAR(255) NULL,
    description VARCHAR(255) NULL,
    customer_id INT NOT NULL,
    price INT NULL,
    stock VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_product),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE Confirmation (
    id_order INT NOT NULL,
    id_product INT NOT NULL,
    shipping_address VARCHAR(255) NOT NULL,
    shipping_date DATE,
    PRIMARY KEY (id_order),
    payment VARCHAR(255),
    FOREIGN KEY (id_product) REFERENCES Product(id_product) ON DELETE CASCADE
);

CREATE TABLE OrderItem (
    id_orderitem INT NOT NULL,
    id_order INT NOT NULL,
    quantity INT NOT NULL,
    date_time VARCHAR(32) NOT NULL,
    PRIMARY KEY (id_orderitem),
    FOREIGN KEY (id_order) REFERENCES Confirmation(id_order) ON DELETE CASCADE
);



ALTER TABLE Customer ADD Test_column varchar(10);
ALTER TABLE Customer ADD (T1 integer,T2 integer,T3 integer);
ALTER TABLE Customer MODIFY Test_column integer;
ALTER TABLE Customer MODIFY (T1 varchar(10),T2 varchar(10), T3 varchar(10));
ALTER TABLE Customer RENAME COLUMN Test_column to T0;
ALTER TABLE Customer DROP COLUMN T0;
ALTER TABLE Customer DROP COLUMN T1;
ALTER TABLE Customer DROP COLUMN T2;
ALTER TABLE Customer DROP COLUMN T3;