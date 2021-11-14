create database test_db;

CREATE TABLE `test_db`.`employee` (
  `idemployee` INT NOT NULL,
  `employee_name` VARCHAR(45) NOT NULL DEFAULT '--',
  `qualification` VARCHAR(20) ,
  `experience` int ,
   PRIMARY KEY (`idemployee`)
  );
  CREATE TABLE `test_db`.`department`(
  `iddepartment`INT NOT NULL,
  `dept_name` VARCHAR(45),
  `personid` int,
  primary key (`iddepartment`),
  foreign key (`personid`) references `test_db`.`employee`(`idemployee`)
  );
  truncate table `test_db`.`department`;

  insert into `test_db`.`employee`(`idemployee`,`employee_name`,`qualification`,`experience`)
  values
  (1,'abc','b.tech',3),
  (2,'xyz','b.com',4),
  (3,'pqr','phd',5),
  (4,'mno','b.tech',12)
  ;
  insert into `test_db`.`department`(`iddepartment`,`dept_name`,`personid`)
  values
  (001,'IT','4'),
  (002,'SALES','3'),
  (003,'FINANCE','1')
  ;
  select*from `test_db`.`employee`
  inner join `test_db`.`department` on `test_db`.`employee`.`idemployee`=`test_db`.`department`.`personid`;
  
  select*from `test_db`.`employee`
  left join `test_db`.`department` on `test_db`.`employee`.`idemployee`=`test_db`.`department`.`personid`;
  
   select*from `test_db`.`employee`
  right join `test_db`.`department` on `test_db`.`employee`.`idemployee`=`test_db`.`department`.`personid`;
   

SELECT 
    `employee_name`, `dept_name`
FROM
    `test_db`.`employee` full
        JOIN
    `test_db`.`department` ON `idemployee` = `personid`;
  
  select `test_db`.`employee`.`idemployee` from `test_db`.`employee`
  union all
  select `test_db`.`department`.`personid`from `test_db`.`department`;
