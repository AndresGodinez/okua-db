-- Verify okua:init_s04_emitters on mysql

BEGIN;

select id from s04_emitters limit 1;

ROLLBACK;
