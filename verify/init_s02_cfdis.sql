-- Verify okua:init_s02_cfdis on mysql

BEGIN;

select * from s02_cfdis limit 1;

ROLLBACK;
