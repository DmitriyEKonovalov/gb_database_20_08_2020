/*
 * Практическое задание по теме “Транзакции, переменные, представления”
 * 
 * 1.
 * В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
 * Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
 * 
 * 2. 
 * Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
 * 
 * 3. (по желанию) 
 * Пусть имеется таблица с календарным полем created_at. 
 * В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
 * Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
 * если дата присутствует в исходном таблице и 0, если она отсутствует.
 * 
 * 4. (по желанию) 
 * Пусть имеется любая таблица с календарным полем created_at. 
 * Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
 * 
 */



/*
 * 1.
 * В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
 * Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
 * 
 */

START TRANSACTION;

INSERT INTO sample.users
SELECT * FROM shop.users sh WHERE sh.id = 1;

DELETE FROM shop.users sh
WHERE sh.id = 1;

COMMIT;



/*
 * 2. 
 * Создайте представление, которое выводит название name товарной позиции из таблицы products 
 * и соответствующее название каталога name из таблицы catalogs.
 * 
 */
CREATE VIEW cat_products AS
SELECT 
	p.*
	,c.name AS cat_name
FROM 
	shop.products p 
	JOIN shop.catalogs c ON c.id = p.catalog_id;
	

/*
 * 3. (по желанию) 
 * Пусть имеется таблица с календарным полем created_at. 
 * В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
 * Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
 * если дата присутствует в исходном таблице и 0, если она отсутствует.
 * 
 */

CREATE VIEW digit AS
	(
	SELECT 0 AS digit FROM dual UNION ALL 
	SELECT 1 FROM DUAL UNION ALL 
	SELECT 2 FROM DUAL UNION ALL 
	SELECT 3 FROM DUAL UNION ALL 
	SELECT 4 FROM DUAL UNION ALL 
	SELECT 5 FROM DUAL UNION ALL 
	SELECT 6 FROM DUAL UNION ALL 
	SELECT 7 FROM DUAL UNION ALL 
	SELECT 8 FROM DUAL UNION ALL 
	SELECT 9 FROM DUAL
	);

SELECT 
	ten_pos.digit * 10 + unit_pos.digit AS day_num
	,ifnull((
		SELECT 1 
		FROM table3 t 
		WHERE 	t.created_at = DATE_ADD("2018-08-01", INTERVAL (ten_pos.digit * 10 + unit_pos.digit - 1) DAY)
	 ), 0) AS is_exist
FROM digit AS unit_pos
	JOIN digit AS ten_pos
WHERE ten_pos.digit * 10 + unit_pos.digit BETWEEN 1 AND 31
;


/*
 * 4. (по желанию) 
 * Пусть имеется любая таблица с календарным полем created_at. 
 * Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
 * 
 */

-- через редактируемое представление 
-- (работает, но для этого всегда нужно уникальное поле id и не уверен, что это хорошее решение)
CREATE OR REPLACE VIEW temp AS 
SELECT table4.*
FROM table4  
ORDER BY table4.created_at DESC 
LIMIT 18446744073709551615 offset 5;

DELETE 
FROM table4 
WHERE EXISTS (SELECT 1 FROM temp WHERE temp.id = table4.id);


-- удаление через сохранение во временной таблице
-- (в этом случае поле id вообще не требуется, но работает слегка не по ТЗ - удаляет все, а потом восстанавливает нужные)
START TRANSACTION;

CREATE TEMPORARY TABLE temp (id bigint, created_at DATETIME);
truncate TABLE temp;

INSERT INTO temp
SELECT table4.*
FROM table4  
ORDER BY table4.created_at DESC 
LIMIT 5;

TRUNCATE TABLE table4;

INSERT INTO table4 
SELECT * FROM temp;

DROP TEMPORARY TABLE temp;

COMMIT;
