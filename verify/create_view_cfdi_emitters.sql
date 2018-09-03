-- Verify okua:create_view_cfdi_emitters on mysql

BEGIN;

select a.emitter_name, a.emitter_rfc from u01_cfdi_emitters a where 0;

ROLLBACK;
