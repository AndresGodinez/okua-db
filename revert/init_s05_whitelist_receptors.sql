-- Revert okua:init_s05_whitelist_receptors from mysql

BEGIN;

drop table s05_whitelist_receptors;

COMMIT;
