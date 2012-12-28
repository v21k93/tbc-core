<<<<<<< HEAD
/*
SQLyog Enterprise Trial - MySQL GUI v7.11 
MySQL - 5.5.24-log : Database - auth
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`auth` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `auth`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` varchar(80) NOT NULL DEFAULT '',
  `v` varchar(64) NOT NULL DEFAULT '',
  `s` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `mutetime` bigint(20) NOT NULL DEFAULT '0',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(3) NOT NULL DEFAULT '',
  `recruiter` int(10) unsigned NOT NULL DEFAULT '0',
  `active_realm_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Account System';

/*Data for the table `account` */

insert  into `account`(`id`,`username`,`sha_pass_hash`,`sessionkey`,`v`,`s`,`email`,`joindate`,`last_ip`,`failed_logins`,`locked`,`last_login`,`online`,`expansion`,`mutetime`,`locale`,`os`,`recruiter`,`active_realm_id`) values (4,'V21K93','9294e1586f1e1af082c8dc6ea42ca90558b22fbe','603C30ACFB1301C3E2CC7EC74F9F6139E57C24D0CCB48FC07EDC8A219CAA8EF4337F716B7DD001A0','4627B8E33F43C4D9430A0B5FE280950EB72A86B1ACDEED772DDBE60D20C6631F','BCC18377C5F525ED9A305197E5D54A518BEA2372CF70E5E386F581CE63F4C743','golike@mail.bg','2012-04-30 20:38:44','78.90.51.149',0,0,'2012-10-29 12:12:04',0,2,0,0,'Win',0,0),(5,'ADMIN','8301316D0D8448A34FA6D0C6BF1CBFA2B4A1A93A','7CCF7E87FEBBE03E2DF6FCB351B185405E8EE93FAE963EA1C57CD3E46F4F2F443523AEEF8E7CB928','20B293DC1D1AE22F7D06E168793784F29AF52CB516172750325C65F5D229891F','9339066F11981C04FAE444333214F53462086CE8F0477844395BE939FEF97379','','2012-04-30 20:39:40','127.0.0.1',0,0,'2012-04-30 20:40:35',0,2,0,0,'Win',0,0),(6,'V24K93','2192dd435c620a2fa7efe57c1358c68e28e7357a','1B3FBF88CC7AD20B48AD1F245D1876D6EFDCA5002001C0F13C8D2A4E3F600A74356EE7A7E5FA1441','6D37AF18018EEDE1591612A5BCA7C665ADB26F53177B616AA325222221202FBC','AE8BAE0DA2A073C4F13355C29E20540B990AC7B03D1E8F6A84FE9F49BB7A5787','','2012-06-14 15:24:25','127.0.0.1',0,0,'2012-07-02 01:14:03',0,2,0,0,'Win',0,0),(7,'v25k93','097b4d2ef040a3072ce96d86d13864109b59c505','','','','asd@mail.bg','2012-06-29 01:24:44','127.0.0.1',0,0,'0000-00-00 00:00:00',0,2,0,0,'',0,0),(8,'venci','577933826dd05d02ed391baa2f8c6cfe9f9a5c53','','','','gilk@mail.bg','2012-07-30 07:31:06','127.0.0.1',0,0,'0000-00-00 00:00:00',0,2,0,0,'',0,0),(9,'bloodmanqk','c08531c75ccc9e84fe98aaa2a755d233f3310c0f','A42C85E8DE64E53BC1DECEC041A692970127FC8FF912B3E36EF8C4115B7EBD5B3084BE621ACBC71F','2D273A704855681795A2E7D0AF9051287D2A9D77052B82248F4AC29998C0E927','DC70A9B59C8499EC1672F127C3482E45BCDB3E609949B7673B44844989D81D2F','hrr_95@abv.bg','2012-10-25 22:52:41','212.233.195.58',0,0,'2012-10-25 23:18:02',0,1,0,0,'Win',0,0);

/*Table structure for table `account_access` */

DROP TABLE IF EXISTS `account_access`;

