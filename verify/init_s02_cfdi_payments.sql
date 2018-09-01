-- Verify okua:init_s02_cfdi_payments on mysql

BEGIN;

select id from s02_cfdi_payments limit 1;

ROLLBACK;
