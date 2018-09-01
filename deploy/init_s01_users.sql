-- Deploy okua:init_s01_users to mysql

BEGIN;

create table s01_users
(
  id BIGINT(19) auto_increment primary key,
  name VARCHAR(100) not null,
  username VARCHAR(100) not null,
  email VARCHAR(255) not null,
  pswd VARCHAR(100) not null,
  reg_creation_date datetime default null,
  reg_status TINYINT(3) default 1 not null,
  constraint email_UNIQUE unique (email),
  constraint users_username_uindex unique (username)
) charset utf8 collate utf8_general_ci
;

create index id_INDEX on s01_users (id);

COMMIT;
