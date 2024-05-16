 create table person(
    personId int,
    firstname varchar(255),
    lastname varchar(255)
);
create table address(
    addressId int,
    personId int,
    city varchar(255),
    state varchar(255)
);

insert into person(personId, firstname, lastname)
VALUES (1,'Wang', 'Allen');

insert into address(addressId, personId, city, state)
VALUES (1,2, 'New York City', 'New York');

select p.firstname,
       p.lastname,
       a.city,
       a.state
from person p
left join address a on p.personId = a.personId;
