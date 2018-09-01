-- Revert okua:init_s02_cfdi_taxes from mysql
-- requires: init_s02_cfdis

BEGIN;

drop table s02_cfdi_taxes;

COMMIT;
