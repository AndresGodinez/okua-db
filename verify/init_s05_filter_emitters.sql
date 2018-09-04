-- Verify okua:init_s05_filter_emitters on mysql

BEGIN;

select id from s05_filter_emitters limit 1;

ROLLBACK;
