-- Deploy okua:change_s02_cfdi_taxes_cfdi_id_column to mysql

BEGIN;

alter table s02_cfdi_taxes change bill_info_id cfdi_id bigint(19) not null;

COMMIT;
