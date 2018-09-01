-- Deploy okua:init_s04_tmp_emitters to mysql

BEGIN;

CREATE TABLE s04_tmp_emitters (
  id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(255),
  rfc varchar(20) NOT NULL,
  email varchar(255) NOT NULL
) charset utf8 collate utf8_general_ci;

CREATE INDEX s04_tmp_emitters_rfc_index ON s04_tmp_emitters (rfc);

CREATE INDEX s04_tmp_emitters_email_index ON s04_tmp_emitters (email);


COMMIT;
