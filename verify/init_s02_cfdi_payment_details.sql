-- Verify okua:init_s02_cfdi_payment_details on mysql

BEGIN;

select id from s02_cfdi_payment_details limit 1;

ROLLBACK;
