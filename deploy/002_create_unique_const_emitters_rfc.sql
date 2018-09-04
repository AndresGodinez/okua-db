-- Deploy okua:002_create_unique_const_emitters_rfc to mysql
-- requires: init_s04_emitters

BEGIN;

DROP INDEX s04_emitters_rfc_index ON s04_emitters;

CREATE UNIQUE INDEX s04_emitters_rfc_uindex ON s04_emitters (rfc);

COMMIT;
