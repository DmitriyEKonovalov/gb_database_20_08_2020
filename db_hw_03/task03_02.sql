 /*
  * 
Практическое задание к уроку 3

2. Добавить необходимую таблицу/таблицы для того, 
   чтобы можно было использовать лайки для медиафайлов, постов и пользователей.
   
*/


-- необходимо добавить таблицу like_list
drop table if exists like_list;
create table like_list(
	like_list_id serial primary key,  -- id списка лайков
	user_id bigint unsigned not null, -- id пользователя
	-- like_type ENUM('like', 'unlike', 'hot', 'sad', 'lol')  -- для расширения возмодностей еще может быть поле с типом лайка
	foreign key (user_id) references users(id),
);

/*
 * В остальные таблицы с контентом, которому можно ставить лайки нужно добавить поле
 * like_list_id bigint unsigned
 * 
 */
