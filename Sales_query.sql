CREATE database RetailSalesData;
USE RetailSalesData;

CREATE TABLE Sales_Data_Transaction (
Customer_id VARCHAR(255),
trans_date DATETIME,
tran_amount INT);

CREATE TABLE Sales_Data_Response (
Customer_id VARCHAR(255) PRIMARY KEY,
response INT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transaction
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

SELECT * FROM Sales_Data_Transaction;
SELECT * FROM Sales_Data_Transaction LIMIT 10;


CREATE INDEX idx_id ON Sales_Data_Transaction(CUSTOMER_ID);

EXPLAIN SELECT * FROM Sales_Data_Transaction WHERE CUSTOMER_ID='CS5295';



