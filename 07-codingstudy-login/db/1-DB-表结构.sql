create table if not exists `07-codingstudy_login`.product_table
(
    product_id   varchar(50)   not null,
    product_name varchar(45)   not null,
    num          int           null,
    price        decimal(8, 2) null,
    constraint `PRIMARY`
        primary key (product_id)
);

create table if not exists `07-codingstudy_login`.sys_backend_api_table
(
    backend_api_id   varchar(45) not null,
    backend_api_name varchar(45) not null,
    backend_api_url  varchar(45) not null,
    pid              varchar(45) null,
    backend_api_sort int         not null,
    description      varchar(45) null,
    constraint `PRIMARY`
        primary key (backend_api_id)
);

create table if not exists `07-codingstudy_login`.sys_frontend_menu_table
(
    frontend_menu_id   varchar(45)  not null,
    frontend_menu_name varchar(45)  not null,
    frontend_menu_url  varchar(45)  null,
    pid                varchar(45)  null,
    frontend_menu_sort int          not null,
    description        varchar(100) null,
    constraint `PRIMARY`
        primary key (frontend_menu_id)
);

create table if not exists `07-codingstudy_login`.sys_role_backend_api_table
(
    id             int auto_increment
        constraint `PRIMARY`
        primary key,
    role_id        varchar(45) not null,
    backend_api_id varchar(45) not null
);

create table if not exists `07-codingstudy_login`.sys_role_frontend_menu_table
(
    id               int auto_increment
        constraint `PRIMARY`
        primary key,
    role_id          varchar(45) not null,
    frontend_menu_id varchar(45) not null
);

create table if not exists `07-codingstudy_login`.sys_role_table
(
    role_id     varchar(45) not null,
    role_name   varchar(20) not null,
    description varchar(45) null,
    constraint sys_role_table_pk
        unique (role_id)
);

alter table `07-codingstudy_login`.sys_role_table
    add constraint `PRIMARY`
        primary key (role_id);

create table if not exists `07-codingstudy_login`.sys_role_user_table
(
    id      int auto_increment
        constraint `PRIMARY`
        primary key,
    role_id varchar(45) not null,
    user_id varchar(45) not null
);

create table if not exists `07-codingstudy_login`.sys_user_table
(
    user_id     varchar(50)  not null,
    user_name   varchar(45)  not null,
    pass_word   varchar(100) not null,
    description varchar(800) null,
    state       int          null,
    constraint `PRIMARY`
        primary key (user_id)
);

