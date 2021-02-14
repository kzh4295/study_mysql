select current_user;

select @@time_zone;
show variables like '%time_zone%';

alter table Dept add column workdate timestamp not null default current_timestamp
          on update current_timestamp;
		
select * from Dept;

create table Test(
   id int unsigned not null auto_increment,
   ttt varchar(31) not null,
   primary key(id)
 );
 
 select * from Test;
 
select * from Dept
-- update Dept set dname='클라'
  where id = 7;
  


 
      