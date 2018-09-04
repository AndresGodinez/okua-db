-- Revert okua:init_s05_filter_receptors from mysql

BEGIN;

drop table s05_filter_receptors;

COMMIT;
