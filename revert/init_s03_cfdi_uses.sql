-- Revert okua:init_s03_cfdi_uses from mysql

BEGIN;

drop table s03_cfdi_uses;

COMMIT;
