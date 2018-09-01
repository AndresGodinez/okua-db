-- Deploy okua:init_s03_cfdi_uses to mysql

BEGIN;

create table s03_cfdi_uses (
  id BIGINT(19) auto_increment primary key,
  name VARCHAR(255) not null,
  sat_code VARCHAR(100) not null,
  reg_status TINYINT(3) default 1 null,
  constraint sat_code unique (sat_code)
) charset utf8 collate utf8_general_ci;

create index s03_cfdi_uses_sat_code_index on s03_cfdi_uses (sat_code);

INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (1, 'Adquisición de mercancias', 'G01', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (2, 'Devoluciones, descuentos o bonificaciones', 'G02', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (3, 'Gastos en general', 'G03', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (4, 'Construcciones', 'I01', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (5, 'Mobilario y equipo de oficina por inversiones', 'I02', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (6, 'Equipo de transporte', 'I03', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (7, 'Equipo de computo y accesorios', 'I04', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (8, 'Dados, troqueles, moldes, matrices y herramental', 'I05', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (9, 'Comunicaciones telefónicas', 'I06', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (10, 'Comunicaciones satelitales', 'I07', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (11, 'Otra maquinaria y equipo', 'I08', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (12, 'Honorarios médicos, dentales y gastos hospitalarios.', 'D01', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (13, 'Gastos médicos por incapacidad o discapacidad', 'D02', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (14, 'Gastos funerales.', 'D03', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (15, 'Donativos.', 'D04', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (16, 'Intereses reales efectivamente pagados por créditos hipotecarios (casa habitación).', 'D05', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (17, 'Aportaciones voluntarias al SAR.', 'D06', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (18, 'Primas por seguros de gastos médicos.', 'D07', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (19, 'Gastos de transportación escolar obligatoria.', 'D08', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (20, 'Depósitos en cuentas para el ahorro, primas que tengan como base planes de pensiones.', 'D09', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (21, 'Pagos por servicios educativos (colegiaturas)', 'D10', 1);
INSERT INTO s03_cfdi_uses (id, name, sat_code, reg_status) VALUES (22, 'Por definir', 'P01', 1);


COMMIT;
