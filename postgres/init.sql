CREATE TABLE public.addresses (
    address_id int PRIMARY KEY,
    addressLine1 varchar(255),
    addressLine2 varchar(255)
);

CREATE TABLE public.students (
    id varchar PRIMARY KEY,
    firstName varchar(255),
    lastName varchar(255),
    age int,
    address_id int references addresses
);

INSERT INTO public.addresses
(address_id, addressline1, addressline2)
VALUES(1, 'Bijlmer Arena', 'Amsterdam');

INSERT INTO public.addresses
(address_id, addressline1, addressline2)
VALUES(2, 'Den Haag HS', 'Den Haag');

INSERT INTO public.addresses
(address_id, addressline1, addressline2)
VALUES(3, 'Gent', 'Belgium');

INSERT INTO public.addresses
(address_id, addressline1, addressline2)
VALUES(4, 'Zwolle', 'Leeuwarden');

INSERT INTO public.students
(id, firstname, lastname, age, address_id)
VALUES('AG123', 'Tom', 'Clayton', 24, 1);

INSERT INTO public.students
(id, firstname, lastname, age, address_id)
VALUES('AG124', 'Peter', 'Hud', 22, 2);

INSERT INTO public.students
(id, firstname, lastname, age, address_id)
VALUES('AG125', 'Sierra', 'Joyce', 30, 3);

INSERT INTO public.students
(id, firstname, lastname, age, address_id)
VALUES('AG126', 'Roger', 'Day', 28, 4);

