-- Deploy okua:init_l01_process_warnings to mysql
-- requires: init_s02_cfdis

BEGIN;

CREATE TABLE `l01_process_warnings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL DEFAULT '-1',
  `description` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_datetime` datetime DEFAULT NULL,
  `cfdi_id` bigint(20) DEFAULT NULL,
  `reg_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `l01_process_warnings_code_index` (`code`),
  KEY `l01_process_warnings_email_index` (`email`),
  KEY `l01_process_warnings_email_datetime_index` (`email_datetime`),
  KEY `l01_process_warnings_cfdi_id_index` (`cfdi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

COMMIT;
