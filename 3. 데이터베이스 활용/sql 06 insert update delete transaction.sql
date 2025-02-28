drop table customer;

truncate table customer; -- ���̺��� ���� ��θ� ����.

/*
 * insert / update / delete ������ ���� ���̺� �ۼ�
 */
create table customer
(
    cust_id VARCHAR(30) primary key
   ,cust_pwd VARCHAR(30) not null
   ,cust_name VARCHAR(30)
   ,cust_tel VARCHAR(13)
   ,cust_addr VARCHAR(90)
   ,cust_grade INTEGER
   ,cust_mileage INTEGER
);

/*
 * insert
 * - ���̺� data�� �Է��϶�� ��ɾ�
 * - into, values�� �Բ� ���
 * - into�� �Է��� ������ ���̺��� �����ϴ� ��ɾ�
 * - into�� �ڿ��� �Է��� ������ ���̺� �̸��� ��
 * - ���̺� �̸��� �ڿ��� �Է��� ������ �Ӽ��� �����ϴ� �Ұ�ȣ()�� ��
 * - �Ұ�ȣ()�� �ڿ��� values ��ɾ ��
 * - values�� ������ �Ӽ��� ������ ���� ������ �Ұ�ȣ()�� ����
 * - values�ڿ� ���� �Ұ�ȣ() ���� �Ӽ� ����
 *   ���̺� �̸��� �ڿ� ���� �Ұ�ȣ() ���� �Ӽ��� �ڸ��� ��ġ�� ���ƾ� ��
 * - �Ӽ� ��ü ���� �Է��ϴ� ���, ���̺� �̸� �ڿ� ���� �Ұ�ȣ() ���� ����
 * - insert into ���̺�� (�Ӽ�3, �Ӽ�4, �Ӽ�5, �Ӽ�2, �Ӽ�1)
 *   values(�Ӽ�3�� ���� data, �Ӽ�4�� ���� data, �Ӽ�5�� ���� data, �Ӽ�2�� ���� data, �Ӽ�1�� ���� data);
 */
insert into customer
(cust_id, cust_pwd, cust_name, cust_tel, cust_addr, cust_grade, cust_mileage)
values('apple', '1111', 'kimth', '010', 'seoul', 9, 1000);

insert into customer
(cust_id, cust_pwd, cust_name, cust_tel, cust_addr, cust_grade, cust_mileage)
values('apple', '1111', 'kimth', '010', 9, 'seoul', 1000); -- error -- 36������ 35������ ������ ����.

insert into customer
values('banana', '1111', 'jangdg', '010', 'seoul', 1, 1000);

insert into customer
values ('peach', '1111', 'ambor'); -- error -- ���̺� �� ���� �Ӽ� ����� ���� ���, ��ü �Ӽ� �Է��ؾ���.

insert into customer (cust_id, cust_pwd, cust_name, cust_grade, cust_mileage)
values('cherry', '1111', 'jangdonggun', 1, 1000);

alter table customer modify cust_grade integer default 1;

alter table customer modify cust_mileage integer default 1000;

insert into customer (cust_id, cust_pwd, cust_name)
values('peach', '1111', 'tipany');

insert into customer
 (cust_mileage, cust_grade, cust_id, cust_pwd, cust_name, cust_tel      , cust_addr)
values
 (1000        , 1         , 'apple' , '1111' , 'kimth'  , '010-9876-5432', '�����');

insert into customer values
 ('honggd', '010-9871-5431', '��õ��', 1000, 1, 'banana', '1111'); -- error
 
insert into customer values
 ('banana', '1111', 'honggd', '010-9871-5431', '��õ��', 1000, 1);

insert into customer values
 ('cherry', '1111', 'kanggc', '010-1871-1431', '������'); -- error

insert into customer
 (cust_grade, cust_mileage, cust_id, cust_pwd, cust_name)
values
 (1, 1000, 'cherry', '1111', 'kanggc');

