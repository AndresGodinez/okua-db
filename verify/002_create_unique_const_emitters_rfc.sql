-- Verify okua:002_create_unique_const_emitters_rfc on mysql

BEGIN;

SELECT sqitch.checkit(COUNT(INDEX_NAME), 'NO INDEX')
FROM INFORMATION_SCHEMA.STATISTICS
WHERE INDEX_NAME = 's04_emitters_rfc_uindex';

ROLLBACK;
