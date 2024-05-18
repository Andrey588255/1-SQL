create table if not exists customers(
    id int,
    name varchar(255)
);

create table if not exists orders(
    id int,
    customerId int
);

insert into Customers (Id, Name) values ('1', 'Joe');
insert into Customers (Id, Name) values ('2', 'Henry');
insert into Customers (Id, Name) values ('3', 'Sam');
insert into Customers (Id, Name) values ('4', 'Max');

insert into Orders (Id, CustomerId) values ('1', '3');
insert into Orders (Id, CustomerId) values ('2', '1');

select name as customers
from customers c
left join orders o on c.id = o.customerId
where o.customerId is null;




