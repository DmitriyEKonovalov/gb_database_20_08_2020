/*
 * ������������ ������� � ����� 4
 * ��������� ������-������� ��� �������� ������.
 */

/*
 * ����� ������������� � ������ ������� ���������������, ����� �������� ����� ����� �������� ������
 * ����� ����� ������ ����� ����������� ������ � ���������� ������-������? 
 * ������� ������ ������, ����� ���� ����� CRUD�� ����� � ������������ ��� ����� ������ ������, �� ����� ������� ������-������ �����������?
 * 
 * �������� ��� ����� ������� ��� ��������� ������� ������������� ��������
 * ��� ������ ���������� ����� ��������������� ����������
 * 1. ������� ������ ��������� � ������������ ���������� � ����������, ������� �������������� ������
 * 2. ������� ������ ��������� � ������������ ���������� �� ����������� ��������, � �������� (��������/���� � ����� ��������/���� � ����� ��������)
 * 3. ������� ������ ��������� � ������������ ���������� � ������� � �������� ���������� (�������, �������, � ����, ���������)
 * 4. ������� ������ ������������ ������ ��������� ������ � ������������ � ���������� ��������
 * 5. ������� ������ ������������ �������������� ������ ��������� ������ � ����� �������� 
 * 
 * ** ���� ������ �������, ����� ���������
 * 6. ������� ������ ��������� � ������������ ���������� � ������� ��������
 * 7. ������� ������ ��������� � ������������ ���������� � ���������� ������ �� ������
 * 8. ������� ������ ������������ ������ ������ ��������, ��������:
 *  	- ������ ��������: ���� ����� �������� -> (���� �����) -> ���� ����� ��������
 * 		- ���� ������� � �������� �� �����: ��������� ����� �������� -> (����� �������) -> ����� 
 * 		- �������� �� ������: ����� -> (����� �������) -> ����� ����� �������� 
 * 		- ���������� �� ���� � ���� : ���� ���� -> (����� �������) -> ���� ���� 
 * 		- � �.�.
 * 9. ������� ������ ������������ ����������� �� ��������� ����� �������� � ����������� � ������� �������� � ������������� �����������
 *
 * ��������� ������ ����� �������� �����:
 * 
 */

DROP TABLE IF EXISTS cars;
-- ����������
CREATE TABLE cars (
	car_id bigint unsigned NOT NULL AUTO_INCREMENT, -- id
	reg_num varchar(20) COLLATE utf8_unicode_ci,		-- ��������������� �����
	mark 	varchar(50) COLLATE utf8_unicode_ci,		-- ����� ����
	status 	enum ('free', 'to start', 'to finish')		-- ������ ����
	x_pos	float										-- ������� � ���������� ����
	y_pos	float										-- ������� � ���������� ����
	PRIMARY KEY (id),
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS customers;
-- ���������
CREATE TABLE customers (
	customer_id bigint unsigned NOT NULL AUTO_INCREMENT, 	-- id
	type_of_own varchar(20) COLLATE utf8_unicode_ci,		-- ����� �������������
	name  		varchar(300) COLLATE utf8_unicode_ci,		-- ��������
	inn 		bigint,										-- ���
	tariff		float,										-- ����������� ������ ������ ��� ������� 
	PRIMARY KEY (customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS orders;
-- ������
CREATE TABLE orders(
	order_id	bigint unsigned NOT NULL AUTO_INCREMENT, 	-- id ������
	customer_id bigint,									-- id ��������� 
	volume  	float,									-- ����� �������
	weight 		float,									-- ��� �������
	ship_sum 	decimal,								-- ����� ������
	PRIMARY KEY (order_id),
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS waybills;
-- �������� (������� �����)
CREATE TABLE waybills(
	waybill_id 	bigint unsigned NOT NULL AUTO_INCREMENT,-- id �����
	order_id	bigint unsigned NOT NULL,						-- id ������ 
	car_id  	float,									-- id ����������
	x_pick 		float,									-- � ���������� ��������� �����
	y_pick		float,									-- y ���������� ��������� �����
	x_delivery 	float,									-- x ���������� �������� �����
	y_delivery 	float,									-- y ���������� �������� �����
	status 		enum('awaiting', 'moving', 'delivered'),-- ������ �������� 
	PRIMARY KEY (waybill_id),
	FOREIGN KEY (order_id) REFERENCES orders (order_id)
	FOREIGN KEY (car_id) REFERENCES cars (car_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




