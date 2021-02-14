use testdb;

create table Dept(
  id tinyint unsigned not null auto_increment,
  pid tinyint unsigned not null default 0 comment '상위부서id',
  dname varchar(31) not null,
  PRIMARY KEY(id)
);

create table Emp(
  id int unsigned not null auto_increment,
  ename varchar(31) not null,
  dept tinyint unsigned not null,
  salary int not null default 0,
  primary key(id),
  foreign key(dept) references Dept(id)
);
 
 