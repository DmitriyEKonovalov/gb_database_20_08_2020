/* 
 * Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»
 *
 * ДЛЯ ПРОВЕРКИ СНАЧАЛ НУЖНО ЗАПУСТИТЬ скрипт  prepare_data
 * 

/*
 * 1. 
 * Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
 * 
 */

drop table if exists users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME 
) COMMENT = 'Покупатели'
;
INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');

-- --
 
update
	users
set
	users.created_at = now(),
	users.updated_at = now();

/* 
 * 2. 
 * Таблица users была неудачно спроектирована. 
 * Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 * Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
 */ 
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at varchar(50),
  updated_at varchar(50)
) COMMENT = 'Покупатели'
;
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '20.11.2017 8:10', '20.10.2017 8:10'),
  ('Наталья', '1984-11-12', '18.03.2018 7:10', '20.10.2017 8:10'),
  ('Александр', '1985-05-20', '20.10.2019 8:10', '25.10.2019 8:10'),
  ('Сергей', '1988-02-14', '07.10.2020 8:10', '20.10.2020 8:10'),
  ('Иван', '1998-01-12', '01.07.2016 8:10', '20.10.2016 8:10'),
  ('Мария', '1992-08-29', '20.11.2016 8:10', '20.10.2016 8:10');


-- --	
 update
	users
set
	created_at = str_to_date(created_at, '%d.%m.%Y %k:%i'),
	updated_at = str_to_date(updated_at, '%d.%m.%Y %k:%i');
;
alter table users 
	change created_at created_at DATETIME,
	change updated_at updated_at DATETIME;


/* 
* 3. 
* В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
* 0, если товар закончился и выше нуля, если на складе имеются запасы. 
* Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
* Однако нулевые запасы должны выводиться в конце, после всех записей.
*/
insert
	into
	store.storehouses_products (id, storehouse_id, product_id, value)
values 
(1, 3, 1, 0),
(2, 3, 2, 20),
(3, 2, 2, 50),
(4, 1, 6, 1),
(5, 3, 7, 0),
(6, 2, 5, 17),
(7, 3, 7, 27),
(8, 1, 7, 60),
(9, 2, 4, 45),
(10, 3, 1, 0),
(11, 4, 1, 7),
(12, 3, 4, 2) ;

select 
	sp.id,
	sp.value,
	if(sp.value = 0, 1, 0) as is_null
from 
	storehouses_products sp
order by 
	sp.is_null,
	value 
;

/* 
 * (по желанию) 
 * Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
 * Месяцы заданы в виде списка английских названий (may, august)
*/
select 
	*
from 
	users u
where 
	lower(date_format(u.birthday_at, '%M')) rlike('May|August')
;

/* 
 * (по желанию) 
 * Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 * Отсортируйте записи в порядке, заданном в списке IN.
 *
*/

select
	*
from
	catalogs cat
where
	id in (5, 1, 2)
order by
	field(id, 5, 1, 2) ;
	