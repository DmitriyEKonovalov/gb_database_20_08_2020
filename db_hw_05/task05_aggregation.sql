/*
 * Практическое задание теме «Агрегация данных»
*/

/*
 * Подсчитайте средний возраст пользователей в таблице users.
 */
select
	avg(TIMESTAMPDIFF (year , birthday_at, current_date())) as age
from
	users;


/*
 * Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 * Следует учесть, что необходимы дни недели текущего года, а не года рождения.
 */
select
	date_format(cast(CONCAT_WS('.', day(birthday_at), month(birthday_at), year(current_date())) as date), '%W') as day_week,
	count(*)
from
	users
group by
	day_week ;


/*
 * (по желанию) 
 * Подсчитайте произведение чисел в столбце таблицы.
 */

SELECT 
	exp(sum(log(id))) 
FROM users
 