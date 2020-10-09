/*
 * ������������ ������� � ����� 1-3
 * 1. ��������� ��� �������� �� ��������� �� vk.
 * 2. ��������� ����� �������.
 * 3. ��������� ��� �������� CRUD.
 */

drop database if exists snet2008;
create database snet2008;
use snet2008;

-- ��� ������������ CRUD ��������� �������� ����, 
-- ��������� �� ������ users (����������� � �����) � friend_requests 
-- (� �������� ����������� ������� �1) ��������� ��������� users - ���������� ���� deleted_at 

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  email varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  pass varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  name varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  surname varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  phone varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  gender char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  birthday date DEFAULT NULL,
  hometown varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  photo_id bigint(20) unsigned DEFAULT NULL,
  created_at datetime DEFAULT current_timestamp(),
  deleted_at datetime DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email (email),
  KEY phone (phone),
  KEY name (name,surname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

truncate table users; -- ��� ������� ��������

 

DROP TABLE IF EXISTS friend_requests;

CREATE TABLE friend_requests (
  initiator_user_id bigint(20) unsigned NOT NULL,
  target_user_id bigint(20) unsigned NOT NULL,
  status enum('requested','approved','unfriended','declined') COLLATE utf8_unicode_ci DEFAULT 'requested',
  requested_at datetime DEFAULT current_timestamp(),
  confirmed_at datetime DEFAULT NULL,
  PRIMARY KEY (initiator_user_id,target_user_id),
  KEY initiator_user_id (initiator_user_id),
  KEY target_user_id (target_user_id),
  CONSTRAINT friend_requests_ibfk_1 FOREIGN KEY (initiator_user_id) REFERENCES users (id),
  CONSTRAINT friend_requests_ibfk_2 FOREIGN KEY (target_user_id) REFERENCES users (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


/*
 * create INSERT
 */

-- #0 ��������� USERS ������� � ����� (������ ����-���� ��� ������� ��� ��������)
INSERT INTO users (email, pass, name, surname, phone, gender, birthday, hometown, photo_id, created_at) VALUES 
('qwe@asdf.qw','fdkjgsdflskdjfgsdfg142356214','������','�������','123123123','m','1983-03-21','��������',395,'2020-08-31 22:55:58.0')
,('ejaslem1@typepad.com','c2ca3c61fe024e49a9c758a109611c65aac31a15','����','��������','804-926-3977','f','1987-03-15','�����',652,'2020-08-31 22:55:58.0')
,('cattack2@unc.edu','5f91ea663688cc873be65a6cc107f07da84664ae','�����','�����','213-952-7247','f','1986-05-22','������',75,'2020-08-31 22:55:58.0')
,('scasotti3@usgs.gov','f93c320ee2275544eb1b42d8278133c343fa5030','��������','�����������','418-701-1526','f','1984-04-06','���������',418,'2020-08-31 22:55:58.0')
,('segginton4@cam.ac.uk','e6ab5f555555fb26c7c60ddd23c8118307804330','�������','�������','451-335-9033','m','1984-06-19','������� ����',865,'2020-08-31 22:55:58.0')
,('aswaddle5@altervista.org','b25e49362b83833eece7d225717f2e285213bf25','���������','���������','187-446-2339','m','1987-07-07','����������',72,'2020-08-31 22:55:58.0')
,('fleahey6@ftc.gov','07521436ef4b4ad464ed04cdceb99f422bbbd9c5','�������','�������','295-179-8252','m','1984-11-27','��������',763,'2020-08-31 22:55:58.0')
,('rcasley7@exblog.jp','5aac7b105729d4ad431db6a4e73604ecec132fa8','�����','��������','323-732-2265','m','1984-08-04',NULL,601,'2020-08-31 22:55:58.0')
,('rlantry8@pen.io','ba6c51c3064c20f9de84d4ed69733d9dd408e504','�����','��������','373-114-4657','f','1989-08-07','������-���������',713,'2020-08-31 22:55:58.0')
,('egoatcher9@behance.net','16f4e6ac1aedd2d9707b56d767f452f3246e67f7','������','�������','877-485-8608','m','1984-09-04','������',760,'2020-08-31 22:55:58.0')
,('dcolquita@ucla.edu','1487c1cf7c24df739fc97460a2c791a2432df062','�������','������','974-490-6651','m','1987-11-26','�������',663,'2020-08-31 22:55:58.0')
,('rthomazinb@ox.ac.uk','32afa0b02c8399d1960509c3fbd4cc75ab4dcce2','�����','������','815-155-7164','f','1984-11-28','��������������',34,'2020-08-31 22:55:58.0')
,('gambridgec@sakura.ne.jp','afd3e457d3b9f6f880623163ea8f72889777a58b','�����','���������','290-726-6453','f','1984-08-24','��������',178,'2020-08-31 22:55:58.0')
,('mantosikd@tinypic.com','9154186410a62369bdf4fd2bd632ca3511b270a7','������','����������','594-909-1863','f','1981-04-16','������ �����',791,'2020-08-31 22:55:58.0')
,('rtabere@admin.ch','9bc443a6e52541784d52b69acc39343526886b11','�����','������','696-647-1579','f','1988-08-10','�������',419,'2020-08-31 22:55:58.0')
,('ckendellf@bloglines.com','229aedb0a417bccab3ee0cbd89a4b1afaa080c51','�������','����������','107-890-2682','f','1980-01-07','������',723,'2020-08-31 22:55:58.0')
,('amckeandg@behance.net','584b9241b06cfe87131bfdba7b53e877ec3bd940','���������','���������','964-292-2963','m','1984-05-19','���������',357,'2020-08-31 22:55:58.0')
,('csantryh@mit.edu','129797dcb95127ce0541faa8d91d8f1969da0f45','�����','���������','311-847-3791','f','1982-10-20','������',617,'2020-08-31 22:55:58.0')
,('dharcasei@dailymotion.com','ea63b484704b7a8316da4025260b864453adb948','�����','�������','456-819-8247','f','1989-04-03','�������',10,'2020-08-31 22:55:58.0')
,('drouthamj@senate.gov','9b1f31426e9caf75d46b9b4a7c58c1941daa33f0','�����','�����������','925-942-8337','f','1983-05-07','���������',201,'2020-08-31 22:55:58.0')
,('eshetliff0@virginia.edu','9d0f9f7cdbe467af211a5d5bc91e2e16da891521','�����','�������','944-287-5153','f','1984-12-19','��������',973,'2020-08-31 22:55:58.0')
,('ldeguara1@bing.com','3866567f83079af02f517913d98a34e8a5514111','����','��������','677-482-0315','f','1982-04-19','���',264,'2020-08-31 22:55:58.0')
,('cdominick2@cnn.com','37cda6f77b46bb92ebfea535bdd89d6a145ee28a','������','�������','405-608-8011','f','1984-04-26','�������',400,'2020-08-31 22:55:58.0')
,('dbydaway3@hugedomains.com','340287d956987900a051e920136b2c1c17351321','�����','���������','215-916-8663','f','1980-02-08','���',206,'2020-08-31 22:55:58.0')
,('hpullin4@state.gov','d4a54226f86124d38f463d60c3658a32be191e0e','������','��������','261-961-7364','f','1983-11-22','�������',830,'2020-08-31 22:55:58.0')
,('lhulme5@tamu.edu','4cbd30f625fd3440804baf6f509246e8ff81d46b','�����','����������','131-548-9478','f','1982-03-27','��������',531,'2020-08-31 22:55:58.0')
,('ngrzesiak6@blogspot.com','89d65795895ed1c2f48114474ef37c92e1796dee','������','�������','125-346-2931','m','1988-08-03',NULL,164,'2020-08-31 22:55:58.0')
,('ewathall7@slate.com','011af674acb2a19440bb6a013d33dd9a231d53a4','������','��������','869-603-9405','m','1984-06-06','����������',228,'2020-08-31 22:55:58.0')
,('epindar8@oracle.com','e3e589b0cc498fb982ed1cbae5d20d3766e97b36','�������','���������','298-133-9919','m','1980-04-24','�����',648,'2020-08-31 22:55:58.0')
,('jdelacoste9@chicagotribune.com','2def62b6a77064a15b157222f1b43bb538a0293e','�������','���������','405-102-3201','f','1987-12-19','��������',555,'2020-08-31 22:55:58.0')
;


-- #1 ��������� ������������� ������� ����������� � ������
INSERT INTO friend_requests (initiator_user_id, target_user_id, status, requested_at, confirmed_at) VALUES 
 (8, 5, 'requested', '2011-02-13 08:13:41', NULL)
,(4, 10, 'requested', '2012-02-19 08:59:58', NULL)
,(1, 30, 'requested', '2013-08-10 15:18:06', NULL)
,(4, 11, 'requested', '2014-08-07 00:11:15', NULL)
,(10, 7, 'requested', '2015-04-05 18:30:28', NULL)
,(11, 2, 'requested', '2016-03-03 12:49:13', NULL)
,(11, 3, 'requested', '2017-01-09 18:31:24', NULL)
,(11, 4, 'requested', '2018-01-14 06:50:35', NULL)
,(11, 1, 'requested', '2019-01-09 18:31:24', NULL);



-- #2 ��� ������ ������������ (user_id = 30), �������� ����������� � ������ ���� ��� ����� � ��� � ����� ������ 

insert into
	friend_requests (initiator_user_id, target_user_id, status, requested_at, confirmed_at)
select
	30, users.id, 'requested', now(), null
from
	users
where
	users.id != 30
	and users.hometown = (select users.hometown from users where users.id = 30)
;
	

/*
 * read SELECT
 */


-- #1 ������� ���� ������������� � ���� �������� � ������
select *
from
	users 
where month(users.birthday) = 4
;

-- #2 ������� ������ ������������ ������ �������� ������ ����� �������� � ������
select
	u.*
from
	users u
where
	u.id = (
		select 
			max_f.initiator_user_id
		from (
			select
				f.initiator_user_id, 
				count(f.initiator_user_id) as cnt
			from
				friend_requests f
			group by
				f.initiator_user_id
			order by cnt desc
			limit 1
		) max_f	
		)
;

-- #3 ������� ������ �������������, ������� ��������� ��������� ������� ���� �����
-- �����, ���������� ������ �� ���� ��� ��������� �� �����, �� � ����� �������� ����������� ���� ��� �������
-- ������� ����� ���� ������� � join :)

select	
	* 
from 
	users u 
where
	exists (
			select 
				twin.initiator_user_id
			from (
				select 
					f.initiator_user_id,
					f.target_user_id 
				from 	
					friend_requests f
				where
	    			exists (
						select 1
						from 
							friend_requests f1
						where 
							f.initiator_user_id = f1.target_user_id 
							and f.target_user_id = f1.initiator_user_id 
					) 
    			) twin
    		where u.id = twin.initiator_user_id
	)
;


/*
 * update UPDATE
 */

-- #1 �������������� �������� ������ ��� ���� �������������
update 
	users 
set 
	users.hometown = "����-��������"
where 
	users.hometown = "��������"
;	

-- #1 �������� ������������ c id = 20, 4, 11 (��������� �������� � ���� deleted_at)
update 
	users 
set 
	users.deleted_at = now()
where 
	users.id in (20, 4, 11)
;



/*
 * delete DELETE, TRUNCATE
 */

-- �1 �������� ������ ������ 5 ���
delete
from 
	friend_requests f
where
	TIMESTAMPDIFF(YEAR, f.requested_at, now()) > 5
;	

-- #2 �������� ������ � ������ �� ��������� �������������
delete 
from friend_requests f
where 
	f.initiator_user_id in (
		select 
			u.id
		from  
			users u
		where 
			u.deleted_at is not null 
	)	


