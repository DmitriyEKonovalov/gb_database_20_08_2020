/*
 * ПРЕДСТАВЛЕНИЯ 
*/

use delivery;

-- представление по всем автомобилям 
-- (состояние, ответственные, какой заказ выполняют в текущий момент)
CREATE OR REPLACE VIEW get_cars_status AS 
WITH emp_info AS (
	SELECT 
		eng.car_id,
		emp.employe_id ,
		concat(emp.last_name, ' ', emp.first_name, ' ', emp.middle_name) AS emp_name,
		o.name AS oc_name
	FROM 
		engagements eng
		JOIN employees emp ON emp.employe_id = eng.employe_id 
		JOIN occupations o ON o.occupation_id = eng.occupation_id 
	)
SELECT 
	c.car_id,
	c.mark,
	c.reg_num,
	c.capacity, 
	c.status,
	(SELECT e.emp_name FROM emp_info e WHERE e.oc_name = 'водитель' AND e.car_id = c.car_id) AS "водитель",
	(SELECT e.emp_name FROM emp_info e WHERE e.oc_name = 'механик' AND e.car_id = c.car_id) AS "механик",
	(SELECT e.emp_name FROM emp_info e WHERE e.oc_name = 'бригадир' AND e.car_id = c.car_id) AS "бригадир",
	handle_order.order_id	AS "номер заказа",
	handle_order.customer_name	AS "заказчик"
FROM 
	cars c 
	LEFT JOIN (
		SELECT  
			h.car_id,
			o.order_id,
			concat(cus.name,', ', cus.type_of_own) AS customer_name
		 FROM 
		 	handlers h 
		 	JOIN orders o ON o.order_id = h.order_id 
		 	JOIN customers cus ON cus.customer_id = o.order_id 
		WHERE 
			h.status = 'working'
		) handle_order ON handle_order.car_id = c.car_id;

	
	
-- представление для отображения списка текущих заказов, 
-- их статуса, исполнителя и кол-во доставленных посылок в составе заказа
CREATE OR REPLACE VIEW current_orders AS 
SELECT 
	o.order_id 								AS "номер заказа",
	concat(cus.name,', ', cus.type_of_own) 	AS "заказчик",
	o.total_sum 							AS "сумма заказа",  
	o.total_weight 							AS "вес заказа", 
	o.status 								AS "статус заказа",
	hand_inf.driver 						AS  "исполнитель",
	hand_inf.auto 							AS  "авто",
	concat('Завершено: ', 
		item_info.item_done_num, 
		' из ', total_item) 				AS "прогресс выполнения"
FROM 
	orders o 
	JOIN customers cus ON cus.customer_id = o.customer_id 
	LEFT JOIN (
		SELECT 
			h.order_id,
			concat(emp.last_name, ' ', emp.first_name, ' ', emp.middle_name) AS driver,
			concat(c.mark,' гос. номер: ', c.reg_num) AS auto
		FROM 
			handlers h 
			JOIN cars c ON c.car_id = h.car_id 
			JOIN engagements e ON e.car_id = c.car_id 
			JOIN occupations oc ON oc.occupation_id = e.occupation_id AND oc.name = 'водитель'
			JOIN employees emp ON emp.employe_id = e.employe_id 
	) hand_inf ON hand_inf.order_id = o.order_id 
	LEFT JOIN (
		SELECT 
			i.order_id,
			sum(CASE WHEN w.item_status = 'done' THEN 1 ELSE 0 END) AS item_done_num,
			count(i.item_id) AS total_item
		FROM 
			items i 
			LEFT JOIN waybills w ON w.item_id = i.item_id 			
		GROUP BY 
			i.order_id 
	) item_info ON item_info.order_id = o.order_id 
WHERE 
	o.status != 'completed';

