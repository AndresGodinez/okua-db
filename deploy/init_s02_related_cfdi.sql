-- Deploy okua:init_s02_related_cfdi to mysql
-- requires: init_s02_cfdis

BEGIN;

CREATE TABLE s02_related_cfdi (
  id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  parent_cfdi_id bigint,
  child_cfdi_id bigint,
  rel_type_sat_code varchar(10),
  reg_status tinyint DEFAULT 1
) charset utf8 collate utf8_general_ci;

CREATE INDEX s02_related_cfdi_parent_cfdi_id_index ON s02_related_cfdi (parent_cfdi_id);

CREATE INDEX s02_related_cfdi_child_cfdi_id_index ON s02_related_cfdi (child_cfdi_id);

CREATE INDEX s02_related_cfdi_rel_type_sat_code_index ON s02_related_cfdi (rel_type_sat_code);


COMMIT;
