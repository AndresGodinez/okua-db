-- Revert okua:init_l01_process_warnings from mysql

BEGIN;

drop table l01_process_warnings;

COMMIT;
