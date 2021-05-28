
-- SELECT * FROM produsers;
-- SELECT * FROM produsers WHERE produser_company = 'Aser' ORDER BY prodused_date DESC;

-- 1
-- SELECT k.product_name, k.price, s.price, s.product_name FROM kivano k INNER join sulpak s on s.price = k.price WHERE s.category_id= 2 and k.category_id= 1;

-- 2 
-- SELECT product_name FROM kivano WHERE product_name LIKE 'Iphone 12' ORDER BY LENGTH(product_name) LIMIT 1;

-- 3 
-- SELECT product_name FROM sulpak WHERE product_name LIKE 'Acer%' OR product_name LIKE 'Lenovo%' OR product_name LIKE 'ASUS%' OR product_name LIKE 'MSI%' OR product_name LIKE 'Mac%' ; 

-- 4
-- select k.product_name from kivano k INNER join sulpak s on k.product_name = s.product_name INNER join produsers p on p.produser_country = 'China';

-- 5
-- SELECT * FROM categories ORDER BY created_at;

-- 6
-- select k.product_name from kivano k left join sulpak s on s.product_name != k.product_name;

-- 7 
-- SELECT product_name FROM sulpak WHERE product_name LIKE '%m%';

-- 8 
-- SELECT product_name FROM sulpak UNION SELECT product_name FROM kivano;

-- 9
-- SELECT k.product_name from kivano k INNER join produsers p on p.produser_country = 'China' WHERE k.product_name like '%k%';

-- 10
-- UPDATE produsers SET produser_country = 'kyrgyzstan', produser_company = 'Apple' WHERE prodused_date = (SELECT max(prodused_date) FROM produsers);

-- 11
-- SELECT k.product_name, k.price, s.product_name, s.price from kivano k full join sulpak s on k.product_name = s.product_name;

-- 12 
-- SELECT produser_company FROM produsers WHERE produser_country = 'Japan' ORDER BY produser_id LIMIT 1; 

-- 13
-- SELECT price+1000 FROM sulpak;

-- 14
-- SELECT (SELECT MAX(price) FROM sulpak) - (SELECT MIN(price) FROM kivano) FROM kivano, sulpak LIMIT 1;

-- 15
-- SELECT price FROM kivano WHERE category_id = 1 AND price = (SELECT min(price) FROM kivano);
-- SELECT price FROM sulpak WHERE category_id = 1 AND price = (SELECT min(price) FROM sulpak);

-- 16
-- DELETE FROM kivano sulpak WHERE product_name = NUll;

-- 18 
-- UPDATE produsers SET produsers_country = 'Germany' WHERE produser_country = 'Brazil' AND product_name LIKE 'Acer%' AND prodused_date LIKE '2012%' OR prodused_date LIKE '2013%' OR prodused_date LIKE '2014%' OR prodused_date LIKE '2015%' OR prodused_date LIKE '2016%' OR prodused_date LIKE '2017%' OR prodused_date LIKE '2018%' OR prodused_date LIKE '2019%' OR prodused_date LIKE '2020%' OR prodused_date LIKE '2021%' OR prodused_date LIKE '2022%'  OR prodused_date LIKE '2023%';

--19 
-- SELECT price, product_name, produser_id, category_id FROM kivano ORDER BY item_id LIMIT 16;

-- 20
-- SELECT product_name FROM kivano WHERE category_id = 2;







-- SELECT product_name, price FROM kivano WHERE price > (SELECT AVG(price) FROM kivano);





-- 23 
-- SELECT * FROM sulpak WHERE item_id = TRUNC((SELECT COUNT(*)/2 FROM sulpak));

-- 24
-- UPDATE produsers SET produser_country = 'South Korea' WHERE produser_country = 'Korea' AND produser_company = 'ASUS';

-- 25
-- UPDATE produsers SET produser_company = 'Microsoft' WHERE produser_country = 'USA' AND produser_company = 'Nokia';
