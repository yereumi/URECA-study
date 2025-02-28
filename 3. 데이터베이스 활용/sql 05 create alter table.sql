/*
 * create table : ���̺��� ����� ��ɾ�
 * - create table ���̺��̸� ( �Ӽ��̸� datatype(ũ��), �Ӽ��̸� datatype(ũ��) );
 */
create table customer
(
    -- �Ӽ��� �Ӽ���datatype (data size)
    cust_id integer primary key
    -- primary key = not null + unique
    -- not null : data�� �ݵ�� �־�� �Ѵ�.
    -- unique : ���� ���̺��� unique �Ӽ��� �� row�� �ִ� ���� �����ؾ� �Ѵ�.(�ߺ� X)
    , cust_nm varchar(30) -- �ѱ��� �ѱ��ڰ� 3byte
    , join_date datetime
    , drop_yn char(1)
);

drop table customer;

create table customer
(
    cust_id varchar(30) primary key
    , cust_pwd varchar(30)
    , cust_name varchar(30)
    , cust_hphone varchar(13) -- 010-1234-5678
    , cust_post_code varchar(5)
    , cust_addr varchar(150)
    , cust_addr_detail varchar(150)
    , cust_grade integer
    , cust_mile integer
);

/*
 * desc : ���̺� ������ �����޶�� ��ɾ�
 */
desc customer;

/*
 * alter table : ���̺� ������ �����϶�� ��ɾ�
 * - add : �Ӽ� �߰�
 * - modify : �Ӽ� ����
 * - rename column [�����Ӽ��̸�] to [���Ӽ��̸�] : �Ӽ� �̸� ����
 * - drop column : �Ӽ� ����
 */
alter table customer
    -- add(cust_age numeric(3));
    -- modify cust_age decimal(5,2);
    -- rename column cust_mile to cust_mileage;
    drop column cust_age;

desc customer;

alter table customer add(cust_age numeric(3));

desc customer;

alter table customer modify cust_grade varchar(30);

desc customer;

alter table customer rename column cust_mile to cust_mileage;

desc customer;

alter table customer modify cust_grade integer;
alter table customer modify cust_mileage decimal(7, 0);

desc customer;

alter table customer drop column cust_age;

desc customer;

/*
 * drop table : ���̺� ����
 * drop table [���̺��̸�]
 */
drop table customer
