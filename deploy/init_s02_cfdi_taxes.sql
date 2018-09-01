-- Deploy okua:init_s02_cfdi_taxes to mysql
-- requires: init_s02_cfdi

BEGIN;

create table s02_cfdi_taxes (
  id BIGINT(19) auto_increment primary key,
  tax_sat_code VARCHAR(20) not null,
  type ENUM('I','E','P') null,
  tax_factor ENUM('exempt','tax','rate') null,
  tax_rate_fee DECIMAL(10,6) default 0.000000 null,
  amount DECIMAL(12,5) default 0.00000 null,
  bill_info_id BIGINT(19) not null
) charset utf8 collate utf8_general_ci;

create index s02_cfdi_taxes_bill_info_id_index on s02_cfdi_taxes (bill_info_id);
create index s02_cfdi_taxes_tax_factor_index on s02_cfdi_taxes (tax_factor);
create index s02_cfdi_taxes_tax_sat_code_index on s02_cfdi_taxes (tax_sat_code);
create index s02_cfdi_taxes_type_index on s02_cfdi_taxes (type);

COMMIT;
