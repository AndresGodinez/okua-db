-- Revert okua:init_s02_cfdi_payments from mysql

BEGIN;

drop table s02_cfdi_payments;

COMMIT;
