-- Revert okua:init_s01_users from mysql

BEGIN;

drop table s01_users;

COMMIT;
