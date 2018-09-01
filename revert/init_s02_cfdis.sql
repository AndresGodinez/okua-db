-- Revert okua:init_s02_cfdis from mysql

BEGIN;

drop table s02_cfdis;

COMMIT;
