/*
 * Практическое задание по теме “Администрирование MySQL” 
 * (эта тема изучается по вашему желанию)
 * 
 * 1. 
 * Создайте двух пользователей которые имеют доступ к базе данных shop. 
 * Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
 * второму пользователю shop — любые операции в пределах базы данных shop.
 * 
 * 2. (по желанию)
 * Пусть имеется таблица accounts содержащая три столбца 
 * id, name, password, содержащие первичный ключ, имя пользователя и его пароль. 
 * Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
 * Создайте пользователя user_read, который бы не имел доступа к таблице accounts, 
 * однако, мог бы извлекать записи из представления username.
 * 
 */


/*
 * 1. 
 * Создайте двух пользователей которые имеют доступ к базе данных shop. 
 * Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
 * второму пользователю shop — любые операции в пределах базы данных shop.
 */

DROP USER IF EXISTS shop_read;
CREATE USER shop_read;
GRANT SELECT ON shop.* TO shop_read;

DROP USER IF EXISTS shop;
CREATE USER shop;
GRANT ALL ON shop.* TO shop;


/*
 * 2. (по желанию)
 * Пусть имеется таблица accounts содержащая три столбца 
 * id, name, password, содержащие первичный ключ, имя пользователя и его пароль. 
 * Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
 * Создайте пользователя user_read, который бы не имел доступа к таблице accounts, 
 * однако, мог бы извлекать записи из представления username.
 */

DROP TABLE IF EXISTS account;
CREATE TABLE account (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	pass VARCHAR(255)
);

INSERT INTO account (name, pass) VALUES
  ('name1', 'SDFf64gfh$'),
  ('name2', 'K67gh#gHUd'),
  ('name3', 'НРО56:dfhg');
 
CREATE OR REPLACE VIEW acc_view AS 
SELECT a.id, a.name
FROM account a; 

DROP USER IF EXISTS shop_read;
CREATE USER shop_read;
GRANT SELECT ON shop.acc_view TO shop_read;
