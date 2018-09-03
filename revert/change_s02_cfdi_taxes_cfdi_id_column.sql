-- Revert okua:change_s02_cfdi_taxes_cfdi_id_column from mysql

BEGIN;

alter table s02_cfdi_taxes drop index s02_cfdi_taxes_cfdi_id_index;

alter table s02_cfdi_taxes change cfdi_id bill_info_id bigint(19) not null;

create index s02_cfdi_taxes_bill_info_id_index on s02_cfdi_taxes (bill_info_id);

COMMIT;
