-- Revert okua:init_s04_tmp_emitters from mysql

BEGIN;

drop table s04_tmp_emitters;

COMMIT;
