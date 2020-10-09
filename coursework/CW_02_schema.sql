/*
 * СОЗДАНИЕ БАЗЫ ДАННЫХ  
 */

-- база данных
DROP DATABASE IF EXISTS delivery;
CREATE DATABASE delivery;
USE delivery;



-- должности
DROP TABLE IF EXISTS occupations;
CREATE TABLE occupations(
	occupation_id 	SERIAL,					-- id должности
	name 			varchar(255),			-- название должности
    PRIMARY KEY (occupation_id)
) DEFAULT CHARSET=utf8;



-- таблица сотрудников фирмы
DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
	employe_id 	SERIAL,	-- id сотрудника 
	last_name 		varchar(255),			-- фамилия сотрудника
	first_name 		varchar(255),			-- имя сотрудника 
	middle_name 	varchar(255),			-- отчество сотрудника 
	birth_date		date,					-- дата рождения
	passport		varchar(20),			-- номер паспорта
	hire_date 		date NOT NULL,			-- дата найма
	fire_date 		date,					-- дата увольнения
	occupation_id 	bigint UNSIGNED,		-- id должности				
    PRIMARY KEY (employe_id),
	CONSTRAINT occupation_empployee_fk FOREIGN KEY (occupation_id) REFERENCES occupations (occupation_id)
) DEFAULT CHARSET=utf8;



-- таблица автомобилей в автопарке фирмы
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	car_id 		SERIAL, 	-- id авто 
	reg_num 	varchar(20),				-- регистрационный номер	
	mark 		varchar(50),				-- марка авто
	capacity 	int UNSIGNED, 				-- грузоподъемность 
	status 		enum(						-- статус авто:
				'available', 				--  доступно для выполнения заказа	
				'in service') 				--  в ремонте
				DEFAULT 'available',	  	
	PRIMARY KEY (car_id)
) DEFAULT CHARSET=utf8;



-- таблица ответственности за авто сотрудников и в качестве кого (роль/должность)
DROP TABLE IF EXISTS engagements;
CREATE TABLE engagements(
	employe_id		bigint UNSIGNED,		-- id сотрудника
	car_id 			bigint UNSIGNED,		-- id автомобиля
	occupation_id	bigint UNSIGNED,		-- навзание должности или роли (водитель, механик и т.д.)
	engage_date 	datetime 				-- дата назначения
					DEFAULT 
					current_timestamp(),	
	PRIMARY KEY (employe_id, car_id, occupation_id),
	CONSTRAINT emp_engagement_fk FOREIGN KEY (employe_id) REFERENCES employees (employe_id),
	CONSTRAINT car_engagement_fk FOREIGN KEY (car_id) REFERENCES cars(car_id),
	FOREIGN KEY (occupation_id) REFERENCES occupations (occupation_id)
) DEFAULT CHARSET=utf8;



-- таблица с тарифными категориями 
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	category_id SERIAL, 					-- id тарифной категории (тарифного плана)
	name  		varchar(100),				-- название тарифной категории (тарифного плана)
	description	varchar(300),				-- описание особенностей тарифной категории
	PRIMARY KEY (category_id)
) DEFAULT CHARSET=utf8;



-- тарифные категории
DROP TABLE IF EXISTS rates;
CREATE TABLE rates (
	rate_id 	SERIAL,    					-- id тарифной ставки  	
	category_id bigint UNSIGNED,			-- ссылка на id тарифной категории 
	rate_dist	int UNSIGNED, 				-- условие для применения ставки, выражается как порог расстояния (0..maxint), больше которого применяется данная ставка 
	is_fixed	int, 						-- является ли ставка фиксированной (1), либо зависит от расстояния (0) 
	value 		decimal,					-- ставка тарифа из расчета за 1 км
	PRIMARY KEY (rate_id),
	CONSTRAINT rate_category_fk FOREIGN KEY (category_id) REFERENCES categories (category_id)
) DEFAULT CHARSET=utf8;


