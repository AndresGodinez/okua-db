-- Verify okua:001_create_unique_const_alert_email_responses_code on mysql

BEGIN;

SELECT sqitch.checkit(COUNT(INDEX_NAME), 'NO INDEX')
  FROM INFORMATION_SCHEMA.STATISTICS
  WHERE INDEX_NAME = 's05_alert_email_responses_code_uindex';

ROLLBACK;
