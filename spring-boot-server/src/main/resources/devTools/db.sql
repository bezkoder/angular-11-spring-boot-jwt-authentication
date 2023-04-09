drop table user_roles;
drop table roles;
drop table users;

create table users
(
    id       bigint auto_increment
        primary key,
    username varchar(20)  not null,
    email    varchar(50)  not null,
    password varchar(120) not null,
    constraint email
        unique (email),
    constraint username
        unique (username)
);

create table roles
(
    id   int auto_increment
        primary key,
    name varchar(20) null
);
insert into roles (name) values ("ROLE_USER"),("ROLE_MODERATOR"),("ROLE_ADMIN");

create table user_roles
(
    user_id bigint not null,
    role_id int    not null,
    primary key (user_id, role_id),
    constraint fk_user_role_role
        foreign key (role_id) references roles (id),
    constraint fk_user_role_user
        foreign key (user_id) references users (id)
);