*** root 접속
root> use madangdb;

root> drop user mdguest@localhost;
root> drop user mdguest2@localhost;

root> create user mdguest@localhost identified by 'mdguest';
root> create user mdguest2@localhost identified by 'mdguest2';

root> select * from mysql.user where user like 'mdguest%';
root> select * from mysql.user where user like 'madang%';

 -- mdguest, mdguest2는 유저 생성 후에, select 권한을 못받아서 아직 connection이 안된다.

root> grant all privileges on *.* to madang@localhost with grant option;
 -- root가 madang에게 다른 유저에게 권한을 줄 수 있는 옵션을 주었다 : with grant option

*** madang 접속
madang> grant select on madangdb.customer to mdguest@localhost with grant option;
 -- mdguest가 접속이 가능해 짐.
 -- mdguest는 madangdb.customer에 대해서, 다른 유저에게 select 권한을 줄 수 있다. (with grant option)

*** mdguest 접속
mdguest> grant select on madangdb.customer to mdguest2@localhost;
 -- mdguest2가 접속이 가능해 짐.

*** mdguest2 접속
mdguest2> select * from book; -- 가능

*** mdguest 접속
mdguest> revoke select on madangdb.customer from mdguest2@localhost;
 -- mdguest2가 접속 불가해 짐.

*** madang 접속
madang> revoke select on madangdb.customer from mdguest@localhost;
 -- mdguest가 접속 불가해 짐.

*** root 접속
root> drop user mdguest@'localhost';
root> drop user mdguest2@'localhost';