alter table customer modify cust_grade integer default 1;

alter table customer modify cust_mileage integer default 1000;

desc customer;

insert into customer (cust_id, cust_pwd, cust_name)
values ('DragonFruit', '9999', 'GD'); 

truncate table customer;

/*
 * Start : Test Data �Է�.
insert into customer
(cust_id, cust_pwd, cust_name, cust_tel, cust_addr, cust_grade, cust_mileage)
values('apple', '1111', 'kimth', '010', 'seoul', 9, 1000);

insert into customer
values('banana', '1111', 'jangdg', '010', 'seoul', 1, 1000);

insert into customer (cust_id, cust_pwd, cust_name, cust_grade, cust_mileage)
values('cherry', '1111', 'jangdonggun', 1, 1000);

insert into customer (cust_id, cust_pwd, cust_name)
values('peach', '1111', 'tipany');
 * End : Test Data �Է�.
 */

/*
 * update
 * - ���̺� ���� data�� �����϶�� ��ɾ�
 * - set, where���� �Բ� ���
 * - update �ڿ��� �����Ϸ��� ���̺� �̸��� ��
 * - ���̺� �̸� �ڿ��� set ��ɾ ��
 * - set�� �����Ϸ��� �Ӽ��� ���� �����ϴ� ��ɾ�
 * - set�� �ڿ��� �����Ϸ��� (�Ӽ��� = ������) �� ��
 * - �����Ϸ��� (�Ӽ��� = ������)�� ,(comma) �� ����Ͽ� ������ �� �� ����
 * - ����!!! �ݵ�� where���� �̿��Ͽ�, �����Ϸ��� data�� ��Ȯ�� �����ؾ� ��!!!
 * - ����!!! �����Ϸ��� data�� ��Ȯ�� �������� ������, ������ data�� �����!!!
 * - Tip!!! ���忡���� ���� ����, ���� ��� data�� ���� select�� ���� ��, ������
 */
select * from customer
where cust_id = 'apple';

update customer set cust_name = 'kimtaehee', cust_mileage = 9000
where cust_id = 'apple';

/*
 * sql_safe_updates 1�� pk�� ���� update/delete�� �ƴϸ�, ������� �ʴ´�.
 */
update customer set cust_name = 'GDragon'; -- error

select @@sql_safe_updates;

set sql_safe_updates = 0;

select @@sql_safe_updates;

update customer set cust_name = 'GDragon';

set sql_safe_updates = 1;

select @@sql_safe_updates;

update customer c set c.cust_mileage = 2000
where c.cust_mileage = 1000; -- error

desc customer;

update customer c set c.cust_name = 'kimtaehee'
where c.cust_id = 'apple';

update customer c set c.cust_name = 'honggildong'
where c.cust_id = 'banana';

update customer c set c.cust_name = 'kanggamchan'
where c.cust_id = 'cherry';

/*
 * delete
 * - ���̺� ���� data row�� �����϶�� ��ɾ�
 * - from, where���� �Բ� ���
 * - delete�� �ڿ��� from�� ��
 * - from ���Ĵ� select�� ����� ����
 * - ����!!! �ݵ�� where���� �̿��Ͽ�, �����Ϸ��� data�� ��Ȯ�� �����ؾ� ��!!!
 * - ����!!! �����Ϸ��� data�� ��Ȯ�� �������� ������, ������ data�� ������!!!
 * - Tip!!! ���忡���� ���� ����, ���� ��� data�� ���� select�� ���� ��, ������
 */
select * from customer
where cust_id = 'banana';

delete from customer
where cust_id = 'banana';

