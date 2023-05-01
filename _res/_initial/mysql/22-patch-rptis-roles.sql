set foreign_key_checks = 0;
delete from sys_usergroup where domain = 'RPT';

INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.ADMIN', 'ADMIN', 'RPT', NULL, NULL, 'ADMIN');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.APPRAISAL_CHIEF', 'APPRAISAL DIVISION CHIEF', 'RPT', 'usergroup', NULL, 'APPRAISAL_CHIEF');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.APPRAISER', 'APPRAISER', 'RPT', 'usergroup', NULL, 'APPRAISER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.APPROVER', 'APPROVER', 'RPT', 'usergroup', NULL, 'APPROVER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.CERTIFICATION_APPROVER', 'CERTIFICATION_APPROVER', 'RPT', NULL, NULL, 'CERTIFICATION_APPROVER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.CERTIFICATION_ISSUER', 'CERTIFICATION_ISSUER', 'RPT', 'usergroup', NULL, 'CERTIFICATION_ISSUER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.CERTIFICATION_RELEASER', 'RPT CERTIFICATION_RELEASER', 'RPT', NULL, NULL, 'CERTIFICATION_RELEASER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.CERTIFICATION_VERIFIER', 'RPT CERTIFICATION_VERIFIER', 'RPT', NULL, NULL, 'CERTIFICATION_VERIFIER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.ENCODER', 'ENCODER', 'RPT', NULL, NULL, 'ENCODER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.ENCODER_APPROVER', 'RPT ENCODER_APPROVER', 'RPT', NULL, NULL, 'ENCODER_APPROVER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.EXAMINER', 'EXAMINER', 'RPT', 'usergroup', NULL, 'EXAMINER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.MASTER', 'MASTER', 'RPT', 'usergroup', NULL, 'MASTER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.RECEIVER', 'RECEIVER', 'RPT', NULL, NULL, 'RECEIVER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.RECEIVER_ADMIN', 'RPT RECEIVER_ADMIN', 'RPT', NULL, NULL, 'RECEIVER_ADMIN');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.RECOMMENDER', 'RECOMMENDER', 'RPT', 'usergroup', NULL, 'RECOMMENDER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.RECORD', 'RECORD', 'RPT', 'usergroup', NULL, 'RECORD');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.RECORD_ADMIN', 'RPT RECORD_ADMIN', 'RPT', NULL, NULL, 'RECORD_ADMIN');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.RECORD_APPROVER', 'RPT', 'RPT', NULL, NULL, 'RECORD_APPROVER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.REPORT', 'REPORT', 'RPT', 'usergroup', NULL, 'REPORT');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.RULE_AUTHOR', 'RULE AUTHOR', 'RPT', 'usergroup', NULL, 'RULE_AUTHOR');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.SHARED', 'RPT SHARED', 'RPT', NULL, NULL, 'SHARED');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.TAXMAPPER', 'TAXMAPPER', 'RPT', 'usergroup', NULL, 'TAXMAPPER');
INSERT INTO `sys_usergroup` (`objid`, `title`, `domain`, `userclass`, `orgclass`, `role`) VALUES ('RPT.TAXMAPPER_CHIEF', 'TAXMAPPER DIVISION CHIEF', 'RPT', 'usergroup', NULL, 'TAXMAPPER_CHIEF');

set foreign_key_checks = 1;
