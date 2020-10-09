 /*
  * 
������������ ������� � ����� 3

2. �������� ����������� �������/������� ��� ����, 
   ����� ����� ���� ������������ ����� ��� �����������, ������ � �������������.
   
*/


-- ���������� �������� ������� like_list
drop table if exists like_list;
create table like_list(
	like_list_id serial primary key,  -- id ������ ������
	user_id bigint unsigned not null, -- id ������������
	-- like_type ENUM('like', 'unlike', 'hot', 'sad', 'lol')  -- ��� ���������� ������������ ��� ����� ���� ���� � ����� �����
	foreign key (user_id) references users(id),
);

/*
 * � ��������� ������� � ���������, �������� ����� ������� ����� ����� �������� ����
 * like_list_id bigint unsigned
 * 
 */
