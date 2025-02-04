SELECT * FROM customer;

SELECT 2025 as this_year, 'January' as this_month, customer_id FROM customer;
SELECT 10*5;

SELECT * FROM customer ORDER BY customer_last_name DESC;

SELECT * 
FROM customer 
WHERE customer_id = 1
OR customer_id = 2;

SELECT *
FROM customer_purchases
WHERE customer_id IN (3,4,5)
AND vendor_id IN (3,4,5);

SELECT *
FROM product
WHERE product_name LIKE "%pepper%";

SELECT * FROM product
WHERE product_id IN (1,2)
OR product_Size = 'Medium';

SELECT * FROM customer
WHERE customer_last_name LIKE "a%";

SELECT * FROM product
WHERE product_size IS NULL
OR product_size = '';

-- CASE
SELECT *,
	CASE
		WHEN vendor_type = 'Fresh Focused' THEN 'Wednesday'
		WHEN vendor_type = 'Prepared Foods' THEN 'Thursday'
		ELSE 'Saturday'
	END as day_of_speciality,
	CASE
		WHEN vendor_name  LIKE '%pie%' THEN 'Wednesday'
	END as only_pie_day
FROM vendor;

-- DISTINICT
SELECT market_day FROM market_date_info;

SELECT DISTINCT market_day FROM market_date_info;
memerkeb bonita
SELECT * FROM customer_purchases;

SELECT DISTINCT vendor_id FROM customer_purchases;

SELECT DISTINCT vendor_id, product_id FROM customer_purchases;


SELECT DISTINCT vendor_id, product_id, customer_id 
FROM customer_purchases
ORDER BY product_id ASC, customer_id DESC; 