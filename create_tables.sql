sql
-- create_tables.sql  
  
CREATE DATABASE IF NOT EXISTS global_super_store;  
USE global_super_store;  
  
CREATE TABLE products (  
    product_id INT AUTO_INCREMENT PRIMARY KEY,  
    product_name VARCHAR(255) NOT NULL,  
    category VARCHAR(255) NOT NULL,  
    ...  
);  
  
CREATE TABLE sales (  
    sale_id INT AUTO_INCREMENT PRIMARY KEY,  
    product_id INT,  
    customer_id INT,  
    sale_date DATE,  
    amount DECIMAL(10, 2) NOT NULL,  
    FOREIGN KEY (product_id) REFERENCES products(product_id),  
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)