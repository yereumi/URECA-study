*** root ����
root> use madangdb;

root> drop user mdguest@localhost;
root> drop user mdguest2@localhost;

root> create user mdguest@localhost identified by 'mdguest';
root> create user mdguest2@localhost identified by 'mdguest2';

root> select * from mysql.user where user like 'mdguest%';
root> select * from mysql.user where user like 'madang%';

 -- mdguest, mdguest2�� ���� ���� �Ŀ�, select ������ ���޾Ƽ� ���� connection�� �ȵȴ�.

root> grant all privileges on *.* to madang@localhost with grant option;
 -- root�� madang���� �ٸ� �������� ������ �� �� �ִ� �ɼ��� �־��� : with grant option

*** madang ����
madang> grant select on madangdb.customer to mdguest@localhost with grant option;
 -- mdguest�� ������ ������ ��.
 -- mdguest�� madangdb.customer�� ���ؼ�, �ٸ� �������� select ������ �� �� �ִ�. (with grant option)

*** mdguest ����
mdguest> grant select on madangdb.customer to mdguest2@localhost;
 -- mdguest2�� ������ ������ ��.

*** mdguest2 ����
mdguest2> select * from book; -- ����

*** mdguest ����
mdguest> revoke select on madangdb.customer from mdguest2@localhost;
 -- mdguest2�� ���� �Ұ��� ��.

*** madang ����
madang> revoke select on madangdb.customer from mdguest@localhost;
 -- mdguest�� ���� �Ұ��� ��.

*** root ����
root> drop user mdguest@'localhost';
root> drop user mdguest2@'localhost';
