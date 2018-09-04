-- Verify okua:init_s05_filter_receptors on mysql

BEGIN;

select id from s05_filter_receptors limit 1;

ROLLBACK;
