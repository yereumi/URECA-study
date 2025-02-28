/*
 * ���� ������ ���� ���̺� ��
 * - ���� data �Է��� ����
 */
 create table product
(
    prod_no VARCHAR(15)
   ,prod_name VARCHAR(60)
   ,prod_price integer
   ,prod_stock integer
   ,prod_company VARCHAR(60)
);

select * from product;

insert into product values(null,null,null,null,null);
insert into product values(null,null,null,null,null);
insert into product values(null,null,null,null,null);

select * from product;

drop table product;

create table product
(
    prod_no VARCHAR(15) primary key
   ,prod_name VARCHAR(60) unique
   ,prod_price integer
   ,prod_stock integer
   ,prod_company VARCHAR(60) not null
);

select * from product;

insert into product values(null,null,null,null,null); -- error

insert into product values ('p01', null, null, null, null); -- error

insert into product values ('p01', null, null, null, '���');
insert into product values ('p02', null, null, null, '���'); -- unique�� null�� ��.
insert into product values ('p03', null, -1500, -100, '���'); -- ������ ���, ���� ����.

select * from product;

drop table product;

/*
 * ���� ������ �ִ� ���̺� ��
 * - �̻��� data�� �Է��� ����
 *
 * ���� ����(CONSTRAINT)�̶�?
 * ���̺� ����/�̻��� data�� �Է��� �����ϱ� ����, �ּ����� ��Ģ�� �ǹ�
 *
 * ���� ������ ����
 * - primary key : not null + unique + �ڵ� index ����
 * - foriegn key : �ܺ� ���̺��� ����/����/���� �����ϰ� ���ִ� �Ӽ�
 * - not null : data�� �ݵ�� �Է��ؾ� �ϴ� �Ӽ�
 * - unique : �ٸ� row�� �ִ� ���� �Ӽ��� data�� �ߺ��Ǹ� �ȵǴ� �Ӽ�
 * - check : ������ ���� �Է� data�� �˻��ϴ� ���� ����
 */
create table product
(
    prod_no VARCHAR(15) primary key
   ,prod_name VARCHAR(45) unique
   ,prod_price integer check(prod_price >= 0)
   ,prod_stock integer check(prod_stock >= 0)
   ,prod_company VARCHAR(30) not null
);

select * from product;

insert into product values('1', '�����', -1000, 10, '���'); -- error -- -1000
insert into product values('1', '�����', 1000, 10, null); -- error -- not null
insert into product values('1', '�����', 1000, 10, '���');
insert into product values('1', '���ĸ�', 1000, 10, '���'); -- error -- pk
insert into product values('2', '�����', 1000, 10, '���'); -- error -- unique
insert into product values('2', '���ĸ�', 1000, 10, '���');
insert into product values('p01', '�����', null, null, '���');

select * from product;

insert into product values('p01','�����',-1500,-100,'���'); -- error -- -1500 -100

select * from product;

insert into product values('p01','�ſ�����',1500,100,'���');

select * from product;

drop table product;

create table product(
	prod_no varchar(15) primary key
    , prod_name varchar(60) unique not null
    , prod_price integer check(prod_price >= 0) not null default 0
    , prod_stock integer check(prod_stock >= 0) not null default 0
    , prod_company varchar(60) not null
);

insert into product values('p01', '�����', null, null, '���'); -- error
insert into product values('p02', '���ĸ�', -1500, 10, '���'); -- error -- check
insert into product(prod_no, prod_name, prod_company) values('p03', '¯��', '���');

/*
 * ���� ������ Ȯ���ϴ� sql��
 * - select * from information_schema.table_constraints;
 */
select * from information_schema.table_constraints;

DROP TABLE `product`;

CREATE TABLE `product` (
  `prod_no` varchar(15) NOT NULL,
  `prod_name` varchar(60) NOT NULL,
  `prod_price` int NOT NULL DEFAULT '1000',
  `prod_stock` int NOT NULL DEFAULT '0',
  `prod_company` varchar(60) NOT NULL,
  PRIMARY KEY `product_no_pk` (`prod_no`),
  UNIQUE KEY `product_name_uk` (`prod_name`),
  CONSTRAINT `product_price_chk` CHECK ((`prod_price` >= 0)),
  CONSTRAINT `product_stock_chk` CHECK ((`prod_stock` >= 0))
);

select * from information_schema.table_constraints where constraint_schema = 'ureca';

/*
 * ���� ������ ���� / �߰�
 * ���� - �⺻Ű) ALTER TABLE [���̺��] ADD CONSTRAINT [���������̸�] PRIMARY KEY(�÷���);
 * ���� - �ܷ�Ű) ALTER TABLE [���̺��] DROP FOREIGN KEY [���������̸�];
 * ���� - �ܷ�Ű) ALTER TABLE [���̺��] ADD CONSTRAINT [���������̸�] FOREIGN KEY(�÷���)
 *             REFERENCES [�θ����̺��](PK�÷���) [ON DELETE CASCADE / ON UPDATE CASCADE];
 */

alter table dept add constraint dept_no_pk primary key(deptno);

select * from information_schema.table_constraints where constraint_schema = 'ureca';

alter table emp add constraint emp_deptno_fk foreign key(deptno)
	references dept(deptno) on update cascade;

select * from information_schema.table_constraints where constraint_schema = 'ureca';

alter table emp drop foreign key emp_deptno_fk;

select * from information_schema.table_constraints where constraint_schema = 'ureca';

select * from information_schema.table_constraints where table_name = 'product';

alter table product drop constraint product_chk_1;

select * from information_schema.table_constraints where table_name = 'product';

alter table product add constraint chk_prod_price check(prod_price >= 0);

select * from information_schema.table_constraints where table_name = 'product';

alter table dept add constraint dept_dname_uk unique(dname);

select * from information_schema.table_constraints where table_name = 'dept';

alter table dept drop constraint dept_dname_uk;

select * from information_schema.table_constraints where table_name = 'dept';
