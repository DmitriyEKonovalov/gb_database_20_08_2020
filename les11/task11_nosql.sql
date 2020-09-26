/*
 * 
 * Практическое задание по теме “NoSQL”
 * 
 */


/*
 * 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
*/
-- создаем хэш, который отвечает за все ip адреса, в качесте ключабужете ip адрес в виде строки, а значением - кол-во посещений
HSET ip_count '127.0.0.1' 0
-- при получении каждого ip вызываем команду
INCR ip_count '127.0.0.1' 

/*
 * 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.
*/

-- данные 
hset users user1 'mail1'
hset users user2 'mail2'

-- поиск электронного адреса пользователя по его имени
hget users user1

-- поиска имени пользователя по электронному адресу
-- я не нашел способа в redis найти ключ по значению, везде, включая методичку сказано что всегда нужен ключ
-- есть только варианты вытаскивать все ключи через запросы в других языках и там в цикле перебирать


/*
 * 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
*/

db.shop.insert({category_id: 1, category_name: 'Процессоры'})
db.shop.insert({category_id: 2, category_name: 'Материнские платы'})
db.shop.insert({category_id: 3, category_name: 'Видеокарты'})
db.shop.insert({category_id: 4, category_name: 'Жесткие диски'})
db.shop.insert({category_id: 5, category_name: 'Оперативная память'})
db.shop.insert({products_id: 1, products_name: 'Intel Core i3-8100', products_description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 7890.00, catalog_id: 1})
db.shop.insert({products_id: 2, products_name: 'Intel Core i5-7400', products_description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 12700.00, catalog_id: 1})
db.shop.insert({products_id: 3, products_name: 'AMD FX-8320E', products_description: 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', price: 4780.00, catalog_id: 1})
db.shop.insert({products_id: 4, products_name: 'AMD FX-8320', products_description: 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', price: 7120.00, catalog_id: 1})
db.shop.insert({products_id: 5, products_name: 'ASUS ROG MAXIMUS X HERO', products_description: 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX.', price: 19310.00, catalog_id: 2})
db.shop.insert({products_id: 6, products_name: 'Gigabyte H310M S2H', products_description: 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX.', price: 4790.00, catalog_id: 2})
db.shop.insert({products_id: 7, products_name: 'MSI B250M GAMING PRO', products_description: 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', price: 5060.00, catalog_id: 2})

