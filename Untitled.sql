create database book;

use book;
create table tbl_height(
  id int unsigned not null auto_increment,
  name varchar(10),
  height int,
  primary key(id)
);

insert into tbl_height(name, height) values ('길동', 149.59), ('철수', 172), ('도준', 168), ('혜린', 149.5);
 
select * from tbl_height;

use 