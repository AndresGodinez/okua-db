-- Revert okua:init_s05_alert_email_responses from mysql

BEGIN;

drop table s05_alert_email_responses;

COMMIT;
