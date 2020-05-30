--commonDB

create table result_sum
(
    id          serial  not null,
    name_db     varchar not null,
    total_price numeric not null,
    primary key (id)
);
