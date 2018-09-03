-- Revert okua:change_s02_cfdi_taxes_cfdi_id_column from mysql

BEGIN;

alter table s02_cfdi_taxes change cfdi_id bill_info_id bigint(19) not null;

COMMIT;
