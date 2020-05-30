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
    id            bigint not null,
    type          varchar   not null,
    description   varchar,
    primary key (id)
);

create table orders
(
    id           bigint  not null,
    id_portal    bigint  not null,
    id_customer  bigint  not null,
    date         date    not null,
    status_order varchar not null,
    total_price  money   not null,
    primary key (id)
);

alter table orders
    add constraint orders_portals_fk foreign key (id_portal) references portal (id) on delete cascade;
alter table orders
    add constraint orders_customers_fk foreign key (id_customer) references customers (id) on delete cascade;

insert into customers (id, name_org, contact, address, email) values (1, 'Фонд Перспективных Исследований', '+7(499)418-00-25', '121059, г. Москва, Бережковская наб., д. 22, стр. 3 ','fpi@fpi.gov.ru');
insert into customers (id, name_org, contact, address, email)
values (2, 'ЗАО «Юлмарт»', '+7(861)205-69-59', '196105, г. Санкт-Петербург, улица Решетникова, дом 14а',
        'sales.msk@ulmart.ru');
insert into customers (id, name_org, contact, address, email)
values (3, 'Департамент информационных технологий города Москвы', '+7(495)957-01-31', 'Россия, Москва, 1-й Красногвардейский пр-д, д. 21, стр. 1',
        'dit@mos.ru');
insert into customers (id, name_org, contact, address, email)
values (4, 'АО «Мерседес-Бенц РУС»', '+7(495)225-00-00', '125167 Moscow, Ленинградский проспект 39А',
        'mbc-reception@daimler.com');

insert into portal (id, type, description)
values (1, 'Drupal', 'Drupal – система управления содержимым (CMS), написанная на языке PHP и использующая в качестве хранилища данных реляционную базу данных (поддерживаются MySQL, PostgreSQL и другие). ');
insert into portal (id, type, description)
values (2, 'MS SharePoint', 'Microsoft SharePoint — это платформа для совместной работы, которая призвана обеспечить эффективное управление корпоративным контентом и увеличение производительности труда сотрудников.');
insert into portal (id, type, description)
values (3, 'Alfresco', 'Alfresco — платформа с открытым исходным кодом, предназначенная для создания корпоративных порталов, систем управления корпоративным контентом и бизнес-процессами. На протяжении многих лет Alfresco входит в квадрант лидеров систем класса Enterprise Content Management, составляемый аналитическим агентством Gartner Group.');
insert into portal (id, type, description)
values (4, 'Liferay', 'Liferay Portal — это open source платформа для разработки корпоративных порталов. Liferay Portal разработан на Java и работает на любой вычислительной платформе в среде Java Runtime Environment и сервере java-приложений.');

insert into orders(id, id_portal, id_customer, date, status_order, total_price)
values (1, 1, 1, '01.02.2022', 'Закрыт', 70000);
insert into orders(id, id_portal, id_customer, date, status_order, total_price)
values (2, 2, 2, '20.05.2021', 'Закрыт', 225000);
insert into orders(id, id_portal, id_customer, date, status_order, total_price)
values (3, 3, 3, '01.07.2023', 'Закрыт', 170000);
insert into orders(id, id_portal, id_customer, date, status_order, total_price)
values (4, 4, 4, '01.03.2022', 'Закрыт', 90000);

--insert into portal (id, type, description)
--values (1, 'PaaS', 'Platform as a Service — модель предоставления облачных вычислений, при которой потребитель получает доступ к использованию информационно-технологических платформ');
--insert into portal (id, type, description)
--values (2, 'SaaS', 'SaaS — одна из форм облачных вычислений, модель обслуживания, при которой подписчикам предоставляется готовое прикладное программное обеспечение, полностью обслуживаемое провайдером.');
--insert into portal (id, type, description)
--values (3, 'LaaS', 'Инфраструктура как услуга — одна из моделей обслуживания в облачных вычислениях, по которой потребителям предоставляются по подписке фундаментальные информационно-технологические ресурсы — виртуальные серверы с заданной вычислительной мощностью, операционной системой и доступом к сети.');