-- Deploy okua:change_s02_cfdi_taxes_cfdi_id_column to mysql

BEGIN;

alter table s02_cfdi_taxes drop index s02_cfdi_taxes_bill_info_id_index;

alter table s02_cfdi_taxes change bill_info_id cfdi_id bigint(19) not null;

create index s02_cfdi_taxes_cfdi_id_index on s02_cfdi_taxes (cfdi_id);

COMMIT;
