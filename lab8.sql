---
--- question 2
---
SELECT vendor.v_code, vendor.v_name, product.p_code, product.p_descript
FROM vendor
INNER JOIN product ON vendor.v_code = product.v_code
ORDER BY vendor.v_code ASC;

---
--- question 3
---

SELECT customer.cus_code, 
	CONCAT(customer.cus_fname, " ", customer.cus_lname) AS "Cus_FullName",
	invoice.inv_number
FROM customer
LEFT JOIN invoice ON customer.cus_code = invoice.cus_code
ORDER BY Cus_FullName ASC;

---
--- question 4
---

SELECT customer.cus_code, 
	CONCAT(customer.cus_fname, " ", customer.cus_lname) AS "Cus_FullName",
	COUNT(invoice.inv_number)
FROM customer
LEFT JOIN invoice ON customer.cus_code = invoice.cus_code
GROUP BY customer.cus_code, 
	CONCAT(customer.cus_fname, " ", customer.cus_lname);
	
---
--- question 5
---

SELECT customer.cus_code,
	CONCAT(customer.cus_fname, " ", customer.cus_lname) AS "Cus_FullName",
	COUNT(invoice.inv_number) AS "Number of Invoice"
FROM customer
LEFT JOIN invoice ON customer.cus_code = invoice.cus_code
GROUP BY customer.cus_code, 
	CONCAT(customer.cus_fname, " ", customer.cus_lname);