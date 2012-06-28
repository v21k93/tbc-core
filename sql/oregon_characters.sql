/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : oregon_characters

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2012-05-16 21:25:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `arena_team`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
  `arenateamid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` char(255) NOT NULL,
  `captainguid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` int(10) unsigned NOT NULL DEFAULT '0',
  `BorderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenateamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team
-- ----------------------------

-- ----------------------------
-- Table structure for `arena_team_member`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
  `arenateamid` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `played_week` int(10) unsigned NOT NULL DEFAULT '0',
  `wons_week` int(10) unsigned NOT NULL DEFAULT '0',
  `played_season` int(10) unsigned NOT NULL DEFAULT '0',
  `wons_season` int(10) unsigned NOT NULL DEFAULT '0',
  `personal_rating` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenateamid`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team_member
-- ----------------------------

-- ----------------------------
-- Table structure for `arena_team_stats`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_stats`;
CREATE TABLE `arena_team_stats` (
  `arenateamid` int(10) unsigned NOT NULL DEFAULT '0',
  `rating` int(10) unsigned NOT NULL DEFAULT '0',
  `games` int(10) unsigned NOT NULL DEFAULT '0',
  `wins` int(10) unsigned NOT NULL DEFAULT '0',
  `played` int(10) unsigned NOT NULL DEFAULT '0',
  `wins2` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenateamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `auctionhouse`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_template` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `itemowner` int(11) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(11) NOT NULL DEFAULT '0',
  `time` bigint(40) NOT NULL DEFAULT '0',
  `buyguid` int(11) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(11) NOT NULL DEFAULT '0',
  `startbid` int(11) NOT NULL DEFAULT '0',
  `deposit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhouse
-- ----------------------------

-- ----------------------------
-- Table structure for `auctionhousebot`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhousebot`;
CREATE TABLE `auctionhousebot` (
  `auctionhouse` int(11) NOT NULL DEFAULT '0' COMMENT 'mapID of the auctionhouse.',
  `name` char(25) DEFAULT NULL COMMENT 'Text name of the auctionhouse.',
  `minitems` int(11) DEFAULT '0' COMMENT 'This is the minimum number of items you want to keep in the auction house. a 0 here will make it the same as the maximum.',
  `maxitems` int(11) DEFAULT '0' COMMENT 'This is the number of items you want to keep in the auction house.',
  `percentgreytradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Grey Trade Goods auction items',
  `percentwhitetradegoods` int(11) DEFAULT '27' COMMENT 'Sets the percentage of the White Trade Goods auction items',
  `percentgreentradegoods` int(11) DEFAULT '12' COMMENT 'Sets the percentage of the Green Trade Goods auction items',
  `percentbluetradegoods` int(11) DEFAULT '10' COMMENT 'Sets the percentage of the Blue Trade Goods auction items',
  `percentpurpletradegoods` int(11) DEFAULT '1' COMMENT 'Sets the percentage of the Purple Trade Goods auction items',
  `percentorangetradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Orange Trade Goods auction items',
  `percentyellowtradegoods` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the Yellow Trade Goods auction items',
  `percentgreyitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Grey auction items',
  `percentwhiteitems` int(11) DEFAULT '10' COMMENT 'Sets the percentage of the non trade White auction items',
  `percentgreenitems` int(11) DEFAULT '30' COMMENT 'Sets the percentage of the non trade Green auction items',
  `percentblueitems` int(11) DEFAULT '8' COMMENT 'Sets the percentage of the non trade Blue auction items',
  `percentpurpleitems` int(11) DEFAULT '2' COMMENT 'Sets the percentage of the non trade Purple auction items',
  `percentorangeitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Orange auction items',
  `percentyellowitems` int(11) DEFAULT '0' COMMENT 'Sets the percentage of the non trade Yellow auction items',
  `minpricegrey` int(11) DEFAULT '100' COMMENT 'Minimum price of Grey items (percentage).',
  `maxpricegrey` int(11) DEFAULT '150' COMMENT 'Maximum price of Grey items (percentage).',
  `minpricewhite` int(11) DEFAULT '150' COMMENT 'Minimum price of White items (percentage).',
  `maxpricewhite` int(11) DEFAULT '250' COMMENT 'Maximum price of White items (percentage).',
  `minpricegreen` int(11) DEFAULT '800' COMMENT 'Minimum price of Green items (percentage).',
  `maxpricegreen` int(11) DEFAULT '1400' COMMENT 'Maximum price of Green items (percentage).',
  `minpriceblue` int(11) DEFAULT '1250' COMMENT 'Minimum price of Blue items (percentage).',
  `maxpriceblue` int(11) DEFAULT '1750' COMMENT 'Maximum price of Blue items (percentage).',
  `minpricepurple` int(11) DEFAULT '2250' COMMENT 'Minimum price of Purple items (percentage).',
  `maxpricepurple` int(11) DEFAULT '4550' COMMENT 'Maximum price of Purple items (percentage).',
  `minpriceorange` int(11) DEFAULT '3250' COMMENT 'Minimum price of Orange items (percentage).',
  `maxpriceorange` int(11) DEFAULT '5550' COMMENT 'Maximum price of Orange items (percentage).',
  `minpriceyellow` int(11) DEFAULT '5250' COMMENT 'Minimum price of Yellow items (percentage).',
  `maxpriceyellow` int(11) DEFAULT '6550' COMMENT 'Maximum price of Yellow items (percentage).',
  `minbidpricegrey` int(11) DEFAULT '70' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricegrey` int(11) DEFAULT '100' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricewhite` int(11) DEFAULT '70' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricewhite` int(11) DEFAULT '100' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricegreen` int(11) DEFAULT '80' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricegreen` int(11) DEFAULT '100' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceblue` int(11) DEFAULT '75' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 75',
  `maxbidpriceblue` int(11) DEFAULT '100' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricepurple` int(11) DEFAULT '80' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricepurple` int(11) DEFAULT '100' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceorange` int(11) DEFAULT '80' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceorange` int(11) DEFAULT '100' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceyellow` int(11) DEFAULT '80' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceyellow` int(11) DEFAULT '100' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 100',
  `maxstackgrey` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackwhite` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackgreen` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackblue` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackpurple` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackorange` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackyellow` int(11) DEFAULT '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `buyerpricegrey` int(11) DEFAULT '1' COMMENT 'Multiplier to vendorprice when buying grey items from auctionhouse',
  `buyerpricewhite` int(11) DEFAULT '3' COMMENT 'Multiplier to vendorprice when buying white items from auctionhouse',
  `buyerpricegreen` int(11) DEFAULT '5' COMMENT 'Multiplier to vendorprice when buying green items from auctionhouse',
  `buyerpriceblue` int(11) DEFAULT '12' COMMENT 'Multiplier to vendorprice when buying blue items from auctionhouse',
  `buyerpricepurple` int(11) DEFAULT '15' COMMENT 'Multiplier to vendorprice when buying purple items from auctionhouse',
  `buyerpriceorange` int(11) DEFAULT '20' COMMENT 'Multiplier to vendorprice when buying orange items from auctionhouse',
  `buyerpriceyellow` int(11) DEFAULT '22' COMMENT 'Multiplier to vendorprice when buying yellow items from auctionhouse',
  `buyerbiddinginterval` int(11) DEFAULT '1' COMMENT 'Interval how frequently AHB bids on each AH. Time in minutes',
  `buyerbidsperinterval` int(11) DEFAULT '1' COMMENT 'number of bids to put in per bidding interval',
  PRIMARY KEY (`auctionhouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhousebot
-- ----------------------------
INSERT INTO auctionhousebot VALUES ('2', 'Alliance', '0', '0', '0', '27', '12', '10', '1', '0', '0', '0', '10', '30', '8', '2', '0', '0', '100', '150', '150', '250', '800', '1400', '1250', '1750', '2250', '4550', '3250', '5550', '5250', '6550', '70', '100', '70', '100', '80', '100', '75', '100', '80', '100', '80', '100', '80', '100', '0', '0', '3', '2', '1', '1', '1', '1', '3', '5', '12', '15', '20', '22', '1', '1');
INSERT INTO auctionhousebot VALUES ('6', 'Horde', '0', '0', '0', '27', '12', '10', '1', '0', '0', '0', '10', '30', '8', '2', '0', '0', '100', '150', '150', '250', '800', '1400', '1250', '1750', '2250', '4550', '3250', '5550', '5250', '6550', '70', '100', '70', '100', '80', '100', '75', '100', '80', '100', '80', '100', '80', '100', '0', '0', '3', '2', '1', '1', '1', '1', '3', '5', '12', '15', '20', '22', '1', '1');
INSERT INTO auctionhousebot VALUES ('7', 'Neutral', '0', '0', '0', '27', '12', '10', '1', '0', '0', '0', '10', '30', '8', '2', '0', '0', '100', '150', '150', '250', '800', '1400', '1250', '1750', '2250', '4550', '3250', '5550', '5250', '6550', '70', '100', '70', '100', '80', '100', '75', '100', '80', '100', '80', '100', '80', '100', '0', '0', '3', '2', '1', '1', '1', '1', '3', '5', '12', '15', '20', '22', '1', '1');

-- ----------------------------
-- Table structure for `bugreport`
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Debug System';

-- ----------------------------
-- Records of bugreport
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `data` longtext,
  `name` varchar(12) NOT NULL DEFAULT '',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `dungeon_difficulty` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` longtext,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(11) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(11) unsigned NOT NULL DEFAULT '0',
  `logout_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(11) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extra_flags` int(11) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `at_login` int(11) unsigned NOT NULL DEFAULT '0',
  `zone` int(11) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `arenaPoints` int(10) unsigned NOT NULL DEFAULT '0',
  `totalHonorPoints` int(10) unsigned NOT NULL DEFAULT '0',
  `todayHonorPoints` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdayHonorPoints` int(10) unsigned NOT NULL DEFAULT '0',
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `powerMana` int(10) unsigned NOT NULL DEFAULT '0',
  `powerRage` int(10) unsigned NOT NULL DEFAULT '0',
  `powerFocus` int(10) unsigned NOT NULL DEFAULT '0',
  `powerEnergy` int(10) unsigned NOT NULL DEFAULT '0',
  `powerHappiness` int(10) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(11) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `latency` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO characters VALUES ('9', '4', '9 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 3825284969 4046454793 0 0 0 0 3791 4515 0 0 100 0 3791 4515 1000 0 100 0 70 1 1281 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 17990 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1156415488 1157234688 1157234688 1053240066 1069547520 49 49 0 1084092767 1088287071 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 39 45 58 145 166 0 0 0 0 1068708656 0 0 0 0 0 95 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2620 3391 10240 29 0 0 35 0 0 1086324736 1088421888 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34 0 0 66563 33554435 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 53 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6098 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 184 1073741824 180 1073741824 0 0 182 1073741824 186 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 188 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 194 1073741824 196 1073741824 195 1073741824 200 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 779700 54 22937950 0 56 65537 0 95 22937950 0 98 19661100 0 162 22937950 0 228 22937950 0 415 65537 0 173 22937601 0 136 22937601 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 61 2 0 0 0 1084191933 0 5 0 1084191933 0 0 0 1078145843 1078145843 1078145843 1078145843 1078145843 1078145843 0 1 0 0 603979776 69632 536871424 0 0 0 0 0 671088640 0 0 0 0 0 0 0 0 0 65544 0 0 0 0 0 0 0 0 0 0 0 0 1048576 4096 19456 0 0 0 0 0 0 0 540016640 0 0 0 0 65536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 88346 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1100293752 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 'Aco', '1', '5', '0', '70', '0', '88346', '66563', '33554435', '34', '-8818.28', '681.751', '97.9125', '0', '0', '0', '0.504577', '2 0 0 8 0 0 1048576 0 ', '0', '1', '6553', '2173', '1337174731', '1', '0', '0', '0', '7.36452e-31', '7.36454e-31', '5.95638e-39', '7.36449e-31', '0', '8', '0', '0', '1519', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '4294967295', '0', '3791', '4515', '0', '0', '100', '0', null, null, null, '1');

-- ----------------------------
-- Table structure for `character_action`
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `misc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_action
-- ----------------------------
INSERT INTO character_action VALUES ('9', '0', '6603', '0', '0');
INSERT INTO character_action VALUES ('9', '1', '585', '0', '0');
INSERT INTO character_action VALUES ('9', '2', '2050', '0', '0');
INSERT INTO character_action VALUES ('9', '10', '159', '128', '0');
INSERT INTO character_action VALUES ('9', '11', '2070', '128', '0');

-- ----------------------------
-- Table structure for `character_aura`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT '0',
  `effect_index` int(11) unsigned NOT NULL DEFAULT '0',
  `stackcount` int(11) NOT NULL DEFAULT '1',
  `amount` int(11) NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`spell`,`effect_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_aura
-- ----------------------------

-- ----------------------------
-- Table structure for `character_battleground_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `team` int(11) unsigned NOT NULL DEFAULT '0',
  `join_x` float NOT NULL DEFAULT '0',
  `join_y` float NOT NULL DEFAULT '0',
  `join_z` float NOT NULL DEFAULT '0',
  `join_o` float NOT NULL DEFAULT '0',
  `join_map` int(11) NOT NULL DEFAULT '0',
  `taxi_start` int(11) NOT NULL DEFAULT '0',
  `taxi_end` int(11) NOT NULL DEFAULT '0',
  `mount_spell` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_battleground_data
-- ----------------------------

-- ----------------------------
-- Table structure for `character_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of character_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
  `guid` int(20) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `entry` int(20) unsigned NOT NULL DEFAULT '0',
  `flags` int(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `character_homebind`
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zone` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_homebind
-- ----------------------------
INSERT INTO character_homebind VALUES ('9', '0', '12', '-8949.95', '-132.493', '83.5312');

-- ----------------------------
-- Table structure for `character_instance`
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_instance
-- ----------------------------
INSERT INTO character_instance VALUES ('9', '1', '0');

-- ----------------------------
-- Table structure for `character_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(11) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  `item_template` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  PRIMARY KEY (`item`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_inventory
-- ----------------------------
INSERT INTO character_inventory VALUES ('9', '0', '4', '180', '6098');
INSERT INTO character_inventory VALUES ('9', '0', '6', '182', '52');
INSERT INTO character_inventory VALUES ('9', '0', '3', '184', '53');
INSERT INTO character_inventory VALUES ('9', '0', '7', '186', '51');
INSERT INTO character_inventory VALUES ('9', '0', '15', '188', '36');
INSERT INTO character_inventory VALUES ('9', '0', '23', '194', '6948');
INSERT INTO character_inventory VALUES ('9', '0', '25', '195', '13583');
INSERT INTO character_inventory VALUES ('9', '0', '24', '196', '23720');
INSERT INTO character_inventory VALUES ('9', '0', '26', '200', '1179');

-- ----------------------------
-- Table structure for `character_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) unsigned NOT NULL DEFAULT '0',
  `modelid` int(11) unsigned DEFAULT '0',
  `CreatedBySpell` int(11) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '1',
  `exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loyaltypoints` int(11) NOT NULL DEFAULT '0',
  `loyalty` int(11) unsigned NOT NULL DEFAULT '0',
  `trainpoint` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT 'Pet',
  `renamed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `slot` int(11) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(11) unsigned NOT NULL DEFAULT '1',
  `curmana` int(11) unsigned NOT NULL DEFAULT '0',
  `curhappiness` int(11) unsigned NOT NULL DEFAULT '0',
  `savetime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `resettalents_cost` int(11) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `abdata` longtext,
  `teachspelldata` longtext,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- ----------------------------
-- Records of character_pet
-- ----------------------------

-- ----------------------------
-- Table structure for `character_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of character_pet_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `rewarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mobcount1` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount2` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount3` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount4` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount1` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount2` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount3` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount4` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------
INSERT INTO character_queststatus VALUES ('9', '8811', '0', '1', '0', '1337173815', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO character_queststatus VALUES ('9', '8819', '0', '1', '0', '1337173815', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO character_queststatus VALUES ('9', '8830', '0', '1', '0', '1337173815', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO character_queststatus VALUES ('9', '8831', '0', '1', '0', '1337173815', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO character_queststatus VALUES ('9', '10106', '0', '0', '0', '1337015827', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO character_queststatus VALUES ('9', '30000', '1', '1', '0', '1337015827', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_queststatus_daily`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_daily
-- ----------------------------

-- ----------------------------
-- Table structure for `character_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` int(11) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_reputation
-- ----------------------------
INSERT INTO character_reputation VALUES ('9', '21', '0', '0');
INSERT INTO character_reputation VALUES ('9', '46', '0', '4');
INSERT INTO character_reputation VALUES ('9', '47', '0', '17');
INSERT INTO character_reputation VALUES ('9', '54', '0', '17');
INSERT INTO character_reputation VALUES ('9', '59', '0', '16');
INSERT INTO character_reputation VALUES ('9', '67', '0', '14');
INSERT INTO character_reputation VALUES ('9', '68', '0', '6');
INSERT INTO character_reputation VALUES ('9', '69', '0', '17');
INSERT INTO character_reputation VALUES ('9', '70', '0', '2');
INSERT INTO character_reputation VALUES ('9', '72', '0', '17');
INSERT INTO character_reputation VALUES ('9', '76', '0', '6');
INSERT INTO character_reputation VALUES ('9', '81', '0', '6');
INSERT INTO character_reputation VALUES ('9', '83', '0', '4');
INSERT INTO character_reputation VALUES ('9', '86', '0', '4');
INSERT INTO character_reputation VALUES ('9', '87', '0', '2');
INSERT INTO character_reputation VALUES ('9', '92', '0', '2');
INSERT INTO character_reputation VALUES ('9', '93', '0', '2');
INSERT INTO character_reputation VALUES ('9', '169', '0', '8');
INSERT INTO character_reputation VALUES ('9', '270', '0', '16');
INSERT INTO character_reputation VALUES ('9', '289', '0', '4');
INSERT INTO character_reputation VALUES ('9', '349', '0', '0');
INSERT INTO character_reputation VALUES ('9', '369', '0', '0');
INSERT INTO character_reputation VALUES ('9', '469', '0', '25');
INSERT INTO character_reputation VALUES ('9', '470', '0', '0');
INSERT INTO character_reputation VALUES ('9', '471', '0', '20');
INSERT INTO character_reputation VALUES ('9', '509', '0', '16');
INSERT INTO character_reputation VALUES ('9', '510', '0', '2');
INSERT INTO character_reputation VALUES ('9', '529', '0', '0');
INSERT INTO character_reputation VALUES ('9', '530', '0', '6');
INSERT INTO character_reputation VALUES ('9', '549', '0', '4');
INSERT INTO character_reputation VALUES ('9', '550', '0', '4');
INSERT INTO character_reputation VALUES ('9', '551', '0', '4');
INSERT INTO character_reputation VALUES ('9', '569', '0', '4');
INSERT INTO character_reputation VALUES ('9', '570', '0', '4');
INSERT INTO character_reputation VALUES ('9', '571', '0', '4');
INSERT INTO character_reputation VALUES ('9', '574', '0', '4');
INSERT INTO character_reputation VALUES ('9', '576', '0', '2');
INSERT INTO character_reputation VALUES ('9', '577', '0', '0');
INSERT INTO character_reputation VALUES ('9', '589', '0', '0');
INSERT INTO character_reputation VALUES ('9', '609', '0', '0');
INSERT INTO character_reputation VALUES ('9', '729', '0', '2');
INSERT INTO character_reputation VALUES ('9', '730', '0', '16');
INSERT INTO character_reputation VALUES ('9', '749', '0', '0');
INSERT INTO character_reputation VALUES ('9', '809', '0', '16');
INSERT INTO character_reputation VALUES ('9', '889', '0', '6');
INSERT INTO character_reputation VALUES ('9', '890', '0', '16');
INSERT INTO character_reputation VALUES ('9', '891', '0', '24');
INSERT INTO character_reputation VALUES ('9', '892', '0', '14');
INSERT INTO character_reputation VALUES ('9', '909', '0', '16');
INSERT INTO character_reputation VALUES ('9', '910', '0', '2');
INSERT INTO character_reputation VALUES ('9', '911', '0', '6');
INSERT INTO character_reputation VALUES ('9', '922', '0', '6');
INSERT INTO character_reputation VALUES ('9', '930', '0', '17');
INSERT INTO character_reputation VALUES ('9', '932', '0', '80');
INSERT INTO character_reputation VALUES ('9', '933', '0', '16');
INSERT INTO character_reputation VALUES ('9', '934', '0', '80');
INSERT INTO character_reputation VALUES ('9', '935', '0', '16');
INSERT INTO character_reputation VALUES ('9', '936', '0', '28');
INSERT INTO character_reputation VALUES ('9', '941', '0', '6');
INSERT INTO character_reputation VALUES ('9', '942', '0', '16');
INSERT INTO character_reputation VALUES ('9', '946', '0', '17');
INSERT INTO character_reputation VALUES ('9', '947', '0', '2');
INSERT INTO character_reputation VALUES ('9', '967', '0', '16');
INSERT INTO character_reputation VALUES ('9', '970', '0', '0');
INSERT INTO character_reputation VALUES ('9', '978', '0', '16');
INSERT INTO character_reputation VALUES ('9', '980', '0', '0');
INSERT INTO character_reputation VALUES ('9', '989', '0', '16');
INSERT INTO character_reputation VALUES ('9', '990', '0', '16');
INSERT INTO character_reputation VALUES ('9', '1005', '0', '4');
INSERT INTO character_reputation VALUES ('9', '1011', '0', '17');
INSERT INTO character_reputation VALUES ('9', '1012', '0', '16');
INSERT INTO character_reputation VALUES ('9', '1015', '0', '2');
INSERT INTO character_reputation VALUES ('9', '1031', '0', '16');
INSERT INTO character_reputation VALUES ('9', '1038', '0', '16');
INSERT INTO character_reputation VALUES ('9', '1077', '0', '16');

-- ----------------------------
-- Table structure for `character_skills`
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `guid` int(11) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) unsigned NOT NULL,
  `value` mediumint(9) unsigned NOT NULL,
  `max` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_skills
-- ----------------------------
INSERT INTO character_skills VALUES ('9', '54', '350', '350');
INSERT INTO character_skills VALUES ('9', '56', '1', '1');
INSERT INTO character_skills VALUES ('9', '95', '350', '350');
INSERT INTO character_skills VALUES ('9', '98', '300', '300');
INSERT INTO character_skills VALUES ('9', '136', '1', '350');
INSERT INTO character_skills VALUES ('9', '162', '350', '350');
INSERT INTO character_skills VALUES ('9', '173', '1', '350');
INSERT INTO character_skills VALUES ('9', '228', '350', '350');
INSERT INTO character_skills VALUES ('9', '415', '1', '1');

-- ----------------------------
-- Table structure for `character_social`
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `guid` (`guid`),
  KEY `friend` (`friend`),
  KEY `guid_flags` (`guid`,`flags`),
  KEY `friend_flags` (`friend`,`flags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_social
-- ----------------------------

-- ----------------------------
-- Table structure for `character_spell`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_spell
-- ----------------------------
INSERT INTO character_spell VALUES ('9', '81', '1', '0');
INSERT INTO character_spell VALUES ('9', '198', '1', '0');
INSERT INTO character_spell VALUES ('9', '203', '1', '0');
INSERT INTO character_spell VALUES ('9', '204', '1', '0');
INSERT INTO character_spell VALUES ('9', '227', '1', '0');
INSERT INTO character_spell VALUES ('9', '522', '1', '0');
INSERT INTO character_spell VALUES ('9', '585', '1', '0');
INSERT INTO character_spell VALUES ('9', '668', '1', '0');
INSERT INTO character_spell VALUES ('9', '1180', '1', '0');
INSERT INTO character_spell VALUES ('9', '2050', '1', '0');
INSERT INTO character_spell VALUES ('9', '2382', '1', '0');
INSERT INTO character_spell VALUES ('9', '2479', '1', '0');
INSERT INTO character_spell VALUES ('9', '3050', '1', '0');
INSERT INTO character_spell VALUES ('9', '3365', '1', '0');
INSERT INTO character_spell VALUES ('9', '5009', '1', '0');
INSERT INTO character_spell VALUES ('9', '5019', '1', '0');
INSERT INTO character_spell VALUES ('9', '6233', '1', '0');
INSERT INTO character_spell VALUES ('9', '6246', '1', '0');
INSERT INTO character_spell VALUES ('9', '6247', '1', '0');
INSERT INTO character_spell VALUES ('9', '6477', '1', '0');
INSERT INTO character_spell VALUES ('9', '6478', '1', '0');
INSERT INTO character_spell VALUES ('9', '6603', '1', '0');
INSERT INTO character_spell VALUES ('9', '7266', '1', '0');
INSERT INTO character_spell VALUES ('9', '7267', '1', '0');
INSERT INTO character_spell VALUES ('9', '7355', '1', '0');
INSERT INTO character_spell VALUES ('9', '8386', '1', '0');
INSERT INTO character_spell VALUES ('9', '9078', '1', '0');
INSERT INTO character_spell VALUES ('9', '9125', '1', '0');
INSERT INTO character_spell VALUES ('9', '20597', '1', '0');
INSERT INTO character_spell VALUES ('9', '20598', '1', '0');
INSERT INTO character_spell VALUES ('9', '20599', '1', '0');
INSERT INTO character_spell VALUES ('9', '20600', '1', '0');
INSERT INTO character_spell VALUES ('9', '20864', '1', '0');
INSERT INTO character_spell VALUES ('9', '21651', '1', '0');
INSERT INTO character_spell VALUES ('9', '21652', '1', '0');
INSERT INTO character_spell VALUES ('9', '22027', '1', '0');
INSERT INTO character_spell VALUES ('9', '22810', '1', '0');

-- ----------------------------
-- Table structure for `character_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `character_tutorial`
-- ----------------------------
DROP TABLE IF EXISTS `character_tutorial`;
CREATE TABLE `character_tutorial` (
  `account` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Account Identifier',
  `realmid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Realm Identifier',
  `tut0` int(11) unsigned NOT NULL DEFAULT '0',
  `tut1` int(11) unsigned NOT NULL DEFAULT '0',
  `tut2` int(11) unsigned NOT NULL DEFAULT '0',
  `tut3` int(11) unsigned NOT NULL DEFAULT '0',
  `tut4` int(11) unsigned NOT NULL DEFAULT '0',
  `tut5` int(11) unsigned NOT NULL DEFAULT '0',
  `tut6` int(11) unsigned NOT NULL DEFAULT '0',
  `tut7` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`,`realmid`),
  KEY `acc_key` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of character_tutorial
-- ----------------------------
INSERT INTO character_tutorial VALUES ('1', '1', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295');
INSERT INTO character_tutorial VALUES ('2', '1', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295');
INSERT INTO character_tutorial VALUES ('4', '1', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295', '4294967295');

-- ----------------------------
-- Table structure for `corpse`
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `player` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `zone` int(11) unsigned NOT NULL DEFAULT '38' COMMENT 'Zone Identifier',
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `guild` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `dynFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `corpse_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpse_type`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Death System';

-- ----------------------------
-- Records of corpse
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_condition_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
  `event_id` mediumint(8) unsigned NOT NULL,
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`event_id`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_condition_save
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
  `event_id` mediumint(8) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_save
-- ----------------------------
INSERT INTO game_event_save VALUES ('35', '2', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `gm_surveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
  `surveyid` int(10) NOT NULL AUTO_INCREMENT,
  `AppropriateAnswer` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Did the GM provide an appropriate answer or solution to your question/problem?',
  `Understandability` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'How easy was it to understand and/or follow the information provided?',
  `GMRating` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Was the GM knowledgeable, respectful and empathetic during your interactions?',
  `ResponseTime` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'How would you rate the response time to address your petition?',
  `OverallGMExperience` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'How would you rate the overall experience with the GM that assisted you with your petition?',
  `comment` longtext,
  PRIMARY KEY (`surveyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of gm_surveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
  `guid` int(10) NOT NULL AUTO_INCREMENT,
  `playerGuid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `createtime` int(10) NOT NULL,
  `map` int(11) NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `timestamp` int(10) NOT NULL DEFAULT '0',
  `closed` int(10) NOT NULL DEFAULT '0',
  `assignedto` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `escalated` int(11) NOT NULL DEFAULT '0',
  `viewed` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- ----------------------------
-- Records of gm_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `leaderGuid` int(11) unsigned NOT NULL,
  `mainTank` int(11) unsigned NOT NULL,
  `mainAssistant` int(11) unsigned NOT NULL,
  `lootMethod` tinyint(4) unsigned NOT NULL,
  `looterGuid` int(11) unsigned NOT NULL,
  `lootThreshold` tinyint(4) unsigned NOT NULL,
  `icon1` int(11) unsigned NOT NULL,
  `icon2` int(11) unsigned NOT NULL,
  `icon3` int(11) unsigned NOT NULL,
  `icon4` int(11) unsigned NOT NULL,
  `icon5` int(11) unsigned NOT NULL,
  `icon6` int(11) unsigned NOT NULL,
  `icon7` int(11) unsigned NOT NULL,
  `icon8` int(11) unsigned NOT NULL,
  `isRaid` tinyint(1) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Groups';

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for `group_instance`
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
  `leaderGuid` int(11) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`leaderGuid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `group_member`
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `leaderGuid` int(11) unsigned NOT NULL,
  `memberGuid` int(11) unsigned NOT NULL,
  `assistant` tinyint(1) unsigned NOT NULL,
  `subgroup` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`leaderGuid`,`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Groups';

-- ----------------------------
-- Records of group_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guildid` int(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `leaderguid` int(6) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` int(5) NOT NULL DEFAULT '0',
  `EmblemColor` int(5) NOT NULL DEFAULT '0',
  `BorderStyle` int(5) NOT NULL DEFAULT '0',
  `BorderColor` int(5) NOT NULL DEFAULT '0',
  `BackgroundColor` int(5) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `createdate` datetime DEFAULT NULL,
  `BankMoney` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(11) unsigned NOT NULL DEFAULT '0',
  `LogGuid` int(11) unsigned NOT NULL DEFAULT '0',
  `LogEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `PlayerGuid` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
  `guildid` int(11) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_entry` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_item
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_right`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
  `guildid` int(11) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rid` int(11) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_right
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_tab`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
  `guildid` int(11) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(100) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` text,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_tab
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(11) NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(11) NOT NULL COMMENT 'Log entry identificator',
  `EventType` tinyint(1) NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(11) NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(11) NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(2) NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` bigint(20) NOT NULL COMMENT 'Event UNIX time'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Guild Eventlog';

-- ----------------------------
-- Records of guild_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guildid` int(6) unsigned NOT NULL DEFAULT '0',
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `pnote` varchar(255) NOT NULL DEFAULT '',
  `offnote` varchar(255) NOT NULL DEFAULT '',
  `BankResetTimeMoney` int(11) unsigned NOT NULL DEFAULT '0',
  `BankRemMoney` int(11) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab0` int(11) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab0` int(11) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab1` int(11) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab1` int(11) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab2` int(11) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab2` int(11) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab3` int(11) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab3` int(11) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab4` int(11) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab4` int(11) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab5` int(11) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab5` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`),
  KEY `guid_key` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Guild System';

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_rank`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
  `guildid` int(6) unsigned NOT NULL DEFAULT '0',
  `rid` int(11) unsigned NOT NULL,
  `rname` varchar(255) NOT NULL DEFAULT '',
  `rights` int(3) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- ----------------------------
-- Records of guild_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `instance`
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `map` int(11) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(40) NOT NULL DEFAULT '0',
  `difficulty` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance
-- ----------------------------
INSERT INTO instance VALUES ('1', '568', '0', '0', 'S 0 0 0');

-- ----------------------------
-- Table structure for `instance_reset`
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
  `mapid` int(11) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
INSERT INTO instance_reset VALUES ('249', '1337227200');
INSERT INTO instance_reset VALUES ('269', '1338350400');
INSERT INTO instance_reset VALUES ('309', '1341028800');
INSERT INTO instance_reset VALUES ('409', '1337572800');
INSERT INTO instance_reset VALUES ('469', '1337572800');
INSERT INTO instance_reset VALUES ('509', '1341028800');
INSERT INTO instance_reset VALUES ('531', '1337572800');
INSERT INTO instance_reset VALUES ('532', '1337572800');
INSERT INTO instance_reset VALUES ('533', '1337572800');
INSERT INTO instance_reset VALUES ('534', '1337572800');
INSERT INTO instance_reset VALUES ('540', '1338350400');
INSERT INTO instance_reset VALUES ('542', '1338350400');
INSERT INTO instance_reset VALUES ('543', '1338350400');
INSERT INTO instance_reset VALUES ('544', '1337572800');
INSERT INTO instance_reset VALUES ('545', '1338350400');
INSERT INTO instance_reset VALUES ('546', '1338350400');
INSERT INTO instance_reset VALUES ('547', '1338350400');
INSERT INTO instance_reset VALUES ('548', '1337572800');
INSERT INTO instance_reset VALUES ('550', '1337572800');
INSERT INTO instance_reset VALUES ('552', '1338350400');
INSERT INTO instance_reset VALUES ('553', '1338350400');
INSERT INTO instance_reset VALUES ('554', '1338350400');
INSERT INTO instance_reset VALUES ('555', '1338350400');
INSERT INTO instance_reset VALUES ('556', '1338350400');
INSERT INTO instance_reset VALUES ('557', '1338350400');
INSERT INTO instance_reset VALUES ('558', '1338350400');
INSERT INTO instance_reset VALUES ('560', '1338350400');
INSERT INTO instance_reset VALUES ('564', '1337572800');
INSERT INTO instance_reset VALUES ('565', '1337572800');
INSERT INTO instance_reset VALUES ('568', '1341028800');
INSERT INTO instance_reset VALUES ('580', '1337572800');
INSERT INTO instance_reset VALUES ('585', '1338350400');

-- ----------------------------
-- Table structure for `item_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Item System';

-- ----------------------------
-- Records of item_instance
-- ----------------------------
INSERT INTO item_instance VALUES ('180', '9', '180 1073741824 3 6098 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 35 ');
INSERT INTO item_instance VALUES ('182', '9', '182 1073741824 3 52 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ');
INSERT INTO item_instance VALUES ('184', '9', '184 1073741824 3 53 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ');
INSERT INTO item_instance VALUES ('186', '9', '186 1073741824 3 51 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ');
INSERT INTO item_instance VALUES ('188', '9', '188 1073741824 3 36 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 ');
INSERT INTO item_instance VALUES ('194', '9', '194 1073741824 3 6948 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ');
INSERT INTO item_instance VALUES ('195', '9', '195 1073741824 3 13583 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ');
INSERT INTO item_instance VALUES ('196', '9', '196 1073741824 3 23720 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32833 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ');
INSERT INTO item_instance VALUES ('200', '9', '200 1073741824 3 1179 1065353216 0 9 0 9 0 0 0 0 0 3 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ');

-- ----------------------------
-- Table structure for `item_text`
-- ----------------------------
DROP TABLE IF EXISTS `item_text`;
CREATE TABLE `item_text` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `text` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

-- ----------------------------
-- Records of item_text
-- ----------------------------

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `itemTextId` int(11) unsigned NOT NULL DEFAULT '0',
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` bigint(40) NOT NULL DEFAULT '0',
  `deliver_time` bigint(40) NOT NULL DEFAULT '0',
  `money` int(11) unsigned NOT NULL DEFAULT '0',
  `cod` int(11) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mail System';

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_external`
-- ----------------------------
DROP TABLE IF EXISTS `mail_external`;
CREATE TABLE `mail_external` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `receiver` bigint(20) unsigned NOT NULL,
  `subject` varchar(200) DEFAULT 'Support Message',
  `message` varchar(500) DEFAULT 'Support Message',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mail_external
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_items`
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
  `mail_id` int(11) NOT NULL DEFAULT '0',
  `item_guid` int(11) NOT NULL DEFAULT '0',
  `item_template` int(11) NOT NULL DEFAULT '0',
  `receiver` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`mail_id`,`item_guid`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mail_items
-- ----------------------------

-- ----------------------------
-- Table structure for `petition`
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- ----------------------------
-- Records of petition
-- ----------------------------

-- ----------------------------
-- Table structure for `petition_sign`
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(11) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(11) unsigned NOT NULL DEFAULT '0',
  `player_account` int(11) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- ----------------------------
-- Records of petition_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT '0',
  `effect_index` int(11) unsigned NOT NULL DEFAULT '0',
  `stackcount` int(11) NOT NULL DEFAULT '1',
  `amount` int(11) NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`spell`,`effect_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- ----------------------------
-- Records of pet_aura
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- ----------------------------
-- Records of pet_spell
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `saved_variables`
-- ----------------------------
DROP TABLE IF EXISTS `saved_variables`;
CREATE TABLE `saved_variables` (
  `NextArenaPointDistributionTime` bigint(40) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Variable Saves';

-- ----------------------------
-- Records of saved_variables
-- ----------------------------
INSERT INTO saved_variables VALUES ('1337340700');
