-- Deploy okua:init_s05_alert_email_responses to mysql

BEGIN;

CREATE TABLE s05_alert_email_responses (
  id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  code int NOT NULL,
  internal_msg text,
  email_msg text
) charset utf8 collate utf8_general_ci;

CREATE INDEX s05_alert_email_responses_code_index ON s05_alert_email_responses (code);

COMMIT;
