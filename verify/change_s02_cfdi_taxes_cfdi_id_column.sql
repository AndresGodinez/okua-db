-- Verify okua:change_s02_cfdi_taxes_cfdi_id_column on mysql

BEGIN;

select id, cfdi_id from s02_cfdi_taxes where 0;

ROLLBACK;
