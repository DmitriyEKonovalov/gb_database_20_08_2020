/*
 * Практическое задание к уроку 4
 * Подобрать сервис-образец для курсовой работы.
 */

/*
 * Прошу дополнительно к оценке задания соориентировать, какой примерно нужен объем курсовой работы
 * какой нужен баланс между количеством таблиц и сложностью бизнес-логики? 
 * Сделать больше таблиц, чтобы было много CRUDов пуска и однообразных или можно таблиц меньше, но более сложную бизнес-логику реализовать?
 * 
 * Допустим это будет система для обработки заказов логистической компании
 * Для начала перечислим самые высокоуровневые требования
 * 1. Система должна сохранять и обрабатывать информацию о заказчиках, включая индивидуальные тарифы
 * 2. Система должна сохранять и обрабатывать информацию об автомобилях компании, и статусах (свободен/едет к точке загрузки/едет в точку доставки)
 * 3. Система должна сохранять и обрабатывать информацию о заказах и статусах выполнения (ожидает, оплачен, в пути, доставлен)
 * 4. Система должна обеспечивать расчет стоимости заказа в соответствии с дальностью доставки
 * 5. Система должна обеспечивать автоматический подбор ближайшей машины к точке загрузки 
 * 
 * ** если хватит времени, можно усложнить
 * 6. Система должна сохранять и обрабатывать информацию о складах компании
 * 7. Система должна сохранять и обрабатывать информацию о нахождении заказа на складе
 * 8. Система должна поддерживать разные режимы доставки, например:
 *  	- прямая доставка: одна точка загрузки -> (один заказ) -> одна точка доставки
 * 		- сбор заказов и доставка на склад: несколько точек загрузки -> (много заказов) -> склад 
 * 		- развозка со склада: склад -> (много заказов) -> много точек доставки 
 * 		- перегрузка из авто в авто : один авто -> (много заказов) -> один авто 
 * 		- и т.д.
 * 9. Система должна обеспечивать оптимальный по дальности выбор маршрута в соответсвии с режимом доставки и расположением автомобилей
 *
 * Структура таблиц будет примерно такой:
 * 
 */

DROP TABLE IF EXISTS cars;
-- автомобили
CREATE TABLE cars (
	car_id bigint unsigned NOT NULL AUTO_INCREMENT, -- id
	reg_num varchar(20) COLLATE utf8_unicode_ci,		-- регистрационный номер
	mark 	varchar(50) COLLATE utf8_unicode_ci,		-- марка авто
	status 	enum ('free', 'to start', 'to finish')		-- статус авто
	x_pos	float										-- текущая х координата авто
	y_pos	float										-- текущая у координата авто
	PRIMARY KEY (id),
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS customers;
-- заказчики
CREATE TABLE customers (
	customer_id bigint unsigned NOT NULL AUTO_INCREMENT, 	-- id
	type_of_own varchar(20) COLLATE utf8_unicode_ci,		-- форма собственности
	name  		varchar(300) COLLATE utf8_unicode_ci,		-- название
	inn 		bigint,										-- ИНН
	tariff		float,										-- действующая ставка тарифа для клиента 
	PRIMARY KEY (customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS orders;
-- заказы
CREATE TABLE orders(
	order_id	bigint unsigned NOT NULL AUTO_INCREMENT, 	-- id заказа
	customer_id bigint,									-- id заказчика 
	volume  	float,									-- объем посылки
	weight 		float,									-- вес посылки
	ship_sum 	decimal,								-- сумма заказа
	PRIMARY KEY (order_id),
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS waybills;
-- маршруты (путевые листы)
CREATE TABLE waybills(
	waybill_id 	bigint unsigned NOT NULL AUTO_INCREMENT,-- id листа
	order_id	bigint unsigned NOT NULL,						-- id заказа 
	car_id  	float,									-- id автомобиля
	x_pick 		float,									-- х координата начальной точки
	y_pick		float,									-- y координата начальной точки
	x_delivery 	float,									-- x координата конечной точки
	y_delivery 	float,									-- y координата конечной точки
	status 		enum('awaiting', 'moving', 'delivered'),-- статус доставки 
	PRIMARY KEY (waybill_id),
	FOREIGN KEY (order_id) REFERENCES orders (order_id)
	FOREIGN KEY (car_id) REFERENCES cars (car_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




