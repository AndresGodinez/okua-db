-- Deploy okua:init_s02_cfdis to mysql

BEGIN;

create table s02_cfdis
(
  id BIGINT(19) auto_increment primary key,
  email VARCHAR(100) null,
  emitter_name VARCHAR(255) null,
  emitter_rfc VARCHAR(255) null,
  uuid VARCHAR(255) not null,
  cfdi_use_sat_code VARCHAR(100) null,
  subtotal DECIMAL(12,5) not null,
  discount DECIMAL(12,5) null,
  transfer_taxes DECIMAL(12,5) default 0.00000 null,
  withheld_taxes DECIMAL(12,5) default 0.00000 null,
  total DECIMAL(12,5) not null,
  currency VARCHAR(10) not null,
  type VARCHAR(5) not null,
  payment_type VARCHAR(5) not null,
  document_datetime DATETIME null,
  stamp_datetime DATETIME null,
  email_datetime DATETIME null,
  reg_datetime DATETIME null,
  files_path VARCHAR(255) default '' not null,
  stamp_status TINYINT(3) default -1 null,
  has_pdf TINYINT(3) default 1 null,
  substitute_uuid VARCHAR(100) null,
  constraint s02_cfdis_uuid_uindex
  unique (uuid)
) charset utf8 collate utf8_general_ci
;

create index s02_cfdis_cfdi_use_sat_code_index
  on s02_cfdis (cfdi_use_sat_code)
;

create index s02_cfdis_document_datetime_index
  on s02_cfdis (document_datetime)
;

create index s02_cfdis_email_datetime_index
  on s02_cfdis (email_datetime)
;

create index s02_cfdis_email_index
  on s02_cfdis (email)
;

create index s02_cfdis_emitter_rfc_index
  on s02_cfdis (emitter_rfc)
;

create index s02_cfdis_substitute_uuid_index
  on s02_cfdis (substitute_uuid)
;

create index s02_cfdis_type_index
  on s02_cfdis (type)
;

COMMIT;
