-- Verify okua:init_s02_cfdi_taxes on mysql
-- requires: init_s02_cfdis

BEGIN;

select * from s02_cfdi_taxes limit 1;

ROLLBACK;
