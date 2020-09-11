/*
 * Тема “Сложные запросы”
 *
 * 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
 * 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
 * 
 * 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
 * Поля from, to и label содержат английские названия городов, поле name — русское. 
 * Выведите список рейсов flights с русскими названиями городов.

 */


/*
 * 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
 */

SELECT 
	*
FROM 
	users u
WHERE 
	EXISTS (SELECT 1 FROM orders o WHERE o.user_id = u.id) 
;


	
/*
 * 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
 */

SELECT 
 	p.*,
 	c.name AS catalog_name
FROM 
	products p
	JOIN catalogs c ON c.id = p.catalog_id ;

	

/*
 * 3. (по желанию) 
 * Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
 * Поля from, to и label содержат английские названия городов, поле name — русское. 
 * Выведите список рейсов flights с русскими названиями городов.
 */

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  p_from varchar(50),
  p_to varchar(50)
);

INSERT INTO flights VALUES
  (1, 'moscow', 'omsk'),
  (2, 'novgorod', 'kazan'),
  (3, 'irkutsk', 'moscow'),
  (4, 'omsk', 'irkutsk'),
  (5, 'moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label varchar(50),
  name varchar(50)
);

INSERT INTO cities VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');

--  Выведите список рейсов flights с русскими названиями городов.
 
SELECT 
	f.id,
	c_from.name,
	c_to.name
FROM flights f
	JOIN cities c_from ON c_from.label = f.p_from 
	JOIN cities c_to ON c_to.label = f.p_to 
ORDER BY 1