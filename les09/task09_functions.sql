/*
 * Практическое задание по теме “Хранимые процедуры и функции, триггеры"
 * 
 * 1. 
 * Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
 * в зависимости от текущего времени суток. 
 * С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
 * с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 * с 18:00 до 00:00 — "Добрый вечер", 
 * с 00:00 до 6:00 — "Доброй ночи".
 * 
 * 2. 
 * В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
 * Допустимо присутствие обоих полей или одно из них. 
 * Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
 * Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
 * При попытке присвоить полям NULL-значение необходимо отменить операцию.
 * 
 * 3. (по желанию) 
 * Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
 * Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
 * Вызов функции FIBONACCI(10) должен возвращать число 55.
 * 0	1	2	3	4	5	6	7	8	9	10	
 * 0	1	1	2	3	5	8	13	21	34	55
 * 
 */


/* 
 * 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
 * С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 * с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

DELIMITER ||
DROP FUNCTION IF EXISTS hello||
CREATE FUNCTION hello()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
	DECLARE now_hour int DEFAULT hour(now());
	DECLARE greet varchar(255) DEFAULT '';
	IF 		now_hour >= 6 	AND now_hour < 12 THEN SET greet = 'Доброе утро';
	ELSEIF 	now_hour >= 12 	AND now_hour < 18 THEN SET greet = 'Добрый день';
	ELSEIF 	now_hour >= 18 	AND now_hour < 24 THEN SET greet = 'Добрый вечер';
	ELSEIF 	now_hour >= 0 	AND now_hour < 6  THEN SET greet = 'Доброй ночи';
	END IF;
	RETURN greet;
END;
||
DELIMITER ;

/* 
 * for test
  SELECT hello() FROM dual
*/


/* 
 * 2. 
 * В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
 * Допустимо присутствие обоих полей или одно из них. 
 * Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
 * Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
 * При попытке присвоить полям NULL-значение необходимо отменить операцию.
*/

DELIMITER ||
DROP TRIGGER IF EXISTS notnulldescription||
CREATE TRIGGER null_control_description_on_insert BEFORE INSERT ON products
FOR EACH ROW 
BEGIN
	IF NEW.name IS NULL AND NEW.description IS NOT NULL THEN SET NEW.name = NEW.description;
	END IF;
	IF NEW.name IS NOT NULL AND NEW.description IS NULL THEN SET NEW.description = NEW.name;
	END IF;
	IF NEW.name IS NULL AND NEW.description IS NULL THEN SIGNAL SQLSTATE '45000' SET message_text = 'cannot insert both nullable description';
	END IF;
END;
||
DELIMITER ;

/* 
 * for test
INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('exist name', null, 20, 1);
 
INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (null, 'exist description', 20, 1);
 
INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (null, null, 20, 1);
 
SELECT * FROM products p2 
 */



/* 
 * 3. (по желанию) 
 * Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
 * Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
 * Вызов функции FIBONACCI(10) должен возвращать число 55.
 * 0	1	2	3	4	5	6	7	8	9	10	
 * 0	1	1	2	3	5	8	13	21	34	55
*/

DELIMITER ||
DROP FUNCTION IF EXISTS FIBONACCI||
CREATE FUNCTION FIBONACCI(num int)
RETURNS int DETERMINISTIC
BEGIN
	DECLARE result_2 int DEFAULT 0;
	DECLARE result_1 int DEFAULT 1;
	DECLARE result_c int DEFAULT 1;
	DECLARE i int DEFAULT 1;
	IF num < 2 THEN 
		IF num = 0 THEN SET result_c = 0;
		END IF;
		IF num = 1 THEN SET result_c = 1;
		END IF;
	ELSE 
		WHILE i < num DO
			SET result_c = result_2 + result_1;
			SET result_2 = result_1;
			SET result_1 = result_c;
			SET i = i + 1;
		END WHILE;
	END IF; 
	RETURN result_c;
END;
||
DELIMITER ;


/* 
 * for test
SELECT 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 FROM DUAL 
UNION ALL
SELECT FIBONACCI(0), FIBONACCI(1), FIBONACCI(2), FIBONACCI(3), FIBONACCI(4), FIBONACCI(5), FIBONACCI(6), FIBONACCI(7), FIBONACCI(8), FIBONACCI(9), FIBONACCI(10) FROM dual
 
 */
