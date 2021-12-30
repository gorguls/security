create table hibernate_sequence (next_val bigint) engine=InnoDB;

insert into hibernate_sequence values ( 1 );

create table user_roles
(
    user_id bigint not null,
    role varchar(255)
) engine=InnoDB;

create table users
(
    id bigint not null,
    active bit not null,
    name varchar(255),
    password varchar(255),
    surname varchar(255),
    username varchar(255),
    primary key (id)
) engine=InnoDB;

alter table user_roles add constraint user_fk foreign key (user_id) references users (id);