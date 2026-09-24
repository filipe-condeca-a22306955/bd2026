

/*SELECT COUNT(*) AS '# Produtos'
FROM production.products p 

SELECT MAX(quantity) AS 'Máxima Quantidade'
FROM sales.order_items o 


SELECT MIN(list_price) AS 'Preço Mínimo', AVG(list_price) AS 'Preço Médio', MAX(list_price) AS 'Preço Máximo'
FROM production.products p 


Identificar clientes que o apelido começa por j,k,l, ou m.
SELECT * from sales.customers c WHERE c.last_name LIKE '[j-m]%'


Identificar clientes com o apelido que contenham o ou u na segunda posição.
SELECT * from sales.customers c WHERE c.last_name LIKE '_[ou]%';

Identificar produtos que quando têm preço inferior a 500 se catalogam como Muito Baratos.
SELECT product_name AS Produto, list_price AS 'Preço', 
CASE
    WHEN list_price < 500 THEN 'Muito Barato'
END AS 'Classificação'
FROM production.products p

SELECT product_id, MIN(discount) AS 'Desconto Mínimo', AVG(discount) AS 'Desconto Médio', MAX(discount) AS 'Desconto Máximo'
FROM sales.order_items o 
GROUP BY product_id ORDER BY 1


8.2

INSERT INTO production.brands(brand_name) VALUES ('HHHH')

SELECT *
FROM production.brands



INSERT INTO production.categories(category_name) VALUES ('Kid Bikes')


SELECT *
FROM production.categories


INSERT INTO sales.customers(first_name, last_name,email) VALUES ('Lip','Rodriguez','blala@email.pt')


SELECT *
FROM sales.customers 
WHERE first_name='Lip'


UPDATE sales.customers SET city='Lisbon' WHERE first_name='Lip'
SELECT *
FROM sales.customers 
WHERE first_name='Lip'


DELETE FROM sales.customers WHERE city='Lisbon'

SELECT *
FROM sales.customers 
WHERE first_name='Lip'


SELECT * FROM sales.customers
WHERE phone is NULL AND state='TX'


SELECT * FROM sales.customers
WHERE phone is not NULL AND state='CA'


SELECT * FROM sales.stores
WHERE zip_code = 95060 OR zip_code = 75088


SELECT * 
FROM sales.staffs
WHERE email LIKE '%serrano%'
*/


