-- Revert okua:002_create_unique_const_emitters_rfc from mysql

BEGIN;

DROP INDEX s04_emitters_rfc_uindex ON s04_emitters;

CREATE INDEX s04_emitters_rfc_index ON s04_emitters (rfc);

COMMIT;
