create table if not exists Employee(
    id int,
    name varchar(255),
    salary int,
    managerId int
);
Truncate table Employee

insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', null);
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', null);

Select *
FROM Employee e
INNER JOIN Employee m
ON m.ManagerId = e.Id
WHERE e.Salary > m.Salary
