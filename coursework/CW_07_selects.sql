/*
 * ЗАПРОСЫ (нагляднее проверка будет после выполеннеия файла 'demo and tests')
*/

USE delivery;

-- немного отчетности: 
-- выборка-отчет заказа (с детализацией и исполнителями) по номеру id
SET @order_id = 2;
SELECT concat('Заказ №', CAST(o.order_id AS char)) AS " ", " ", "  ", " ", " ", " ", " " FROM orders o WHERE o.order_id = @order_id
UNION ALL 
-- SELECT "________________________", " ", "  ", " ", " ", " ", " "
-- UNION ALL 
SELECT "Общая стоимость:", o.total_sum, "Общий вес:", o.total_weight, "Статус:", o.status, " " FROM orders o WHERE o.order_id = @order_id
UNION ALL 
SELECT "________________________", " ", "  ", " ", " ", " ", " "
UNION ALL
SELECT "Исполнитель: ", " ", "  ", " ", " ", " ", " "
UNION ALL
SELECT 
	'Водитель:',
	emp.last_name, 
	emp.first_name,
	emp.middle_name,
	'(автомобиль):',
	c.mark,
	c.reg_num
FROM 
	handlers h
	JOIN cars c ON c.car_id = h.car_id 
	JOIN engagements e ON e.car_id = c.car_id 
	JOIN occupations o ON o.occupation_id = e.occupation_id AND o.name = 'водитель'
	JOIN employees emp ON emp.employe_id = e.employe_id 
WHERE h.order_id = @order_id 
UNION ALL 
SELECT "________________________", " ", "  ", " ", " ", " ", " "
UNION ALL 
SELECT "Состав заказа:", "", "", "", "", "", ""
UNION ALL 
SELECT "id послыки ", "вес посылки ", "точка загрузки ", "точка выгрузки ", "стоимость доставки ", " ", " "
UNION ALL 
SELECT "-----------------", "-----------------", "-----------------", "-----------------", "-----------------", "", ""
UNION ALL 
SELECT 
	i.item_id, 
	i.weight,
	concat('(', CAST(truncate(i.x_load, 2) AS char), ',', CAST(truncate(i.y_load, 2) AS char), ')') AS load_point,
	concat('(', CAST(truncate(i.x_unload, 2) AS char), ',', CAST(truncate(i.y_unload, 2) AS char), ')') AS unload_point,
	i.item_price,
	"",
	""
FROM items i WHERE order_id = @order_id
;


-- немного аналитики: 
-- анализ фактической стоимости доставки в пересчете на километр на основании всех заказов клиента, сортировка от самой высокой стоимости к самой низкой
SELECT
	c.name, 
	truncate(sum(max_dist(distance(0, 0, i.x_load, i.y_load), distance(0, 0, i.x_unload, i.y_unload))), 2) AS "сумма километров по всем заказам",
	truncate(o.total_sum, 2) AS "общая сумма по всем заказам",
	truncate(o.total_sum / sum(max_dist(distance(0, 0, i.x_load, i.y_load), distance(0, 0, i.x_unload, i.y_unload))), 2) AS "стоимость километра"
FROM 
	customers c 
	JOIN orders o ON o.customer_id = c.customer_id 
	JOIN items i ON i.order_id = o.order_id 
GROUP BY c.name
ORDER BY 4 DESC 
;

