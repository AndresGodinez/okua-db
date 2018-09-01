-- Revert okua:init_s05_whitelist_emitters from mysql

BEGIN;

drop table s05_whitelist_emitters;

COMMIT;
