-- Verify okua:init_s05_whitelist_emitters on mysql

BEGIN;

select id from s05_whitelist_emitters limit 1;

ROLLBACK;
