-- Deploy okua:init_s02_cfdi_payment_details to mysql
-- requires: init_s02_cfdi_payments

BEGIN;

CREATE TABLE s02_cfdi_payment_details (
  id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  payment_datetime datetime,
  payment_method_sat_code varchar(100),
  currency varchar(30),
  folio varchar(100),
  sequence_number int NOT NULL,
  previous_amount decimal(12,5) NOT NULL,
  payment_amount decimal(12,5) NOT NULL,
  remaining_amount decimal(12,5) NOT NULL,
  rel_uuid varchar(100) NOT NULL,
  cfdi_id bigint,
  cfdi_payment_id bigint
) charset utf8 collate utf8_general_ci;

CREATE INDEX s02_cfdi_payment_details_payment_method_sat_code_index ON s02_cfdi_payment_details (payment_method_sat_code);

CREATE INDEX s02_cfdi_payment_details_folio_index ON s02_cfdi_payment_details (folio);

CREATE INDEX s02_cfdi_payment_details_rel_uuid_index ON s02_cfdi_payment_details (rel_uuid);

CREATE INDEX s02_cfdi_payment_details_cfdi_id_index ON s02_cfdi_payment_details (cfdi_id);

CREATE INDEX s02_cfdi_payment_details_cfdi_payment_id_index ON s02_cfdi_payment_details (cfdi_payment_id);

COMMIT;
