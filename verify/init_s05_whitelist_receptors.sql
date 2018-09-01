-- Verify okua:init_s05_whitelist_receptors on mysql

BEGIN;

select id from s05_whitelist_receptors limit 1;

ROLLBACK;