/*
 * transaction = trans + action
 * - DB server�� ���޵� ����� ���� �Ϸ�� ���¸� commit�̶�� ��
 * - DB server�� ���޵� ����� ���� ��, ����Ϸ���, ���������� autocommit�� false �����̾�� ��
 * - autocommit�� false ���¿����� ��� ������ ����� �� ����
 * - DB server�� ���޵� ����� ������ ����ϴ� ��ɾ rollback�̶� ��
 * - DB server�� ���޵� ����� ������ Ȯ���ϴ� ��ɾ commit�̶�� ��
 * - DB server�� autocommit ���¸� �ٲٴ� ��� : set autocommit = true / set autocommit = false
 * - DB server�� autocommit ���¸� Ȯ���ϴ� ��� : select @@autocommit
 */

select @@autocommit; -- 1:autocommit true, 0:autocommit false.

set autocommit = 0; -- false
set autocommit = 1; -- true
set autocommit = false;
set autocommit = true;

/* Start : truncate table customer; -- rollback �ȵ�.
 * set autocommit = false;
 * delete from customer where cust_id = 'apple';
 * select * from customer;
 * rollback; -- apple�� ������ ����� ��ҵȴ�.
 * select * from customer;
 * truncate table customer; -- rollback �ȵ�.
 * select * from customer;
 * rollback;
 * select * from customer;
 * End : truncate table customer; -- rollback �ȵ�.
 */

set autocommit = false;

truncate table customer; -- rollback �ȵ�.

insert into customer
values('apple', '1111', 'kimtaehee', '010', 'seoul', 9, 9000);

select * from customer;

rollback; -- apple�� insert�� ����� ��ҵ�.

select * from customer;

insert into customer
values('apple', '1111', 'kimtaehee', '010', 'seoul', 9, 9000);

commit; -- �ܺ� ��Ű���� �ݿ��� apple �����Ͱ� ����� ���� ��Ű���� ���� ���� ��ġ�� �ݿ���.

select * from customer;

rollback;

select * from customer;

set autocommit = true;

insert into customer
values('banana', '1111', 'tiffany', '010', 'seoul', 1, 1000); -- insert�� �Բ� commit �Ϸ�.

select * from customer;

rollback;

select * from customer;

set autocommit = false;

select @@autocommit;

delete from customer where cust_id = 'peach';

select * from customer;

rollback; -- peach�� ������ ����� ��ҵ�.

select * from customer;

/*
 * delete�� rollback ����.
 * truncate�� rollback �Ұ���.
 */
set autocommit = false;

select @@autocommit;

truncate table customer;

select * from customer;

rollback;

select * from customer;

/* Ʈ����� �ǽ� */
set autocommit = false;

select @@autocommit;

insert into customer (cust_id, cust_pwd, cust_name) values ('apple', '1111', 'kim');

select * from customer;

rollback;

select * from customer;

insert into customer (cust_id, cust_pwd, cust_name) values ('apple', '1111', 'kim');

commit; -- ���� ��ġ�� �ݿ� �Ϸ�.

select * from customer;

rollback;

select * from customer;

/* �ϳ��� Ʈ������̶�� �ǹ� */
set autocommit = false;

select @@autocommit;

insert into customer (cust_id, cust_pwd, cust_name) values ('banana', '2222', 'hong');
insert into customer (cust_id, cust_pwd, cust_name) values ('cherry', '3333', 'kang');

commit; -- ���� ��ġ�� �ݿ� �Ϸ�.

select * from customer;

delete from customer where cust_id = 'apple';
select * from customer;
delete from customer where cust_id = 'banana';
select * from customer;
delete from customer where cust_id = 'cherry';
select * from customer;

rollback; -- commit�� �����ϱ� �������� �ϳ��� Ʈ�����.

select * from customer;

/* savepoint */
set autocommit = false;

select @@autocommit;

select * from customer;

delete from customer where cust_id = 'apple';
select * from customer;
savepoint sa1; -- sa1�� �ܼ��� ������.
delete from customer where cust_id = 'banana';
select * from customer;
delete from customer where cust_id = 'cherry';
select * from customer;

rollback to sa1; -- sa1 ���� rollback.

select * from customer;

rollback;

select * from customer;
