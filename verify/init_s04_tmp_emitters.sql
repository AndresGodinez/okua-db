-- Verify okua:init_s04_tmp_emitters on mysql

BEGIN;

select id from s04_tmp_emitters limit 1;

ROLLBACK;
