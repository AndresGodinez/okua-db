-- Verify okua:003_create_unique_const_tmp_emitters_rfc on mysql

BEGIN;

SELECT sqitch.checkit(COUNT(INDEX_NAME), 'NO INDEX')
FROM INFORMATION_SCHEMA.STATISTICS
WHERE INDEX_NAME = 's04_tmp_emitters_rfc_uindex';

ROLLBACK;
