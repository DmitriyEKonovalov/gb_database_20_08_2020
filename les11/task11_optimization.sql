/* 
 * Практическое задание по теме “Оптимизация запросов”
 * 
 * 1. 
 * Создайте таблицу logs типа Archive.  Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs 
 * помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name. 
 * 
 * 2. (по желанию) 
 * Создайте SQL-запрос, который помещает в таблицу users миллион записей.
 */




/* 
 * 1. 
 * Создайте таблицу logs типа Archive.  Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs 
 * помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name. 
 */

-- подготовка данных
DROP database if EXISTS shop;
CREATE DATABASE shop;
use shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина' ENGINE=InnoDB;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';


-- решение 
-- таблица 
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  table_name VARCHAR(100), 
  id bigint UNSIGNED,
  field_name_content VARCHAR(255)
) ENGINE=Archive;

-- триггеры (здесь получается дублирование кода, но его слишком мало, чтобы выносить в отдельную процедуру)
DELIMITER ||
DROP TRIGGER IF EXISTS catalogs_log_on_insert||
CREATE TRIGGER catalogs_log_on_insert AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN
	INSERT INTO logs VALUES 
	(now(), 'catalogs', NEW.id, NEW.name);
END;
||
DROP TRIGGER IF EXISTS users_log_on_insert||
CREATE TRIGGER users_log_on_insert AFTER INSERT ON users
FOR EACH ROW 
BEGIN
	INSERT INTO logs VALUES 
	(now(), 'users', NEW.id, NEW.name);
END;
||
DROP TRIGGER IF EXISTS products_log_on_insert||
CREATE TRIGGER products_log_on_insert AFTER INSERT ON products
FOR EACH ROW 
BEGIN
	INSERT INTO logs VALUES 
	(now(), 'products', NEW.id, NEW.name);
END;
||
DELIMITER ;

-- test
INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

SELECT * FROM catalogs;
SELECT * FROM users;
SELECT * FROM products;

SELECT * FROM logs; 




/* 
 * 2. (по желанию) 
 * Создайте SQL-запрос, который помещает в таблицу users миллион записей.
 */

INSERT INTO users (name) 
WITH digits AS (
	SELECT 0 AS val FROM dual UNION ALL 
	SELECT 1 FROM DUAL UNION ALL 
	SELECT 2 FROM DUAL UNION ALL 
	SELECT 3 FROM DUAL UNION ALL 
	SELECT 4 FROM DUAL UNION ALL 
	SELECT 5 FROM DUAL UNION ALL 
	SELECT 6 FROM DUAL UNION ALL 
	SELECT 7 FROM DUAL UNION ALL 
	SELECT 8 FROM DUAL UNION ALL 
	SELECT 9 FROM DUAL
) 
SELECT 
	concat('user', cast(
	digits.val +
	tens.val * 10 +
	hundreds.val * 100 +
	thousands.val * 1000 +
	tensthousands.val * 10000 +
	hundredsthousands.val * 100000 
	AS char)) AS user_name
FROM digits 
	JOIN digits AS tens
	JOIN digits AS hundreds
	JOIN digits AS thousands
	JOIN digits AS tensthousands
	JOIN digits AS hundredsthousands
WHERE 
	digits.val + tens.val * 10 + hundreds.val * 100 + thousands.val * 1000 + tensthousands.val * 10000 + hundredsthousands.val * 100000 < 1000000
;

-- test
SELECT count(*) FROM users u; 
SELECT count(*) FROM logs l;

