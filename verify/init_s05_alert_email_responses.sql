-- Verify okua:init_s05_alert_email_responses on mysql

BEGIN;

select id from s05_alert_email_responses limit 1;

ROLLBACK;
