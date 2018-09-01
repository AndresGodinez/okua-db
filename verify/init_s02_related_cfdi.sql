-- Verify okua:init_s02_related_cfdi on mysql

BEGIN;

select id from s02_related_cfdi limit 1;

ROLLBACK;
