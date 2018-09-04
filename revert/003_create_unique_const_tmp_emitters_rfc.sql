-- Revert okua:003_create_unique_const_tmp_emitters_rfc from mysql

BEGIN;

DROP INDEX s04_tmp_emitters_rfc_uindex ON s04_tmp_emitters;

CREATE INDEX s04_tmp_emitters_rfc_index ON s04_tmp_emitters (rfc);

COMMIT;
