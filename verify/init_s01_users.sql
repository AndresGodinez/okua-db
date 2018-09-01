-- Verify okua:init_s01_users on mysql

BEGIN;

select * from s01_users;

ROLLBACK;
