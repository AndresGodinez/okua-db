-- Revert okua:001_create_unique_const_alert_email_responses_code from mysql

BEGIN;

DROP INDEX s05_alert_email_responses_code_uindex ON s05_alert_email_responses;

CREATE INDEX s05_alert_email_responses_code_index ON s05_alert_email_responses (code);

COMMIT;
