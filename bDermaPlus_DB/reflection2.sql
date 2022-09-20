--1 .selects all the values of a specific column
SELECT first_name FROM customer

--2 selects all the rows in which a column matches a specific value.
SELECT * FROM customer WHERE address='Montreal';

--3 selects all the rows that match a conjunction of two conditions.
SELECT * FROM customer WHERE status='active' AND gender='female'

--4 ...selects all the rows that match a disjunction of two conditions.
SELECT * FROM customer WHERE gender='female' OR age <38
SELECT * FROM service WHERE customer_id=3 OR service_price <180

--5 ...produces a concatenation of two columns.
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM customer

--6 .includes a filtering into two or more sub-cases.
SELECT 
first_name, email,
 CASE
WHEN address='montreal' THEN 'home-town'
 WHEN address='laval' THEN 'north-shore'
 ELSE 'outside-QC'
 END AS 'provice'
 FROM customer

--7 ...orders the rows by a column value in increasing order.
SELECT first_name, telephone, age FROM customer ORDER BY age

--8 shows only the top k > 0 rows with the highest values for a specific column, for some fixed value of k.
SELECT first_name, email, age FROM customer ORDER BY age DESC LIMIT 3

--9 shows only the bottom k rows with the lowest values for a specific column
SELECT first_name, email, age FROM customer ORDER BY age,first_name LIMIT 2