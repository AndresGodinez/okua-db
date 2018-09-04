-- Deploy okua:init_s05_filter_receptors to mysql

BEGIN;

CREATE TABLE s05_filter_receptors (
  id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  rfc varchar(100) NOT NULL,
  valid tinyint DEFAULT 1 NOT NULL
) charset utf8 collate utf8_general_ci;

CREATE UNIQUE INDEX s05_filter_receptors_rfc_uindex ON s05_filter_receptors (rfc);

COMMIT;
