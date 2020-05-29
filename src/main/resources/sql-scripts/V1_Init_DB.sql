--edmc
create table customers
(
    id       bigint  not null,
    name_org varchar not null,
    contact  varchar not null,
    address  varchar not null,
    email    varchar not null,
    primary key (id)
);

create table platforms
(
    id         bigint  not null,
    id_license bigint  not null,
    type       varchar not null,
    primary key (id)
);

create table licenses
(
    id             bigint  not null,
    type_license   varchar not null,
    base_edition   bool,
    extend_edition bool,
    corp_edition   bool,
    price          money   not null,
    primary key (id)
);

create table orders
(
    id           bigint  not null,
    id_platform  bigint  not null,
    id_customer  bigint  not null,
    status_order varchar not null,
    mobile_app   bool    not null,
    total_price  money   not null,
    primary key (id)
);

alter table platforms
    add constraint platforms_licenses_fk foreign key (id_license) references licenses (id) on delete cascade;
alter table orders
    add constraint orders_platforms_fk foreign key (id_platform) references platforms (id) on delete cascade;
alter table orders
    add constraint orders_customers_fk foreign key (id_customer) references customers (id) on delete cascade;

insert into customers (id, name_org, contact, address, email)
values (1, 'НПФ «ЛУКОЙЛ-ГАРАНТ»', '8(800)200-5-999', '300013, Тульская область, г. Тула, ул. Радищева',
        'cc@open-npf.ru');
insert into customers (id, name_org, contact, address, email)
values (2, 'Банк ДЕРЖАВА', '8(800)302-04-80', '119435, Москва, Большой Саввинский переулок, д. 2', 'dp@derzhava.ru');
insert into customers (id, name_org, contact, address, email)
values (3, 'ЭкоСтройСервис»', '8(800)350-74-89',
        '142784, г. Москва, 22-й км Киевское Шоссе , БЦ "Румянцево",  ОФИС 612, 6 этаж, блок Б', 'info@ess89.ru');
insert into customers (id, name_org, contact, address, email)
values (4, 'АО «Приокский завод цветных металлов»', '+7(49131)3-20-00',
        '391303 РОССИЯ, РЯЗАНСКАЯ ОБЛАСТЬ, Г.КАСИМОВ, МКР.ПРИОКСКИЙ', 'pzcm@zvetmet.ru');
insert into customers (id, name_org, contact, address, email)
values (5, 'Мобильные ТелеСистемы', '8(800)250-08-90', '109147, ул. Марксистская, 4, Москва, Россия',
        'corpservice@mts.ru');

insert into licenses (id, type_license, base_edition, extend_edition, corp_edition, price)
values (1, 'На подключение', false, false, true, 250000);
insert into licenses (id, type_license, base_edition, extend_edition, corp_edition, price)
values (2, 'На подключение', false, true, false, 37000);
insert into licenses (id, type_license, base_edition, extend_edition, corp_edition, price)
values (3, 'Серверная', false, false, true, 95000);
insert into licenses (id, type_license, base_edition, extend_edition, corp_edition, price)
values (4, 'Серверная', false, true, false, 60000);
insert into licenses (id, type_license, base_edition, extend_edition, corp_edition, price)
values (5, 'На подключение', true, false, false, 120000);

insert into platforms (id, id_license, type)
values (1, 1, 'Docsvision');
insert into platforms (id, id_license, type)
values (2, 2, 'ELMA');
insert into platforms (id, id_license, type)
values (3, 3, 'Логика на Alfresco');
insert into platforms (id, id_license, type)
values (4, 4, 'Directum');
insert into platforms (id, id_license, type)
values (5, 5, 'DirectumRX');

insert into orders(id, id_platform, id_customer, status_order, mobile_app, total_price)
values (1, 1, 1, 'Закрыт', true, 310000);
insert into orders(id, id_platform, id_customer, status_order, mobile_app, total_price)
values (2, 2, 2, 'Закрыт', true, 85000);
insert into orders(id, id_platform, id_customer, status_order, mobile_app, total_price)
values (3, 3, 3, 'Интеграционное тестирование', false, 100000);
insert into orders(id, id_platform, id_customer, status_order, mobile_app, total_price)
values (4, 4, 4, 'Закрыт', true, 135000);
insert into orders(id, id_platform, id_customer, status_order, mobile_app, total_price)
values (5, 5, 5, 'Тестируется', false, 0);


--cloud_computing
create table customers
(
    id       bigint,
    name_org varchar not null,
    contact  varchar not null,
    address  varchar not null,
    email    varchar not null,
    primary key (id)
);

create table portal
(
    id            bigint,
    type          varchar   not null,
    description   varchar,
    available_sol varchar   not null,
    date          timestamp not null,
    price         money     not null,
    primary key (id)
);

create table orders
(
    id           bigint  not null,
    id_portal    bigint  not null,
    id_customer  bigint  not null,
    status_order varchar not null,
    total_price  money   not null,
    primary key (id)
);

alter table orders
    add constraint orders_portals_fk foreign key (id_portal) references portal (id);
alter table orders
    add constraint orders_customers_fk foreign key (id_customer) references customers (id);

insert into customers (id, name_org, contact, address, email)
values (1, '', '', '',
        '');
insert into customers (id, name_org, contact, address, email)
values (2, '', '', '',
        '');
insert into customers (id, name_org, contact, address, email)
values (3, '', '', '',
        '');
insert into customers (id, name_org, contact, address, email)
values (4, '', '', '',
        '');
insert into customers (id, name_org, contact, address, email)
values (5, '', '', '',
        '');

insert into portal (id, type, description, available_sol, date, price)
values (1, '', '', '', '', 0);
insert into portal (id, type, description, available_sol, date, price)
values (1, '', '', '', '', 0);
insert into portal (id, type, description, available_sol, date, price)
values (1, '', '', '', '', 0);
insert into portal (id, type, description, available_sol, date, price)
values (1, '', '', '', '', 0);
insert into portal (id, type, description, available_sol, date, price)
values (1, '', '', '', '', 0);
insert into portal (id, type, description, available_sol, date, price)
values (1, '', '', '', '', 0);




