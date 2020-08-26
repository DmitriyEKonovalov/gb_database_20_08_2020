/*
 * 
������������ ������� � ����� 3

1. ���������������� ��������� �� vk, ������� �� ������� �� �������, 
   � ������ ����������� �� ������������������ (���� ����� ���� ����). 
   �������� ����������, ��-�� ������� �� ���������.

*/

/* 
 * TODO 01
 * �� ����������, ����� ��� ������ �������� ������� friends, ��� �������� ������ ������ �������������
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
 * TODO 02��� �� �� ������� ���������������� ��������� �������� ������� ����, �������� music, videos, games
 * ��� ������� ������� music
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
 * ������� ���, ����� ��� �������� ������ � ����, ������ �� ��������� ��������� (����� ���������� :)), � ���������� ��� ���������, �������� �������� ���� �� ��� �������:
 * is_deleted bool default false
 * 
 * 
 */

/*
 * TODO 03
 * � �������� �����, �� ��� ������ ��������� ���������� ����������������� �������� ������� ���� �� ������ �������
 * � ���� ������ �� �� ������ �������� ������ ���������� � �������� �� ������ ����� ��������: �������� ��������� � ����� ����� ��� � ����������� ������.
 *
 * ������ �� ����, ��� ��� ��� ��������� ������������ �� ������ �����, ������� ����� - �������� ���������, � ������������ ������� �������, .
 * ����� �������� ���������������, � �� ����� ������� ��� ������������ �������� messages, posts, comments, photos
 * � ������ ��� ������ ���� ������� user_contents ������� ��������� ����� ����������� �������, �� ��������� �����������:
 * id ��������, id ������������ ������������� �������, ������������ ����� ��������, ��� ��������, ������ �� id ������������� ��������, 
 * ������ �� id ��� ������������� ��������� � ���������, ������ �� ������� �� ������� �������������, ������� ����� �������� ���� �������.
 * 
 * ��� �������� ��� �������� �������������� ��������� ������ ����������� ������� ����������� ��������� �� ������� ���� ��������, ��������
 * ��� ������ ������������ ��������, ����� � ������; � ������������ ��������� ����� ����������� ��� ������ � ���� ��������; 
 * ������� ����� � ������, ���������, �����; ��������� ����� ���� ������ � ������ �������� ��� ��������� ��������� ������;
 * � ����� ��������� ����� ����� �������������� ���� ����� (��� ��������� �������� ��������� �������������) 
 * ��� �������� (��� ������ ��� ���� ����� ������� ��������, ��������� ��� ������ ������������ ���������� ��������� ������ �������������).
 * 
 * �������� ���:
 */

-- ������� �������� 
-- ���� ����� � ���������� ����� ������������� �� ����� ��� ���� "���������" � ������������������������� noSQL ����
drop table if exists user_content;
create table user_content(
	content_id serial primary key,  -- id ��������
	user_id bigint unsigned not null, -- id ������������ ���������� ��������
	post_datetime datetime, -- ���� � ����� �������� ��������
	content_purpose ENUM('message', 'post', 'comment', 'like', 'unlike', 'ad'), -- ���������� ��������, 'message' - � ����������, 'post' - � ����� ��������, 'like' � 'unlike' - � ������������, 'news' - �������� ����������)
	content_type ENUM('plain_text', 'formated_text', 'pic', 'video', 'music', 'gif', 'sticker') -- ��� ��������, �������� ���������� � ���, ��� ��� ������������ � ����������
	content_describe varchar(250), -- ��������� ��������� �������� ��������, ������� � ����������� �� ���� ����� ����� ������ ���. ������� - ���������/�������/��������/������ ������
	file_id bigint unsigned, -- ������ �� ���� ��������
	parent_content_id bigint unsigned, -- ������ �� ������������ ������� (��� ����� ���� ������������ � �����, ������ � �����, ���������� � ����� �� ��������� � �.�.)
	target_user_list bigint unsigned, -- ������ �� ������ ����������� (���������) �������� 
	foreign key (user_id) references users(id),
	foreign key (target_user_list) references target_user_list(target_list_id),
);

-- ������� ������� �����������/��������� ��������
drop table if exists target_user_list;
create table target_user_list(
	target_user_list_id serial primary key,  -- id ������ �����������
	user_id bigint unsigned not null, -- id ������������
	foreign key (user_id) references users(id),
);