CREATE TABLE `account_access` (
  `id` int(10) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_access` */

insert  into `account_access`(`id`,`gmlevel`,`RealmID`) values (4,6,-1),(9,5,1);

/*Table structure for table `account_banned` */

DROP TABLE IF EXISTS `account_banned`;

CREATE TABLE `account_banned` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

/*Data for the table `account_banned` */

/*Table structure for table `ip_banned` */

DROP TABLE IF EXISTS `ip_banned`;

CREATE TABLE `ip_banned` (
  `ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `bandate` int(10) unsigned NOT NULL,
  `unbandate` int(10) unsigned NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Banned IPs';

/*Data for the table `ip_banned` */

/*Table structure for table `logs` */

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `time` int(10) unsigned NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `string` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `logs` */

/*Table structure for table `realmcharacters` */

DROP TABLE IF EXISTS `realmcharacters`;

CREATE TABLE `realmcharacters` (
  `realmid` int(10) unsigned NOT NULL DEFAULT '0',
  `acctid` int(10) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Realm Character Tracker';

/*Data for the table `realmcharacters` */

insert  into `realmcharacters`(`realmid`,`acctid`,`numchars`) values (1,1,0),(1,2,0),(1,3,0),(1,4,5),(1,5,1),(1,6,2),(1,9,2);

/*Table structure for table `realmlist` */

DROP TABLE IF EXISTS `realmlist`;

CREATE TABLE `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `realmflags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by realmd), 0x4 (show version and build), 0x20 (new players), 0x40 (recommended)',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `realmbuilds` varchar(64) NOT NULL DEFAULT '8606',
  `ra` tinyint(2) NOT NULL DEFAULT '1',
  `ra_port` int(11) NOT NULL DEFAULT '3443',
  `soap` tinyint(2) NOT NULL DEFAULT '0',
  `soap_port` int(11) NOT NULL DEFAULT '7878',
  `char_db` varchar(32) NOT NULL DEFAULT 'characters',
  `world_db` varchar(32) NOT NULL DEFAULT 'world',
  `p_limit` int(11) NOT NULL DEFAULT '1000',
  `unstuck` tinyint(2) NOT NULL DEFAULT '1',
  `teleport` tinyint(2) NOT NULL DEFAULT '1',
  `changes` tinyint(2) NOT NULL DEFAULT '1',
  `3d_char_preview` tinyint(2) NOT NULL DEFAULT '0',
  `unstuck_price` varchar(10) NOT NULL DEFAULT '0',
  `teleport_price` varchar(10) NOT NULL DEFAULT '0',
  `change_faction_price` varchar(10) NOT NULL DEFAULT '0',
  `change_race_price` varchar(10) NOT NULL DEFAULT '0',
  `change_appearance_price` varchar(10) NOT NULL DEFAULT '0',
  `core` varchar(50) NOT NULL DEFAULT 'trinity',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

/*Data for the table `realmlist` */

insert  into `realmlist`(`id`,`name`,`address`,`port`,`icon`,`realmflags`,`timezone`,`allowedSecurityLevel`,`population`,`realmbuilds`,`ra`,`ra_port`,`soap`,`soap_port`,`char_db`,`world_db`,`p_limit`,`unstuck`,`teleport`,`changes`,`3d_char_preview`,`unstuck_price`,`teleport_price`,`change_faction_price`,`change_race_price`,`change_appearance_price`,`core`) values (1,'asd','78.90.51.149',8075,1,2,1,0,0.02,'8606 ',0,3443,0,7878,'oregon_characters','oregon_world',1000,1,1,1,1,'0-1','0-1','0-1','0-1','0-1','trinity');

/*Table structure for table `uptime` */

DROP TABLE IF EXISTS `uptime`;

CREATE TABLE `uptime` (
  `realmid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Trinitycore',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Uptime system';

/*Data for the table `uptime` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
=======
/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : auth

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2012-05-16 21:25:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` varchar(80) NOT NULL DEFAULT '',
  `v` varchar(64) NOT NULL DEFAULT '',
  `s` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `mutetime` bigint(20) NOT NULL DEFAULT '0',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(3) NOT NULL DEFAULT '',
  `recruiter` int(10) unsigned NOT NULL DEFAULT '0',
  `active_realm_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Account System';

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO account VALUES ('4', 'V21K93', '9294e1586f1e1af082c8dc6ea42ca90558b22fbe', '1CC02636E5F170FDD362630AD7C6EDB148C13497F52FD36AF7757F2AE0B9877DB17021C68A3A8F76', '4627B8E33F43C4D9430A0B5FE280950EB72A86B1ACDEED772DDBE60D20C6631F', 'BCC18377C5F525ED9A305197E5D54A518BEA2372CF70E5E386F581CE63F4C743', '', '2012-04-30 20:38:44', '127.0.0.1', '0', '0', '2012-05-16 15:50:27', '0', '2', '0', '0', 'Win', '0', '0');
INSERT INTO account VALUES ('5', 'ADMIN', '8301316D0D8448A34FA6D0C6BF1CBFA2B4A1A93A', '7CCF7E87FEBBE03E2DF6FCB351B185405E8EE93FAE963EA1C57CD3E46F4F2F443523AEEF8E7CB928', '20B293DC1D1AE22F7D06E168793784F29AF52CB516172750325C65F5D229891F', '9339066F11981C04FAE444333214F53462086CE8F0477844395BE939FEF97379', '', '2012-04-30 20:39:40', '127.0.0.1', '0', '0', '2012-04-30 20:40:35', '0', '2', '0', '0', 'Win', '0', '0');

-- ----------------------------
-- Table structure for `account_access`
-- ----------------------------
DROP TABLE IF EXISTS `account_access`;
CREATE TABLE `account_access` (
  `id` int(10) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_access
-- ----------------------------
INSERT INTO account_access VALUES ('4', '4', '-1');

-- ----------------------------
-- Table structure for `account_banned`
-- ----------------------------
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE `account_banned` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- ----------------------------
-- Records of account_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `ip_banned`
-- ----------------------------
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE `ip_banned` (
  `ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `bandate` int(10) unsigned NOT NULL,
  `unbandate` int(10) unsigned NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Banned IPs';

-- ----------------------------
-- Records of ip_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `time` int(10) unsigned NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `string` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for `realmcharacters`
-- ----------------------------
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE `realmcharacters` (
  `realmid` int(10) unsigned NOT NULL DEFAULT '0',
  `acctid` int(10) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Realm Character Tracker';

-- ----------------------------
-- Records of realmcharacters
-- ----------------------------
INSERT INTO realmcharacters VALUES ('1', '1', '0');
INSERT INTO realmcharacters VALUES ('1', '2', '0');
INSERT INTO realmcharacters VALUES ('1', '3', '0');
INSERT INTO realmcharacters VALUES ('1', '4', '1');
INSERT INTO realmcharacters VALUES ('1', '5', '1');

-- ----------------------------
-- Table structure for `realmlist`
-- ----------------------------
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `realmflags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by realmd), 0x4 (show version and build), 0x20 (new players), 0x40 (recommended)',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `realmbuilds` varchar(64) NOT NULL DEFAULT '8606',
  `ra` tinyint(2) NOT NULL DEFAULT '1',
  `ra_port` int(11) NOT NULL DEFAULT '3443',
  `soap` tinyint(2) NOT NULL DEFAULT '0',
  `soap_port` int(11) NOT NULL DEFAULT '7878',
  `char_db` varchar(32) NOT NULL DEFAULT 'characters',
  `world_db` varchar(32) NOT NULL DEFAULT 'world',
  `p_limit` int(11) NOT NULL DEFAULT '1000',
  `unstuck` tinyint(2) NOT NULL DEFAULT '1',
  `teleport` tinyint(2) NOT NULL DEFAULT '1',
  `changes` tinyint(2) NOT NULL DEFAULT '1',
  `3d_char_preview` tinyint(2) NOT NULL DEFAULT '0',
  `unstuck_price` varchar(10) NOT NULL DEFAULT '0',
  `teleport_price` varchar(10) NOT NULL DEFAULT '0',
  `change_faction_price` varchar(10) NOT NULL DEFAULT '0',
  `change_race_price` varchar(10) NOT NULL DEFAULT '0',
  `change_appearance_price` varchar(10) NOT NULL DEFAULT '0',
  `core` varchar(50) NOT NULL DEFAULT 'trinity',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

-- ----------------------------
-- Records of realmlist
-- ----------------------------
INSERT INTO realmlist VALUES ('1', 'Cheer World', '127.0.0.1', '8085', '1', '2', '1', '0', '0.02', '8606 ', '1', '3443', '0', '7878', 'oregon_characters', 'oregon_world', '1000', '1', '1', '1', '1', '0-1', '0-1', '0-1', '0-1', '0-1', 'oregon');

-- ----------------------------
-- Table structure for `uptime`
-- ----------------------------
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime` (
  `realmid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Trinitycore',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Uptime system';

-- ----------------------------
-- Records of uptime
-- ----------------------------
>>>>>>> 3392afbf1533fbd6720058e84083b0fb3e5a39bc
