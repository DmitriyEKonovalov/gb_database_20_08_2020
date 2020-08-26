/*
 * 
Практическое задание к уроку 3

1. Проанализировать структуру БД vk, которую мы создали на занятии, 
   и внести предложения по усовершенствованию (если такие идеи есть). 
   Напишите пожалуйста, всё-ли понятно по структуре.

*/

/* 
 * TODO 01
 * Из очевидного, можно для начала добавить таблицу friends, для хранения списка друзей пользователей
 */
drop table if exists user_friends;
create table user_friends(
	user_id bigint unsigned not null,
	friend_id bigint unsigned not null,
	approved_datetime datetime,
	primary key (user_id, friend_id),
	foreign key (user_id) references users(id),
	foreign key (friend_id) references users(id),
);


/*
 * TODO 02Так же не хватает пользовательских коллекций контента разного типа, например music, videos, games
 * для примера возьмем music
 */
drop table if exists user_music;
create table user_music(
	user_id bigint unsigned not null,
	friend_id bigint unsigned not null,
	approved_datetime datetime,
	primary key (user_id, friend_id),
	foreign key (user_id) references users(id),
	foreign key (friend_id) references users(id),
);

/*
 * TODO 03
 * Сделать так, чтобы при удалении записи в базе, запись не удалялась физически (вдруг пригодится :)), а помечалась как удаленная, например добавить поле во все таблицы:
 * is_deleted bool default false
 * 
 * 
 */

/*
 * TODO 03
 * В исходной схеме, на мой взгляд избыточно разделение пользовательского контента разного типа на разные таблицы
 * в этом случае мы не сможем свободно делать композиции и иерархии из разных видов контента: например приложить к посту видео или к комментарию стикер.
 *
 * Исходя из того, что все что размещает пользователь от своего имени, включая лайки - является контентом, с определенным уровнем доступа, .
 * чтобы получить универсальность, я бы убрал таблицы для специфичного контента messages, posts, comments, photos
 * и вместо них сделал одну таблицу user_contents которая описывает некий абстрактный контент, со следующей информацией:
 * id контента, id пользователя разместившего контент, описательная часть контента, тип контента, ссылка на id родительского контента, 
 * ссылка на id или естоположение документа с контентом, ссылка на таблицу со списком пользователей, которым будет доступен этот контент.
 * 
 * Это позволит без создания дополнительных связующих таблиц выстраивать сложные древовидные структуры из разного типа контента, например
 * под постом опубликовать картинку, песню и стикер; к комментариям создавать новые комментарии или ответы в виде стикеров; 
 * ставить лайки к постам, комментам, видео; добавлять новые виды лайков к любому контенту без изменения структуры таблиц;
 * а также создавать новые формы взаимодействия типа чатов (где сообщение получают несколько пользователей) 
 * или репостов (где конент или даже ветка разного контента, доступная для одного пользователя становится доступным другим пользователям).
 * 
 * примерно так:
 */

-- таблица контента 
-- сами файлы с содержимым могут располагаться на диске или быть "завернуты" в документноориентированную noSQL базу
drop table if exists user_content;
create table user_content(
	content_id serial primary key,  -- id контента
	user_id bigint unsigned not null, -- id пользователя создавшего конттент
	post_datetime datetime, -- дата и время создания контента
	content_purpose ENUM('message', 'post', 'comment', 'like', 'unlike', 'ad'), -- назначение контента, 'message' - в сообщениях, 'post' - в ленте новостей, 'like' и 'unlike' - в уведомлениях, 'news' - реклмное объявление)
	content_type ENUM('plain_text', 'formated_text', 'pic', 'video', 'music', 'gif', 'sticker') -- тип контента, хранящий информацию о том, как его обрабатывать и отображать
	content_describe varchar(250), -- небольшое текстовое описание контента, которое в зависимости от типа может иметь разные доп. функции - заголовок/подпись/описание/первые строки
	file_id bigint unsigned, -- ссылка на файл контента
	parent_content_id bigint unsigned, -- ссылка на родительский контент (это может быть комментарием к посту, лайком к видео, сообщением в ответ на сообщение и т.д.)
	target_user_list bigint unsigned, -- ссылка на список получателей (адресатов) контента 
	foreign key (user_id) references users(id),
	foreign key (target_user_list) references target_user_list(target_list_id),
);

-- таблица списков получателей/адресатов контента
drop table if exists target_user_list;
create table target_user_list(
	target_user_list_id serial primary key,  -- id списка получателей
	user_id bigint unsigned not null, -- id пользователя
	foreign key (user_id) references users(id),
);



