-- Deploy okua:create_view_cfdi_emitters to mysql

BEGIN;

create view u01_cfdi_emitters as
  select a.emitter_name,a.emitter_rfc from s02_cfdis a group by a.emitter_rfc order by emitter_name;

COMMIT;
