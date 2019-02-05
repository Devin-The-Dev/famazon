CREATE DATABASE famazon;
--Create a MySQL Database called `bamazon`.

USE famazon;

CREATE TABLE products --Then create a Table inside of that database called `products`.
(
    PRIMARY KEY (item_id),
    item_id INT UNIQUE NOT NULL,
    product_name VARCHAR(50),
    department_name VARCHAR(50)UNIQUE,
    price INT(10),
    stock_quantity INT(10)
);
--Populate database with around 10 different products.

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (1, 'Shoes', 'Footwear', 24.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (2, 'Sandals', 'Footwear', 14.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (3, 'Heels', 'Footwear', 34.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (4, 'Gloves', 'Handwear', 6.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5, 'Mittens', 'Handwear', 4.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (6, 'Beanie', 'Headwear', 9.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (7, 'Helmet', 'Headwear', 14.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (8, 'Jeans', 'Pant', 19.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (9, 'T-shirt', 'Shirt', 14.99, 100);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (10, 'Dress Shirt', 'Shirt', 14.99, 100);

SELECT *
FROM products;