-- Verify okua:init_s03_cfdi_uses on mysql

BEGIN;

select sqitch.checkit(count(id), 'CFDI Uses not inserted') from s03_cfdi_uses;

ROLLBACK;
