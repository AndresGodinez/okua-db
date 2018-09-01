-- Deploy okua:init_s02_cfdi_payments to mysql
-- requires: init_s02_cfdis

BEGIN;

CREATE TABLE s02_cfdi_payments (
  id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  payment_datetime datetime,
  payment_method_sat_code varchar(100),
  payment_amount decimal(12,5) DEFAULT 0.00 NOT NULL,
  cfdi_id bigint
) charset utf8 collate utf8_general_ci;

CREATE INDEX s02_cfdi_payments_cfdi_id_index ON s02_cfdi_payments (cfdi_id);

CREATE INDEX s02_cfdi_payments_payment_method_sat_code_index ON s02_cfdi_payments (payment_method_sat_code);

COMMIT;
