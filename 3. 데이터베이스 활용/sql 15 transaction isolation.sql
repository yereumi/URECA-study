******* test1 : ureca�� madang�� �ΰ� �������� ����.

ureca> use madangdb;
ureca> select * from book;

madang> use madangdb;
madang> set autocommit = false;
madang> select @@autocommit;
madang> start transaction;
madang> update book set price = 7000 where bookid = 1;
madang> select * from book;

ureca> update book set price = price - 1000 where bookid = 1; -- ���� ���� ���ؼ� ���� �߻�.

madang> commit;

******* test2 : ureca�� madang�� �ΰ� �������� ����.

ureca> use madangdb;
ureca> set autocommit = false;
ureca> commit;
ureca> set transaction isolation level read committed;
ureca> start transaction;
ureca> select sum(price) from book; -- 144500

madang> use madangdb;
madang> set autocommit = false;
madang> set transaction isolation level read committed;
madang> start transaction;
madang> select sum(price) from book;
madang> update book set price = 7500 where bookid = 1;
madang> select sum(price) from book; -- 145000
madang> commit;

ureca> select sum(price) from book; -- 145000 -- madang�� ���濡 ������ ����.

******* test3 : ureca�� madang�� �ΰ� �������� ����.

ureca> use madangdb;
ureca> set autocommit = false;
ureca> commit;
ureca> set transaction isolation level repeatable read;
ureca> start transaction;
ureca> select sum(price) from book; -- 145000

madang> use madangdb;
madang> set autocommit = false;
madang> set transaction isolation level read committed;
madang> start transaction;
madang> select sum(price) from book;
madang> update book set price = 7000 where bookid = 1;
madang> select sum(price) from book; -- 144500
madang> commit;

ureca> select sum(price) from book; -- 145000 -- madang�� ���濡 ������ ���� ����.
