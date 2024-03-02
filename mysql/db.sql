-- https://stackoverflow.com/questions/10299148/mysql-error-1045-28000-access-denied-for-user-billlocalhost-using-passw
DELETE FROM	mysql.user WHERE User='';
DROP DATABASE test;
DELETE FROM mysql.db WHERE Db='test';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');


--  set root pwd
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('admin');

--  create wordpress assets
CREATE DATABASE WordPress;
CREATE USER admin@'%' IDENTIFIED by 'admin';
GRANT ALL PRIVILEGES ON WordPress.* TO admin@'%';

--  take effects
FLUSH PRIVILEGES;