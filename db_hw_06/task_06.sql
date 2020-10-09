/*
 * 1. Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения.
 * 
 * Пусть задан некоторый пользователь.  
 * 2.  Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
 * 3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
 * 4. Определить кто больше поставил лайков (всего) - мужчины или женщины?
 * 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
*/

/*
 * 1. Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения
 */
-- 
-- Получить id друзей пользователя (id = 72) 


-- №3 вариант без использования union
 SELECT
	CASE
		WHEN fr.initiator_user_id = 72 THEN fr.target_user_id
		WHEN fr.target_user_id = 72 THEN fr.initiator_user_id
	END AS friend_id
FROM
	friend_requests fr
WHERE
	(fr.initiator_user_id = 72 OR fr.target_user_id = 72)
	AND fr.status = 'approved' ;




-- Список друзей пользователя 1 с преобразованием пола и возраста 
 SELECT
	u.id,
	u.name,
	u.surname,
	timestampdiff(YEAR,birthday, now()) AS age,
	IF(u.gender = 'f', 'Мужчина', 'Женщина' ) AS gender
FROM
	users u
JOIN (
	SELECT
		IF(fr.initiator_user_id = 72, fr.target_user_id, fr.initiator_user_id) AS id
	FROM
		friend_requests fr
	WHERE
		(fr.initiator_user_id = 72 OR fr.target_user_id = 72)
		AND fr.status = 'approved' 
	) friends ON friends.id = u.id ;
	

/*
 * 2.  Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
 */

SELECT talks.talk_friend_id, count(mes.id) AS cnt
FROM messages mes 
	JOIN (
		SELECT  
			m.id,
			IF (m.from_user_id = 72, m.to_user_id, m.from_user_id) 					AS talk_friend_id,
			IF (fr.initiator_user_id = 72, fr.target_user_id, fr.initiator_user_id) AS friend_id
		FROM 
			messages m 
			JOIN friend_requests fr
		WHERE 
			m.from_user_id = 72 
			OR m.to_user_id = 72 
			OR fr.initiator_user_id = 72 
			OR fr.target_user_id = 72
	) talks ON talks.id = mes.id AND talks.talk_friend_id = talks.friend_id
GROUP BY talks.talk_friend_id
ORDER BY cnt DESC 
LIMIT 1
;

/*
 * 3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
 * (таблицы лайков в моем варианте базы нет, поэтому сделал аналогичный скрипт с постами),
 * который подсчитывает кол-во постов, которые оставили 10 самых молодых пользователей
 */

SELECT count(p.id)
FROM posts p
	JOIN (SELECT u.id FROM users u ORDER BY u.birthday DESC LIMIT 10) users ON users.id = p.user_id 


/*
 * 4. Определить кто больше поставил лайков (всего) - мужчины или женщины?
 * (таблицы лайков в моем варианте базы нет, поэтому сделал аналогичный скрипт с постами),
 * который определяет кто больше поставил лайков (всего) - мужчины или женщины
 */

SELECT 
	IF(u.gender = 'f', 'Мужчины', 'Женщины' ) AS gender
	,count(p.id) AS cnt
FROM posts p
	JOIN users u ON u.id = p.user_id 
GROUP BY u.gender 
ORDER BY cnt DESC 
LIMIT 1


/*
 * 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
 * в качестве активности выбирается общее кол-во действий пользователя: постов, сообщений и отправленных приглашений в друзья
 */

SELECT 
	act.user_id, 
	act.post_num + act.mes_num + act.req_num AS total_activity
FROM (
	SELECT 
		u.id 																							AS user_id
		,(SELECT count(p.id) FROM posts p WHERE p.user_id = u.id) 										AS post_num
		,(SELECT count(m.to_user_id) FROM messages m WHERE m.from_user_id = u.id) 						AS mes_num
		,(SELECT count(fr.target_user_id) FROM friend_requests fr WHERE fr.initiator_user_id = u.id)	AS req_num
	FROM users u
) act 
ORDER BY total_activity 
LIMIT 10
