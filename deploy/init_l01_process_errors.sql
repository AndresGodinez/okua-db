-- Deploy okua:init_l01_process_errors to mysql

BEGIN;

create table l01_process_errors
(
  id BIGINT(19) auto_increment primary key,
  code INT(10) default -1 not null,
  description VARCHAR(255) not null,
  email VARCHAR(100) not null,
  email_datetime DATETIME null,
  reg_datetime DATETIME null
) charset utf8 collate utf8_general_ci
;

create unique index id_UNIQUE on l01_process_errors (id);

create index l01_process_errors_code_index on l01_process_errors (code);

create index l01_process_errors_email_datetime_index on l01_process_errors (email_datetime);

create index l01_process_errors_email_index on l01_process_errors (email);

COMMIT;
