-- Revert okua:init_s02_cfdi_payment_details from mysql

BEGIN;

drop table s02_cfdi_payment_details;

COMMIT;
