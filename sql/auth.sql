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
