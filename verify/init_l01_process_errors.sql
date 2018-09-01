-- Verify okua:init_l01_process_errors on mysql

BEGIN;

select id from l01_process_errors limit 1;

ROLLBACK;
