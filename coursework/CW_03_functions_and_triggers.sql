/*
 * ТРИГГЕРЫ, ПРОЦЕДУРЫ И ФУНКЦИИ  
 */

use delivery;

DELIMITER ||

-- функции и триггеры для автоматизации автопарка, персонала и назначений

/*
 * Триггер для автоматического назначения ответственных сотрудников при добавлении нового автомобиля
 * алгорим: по каждой роли (в данной реализации необходимо три: администратор, водитель и механик) 
 * выбирается сотрудник с подходящей профессией и за котором меньше всего закреплено автомобилей
 * для водителей выбираются только свободные, у которых нет авто в ответсвенности
 */
DROP TRIGGER IF EXISTS engage_employees_after_car_insert ||
CREATE TRIGGER engage_employees_after_car_insert AFTER INSERT ON cars  
FOR EACH ROW 
BEGIN
	-- вставка назначения для бригадира
	INSERT INTO engagements (car_id, employe_id, occupation_id)
	SELECT 
		NEW.car_id,
		emp.employe_id,
		emp.occupation_id
		-- ,engages.engage_num
	FROM employees emp
	 	 JOIN occupations oc ON oc.occupation_id = emp.occupation_id 
	 	 LEFT JOIN (
	 	 	SELECT e.employe_id, count(e.car_id) AS engage_num
	 	 	FROM engagements e
	 	 	GROUP BY e.employe_id
	 	 ) engages ON engages.employe_id = emp.employe_id 
	WHERE 
		oc.name = 'бригадир'
	ORDER BY 
		engages.engage_num IS NOT NULL, engages.engage_num
	LIMIT 1;
	
	-- вставка назначения для механика
	INSERT INTO engagements (car_id, employe_id, occupation_id)
	SELECT 
		NEW.car_id,
		emp.employe_id,
		emp.occupation_id
		-- ,engages.engage_num
	FROM employees emp
	 	 JOIN occupations oc ON oc.occupation_id = emp.occupation_id 
	 	 LEFT JOIN (
	 	 	SELECT e.employe_id, count(e.car_id) AS engage_num
	 	 	FROM engagements e
	 	 	GROUP BY e.employe_id
	 	 ) engages ON engages.employe_id = emp.employe_id 
	WHERE 
		oc.name = 'механик'
	ORDER BY 
		engages.engage_num IS NOT NULL, engages.engage_num
	LIMIT 1;

	-- вставка назначения для водителя
	INSERT INTO engagements (car_id, employe_id, occupation_id)
	SELECT 
		NEW.car_id,
		emp.employe_id,
		emp.occupation_id
		-- ,engages.engage_num
	FROM employees emp
	 	 JOIN occupations oc ON oc.occupation_id = emp.occupation_id 
	 	 LEFT JOIN (
	 	 	SELECT e.employe_id, count(e.car_id) AS engage_num
	 	 	FROM engagements e
	 	 	GROUP BY e.employe_id
	 	 ) engages ON engages.employe_id = emp.employe_id 
	WHERE 
		oc.name = 'водитель'
		AND engages.engage_num IS NULL
	LIMIT 1;
END;
||




-- функции и триггеры для автоматизации расчетов стоимости и исполенния заказов

/* Функция для подсчета расстояния между двумя точками a и b 
 * принимает в качестве параметров координаты точек a(x,y) и b(x, y), 
 * возвращает расстояние (float) округленное до ОДНОГО знака  */
DROP FUNCTION IF EXISTS distance ||
CREATE FUNCTION distance(Xa float, Ya float, Xb float, Yb float)
RETURNS float DETERMINISTIC 
BEGIN
	RETURN sqrt(pow(Xb - Xa, 2) + pow(Yb - Ya, 2));
END;
||


/* Функция возвращает максимальное расстояние из двух 
 * (Вообще это обычная функция нахождения максимального значения, но сделал так,чтобы не путать с max в sql */
DROP FUNCTION IF EXISTS max_dist ||
CREATE FUNCTION max_dist(a float, b float)
RETURNS float DETERMINISTIC 
BEGIN
	IF a > b THEN RETURN a;
	ELSE RETURN b;
	END IF;
END;
||


/* Функция для подсчета стоимости доставки посылки
 * в качестве аргумента принимает id заказа и расстояние, все остальное для расчета находит в связанных таблицах:
 * id заказа -> id заказчика -> id тарифной категории -> список ставок
 * возвращает стоимость доставки посылки 
 * 
 * В данной реализации применяется упрощенный алгоритм подсчета стоимости:
 * на основании тарифа и расстояния от центра (0, 0) до самой дальней точки (загрузки/доставки) */
DROP FUNCTION IF EXISTS calc_item_price ||
CREATE FUNCTION calc_item_price(order_id bigint UNSIGNED, dist float)
RETURNS float DETERMINISTIC 
BEGIN
	DECLARE item_price float 
			DEFAULT (
				SELECT 
					CASE 
						WHEN r.is_fixed = 0 THEN dist * r.value
						WHEN r.is_fixed = 1 THEN r.value
					END AS price
				FROM orders 	  	  o 
					JOIN customers cust ON cust.customer_id = o.customer_id 
					JOIN categories cat ON cat.category_id = cust.category_id 
					JOIN rates r		ON r.category_id = cat.category_id 
				WHERE 
					o.order_id = order_id
					AND r.rate_dist < dist
				ORDER BY 
					r.rate_dist DESC 
				LIMIT 1
					);
	RETURN item_price;
END;
||


