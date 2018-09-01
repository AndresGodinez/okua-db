-- Verify okua:init_l01_process_warnings on mysql

BEGIN;

select id from l01_process_warnings limit 1;

ROLLBACK;
