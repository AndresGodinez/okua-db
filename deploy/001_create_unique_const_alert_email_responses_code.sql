-- Deploy okua:001_create_unique_const_alert_email_responses_code to mysql
-- requires: init_s05_alert_email_responses

BEGIN;

DROP INDEX s05_alert_email_responses_code_index ON s05_alert_email_responses;

CREATE UNIQUE INDEX s05_alert_email_responses_code_uindex ON s05_alert_email_responses (code);

COMMIT;