-- Триггер для автоматического расчета стоимости доставки посылки при добавлении ее в список
DROP TRIGGER IF EXISTS set_item_price_before_insert ||
CREATE TRIGGER set_item_price_before_insert BEFORE INSERT ON items
FOR EACH ROW 
BEGIN
	DECLARE dist float DEFAULT max_dist(distance(0, 0, NEW.x_load, NEW.y_load), distance(0, 0, NEW.x_unload, NEW.y_unload));
	SET NEW.item_price = calc_item_price(NEW.order_id, dist);
END;
||


-- Триггер для автоматического расчета стоимости доставки посылки при изменении ее параметров
DROP TRIGGER IF EXISTS calc_item_price_before_insert ||
CREATE TRIGGER calc_item_price_before_insert BEFORE INSERT ON items
FOR EACH ROW 
BEGIN
	DECLARE dist float DEFAULT max_dist(distance(0, 0, NEW.x_load, NEW.y_load), distance(0, 0, NEW.x_unload, NEW.y_unload));
	SET NEW.item_price = calc_item_price(NEW.order_id, dist);
END;
||


-- Триггер для обновления параметров заказа при добавлении послыки в список
DROP TRIGGER IF EXISTS update_order_after_insert_item ||
CREATE TRIGGER update_order_after_insert_item AFTER INSERT ON items
FOR EACH ROW 
BEGIN
	-- обновляем общий вес заказа
	UPDATE orders o SET o.total_weight = (SELECT sum(i.weight) FROM items i WHERE i.order_id = NEW.order_id) WHERE o.order_id = NEW.order_id;
	-- обновляем общую сумму заказа
	UPDATE orders o SET o.total_sum = (SELECT sum(i.item_price) FROM items i WHERE i.order_id = NEW.order_id) WHERE o.order_id = NEW.order_id;
END;
||


-- Триггер для обновления параметров заказа при изменении параметров посылки 
DROP TRIGGER IF EXISTS update_order_after_update_item ||
CREATE TRIGGER update_order_after_update_item AFTER UPDATE ON items
FOR EACH ROW 
BEGIN
	-- обновляем общий вес заказа
	UPDATE orders o SET o.total_weight = (SELECT sum(i.weight) FROM items i WHERE i.order_id = OLD.order_id) WHERE o.order_id = OLD.order_id;
	-- обновляем общую сумму заказа
	UPDATE orders o SET o.total_sum = (SELECT sum(i.item_price) FROM items i WHERE i.order_id = OLD.order_id) WHERE o.order_id = OLD.order_id;
END;
||


-- Триггер для обновления параметров заказа при удалении посылки 
DROP TRIGGER IF EXISTS update_order_after_delete_item ||
CREATE TRIGGER update_order_after_delete_item AFTER DELETE ON items
FOR EACH ROW 
BEGIN
	-- обновляем общий вес заказа
	UPDATE orders o SET o.total_weight = (SELECT sum(i.weight) FROM items i WHERE i.order_id = OLD.order_id) WHERE o.order_id = OLD.order_id;
	-- обновляем общую сумму заказа
	UPDATE orders o SET o.total_sum = (SELECT sum(i.item_price) FROM items i WHERE i.order_id = OLD.order_id) WHERE o.order_id = OLD.order_id;
END;
||



/*
 * Процедура подбирающая подходящий свободный автомобиль для выполнения заказа маршрутный лист (последовательность waybills).
 * Возможные способы использования - периодический запуск через определенные интервалы времени или с привязкой к событиям или триггерам.
 * Нет входящих параметров. 
 * Автоматически находит самый ранний заказ из handlers (по полю created_at) и в статусе awaiting.
 * Находит свободный, подходящий автомобиль для выполнения заказа и в случае наличия такого
 * в рамках транзакции переводит обработчик и заказ в статус выполнения, и создает точки маршрута в waybills пока по простому алгоритму - по порядку 
 */
DROP PROCEDURE IF EXISTS handle_orders||
CREATE PROCEDURE handle_orders ()
BEGIN
	-- находим заказ первый оплаченный заказ
	DECLARE order_id bigint UNSIGNED 
			DEFAULT (
				SELECT o.order_id  
				FROM orders o
				WHERE o.status = 'payed'
				LIMIT 1
			);

	-- подбираем свободный автомобиль 
	DECLARE car_id bigint UNSIGNED 
			DEFAULT (
				SELECT car_id
				FROM cars c
				WHERE 
					c.status = 'available'
					AND NOT EXISTS (SELECT 1 FROM handlers h WHERE h.car_id = c.car_id)
					AND c.capacity >= (
										SELECT o.total_weight 
										FROM orders o 
										WHERE o.order_id = order_id 
									  )
				LIMIT 1
				);
			
	-- добавляем заказ в обработчик и добавляем путевые листы
	IF order_id IS NOT NULL AND car_id IS NOT NULL THEN 
		-- создаем обработчик для заказа, назначаем автомобиль и переводим в статус 'в работе'
		INSERT INTO handlers (order_id, car_id, status) VALUES (order_id, car_id, 'working');
		
		-- создаем маршрутный лист
		INSERT INTO waybills (handler_id, item_id, item_order, item_status)
		SELECT 
			handler_id,
			i.item_id,
			ROW_NUMBER() OVER (PARTITION  BY h.handler_id ORDER BY i.item_id) AS item_order,
			'awaiting'
		FROM 
			handlers h
			JOIN orders o ON o.order_id = h.order_id 
			JOIN items i ON i.order_id = o.order_id 
		WHERE h.order_id = order_id;
	
	-- обновляем статус заказа
	UPDATE orders o
	SET o.status = 'in progress'
	WHERE o.order_id = order_id;

	END IF;
END;
||


DELIMITER ;

