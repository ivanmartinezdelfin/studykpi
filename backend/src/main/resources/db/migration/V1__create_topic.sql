create table topic (
    id bigserial primary key,
    name varchar(120) not null,
    category varchar(80) not null,
    target_hours_per_week integer not null check (target_hours_per_week >= 0)


);