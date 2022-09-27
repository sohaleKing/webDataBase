--1 A query that contains a join of any kind.
SELECT * FROM invoice JOIN customer USING (customer_id)

--2 A query that contains a join of any kind and filtering into two or more cases
--(for example students who pass or fail, from the example data or a variant thereof).
SELECT *, CASE 
WHEN total > 1000 THEN 'expensive'
WHEN total < 700 THEN 'cheap'
ELSE 'average'
END AS 'invoice value' FROM invoice JOIN customer USING (customer_id)

--3 A query that contains a join of any kind, an ordering of some sort
--and a cut-off to show only a part of the results (for example the name
--of the students who hold the best five grades in the example data).
SELECT * FROM customer RIGHT JOIN invoice USING (customer_id) ORDER BY invoice_date DESC LIMIT 2

--4 A query that groups the results of a join by one or more columns.
SELECT * FROM customer JOIN service USING (customer_id) GROUP BY category_id

--5 A query that counts matches, possibly by groups.
SELECT *, COUNT(*) FROM customer JOIN service USING (customer_id) GROUP BY category_id

--6 SELECT *, SUM(total) FROM service  JOIN invoice USING (service_id)
SELECT *, SUM(total) FROM service  JOIN invoice USING (service_id)

--7 A query that averages over a column, possibly by groups.
SELECT invoice_date, AVG(total) FROM service  JOIN invoice USING (service_id)

--8 A query that uses a join and null fields to gain useful insights 
--(such as how many students have not completed any courses, per program, in the example data).
SELECT *, COUNT(*) FROM service CROSS JOIN product WHERE product.service_id IS NULL GROUP BY customer_id

--9 Describe a situation in which a cross join could be useful or,
--failing to come up with one, discuss why that tends to be an impractical thing to compute.
--(You are welcome to discuss the latter even if you come up with the former.)
/* let's say you want to apply all rows from product table to all row to service
 table its time to use a Cross join, does not require any condition to join tables, show all possible combinations*/