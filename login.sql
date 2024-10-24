create database login;
use login;

select * from mysql.user;

create user 'abc'@'localhost' identified by 'abc123';

select * from mysql.user;

GRANT privilege ON CREATE TO 'abc'@'localhost';

GRANT CREATE ON login.* TO 'abc'@'localhost';

create user 'lml'@'localhost' identified by 'lml123';

grant all privileges on * . * to 'lml'@'localhost';

flush privileges;

