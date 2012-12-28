DELETE FROM `oregon_string` WHERE (`entry`='3'); 	/* System Message */
DELETE FROM `oregon_string` WHERE (`entry`='96'); 	/* VIP List Header */
DELETE FROM `oregon_string` WHERE (`entry`='97');	/* VIP List Empty */
DELETE FROM `oregon_string` WHERE (`entry`='98');	/* Player First Login */
DELETE FROM `oregon_string` WHERE (`entry`='99');	/* VIP Announce */
DELETE FROM `oregon_string` WHERE (`entry`='100');	/* Global Notify */
DELETE FROM `oregon_string` WHERE (`entry`='787');	/* Name Announce */
DELETE FROM `oregon_string` WHERE (`entry`='6613');	/* GM Announce */
DELETE FROM `oregon_string` WHERE (`entry`='6614');	/* GM Notify */
DELETE FROM `oregon_string` WHERE (`entry`='6615');	/* GM Name Announce */
DELETE FROM `oregon_string` WHERE (`entry`='11000');/* Auto Broadcast */
<<<<<<< HEAD
DELETE FROM `oregon_string` WHERE (`entry`='93');	/* Change Rate XP Error */
DELETE FROM `oregon_string` WHERE (`entry`='92');	/* Change Rate XP Success */
=======
>>>>>>> 3392afbf1533fbd6720058e84083b0fb3e5a39bc

INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('3', '|cFF008080[|r|cFF4682B4Cheer-World|r|cFF008080]:|r |cFF90EE90%s|r');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('96', '|    Account      |');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('97', 'No VIP Acconts.');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('98', '|cFF90EE90Say welcome to our new hero|r |cFF4682B4%s |r');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('99', '|cFF008080[|r|cFF4682B4VIP|r|cFF008080]|r |cffff0000%s|r|cFF008080:|r |cFF90EE90%s|r');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('100', '|cFF008080[|r|cFF4682B4Cheer-World|r|cFF008080]:|r |cFF90EE90');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('787', '|cFF008080[|r|cFF4682B4Announce by|r |cffff0000%s|cFF008080]:|r |cFF90EE90%s|r');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('6613', '|cFF008080[|r|cFF4682B4GM Announcement|cFF008080]:|r |cFF90EE90%s|r');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('6614', '|cFF008080[|r|cFF4682B4GM Notify|cFF008080]:|r |cFF90EE90%s|r');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('6615', '|cFF008080[|r|cFF4682B4GM Announce by|r |cffff0000%s|cFF008080]:|r |cFF90EE90%s|r');
<<<<<<< HEAD
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('11000', '|cFF008080[|r|cFF4682B4Cheer-World|r|cFF008080]:|r |cFF90EE90%s|r');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('93', 'Your chosen XP Rate must be between 1 and 15 !');
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('92', 'Your XP Rate successfully changed to %u !');
=======
INSERT INTO `oregon_string` (`entry`, `content_default`) VALUES ('11000', '|cFF008080[|r|cFF4682B4Cheer-World|r|cFF008080]:|r |cFF90EE90%s|r');
>>>>>>> 3392afbf1533fbd6720058e84083b0fb3e5a39bc
