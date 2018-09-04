-- Revert okua:init_s05_filter_emitters from mysql

BEGIN;

drop table s05_filter_emitters;

COMMIT;
