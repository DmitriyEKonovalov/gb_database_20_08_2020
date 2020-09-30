/*
 * ДЕМОНСТАРЦИЯ ФУНКЦИОНАЛЬНОСТИ (проверка триггеров, функций и представлений через имитацию бизнес-процесса)
 * запускать построчно :)
*/


use delivery;

-- проверка функции distance
SELECT distance(0, 0, 10, 10);

-- проверка функции max_dist
SELECT max_dist(2, 5);

-- проверка представления get_cars_status
SELECT * FROM get_cars_status;

-- проверка триггера engage_employees_after_car_insert
-- добавляем новый автомобиль
INSERT INTO cars (reg_num, mark, capacity, status) VALUES 
('H432PP 178', 'Renault Kangoo', 300, 'in service');

-- снова смотрим через представление get_cars_status, что к автомобилю назначились ответственные
SELECT * FROM get_cars_status;

-- проверка представления  current_orders
SELECT * FROM current_orders;

-- добавляем заказы 
INSERT INTO orders (customer_id) VALUES 
(1), (2), (3), (4), (5), (6), (2), (5), (1);

-- снова проверяем статус заказов
SELECT * FROM current_orders;

-- проверка триггеров set_item_price_before_insert и update_order_after_insert_item
-- добавляем посылки к заказам
INSERT INTO items (order_id, weight, x_load, y_load, x_unload, y_unload) VALUES 
(1, 500,	10, 10, 50, 40), 
(2, 20, 	1, 0.5, 10, 2), 
(2, 100,	1, 0.5, -3, 2.5), 
(3, 50,		-3, -1, 2, 2), 
(3, 50,		-3, -1, 6, 1), 
(3, 50,		-3, -1, -2, 7), 
(4, 5,		0, 3, 100, 80), 
(5, 1,	1, -1, 12, -1.5), 
(5, 1, 2.2, -1, 12, -1.5), 
(6, 1000, -200, 500, 2, 2), 
(7, 12, 2, -3, 50, 40), 
(8, 12, 3, -7, 20, 30), 
(9, 300, -4, -3, 20, -10); 

-- и снова проверяем статус заказов
SELECT * FROM current_orders;

-- проверям назначение исполнителей при смене статуса заказа на "оплачен"
UPDATE orders SET orders.status = 'payed' WHERE orders.order_id = 1;

-- смотрим статус заказов
SELECT * FROM current_orders;

-- проверка процедуры handle_orders для назначения ответсвенных
CALL handle_orders();

-- смотрим статус заказов
SELECT * FROM current_orders;

-- оплачиваем еще один заказ
UPDATE orders SET orders.status = 'payed' WHERE orders.order_id = 2;

-- смотрим статус заказов
SELECT * FROM current_orders;

-- назначаем ответсвенных
CALL handle_orders();

-- смотрим статус заказов
SELECT * FROM current_orders;

-- выполняем доставку одной посылки одного из заказов
UPDATE waybills w SET w.item_status = 'done' WHERE w.item_id = 2;

-- смотрим статус заказов
SELECT * FROM current_orders;

-- выполняем доставку второй посылки одного из заказов
UPDATE waybills w SET w.item_status = 'done' WHERE w.item_id = 3;

-- смотрим статус заказов
SELECT * FROM current_orders;

-- триггера на апдейт статуса посылок еще нет, поэтому дальше с заказом ничего не происходит 