-- заказчики
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	customer_id SERIAL, 	-- id
	type_of_own varchar(20),				-- форма собственности
	name  		varchar(300),				-- название
	inn 		bigint,						-- ИНН
	category_id bigint unsigned,			-- ссылка на тарифную категорию (тарифный план по договору)
	PRIMARY KEY (customer_id),
	CONSTRAINT customek_category_fk FOREIGN KEY (category_id) REFERENCES categories(category_id)

) DEFAULT CHARSET=utf8;



-- заказы
DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
	order_id		SERIAL, 				-- id заказа
	customer_id 	bigint UNSIGNED,		-- id заказчика 
	total_weight	float DEFAULT 0,		-- суммарный вес посылок
	total_sum 		float DEFAULT 0,		-- сумма заказа
	status			enum					-- статус заказа:	
					('ordered', 			-- 'сформирован' (выставлен счет)
				 	'payed', 				-- 'оплачен' (счет оплачен)
				 	'queued',				-- 'поставлен в очередь' (стоит в очереди в состоянии awaiting)
				 	'in progress', 			-- 'в процессе выполненния' (в очереди в working )
				 	'completed')			-- 'исполнен' (в очереди в состоянии done)
				 	DEFAULT 'ordered',			
	PRIMARY KEY (order_id),
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
) DEFAULT CHARSET=utf8 ;



-- детализация заказа: список посылок с указанием точек погрузки и точек доставки
DROP TABLE IF EXISTS items;
CREATE TABLE items(
	item_id		SERIAL, 					-- id посылки
	order_id 	bigint UNSIGNED,			-- id заказа
	weight		float,						-- вес посылки
	x_load 		float,						-- х координата точки погрузки
	y_load		float,						-- y координата точки погрузки
	x_unload 	float,						-- x координата точки доставки
	y_unload 	float,						-- y координата точки доставки
	item_price 	float DEFAULT 0,			-- стоимость доставки по тарифу, применяется для подсчета общей стоимости заказа
	PRIMARY KEY (item_id),
	FOREIGN KEY (order_id) REFERENCES orders (order_id)
) DEFAULT CHARSET=utf8;



-- очередь обработки заказов 
-- таблица для оперативной работы с заказами в реальном времени 
DROP TABLE IF EXISTS handlers;
CREATE TABLE handlers(
	handler_id	SERIAL,	
	order_id	bigint unsigned,			-- id заказа 
	car_id  	bigint unsigned,			-- id назначенного авто для исполнения заказа
	status 		enum						-- статус заказа в очереди:
				('awaiting', 				-- ожидает в очереди
				 'working', 				-- в процессе исполнения
				 'done'),					-- завершен
	started_at	datetime 					-- дата и время начала обработки заказа
				DEFAULT current_timestamp(),
	finished_at	datetime					-- дата и время завершения работ
				DEFAULT NULL,
	PRIMARY KEY (handler_id),
	FOREIGN KEY (order_id) REFERENCES orders (order_id),
	FOREIGN KEY (car_id) REFERENCES cars (car_id)
) DEFAULT CHARSET=utf8;



-- путевые листы, последовательность выполненния заказа (детализация по посылкам и точкам маршрута)
DROP TABLE IF EXISTS waybills;
CREATE TABLE waybills(
	waybill_id 	SERIAL,						-- id маршрута
	handler_id 	bigint UNSIGNED, 			-- id в очереди обработки 
	item_id		bigint UNSIGNED,			-- id посылки 
	item_order	int, 						-- порядок доставки по точкам
	item_status	enum						-- статус доставки посылки 
				('awaiting', 				-- ожидание посылки 
				 'loading',					-- загрузка - движение в точку загрузки 
				 'delivering', 				-- доставка - движение в точку доставки 
				 'done'), 					-- посылка доставлена
	PRIMARY KEY (waybill_id),
	FOREIGN KEY (handler_id) REFERENCES handlers (handler_id),
	FOREIGN KEY (item_id) REFERENCES items (item_id)
) DEFAULT CHARSET=utf8;


