-- Revert okua:create_view_cfdi_emitters from mysql

BEGIN;

drop view u01_cfdi_emitters;

COMMIT;
