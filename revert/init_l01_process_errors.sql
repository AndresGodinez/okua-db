-- Revert okua:init_l01_process_errors from mysql

BEGIN;

drop table l01_process_errors;

COMMIT;
