select current_user;

select @@time_zone;
show variables like '%time_zone%';

alter table Dept add column workdate timestamp not null default current_timestamp
          on update current_timestamp;
          
select * from Dept;

create table Test(
   ID int unsigned not null auto_increment,
   ttt varchar(31) not null,
   primary key(id)
 );
 
 select * from Test;
insert into Test(ttt, dept) values ('aaa1', 3),('aaa2',4),('aaa3', 5),('aaa4', 5),('aaa5', 7);
-- update Test set dept = f_rand1('34567');
 
 update Test set ttt='한글뷐😛' where id=25;
 select length('😀');
 show create table Test;	
 
 update Dept set dname='클라😛' where id=22;
 select * from Dept;
 
 -- truncate table Test;
 delete from Test where id > 0;
 
 select * from Dept
 -- update Dept set dname='클라팀'
 where id = 7;
 
 
 
          
          