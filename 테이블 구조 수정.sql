# database != table
SHOW DATABASES;
SHOW TABLES;
DESC customer_db;
USE mydata;
CREATE TABLE mytable(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  modelnumber VARCHAR(15) NOT NULL,
  series VARCHAR(30) NOT NULL,
  PRIMARY KEY(id)
  );
DROP TABLE mytable;
DESC mytable;

# 테이블 구조 수정(add/ *modify/ *change/ drop)
ALTER TABLE mytable MODIFY COLUMN name varchar(20) NOT NULL;
ALTER TABLE mytable MODIFY COLUMN model_num varchar(10) NOT NULL;
ALTER TABLE mytable MODIFY COLUMN model_type varchar(10) NOT NULL;
DESC mytable;
DROP TABLE mydata;
SHOW TABLES;
CREATE TABLE mytable(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  model_num VARCHAR(10)NOT NULL,
  model_type VARCHAR(10) NOT NULL,
  primary key(id)
  );
  