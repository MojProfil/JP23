SELECT naziv, 'Osijek' AS grad, now() AS danas 
FROM smjer
WHERE sifra > 1
ORDER BY naziv DESC 
LIMIT 2;

SELECT distinct grupa FROM clan;

SELECT * FROM products;


# prikaz sume kolone buyPrice pod uvjetom, descending buyPrice (2) kolona
SELECT  pl.productLine, sum(p.buyPrice), avg(p.buyPrice)
FROM products p 
INNER JOIN productlines pl ON p.productLine = pl.productLine
WHERE pl.productLine LIKE '%a%'
GROUP BY pl.productline  
ORDER BY 2 desc; 

SELECT firstName FROM employees;

SELECT distinct p.productName 
FROM employees em
INNER JOIN customers cu ON em.employeeNumber = cu.salesRepEmployeeNumber 
INNER JOIN orders o ON cu.customerNumber = o.customerNumber 
INNER JOIN orderdetails od ON od.orderNumber = o.orderNumber 
INNER JOIN products p ON p.productCode = od.productCode
WHERE em.firstName = 'Martin'
ORDER BY productName;

SELECT e.firstName , e.lastName 
FROM employees e 
INNER JOIN employees e2 ON e2.employeeNumber = e.reportsTo 
WHERE e2.firstName = 'Mary' AND e2.lastName = 'Patterson';

DELETE FROM products WHERE products.productName = '1985 Toyota Supra';

SELECT 
FROM orderdetails od
INNER JOIN orders o

