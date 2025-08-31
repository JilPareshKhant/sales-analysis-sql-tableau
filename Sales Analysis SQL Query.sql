USE company_sales;
ALTER TABLE sales_data_sample RENAME TO raw_sales;

-- Dataset Strucure and content 

SELECT * FROM raw_sales;



-- Total number of records in the raw dataset

SELECT count(*) AS total_records
FROM raw_sales;


 
-- Identify NULL or missing values in Columns 

SELECT
SUM(CASE WHEN ORDERNUMBER IS NULL THEN 1 ELSE 0 END) AS missing_order_number,
SUM(CASE WHEN QUANTITYORDERED IS NULL THEN 1 ELSE 0 END) AS missing_quantity,
SUM(CASE WHEN PRICEEACH IS NULL THEN 1 ELSE 0 END) AS missing_price,
SUM(CASE WHEN CUSTOMERNAME IS NULL THEN 1 ELSE 0 END) AS missing_customer,
SUM(CASE WHEN ORDERDATE IS NULL THEN 1 ELSE 0 END) AS missing_order_date
FROM raw_sales;



-- Check for duplicate rows

WITH duplicate_check AS  
( SELECT *,
ROW_NUMBER() OVER (PARTITION BY ORDERNUMBER, PRODUCTCODE
ORDER BY ORDERDATE                                       -- You ca order by any column to choose which duplicate to keep
) AS row_num
FROM raw_sale
)
SELECT *
FROM duplicate_check
WHERE row_num > 1;



-- "Cleaning"
-- Creating new clean table called clean_sales

CREATE TABLE clean_sales AS
SELECT                                                 -- This is the SELECT statement that will choose and clean our data
`ORDERNUMBER`,
TRIM(`PRODUCTCODE`) AS PRODUCTCODE,                    -- Fixes extra spaces
`QUANTITYORDERED`,
`PRICEEACH`,
(`QUANTITYORDERED` * `PRICEEACH`) AS TOTAL_SALES,      -- Calculate total sales for each item: Quantity * Price
`ORDERDATE`,
CASE                                                   -- Fix inconsistent status names 
WHEN UPPER(`STATUS`) = 'SHIPPED' THEN 'Shipped'
WHEN UPPER(`STATUS`) = 'IN PROCESS' THEN 'In Process'
ELSE `STATUS`
END AS STATUS,
TRIM(`PRODUCTLINE`) AS PRODUCTLINE,
TRIM(`CUSTOMERNAME`) AS CUSTOMERNAME,
TRIM(`CITY`) AS CITY,
TRIM(`COUNTRY`) AS COUNTRY

FROM raw_sales
WHERE                                -- Different Rules
`PRICEEACH` > 0                      -- Rule 1: Price must be greater than 0 (no freebies/errors)
AND `QUANTITYORDERED` > 0            -- Rule 2: Quantity must be positive (no returns)
AND `STATUS` = 'Shipped';            -- Rule 3: We only want orders that are complete




-- Standarizing the Column Names

ALTER TABLE clean_sales RENAME COLUMN ORDERNUMBER TO order_id;
ALTER TABLE clean_sales RENAME COLUMN PRODUCTCODE TO product_code;
ALTER TABLE clean_sales RENAME COLUMN QUANTITYORDERED TO quantity;
ALTER TABLE clean_sales RENAME COLUMN PRICEEACH TO unit_price;
ALTER TABLE clean_sales RENAME COLUMN TOTAL_SALES TO line_total; 
ALTER TABLE clean_sales RENAME COLUMN ORDERDATE TO order_date;
ALTER TABLE clean_sales RENAME COLUMN STATUS TO order_status;
ALTER TABLE clean_sales RENAME COLUMN PRODUCTLINE TO product_line;
ALTER TABLE clean_sales RENAME COLUMN CUSTOMERNAME TO customer_name;
ALTER TABLE clean_sales RENAME COLUMN COUNTRY TO country;
ALTER TABLE clean_sales RENAME COLUMN CITY TO city;


-- Add new Column 

ALTER TABLE clean_sales
ADD COLUMN line_total_revenue DECIMAL(10, 2);

UPDATE clean_sales
SET line_total_revenue = quantity * unit_price;

ALTER TABLE clean_sales DROP COLUMN line_total;



-- Standarize the Date

ALTER TABLE clean_sales
MODIFY order_date DATE;

UPDATE clean_sales 
SET order_date = str_to_date(SUBSTRING_INDEX(order_date, " ", 1), "%m/%d/%Y");


-- Standarize point problem

UPDATE clean_sales
SET unit_price =TRUNCATE(unit_price, 2),
	line_total =truncate(line_total, 2);



-- Check our clean table

SELECT * FROM clean_sales;
SELECT COUNT(*) FROM clean_sales;



-- Analsis Querry
-- What are our total sales ?

SELECT sum(line_total) AS total_company_revenue
FROM clean_sales;


-- What is our best-selling product line?

SELECT product_line, sum(line_total) AS total_revenue
FROM clean_sales
GROUP BY product_line
ORDER BY total_revenue DESC;


-- Who are our top 5 customers?

SELECT customer_name,ROUND(sum(line_total), 2) AS total_spent
FROM clean_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;


-- Key Performance Indicators

SELECT
COUNT(*) AS total_orders,
COUNT(DISTINCT customer_name) AS total_customers,
ROUND(SUM(line_total_revenue), 2) AS total_revenue,
ROUND(AVG(line_total_revenue), 2) AS avg_order_value
FROM clean_sales;


-- Sales Trend over Time

SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month_num,
monthname(order_date) AS month_name,
ROUND(SUM(line_total_revenue), 2) AS monthly_revenue
FROM clean_sales
GROUP BY year, month_num,month_name
ORDER BY year, month_num;

 





 




          
          