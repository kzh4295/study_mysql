select workdate, count(*) as cnt from  Dept 
group by workdate
having count(*) > 1;

select *, (case when pid = 0 then '최상위부서' else '부서' end) as ppid from Dept;

select * from Dept where id in (select dept from Emp where id in (1,2));
select sub.*
  from (select id as empid, dept from Emp where id < 3) sub;  

select * from Dept order by rand() desc;
select * from Dept limit 3, 2;

select * from Dept
-- update Dept set dname='서버팀' 
where id=6;

insert into Dept(pid, dname) values(2, '서버팀2')
   on duplicate key update dname=concat(dname, '222');
   
select * from Emp;

select e.*, d.dname
 from Dept d inner join Emp e on d.id = e.dept
 order by e.id;
 
 select e.*, d.dname
 from Dept d right outer join Emp e on d.id = e.dept
 order by e.id;
 
 desc Emp;
 select * from Dept;
 insert into Dept(pid, dname) values(2, 'DB팀');
 
 select e.*, d.dname
   from Dept d inner join Emp e on d.id = e.dept
  where e.id=7;
select * from Emp where id=7; 

-- delete from Dept where id=11;
 
alter table Dept add column captain int unsigned;

select * from Dept d inner join Emp e on d.id = e.dept;

update Dept d
   set captain = (select id from Emp where dept = d.id order by rand() limit 1);
   
select * from Dept
-- update Dept set captain = null
where id = 6;

select *, (select ename from Emp where id=d.captain) as '부서장명' from Dept d;

-- 3
select * from Dept d left outer join Emp e on d.captain = e.id;

-- 4
select * from Emp where dept is null;

-- 5
select * from Dept d left outer join Emp e on d.captain = e.id
UNION
select * from Dept d right outer join Emp e on d.captain = e.id;

-- cross join
select * from Dept, Emp;
select * from Dept;

select @@autocommit;

start transaction;

select * from Dept where id in (1,2);

savepoint sp1;
update Dept set dname='영업222' where id = 1;

savepoint sp2;
update Dept set dname='개발222' where id = 2;

commit;
rollback;

rollback to savepoint sp2;