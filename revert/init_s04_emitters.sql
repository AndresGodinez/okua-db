-- Revert okua:init_s04_emitters from mysql

BEGIN;

drop table s04_emitters;

COMMIT;
