-- Revert okua:init_s02_related_cfdi from mysql

BEGIN;

drop table s02_related_cfdi;

COMMIT;
