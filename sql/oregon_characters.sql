/*
SQLyog Enterprise Trial - MySQL GUI v7.11 
MySQL - 5.5.24-log : Database - oregon_characters
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`oregon_characters` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oregon_characters`;

/*Table structure for table `arena_team` */

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

/*Data for the table `arena_team` */

/*Table structure for table `arena_team_member` */

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

/*Data for the table `arena_team_member` */

/*Table structure for table `arena_team_stats` */

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

/*Data for the table `arena_team_stats` */

/*Table structure for table `auctionhouse` */

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

/*Data for the table `auctionhouse` */

/*Table structure for table `auctionhousebot` */

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

/*Data for the table `auctionhousebot` */

insert  into `auctionhousebot`(`auctionhouse`,`name`,`minitems`,`maxitems`,`percentgreytradegoods`,`percentwhitetradegoods`,`percentgreentradegoods`,`percentbluetradegoods`,`percentpurpletradegoods`,`percentorangetradegoods`,`percentyellowtradegoods`,`percentgreyitems`,`percentwhiteitems`,`percentgreenitems`,`percentblueitems`,`percentpurpleitems`,`percentorangeitems`,`percentyellowitems`,`minpricegrey`,`maxpricegrey`,`minpricewhite`,`maxpricewhite`,`minpricegreen`,`maxpricegreen`,`minpriceblue`,`maxpriceblue`,`minpricepurple`,`maxpricepurple`,`minpriceorange`,`maxpriceorange`,`minpriceyellow`,`maxpriceyellow`,`minbidpricegrey`,`maxbidpricegrey`,`minbidpricewhite`,`maxbidpricewhite`,`minbidpricegreen`,`maxbidpricegreen`,`minbidpriceblue`,`maxbidpriceblue`,`minbidpricepurple`,`maxbidpricepurple`,`minbidpriceorange`,`maxbidpriceorange`,`minbidpriceyellow`,`maxbidpriceyellow`,`maxstackgrey`,`maxstackwhite`,`maxstackgreen`,`maxstackblue`,`maxstackpurple`,`maxstackorange`,`maxstackyellow`,`buyerpricegrey`,`buyerpricewhite`,`buyerpricegreen`,`buyerpriceblue`,`buyerpricepurple`,`buyerpriceorange`,`buyerpriceyellow`,`buyerbiddinginterval`,`buyerbidsperinterval`) values (2,'Alliance',0,0,0,27,12,10,1,0,0,0,10,30,8,2,0,0,100,150,150,250,800,1400,1250,1750,2250,4550,3250,5550,5250,6550,70,100,70,100,80,100,75,100,80,100,80,100,80,100,0,0,3,2,1,1,1,1,3,5,12,15,20,22,1,1),(6,'Horde',0,0,0,27,12,10,1,0,0,0,10,30,8,2,0,0,100,150,150,250,800,1400,1250,1750,2250,4550,3250,5550,5250,6550,70,100,70,100,80,100,75,100,80,100,80,100,80,100,0,0,3,2,1,1,1,1,3,5,12,15,20,22,1,1),(7,'Neutral',0,0,0,27,12,10,1,0,0,0,10,30,8,2,0,0,100,150,150,250,800,1400,1250,1750,2250,4550,3250,5550,5250,6550,70,100,70,100,80,100,75,100,80,100,80,100,80,100,0,0,3,2,1,1,1,1,3,5,12,15,20,22,1,1);

/*Table structure for table `bugreport` */

DROP TABLE IF EXISTS `bugreport`;

CREATE TABLE `bugreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Debug System';

/*Data for the table `bugreport` */

/*Table structure for table `character_action` */

DROP TABLE IF EXISTS `character_action`;

CREATE TABLE `character_action` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `misc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

/*Data for the table `character_action` */

insert  into `character_action`(`guid`,`button`,`action`,`type`,`misc`) values (9,0,1,64,0),(9,1,4,64,0),(9,2,2053,0,0),(9,3,4,64,0),(9,4,4,64,0),(9,5,2,64,0),(9,10,159,128,0),(9,11,2070,128,0),(9,71,15473,0,0),(12,0,6603,0,0),(12,1,591,0,0),(12,2,2052,0,0),(12,3,1,64,0),(12,10,159,128,0),(12,11,2070,128,0),(13,0,6603,0,0),(13,1,133,0,0),(13,2,168,0,0),(13,10,159,128,0),(13,11,2070,128,0),(14,72,6603,0,0),(14,73,78,0,0),(14,74,20577,0,0),(14,83,4604,128,0),(17,0,1,64,0),(17,1,21084,0,0),(17,2,635,0,0),(17,3,20594,0,0),(17,4,2481,0,0),(17,10,159,128,0),(17,11,4540,128,0),(18,10,159,128,0),(18,11,20857,128,0),(19,0,6603,0,0),(19,1,591,0,0),(19,2,589,0,0),(19,3,2052,0,0),(19,4,28734,0,0),(19,5,28730,0,0),(19,10,17,0,0),(19,11,1243,0,0),(22,72,6603,0,0),(22,73,78,0,0),(22,83,117,128,0),(23,72,6603,0,0),(23,73,78,0,0),(23,83,117,128,0);

/*Table structure for table `character_aura` */

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

/*Data for the table `character_aura` */

insert  into `character_aura`(`guid`,`caster_guid`,`spell`,`effect_index`,`stackcount`,`amount`,`maxduration`,`remaintime`,`remaincharges`) values (17,17,28489,0,1,1,3600000,3050394,-1),(17,17,33079,0,1,300,1800000,1013397,-1),(17,17,39439,0,20,6,10000,4197,-1),(17,17,39439,2,20,6,10000,4197,-1),(17,17,39625,0,1,250,3600000,3484294,-1),(17,17,39625,1,1,10,3600000,3484294,-1),(18,18,30174,0,1,0,-1,-1,-1),(19,19,8326,0,1,-20,-1,-1,-1),(19,19,8326,1,1,25,-1,-1,-1),(19,19,8326,2,1,25,-1,-1,-1),(23,23,32216,0,1,0,20000,16599,-1);

/*Table structure for table `character_battleground_data` */

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

/*Data for the table `character_battleground_data` */

/*Table structure for table `character_declinedname` */

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

/*Data for the table `character_declinedname` */

/*Table structure for table `character_gifts` */

DROP TABLE IF EXISTS `character_gifts`;

CREATE TABLE `character_gifts` (
  `guid` int(20) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `entry` int(20) unsigned NOT NULL DEFAULT '0',
  `flags` int(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_gifts` */

/*Table structure for table `character_homebind` */

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

/*Data for the table `character_homebind` */

insert  into `character_homebind`(`guid`,`map`,`zone`,`position_x`,`position_y`,`position_z`) values (9,0,12,-8949.95,-132.493,83.5312),(12,0,12,-8949.95,-132.493,83.5312),(13,0,12,-8949.95,-132.493,83.5312),(14,0,85,1676.71,1678.31,121.67),(17,0,1,-6240.32,331.033,382.758),(18,530,3431,10349.6,-6357.29,33.4026),(19,530,3431,10349.6,-6357.29,33.4026),(22,0,12,-8949.95,-132.493,83.5312),(23,0,12,-8949.95,-132.493,83.5312);

/*Table structure for table `character_instance` */

DROP TABLE IF EXISTS `character_instance`;

CREATE TABLE `character_instance` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_instance` */

/*Table structure for table `character_inventory` */

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

/*Data for the table `character_inventory` */

insert  into `character_inventory`(`guid`,`bag`,`slot`,`item`,`item_template`) values (9,0,3,184,53),(9,0,23,194,6948),(9,0,25,195,13583),(9,0,24,196,23720),(9,0,26,200,1179),(9,0,7,201,34563),(9,0,5,202,34528),(9,0,8,203,34434),(9,0,2,204,31070),(9,0,6,205,31067),(9,0,4,206,31065),(9,0,0,207,31064),(9,0,9,208,31061),(9,0,15,210,34335),(9,0,17,211,34347),(9,0,1,212,34359),(9,0,10,213,34362),(9,0,12,215,34429),(9,0,13,216,32483),(9,0,14,217,34242),(9,0,16,218,34179),(9,0,11,219,34230),(9,0,29,220,17578),(9,0,33,221,29434),(9,270,5,222,32374),(9,0,35,224,33102),(9,0,36,258,32239),(9,270,18,266,18873),(9,0,28,267,23454),(9,0,30,268,30001),(9,270,19,269,17602),(9,0,19,270,38082),(9,0,27,271,23302),(9,0,31,272,23303),(9,0,32,273,23289),(9,0,37,274,23288),(9,0,38,275,23317),(9,270,0,276,23316),(9,270,1,277,23453),(9,270,2,278,28379),(9,270,3,282,32338),(9,270,4,284,32237),(9,0,34,286,29981),(12,0,4,288,6098),(12,0,6,290,52),(12,0,3,292,53),(12,0,28,294,51),(12,0,15,296,36),(12,0,23,298,159),(12,0,24,300,2070),(12,0,25,302,6948),(12,0,26,303,13583),(12,0,27,304,23720),(12,0,19,312,5572),(12,0,7,314,80),(12,0,30,319,1416),(12,0,31,327,5572),(12,0,29,332,5580),(12,0,32,334,6076),(13,0,4,336,56),(13,0,6,338,1395),(13,0,7,340,55),(13,0,15,342,35),(13,0,3,344,6096),(13,0,23,346,2070),(13,0,24,348,159),(13,0,25,350,6948),(14,0,3,352,6125),(14,0,6,354,139),(14,0,7,356,140),(14,0,15,358,25),(14,0,16,360,2362),(14,0,23,362,4604),(14,0,24,364,6948),(9,270,6,367,34368),(9,270,7,368,30809),(9,270,8,369,29740),(9,270,10,373,25398),(9,270,11,374,25084),(9,270,12,375,27502),(9,270,13,376,21877),(9,270,14,377,27859),(9,270,15,378,27860),(17,0,3,414,6117),(17,0,6,416,6118),(17,0,7,418,43),(17,0,15,420,2361),(17,0,23,422,4540),(17,0,24,424,159),(17,0,25,426,6948),(17,0,30,436,27860),(17,0,32,438,30810),(17,0,33,439,27855),(17,0,28,443,30809),(17,0,29,444,21877),(17,0,31,446,22832),(17,0,34,447,22829),(17,0,37,461,17057),(17,0,38,462,17058),(17,0,35,469,29434),(17,0,26,474,34537),(17,0,19,475,35516),(17,0,36,476,32062),(17,475,1,478,22835),(17,475,5,484,3187),(17,0,27,503,31890),(17,0,12,504,31856),(18,0,3,506,24143),(18,0,6,508,24145),(18,0,7,510,24146),(18,0,31,512,23346),(18,0,23,514,20857),(18,0,24,516,159),(18,0,25,518,6948),(18,0,15,519,35109),(18,0,26,520,18873),(18,0,28,521,29981),(18,0,27,522,22114),(18,0,29,523,23720),(19,0,30,525,20891),(19,0,3,527,53),(19,0,26,529,52),(19,0,15,531,20981),(19,0,23,533,20857),(19,0,24,535,159),(19,0,7,537,51),(19,0,25,539,6948),(19,0,6,540,21006),(19,0,5,541,20998),(19,0,27,542,33154),(19,0,28,543,23720),(19,0,9,544,21005),(19,0,4,545,21007),(22,0,3,577,38),(22,0,6,579,39),(22,0,7,581,40),(22,0,15,583,25),(22,0,16,585,2362),(22,0,23,587,117),(22,0,24,589,6948),(23,0,3,591,38),(23,0,6,593,39),(23,0,7,595,40),(23,0,15,597,25),(23,0,16,599,2362),(23,0,23,601,117),(23,0,24,603,6948),(23,0,25,604,3370),(22,0,25,605,4865),(22,0,26,606,5572),(22,0,27,607,7074),(22,0,28,608,1364),(22,0,29,610,5572),(22,0,30,611,7073),(22,0,31,612,3363),(22,0,32,614,2646),(22,0,33,616,2642);

/*Table structure for table `character_pet` */

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

/*Data for the table `character_pet` */

/*Table structure for table `character_pet_declinedname` */

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

/*Data for the table `character_pet_declinedname` */

/*Table structure for table `character_queststatus` */

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

/*Data for the table `character_queststatus` */

insert  into `character_queststatus`(`guid`,`quest`,`status`,`rewarded`,`explored`,`timer`,`mobcount1`,`mobcount2`,`mobcount3`,`mobcount4`,`itemcount1`,`itemcount2`,`itemcount3`,`itemcount4`) values (9,8811,0,1,0,1337173815,0,0,0,0,0,0,0,0),(9,8819,0,1,0,1337173815,0,0,0,0,0,0,0,0),(9,8830,0,1,0,1337173815,0,0,0,0,0,0,0,0),(9,8831,0,1,0,1337173815,0,0,0,0,0,0,0,0),(9,10106,0,0,0,1337015827,0,0,0,0,0,0,0,0),(9,11178,1,0,0,1339519978,0,0,0,0,1,0,0,0),(9,11335,0,0,0,1341397187,0,0,0,0,0,0,0,0),(9,11336,0,0,0,1341397187,0,0,0,0,0,0,0,0),(9,11337,0,0,0,1341397187,0,0,0,0,0,0,0,0),(9,11338,0,0,0,1341397187,0,0,0,0,0,0,0,0),(9,11339,0,0,0,1337671463,0,0,0,0,0,0,0,0),(9,11340,0,0,0,1337671463,0,0,0,0,0,0,0,0),(9,11341,0,0,0,1337671463,0,0,0,0,0,0,0,0),(9,11342,0,0,0,1337671463,0,0,0,0,0,0,0,0),(9,11488,1,0,0,1341397717,0,0,0,0,0,0,0,0),(9,11496,0,1,1,1341397717,0,0,0,0,0,0,0,0),(9,11523,0,0,0,1341397717,0,0,0,0,0,0,0,0),(9,11524,3,0,0,1341397717,0,0,0,0,0,1,0,0),(9,11525,0,0,0,1341397717,0,0,0,0,0,0,0,0),(9,11532,0,0,0,1341397717,0,0,0,0,0,0,0,0),(9,11533,0,0,0,1351195510,0,0,0,0,0,0,0,0),(9,11537,0,0,0,1351195510,0,0,0,0,0,0,0,0),(9,11538,0,0,0,1341397717,0,0,0,0,0,0,0,0),(9,11545,0,0,0,1351195510,0,0,0,0,0,0,0,0),(9,30000,1,1,0,1337015827,0,0,0,0,0,0,0,0),(12,6,1,1,0,1341139103,0,0,0,0,0,0,0,0),(12,7,1,1,0,1341139103,10,0,0,0,0,0,0,0),(12,15,3,0,0,1341139103,0,0,0,0,0,0,0,0),(12,18,1,1,0,1341139103,0,0,0,0,0,0,0,0),(12,33,1,1,0,1341139103,0,0,0,0,0,0,0,0),(12,783,1,1,0,1341139103,0,0,0,0,0,0,0,0),(12,3103,1,1,0,1341139103,0,0,0,0,0,0,0,0),(12,3903,1,0,0,1341139103,0,0,0,0,0,0,0,0),(12,5261,1,1,0,1341139103,0,0,0,0,0,0,0,0),(12,5623,1,0,0,1341139103,0,0,0,0,0,0,0,0),(12,30000,1,1,0,1341139103,0,0,0,0,0,0,0,0),(17,10938,1,0,0,1341401888,0,0,0,0,1,0,0,0),(17,11335,0,0,0,1341398718,0,0,0,0,0,0,0,0),(17,11336,0,0,0,1341398718,0,0,0,0,0,0,0,0),(17,11337,0,0,0,1341398718,0,0,0,0,0,0,0,0),(17,11338,0,0,0,1341398718,0,0,0,0,0,0,0,0),(17,11488,1,1,0,1341401332,0,0,0,0,0,0,0,0),(17,11490,3,0,0,1341401888,0,0,0,0,0,0,0,0),(17,11496,0,0,0,1341398718,0,0,0,0,0,0,0,0),(17,11517,1,0,0,1341398718,0,0,0,0,0,0,0,0),(17,11520,0,1,0,1341401332,0,0,0,0,0,0,0,0),(17,11521,0,1,0,1341401332,0,0,0,0,0,0,0,0),(17,11523,0,1,1,1341398718,0,0,0,0,0,0,0,0),(17,11525,0,1,0,1341399821,5,0,0,0,0,0,0,0),(17,11532,0,1,0,1341399169,0,2,3,12,0,0,0,0),(17,11533,0,1,0,1341399169,0,2,3,12,1,0,0,0),(17,11535,0,1,0,1341401332,0,0,0,0,0,0,0,0),(17,11536,0,1,0,1341401332,0,0,0,0,0,0,0,0),(17,11537,0,1,0,1341398718,1,6,0,0,0,0,0,0),(17,11538,0,1,0,1341398718,1,6,0,0,0,0,0,0),(17,11539,0,1,0,1341399821,6,6,3,0,0,0,0,0),(17,11540,0,1,0,1341399821,6,6,3,0,0,0,0,0),(17,11541,3,0,0,1341401332,0,0,0,0,0,0,0,0),(17,11542,0,0,0,1341401332,0,0,0,6,0,0,0,0),(17,11543,0,1,0,1341401332,0,0,0,6,0,0,0,0),(17,11544,3,0,0,1341401332,0,0,0,0,0,0,0,0),(17,11545,0,1,0,1341399821,0,0,0,0,0,0,0,0),(17,11546,0,1,0,1341401332,0,0,0,0,0,0,0,0),(17,11549,1,1,0,1341401332,0,0,0,0,0,0,0,0),(17,11554,1,1,0,1341398718,0,0,0,0,0,0,0,0),(17,11555,1,1,0,1341399821,0,0,0,0,0,0,0,0),(17,11556,1,1,0,1341401332,0,0,0,0,0,0,0,0),(18,30000,1,1,0,1351197235,0,0,0,0,0,0,0,0),(19,8325,1,1,0,1351198833,8,0,0,0,0,0,0,0),(19,30000,1,1,0,1351198833,0,0,0,0,0,0,0,0),(22,7,3,0,0,1351466727,0,0,0,0,0,0,0,0),(22,783,1,1,0,1351466727,0,0,0,0,0,0,0,0),(22,5261,1,1,0,1351505777,0,0,0,0,0,0,0,0);

/*Table structure for table `character_queststatus_daily` */

DROP TABLE IF EXISTS `character_queststatus_daily`;

CREATE TABLE `character_queststatus_daily` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

/*Data for the table `character_queststatus_daily` */

/*Table structure for table `character_reputation` */

DROP TABLE IF EXISTS `character_reputation`;

CREATE TABLE `character_reputation` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` int(11) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

/*Data for the table `character_reputation` */

insert  into `character_reputation`(`guid`,`faction`,`standing`,`flags`) values (9,21,0,0),(9,46,0,4),(9,47,0,17),(9,54,0,17),(9,59,0,16),(9,67,0,14),(9,68,0,6),(9,69,0,17),(9,70,0,2),(9,72,0,17),(9,76,0,6),(9,81,0,6),(9,83,0,4),(9,86,0,4),(9,87,0,2),(9,92,0,2),(9,93,0,2),(9,169,0,8),(9,270,0,16),(9,289,0,4),(9,349,0,0),(9,369,0,0),(9,469,0,25),(9,470,0,0),(9,471,0,20),(9,509,0,16),(9,510,0,2),(9,529,0,0),(9,530,0,6),(9,549,0,4),(9,550,0,4),(9,551,0,4),(9,569,0,4),(9,570,0,4),(9,571,0,4),(9,574,0,4),(9,576,0,2),(9,577,0,0),(9,589,0,0),(9,609,0,0),(9,729,0,2),(9,730,0,16),(9,749,0,0),(9,809,0,16),(9,889,0,6),(9,890,0,16),(9,891,0,24),(9,892,0,14),(9,909,0,16),(9,910,0,2),(9,911,0,6),(9,922,0,6),(9,930,0,17),(9,932,0,81),(9,933,0,16),(9,934,0,80),(9,935,0,17),(9,936,0,28),(9,941,0,6),(9,942,0,16),(9,946,0,17),(9,947,0,2),(9,967,0,16),(9,970,0,0),(9,978,0,16),(9,980,0,0),(9,989,0,16),(9,990,0,16),(9,1005,0,4),(9,1011,0,17),(9,1012,42999,17),(9,1015,0,2),(9,1031,0,16),(9,1038,0,16),(9,1077,2475,17),(12,21,0,0),(12,46,0,4),(12,47,0,17),(12,54,0,17),(12,59,0,16),(12,67,0,14),(12,68,0,6),(12,69,0,17),(12,70,0,2),(12,72,18561,17),(12,76,0,6),(12,81,0,6),(12,83,0,4),(12,86,0,4),(12,87,0,2),(12,92,0,2),(12,93,0,2),(12,169,0,8),(12,270,0,16),(12,289,0,4),(12,349,0,0),(12,369,0,0),(12,469,0,25),(12,470,0,0),(12,471,0,20),(12,509,0,16),(12,510,0,2),(12,529,0,0),(12,530,0,6),(12,549,0,4),(12,550,0,4),(12,551,0,4),(12,569,0,4),(12,570,0,4),(12,571,0,4),(12,574,0,4),(12,576,0,2),(12,577,0,0),(12,589,0,0),(12,609,0,0),(12,729,0,2),(12,730,0,16),(12,749,0,0),(12,809,0,16),(12,889,0,6),(12,890,0,16),(12,891,0,24),(12,892,0,14),(12,909,0,16),(12,910,0,0),(12,911,0,6),(12,922,0,6),(12,930,0,17),(12,932,0,80),(12,933,0,16),(12,934,0,80),(12,935,0,16),(12,936,0,28),(12,941,0,6),(12,942,0,16),(12,946,0,16),(12,947,0,0),(12,967,0,16),(12,970,0,0),(12,978,0,16),(12,980,0,0),(12,989,0,16),(12,990,0,16),(12,1005,0,4),(12,1011,0,16),(12,1012,0,16),(12,1015,0,2),(12,1031,0,16),(12,1038,0,16),(12,1077,0,16),(13,21,0,0),(13,46,0,4),(13,47,0,17),(13,54,0,17),(13,59,0,16),(13,67,0,14),(13,68,0,6),(13,69,0,17),(13,70,0,2),(13,72,0,17),(13,76,0,6),(13,81,0,6),(13,83,0,4),(13,86,0,4),(13,87,0,2),(13,92,0,2),(13,93,0,2),(13,169,0,8),(13,270,0,16),(13,289,0,4),(13,349,0,0),(13,369,0,0),(13,469,0,25),(13,470,0,0),(13,471,0,20),(13,509,0,16),(13,510,0,2),(13,529,0,0),(13,530,0,6),(13,549,0,4),(13,550,0,4),(13,551,0,4),(13,569,0,4),(13,570,0,4),(13,571,0,4),(13,574,0,4),(13,576,0,2),(13,577,0,0),(13,589,0,0),(13,609,0,0),(13,729,0,2),(13,730,0,16),(13,749,0,0),(13,809,0,16),(13,889,0,6),(13,890,0,16),(13,891,0,24),(13,892,0,14),(13,909,0,16),(13,910,0,2),(13,911,0,6),(13,922,0,6),(13,930,0,17),(13,932,0,80),(13,933,0,16),(13,934,0,80),(13,935,0,16),(13,936,0,28),(13,941,0,6),(13,942,0,16),(13,946,0,16),(13,947,0,2),(13,967,0,16),(13,970,0,0),(13,978,0,16),(13,980,0,0),(13,989,0,16),(13,990,0,16),(13,1005,0,4),(13,1011,0,16),(13,1012,0,16),(13,1015,0,2),(13,1031,0,16),(13,1038,0,16),(13,1077,0,16),(14,21,0,0),(14,46,0,4),(14,47,0,6),(14,54,0,6),(14,59,0,16),(14,67,0,25),(14,68,0,17),(14,69,0,6),(14,70,0,2),(14,72,0,6),(14,76,0,17),(14,81,0,17),(14,83,0,4),(14,86,0,4),(14,87,0,2),(14,92,0,2),(14,93,0,2),(14,169,0,8),(14,270,0,16),(14,289,0,4),(14,349,0,0),(14,369,0,0),(14,469,0,14),(14,470,0,0),(14,471,0,22),(14,509,0,2),(14,510,0,16),(14,529,0,0),(14,530,0,17),(14,549,0,4),(14,550,0,4),(14,551,0,4),(14,569,0,4),(14,570,0,4),(14,571,0,4),(14,574,0,4),(14,576,0,2),(14,577,0,0),(14,589,0,6),(14,609,0,0),(14,729,0,16),(14,730,0,2),(14,749,0,0),(14,809,0,16),(14,889,0,16),(14,890,0,6),(14,891,0,14),(14,892,0,24),(14,909,0,16),(14,910,0,2),(14,911,0,17),(14,922,0,16),(14,930,0,6),(14,932,0,80),(14,933,0,16),(14,934,0,80),(14,935,0,16),(14,936,0,28),(14,941,0,16),(14,942,0,16),(14,946,0,2),(14,947,0,16),(14,967,0,16),(14,970,0,0),(14,978,0,2),(14,980,0,0),(14,989,0,16),(14,990,0,16),(14,1005,0,4),(14,1011,0,16),(14,1012,0,16),(14,1015,0,2),(14,1031,0,16),(14,1038,0,16),(14,1077,0,16),(17,21,0,0),(17,46,0,4),(17,47,0,17),(17,54,0,17),(17,59,0,16),(17,67,0,14),(17,68,0,6),(17,69,0,17),(17,70,0,2),(17,72,0,17),(17,76,0,6),(17,81,0,6),(17,83,0,4),(17,86,0,4),(17,87,0,2),(17,92,0,2),(17,93,0,2),(17,169,0,8),(17,270,0,16),(17,289,0,4),(17,349,0,0),(17,369,0,0),(17,469,0,25),(17,470,0,0),(17,471,0,4),(17,509,0,16),(17,510,0,2),(17,529,0,0),(17,530,0,6),(17,549,0,4),(17,550,0,4),(17,551,0,4),(17,569,0,4),(17,570,0,4),(17,571,0,4),(17,574,0,4),(17,576,0,2),(17,577,0,0),(17,589,0,0),(17,609,0,0),(17,729,0,2),(17,730,0,16),(17,749,0,0),(17,809,0,16),(17,889,0,6),(17,890,0,16),(17,891,0,24),(17,892,0,14),(17,909,0,16),(17,910,0,2),(17,911,0,6),(17,922,0,6),(17,930,0,17),(17,932,0,80),(17,933,0,16),(17,934,0,80),(17,935,0,16),(17,936,0,28),(17,941,0,6),(17,942,0,16),(17,946,0,16),(17,947,0,2),(17,967,0,16),(17,970,0,0),(17,978,0,16),(17,980,0,0),(17,989,0,16),(17,990,0,16),(17,1005,0,4),(17,1011,0,16),(17,1012,0,16),(17,1015,0,2),(17,1031,0,16),(17,1038,0,16),(17,1077,42999,17),(18,21,0,0),(18,46,0,4),(18,47,0,6),(18,54,0,6),(18,59,0,16),(18,67,0,25),(18,68,0,17),(18,69,0,6),(18,70,0,2),(18,72,0,6),(18,76,0,17),(18,81,0,17),(18,83,0,4),(18,86,0,4),(18,87,0,2),(18,92,0,2),(18,93,0,2),(18,169,0,8),(18,270,0,16),(18,289,0,4),(18,349,0,0),(18,369,0,0),(18,469,0,14),(18,470,0,0),(18,471,0,22),(18,509,0,2),(18,510,0,16),(18,529,0,0),(18,530,0,17),(18,549,0,4),(18,550,0,4),(18,551,0,4),(18,569,0,4),(18,570,0,4),(18,571,0,4),(18,574,0,4),(18,576,0,2),(18,577,0,0),(18,589,0,6),(18,609,0,0),(18,729,0,16),(18,730,0,2),(18,749,0,0),(18,809,0,16),(18,889,0,16),(18,890,0,6),(18,891,0,0),(18,892,0,24),(18,909,0,16),(18,910,0,2),(18,911,0,17),(18,922,0,16),(18,930,0,6),(18,932,0,80),(18,933,0,16),(18,934,0,80),(18,935,0,16),(18,936,0,28),(18,941,0,16),(18,942,0,16),(18,946,0,2),(18,947,0,16),(18,967,0,16),(18,970,0,0),(18,978,0,2),(18,980,0,0),(18,989,0,16),(18,990,0,16),(18,1005,0,4),(18,1011,0,16),(18,1012,0,16),(18,1015,0,2),(18,1031,0,16),(18,1038,0,16),(18,1077,0,16),(19,21,0,0),(19,46,0,4),(19,47,0,6),(19,54,0,6),(19,59,0,16),(19,67,0,25),(19,68,0,17),(19,69,0,6),(19,70,0,2),(19,72,0,6),(19,76,0,17),(19,81,0,17),(19,83,0,4),(19,86,0,4),(19,87,0,2),(19,92,0,2),(19,93,0,2),(19,169,0,8),(19,270,0,16),(19,289,0,4),(19,349,0,0),(19,369,0,0),(19,469,0,14),(19,470,0,0),(19,471,0,22),(19,509,0,2),(19,510,0,16),(19,529,0,0),(19,530,0,17),(19,549,0,4),(19,550,0,4),(19,551,0,4),(19,569,0,4),(19,570,0,4),(19,571,0,4),(19,574,0,4),(19,576,0,2),(19,577,0,0),(19,589,0,6),(19,609,0,0),(19,729,0,16),(19,730,0,2),(19,749,0,0),(19,809,0,16),(19,889,0,16),(19,890,0,6),(19,891,0,0),(19,892,0,24),(19,909,0,16),(19,910,0,0),(19,911,3750,17),(19,922,0,16),(19,930,0,6),(19,932,0,80),(19,933,0,16),(19,934,0,80),(19,935,0,16),(19,936,0,28),(19,941,0,16),(19,942,0,16),(19,946,0,0),(19,947,0,16),(19,967,0,16),(19,970,0,0),(19,978,0,0),(19,980,0,0),(19,989,0,16),(19,990,0,16),(19,1005,0,4),(19,1011,0,16),(19,1012,0,16),(19,1015,0,2),(19,1031,0,16),(19,1038,0,16),(19,1077,0,16),(22,21,0,0),(22,46,0,4),(22,47,0,17),(22,54,0,17),(22,59,0,16),(22,67,0,14),(22,68,0,6),(22,69,0,17),(22,70,0,2),(22,72,2474,17),(22,76,0,6),(22,81,0,6),(22,83,0,4),(22,86,0,4),(22,87,0,2),(22,92,0,2),(22,93,0,2),(22,169,0,8),(22,270,0,16),(22,289,0,4),(22,349,0,0),(22,369,0,0),(22,469,0,25),(22,470,0,0),(22,471,0,20),(22,509,0,16),(22,510,0,2),(22,529,0,0),(22,530,0,6),(22,549,0,4),(22,550,0,4),(22,551,0,4),(22,569,0,4),(22,570,0,4),(22,571,0,4),(22,574,0,4),(22,576,0,2),(22,577,0,0),(22,589,0,0),(22,609,0,0),(22,729,0,2),(22,730,0,16),(22,749,0,0),(22,809,0,16),(22,889,0,6),(22,890,0,16),(22,891,0,24),(22,892,0,14),(22,909,0,16),(22,910,0,2),(22,911,0,6),(22,922,0,6),(22,930,0,17),(22,932,0,80),(22,933,0,16),(22,934,0,80),(22,935,0,16),(22,936,0,28),(22,941,0,6),(22,942,0,16),(22,946,0,16),(22,947,0,2),(22,967,0,16),(22,970,0,0),(22,978,0,16),(22,980,0,0),(22,989,0,16),(22,990,0,16),(22,1005,0,4),(22,1011,0,16),(22,1012,0,16),(22,1015,0,2),(22,1031,0,16),(22,1038,0,16),(22,1077,0,16),(23,21,0,0),(23,46,0,4),(23,47,0,17),(23,54,0,17),(23,59,0,16),(23,67,0,14),(23,68,0,6),(23,69,0,17),(23,70,0,2),(23,72,0,17),(23,76,0,6),(23,81,0,6),(23,83,0,4),(23,86,0,4),(23,87,0,2),(23,92,0,2),(23,93,0,2),(23,169,0,8),(23,270,0,16),(23,289,0,4),(23,349,0,0),(23,369,0,0),(23,469,0,25),(23,470,0,0),(23,471,0,20),(23,509,0,16),(23,510,0,2),(23,529,0,0),(23,530,0,6),(23,549,0,4),(23,550,0,4),(23,551,0,4),(23,569,0,4),(23,570,0,4),(23,571,0,4),(23,574,0,4),(23,576,0,2),(23,577,0,0),(23,589,0,0),(23,609,0,0),(23,729,0,2),(23,730,0,16),(23,749,0,0),(23,809,0,16),(23,889,0,6),(23,890,0,16),(23,891,0,24),(23,892,0,14),(23,909,0,16),(23,910,0,0),(23,911,0,6),(23,922,0,6),(23,930,0,17),(23,932,0,80),(23,933,0,16),(23,934,0,80),(23,935,0,16),(23,936,0,28),(23,941,0,6),(23,942,0,16),(23,946,0,16),(23,947,0,0),(23,967,0,16),(23,970,0,0),(23,978,0,16),(23,980,0,0),(23,989,0,16),(23,990,0,16),(23,1005,0,4),(23,1011,0,16),(23,1012,0,16),(23,1015,0,2),(23,1031,0,16),(23,1038,0,16),(23,1077,0,16);

/*Table structure for table `character_skills` */

DROP TABLE IF EXISTS `character_skills`;

CREATE TABLE `character_skills` (
  `guid` int(11) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) unsigned NOT NULL,
  `value` mediumint(9) unsigned NOT NULL,
  `max` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

/*Data for the table `character_skills` */

insert  into `character_skills`(`guid`,`skill`,`value`,`max`) values (9,54,350,350),(9,56,1,1),(9,95,350,350),(9,98,300,300),(9,136,350,350),(9,162,350,350),(9,173,350,350),(9,228,350,350),(9,415,1,1),(9,755,375,375),(12,54,55,55),(12,56,1,1),(12,95,55,55),(12,98,300,300),(12,162,55,55),(12,228,55,55),(12,415,1,1),(13,6,1,1),(13,8,1,1),(13,95,350,350),(13,98,300,300),(13,136,350,350),(13,162,350,350),(13,228,350,350),(13,415,1,1),(14,26,1,1),(14,43,350,350),(14,55,350,350),(14,95,350,350),(14,109,300,300),(14,162,350,350),(14,173,350,350),(14,413,1,1),(14,414,1,1),(14,415,1,1),(14,433,1,1),(14,673,300,300),(14,760,1,1),(17,54,350,350),(17,95,350,350),(17,98,300,300),(17,111,300,300),(17,160,350,350),(17,162,350,350),(17,413,1,1),(17,414,1,1),(17,415,1,1),(17,433,1,1),(17,594,1,1),(18,43,400,400),(18,55,400,400),(18,95,400,400),(18,109,300,300),(18,136,400,400),(18,137,300,300),(18,162,400,400),(18,413,1,1),(18,414,1,1),(18,415,1,1),(18,433,1,1),(18,594,1,1),(18,756,1,1),(19,54,30,30),(19,56,1,1),(19,95,30,30),(19,109,300,300),(19,137,300,300),(19,162,30,30),(19,228,30,30),(19,415,1,1),(19,756,1,1),(22,26,1,1),(22,43,15,15),(22,44,15,15),(22,54,15,15),(22,95,15,15),(22,98,300,300),(22,162,15,15),(22,413,1,1),(22,414,1,1),(22,415,1,1),(22,433,1,1),(23,26,1,1),(23,43,5,5),(23,44,5,5),(23,54,5,5),(23,95,5,5),(23,98,300,300),(23,162,5,5),(23,413,1,1),(23,414,1,1),(23,415,1,1),(23,433,1,1);

/*Table structure for table `character_social` */

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

/*Data for the table `character_social` */

/*Table structure for table `character_spell` */

DROP TABLE IF EXISTS `character_spell`;

CREATE TABLE `character_spell` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

/*Data for the table `character_spell` */

insert  into `character_spell`(`guid`,`spell`,`active`,`disabled`) values (9,17,1,0),(9,81,1,0),(9,139,1,0),(9,198,1,0),(9,203,1,0),(9,204,1,0),(9,227,1,0),(9,453,1,0),(9,522,1,0),(9,527,1,0),(9,528,1,0),(9,552,1,0),(9,585,1,0),(9,586,1,0),(9,588,1,0),(9,589,1,0),(9,591,1,0),(9,592,1,0),(9,594,1,0),(9,596,1,0),(9,598,1,0),(9,600,1,0),(9,602,1,0),(9,605,1,0),(9,668,1,0),(9,970,1,0),(9,976,1,0),(9,984,1,0),(9,988,1,0),(9,992,1,0),(9,996,1,0),(9,1004,1,0),(9,1006,1,0),(9,1180,1,0),(9,1243,1,0),(9,1244,1,0),(9,1245,1,0),(9,1706,1,0),(9,2006,1,0),(9,2010,1,0),(9,2050,1,0),(9,2052,1,0),(9,2053,1,0),(9,2054,1,0),(9,2055,1,0),(9,2060,1,0),(9,2061,1,0),(9,2096,1,0),(9,2382,1,0),(9,2479,1,0),(9,2767,1,0),(9,2791,1,0),(9,3050,1,0),(9,3365,1,0),(9,3747,1,0),(9,5009,1,0),(9,5019,1,0),(9,6060,1,0),(9,6063,1,0),(9,6064,1,0),(9,6065,1,0),(9,6066,1,0),(9,6074,1,0),(9,6075,1,0),(9,6076,1,0),(9,6077,1,0),(9,6078,1,0),(9,6233,1,0),(9,6246,1,0),(9,6247,1,0),(9,6346,1,0),(9,6477,1,0),(9,6478,1,0),(9,6603,1,0),(9,7128,1,0),(9,7266,1,0),(9,7267,1,0),(9,7355,1,0),(9,8092,1,0),(9,8102,1,0),(9,8103,1,0),(9,8104,1,0),(9,8105,1,0),(9,8106,1,0),(9,8122,1,0),(9,8124,1,0),(9,8129,1,0),(9,8131,1,0),(9,8192,1,0),(9,8386,1,0),(9,9078,1,0),(9,9125,1,0),(9,9472,1,0),(9,9473,1,0),(9,9474,1,0),(9,9484,1,0),(9,9485,1,0),(9,9578,1,0),(9,9579,1,0),(9,9592,1,0),(9,10874,1,0),(9,10875,1,0),(9,10876,1,0),(9,10880,1,0),(9,10881,1,0),(9,10888,1,0),(9,10890,1,0),(9,10892,1,0),(9,10893,1,0),(9,10894,1,0),(9,10898,1,0),(9,10899,1,0),(9,10900,1,0),(9,10901,1,0),(9,10909,1,0),(9,10911,1,0),(9,10912,1,0),(9,10915,1,0),(9,10916,1,0),(9,10917,1,0),(9,10927,1,0),(9,10928,1,0),(9,10929,1,0),(9,10933,1,0),(9,10934,1,0),(9,10937,1,0),(9,10938,1,0),(9,10941,1,0),(9,10942,1,0),(9,10945,1,0),(9,10946,1,0),(9,10947,1,0),(9,10951,1,0),(9,10952,1,0),(9,10953,1,0),(9,10955,1,0),(9,10957,1,0),(9,10958,1,0),(9,10960,1,0),(9,10961,1,0),(9,10963,1,0),(9,10964,1,0),(9,10965,1,0),(9,13896,1,0),(9,13908,1,0),(9,14914,1,0),(9,15261,1,0),(9,15262,1,0),(9,15263,1,0),(9,15264,1,0),(9,15265,1,0),(9,15266,1,0),(9,15267,1,0),(9,15286,1,0),(9,15310,1,0),(9,15316,1,0),(9,15317,1,0),(9,15320,1,0),(9,15326,1,0),(9,15330,1,0),(9,15334,1,0),(9,15338,1,0),(9,15407,1,0),(9,15448,1,0),(9,15473,1,0),(9,15487,1,0),(9,17311,1,0),(9,17312,1,0),(9,17313,1,0),(9,17314,1,0),(9,17323,1,0),(9,18807,1,0),(9,19236,1,0),(9,19238,1,0),(9,19240,1,0),(9,19241,1,0),(9,19242,1,0),(9,19243,1,0),(9,19271,1,0),(9,19273,1,0),(9,19274,1,0),(9,19275,1,0),(9,20597,1,0),(9,20598,1,0),(9,20599,1,0),(9,20600,1,0),(9,20770,1,0),(9,20864,1,0),(9,21562,1,0),(9,21564,1,0),(9,21651,1,0),(9,21652,1,0),(9,22027,1,0),(9,22810,1,0),(9,25210,1,0),(9,25213,1,0),(9,25217,1,0),(9,25218,1,0),(9,25221,1,0),(9,25222,1,0),(9,25229,0,0),(9,25230,0,0),(9,25233,1,0),(9,25235,1,0),(9,25255,1,0),(9,25278,1,0),(9,25280,1,0),(9,25283,1,0),(9,25284,1,0),(9,25287,1,0),(9,25305,1,0),(9,25308,1,0),(9,25314,1,0),(9,25315,1,0),(9,25316,1,0),(9,25317,1,0),(9,25318,1,0),(9,25320,1,0),(9,25321,1,0),(9,25323,1,0),(9,25339,1,0),(9,25363,1,0),(9,25364,1,0),(9,25367,1,0),(9,25368,1,0),(9,25372,1,0),(9,25375,1,0),(9,25379,1,0),(9,25380,1,0),(9,25384,1,0),(9,25387,1,0),(9,25389,1,0),(9,25429,1,0),(9,25431,1,0),(9,25433,1,0),(9,25435,1,0),(9,25437,1,0),(9,25441,1,0),(9,25490,1,0),(9,25493,1,0),(9,25498,1,0),(9,25596,1,0),(9,25610,1,0),(9,25612,1,0),(9,25613,1,0),(9,25615,1,0),(9,25617,1,0),(9,25618,1,0),(9,25619,1,0),(9,25620,1,0),(9,25621,1,0),(9,25622,1,0),(9,26872,1,0),(9,26873,1,0),(9,26874,1,0),(9,26875,1,0),(9,26876,1,0),(9,26878,1,0),(9,26880,1,0),(9,26881,1,0),(9,26882,1,0),(9,26883,1,0),(9,26885,1,0),(9,26887,1,0),(9,26896,1,0),(9,26897,1,0),(9,26900,1,0),(9,26902,1,0),(9,26903,1,0),(9,26906,1,0),(9,26907,1,0),(9,26908,1,0),(9,26909,1,0),(9,26910,1,0),(9,26911,1,0),(9,26912,1,0),(9,26914,1,0),(9,26915,1,0),(9,26916,1,0),(9,26925,1,0),(9,26926,1,0),(9,26927,1,0),(9,26928,1,0),(9,27683,1,0),(9,27840,1,0),(9,28894,0,0),(9,28895,0,0),(9,28897,1,0),(9,28903,1,0),(9,28905,1,0),(9,28906,1,0),(9,28907,1,0),(9,28910,1,0),(9,28912,1,0),(9,28914,1,0),(9,28915,1,0),(9,28916,1,0),(9,28917,1,0),(9,28918,1,0),(9,28924,1,0),(9,28925,1,0),(9,28927,1,0),(9,28933,1,0),(9,28936,1,0),(9,28938,1,0),(9,28944,1,0),(9,28947,1,0),(9,28948,1,0),(9,28950,1,0),(9,28953,1,0),(9,28955,1,0),(9,28957,1,0),(9,31048,1,0),(9,31049,1,0),(9,31050,1,0),(9,31051,1,0),(9,31052,1,0),(9,31053,1,0),(9,31054,1,0),(9,31055,1,0),(9,31056,1,0),(9,31057,1,0),(9,31058,1,0),(9,31060,1,0),(9,31061,1,0),(9,31062,1,0),(9,31063,1,0),(9,31064,1,0),(9,31065,1,0),(9,31066,1,0),(9,31067,1,0),(9,31068,1,0),(9,31070,1,0),(9,31071,1,0),(9,31072,1,0),(9,31076,1,0),(9,31077,1,0),(9,31078,1,0),(9,31079,1,0),(9,31080,1,0),(9,31081,1,0),(9,31082,1,0),(9,31083,1,0),(9,31084,1,0),(9,31085,1,0),(9,31087,1,0),(9,31088,1,0),(9,31089,1,0),(9,31090,1,0),(9,31091,1,0),(9,31092,1,0),(9,31094,1,0),(9,31095,1,0),(9,31096,1,0),(9,31097,1,0),(9,31098,1,0),(9,31099,1,0),(9,31100,1,0),(9,31101,1,0),(9,31102,1,0),(9,31103,1,0),(9,31104,1,0),(9,31105,1,0),(9,31106,1,0),(9,31107,1,0),(9,31108,1,0),(9,31109,1,0),(9,31110,1,0),(9,31111,1,0),(9,31112,1,0),(9,31113,1,0),(9,31149,1,0),(9,31252,1,0),(9,32178,1,0),(9,32179,1,0),(9,32259,1,0),(9,32375,1,0),(9,32379,1,0),(9,32546,1,0),(9,32801,1,0),(9,32807,1,0),(9,32808,1,0),(9,32809,1,0),(9,32866,1,0),(9,32867,1,0),(9,32868,1,0),(9,32869,1,0),(9,32870,1,0),(9,32871,1,0),(9,32872,1,0),(9,32873,1,0),(9,32874,1,0),(9,32996,1,0),(9,33076,1,0),(9,33195,1,0),(9,33215,1,0),(9,33225,1,0),(9,33371,1,0),(9,34069,1,0),(9,34433,1,0),(9,34590,1,0),(9,34914,1,0),(9,34916,1,0),(9,34917,1,0),(9,34955,1,0),(9,34959,1,0),(9,34960,1,0),(9,34961,1,0),(9,35717,1,0),(9,36523,1,0),(9,36524,1,0),(9,36525,1,0),(9,36526,1,0),(9,37818,1,0),(9,37855,1,0),(9,38068,1,0),(9,38175,1,0),(9,38503,1,0),(9,38504,1,0),(9,39451,1,0),(9,39452,1,0),(9,39455,1,0),(9,39458,1,0),(9,39462,1,0),(9,39463,1,0),(9,39466,1,0),(9,39467,1,0),(9,39470,1,0),(9,39471,1,0),(9,39705,1,0),(9,39706,1,0),(9,39710,1,0),(9,39711,1,0),(9,39712,1,0),(9,39713,1,0),(9,39714,1,0),(9,39715,1,0),(9,39716,1,0),(9,39717,1,0),(9,39718,1,0),(9,39719,1,0),(9,39720,1,0),(9,39721,1,0),(9,39722,1,0),(9,39723,1,0),(9,39724,1,0),(9,39725,1,0),(9,39727,1,0),(9,39728,1,0),(9,39729,1,0),(9,39730,1,0),(9,39731,1,0),(9,39732,1,0),(9,39733,1,0),(9,39734,1,0),(9,39735,1,0),(9,39736,1,0),(9,39737,1,0),(9,39738,1,0),(9,39739,1,0),(9,39740,1,0),(9,39741,1,0),(9,39742,1,0),(9,39961,1,0),(9,39963,1,0),(9,40514,1,0),(9,41414,1,0),(9,41415,1,0),(9,41418,1,0),(9,41420,1,0),(9,41429,1,0),(9,42558,1,0),(9,42588,1,0),(9,42589,1,0),(9,42590,1,0),(9,42591,1,0),(9,42592,1,0),(9,42593,1,0),(9,43493,1,0),(9,44794,1,0),(9,46122,1,0),(9,46123,1,0),(9,46124,1,0),(9,46125,1,0),(9,46126,1,0),(9,46127,1,0),(9,46403,1,0),(9,46404,1,0),(9,46405,1,0),(9,46597,1,0),(9,46601,1,0),(9,46775,1,0),(9,46776,1,0),(9,46777,1,0),(9,46778,1,0),(9,46779,1,0),(9,46803,1,0),(9,47053,1,0),(9,47054,1,0),(9,47055,1,0),(9,47056,1,0),(9,47280,1,0),(9,48789,1,0),(12,17,1,0),(12,81,1,0),(12,198,1,0),(12,203,1,0),(12,204,1,0),(12,522,1,0),(12,585,1,0),(12,589,1,0),(12,591,1,0),(12,668,1,0),(12,1243,1,0),(12,2050,1,0),(12,2052,1,0),(12,2382,1,0),(12,2479,1,0),(12,3050,1,0),(12,3365,1,0),(12,5009,1,0),(12,5019,1,0),(12,6233,1,0),(12,6246,1,0),(12,6247,1,0),(12,6477,1,0),(12,6478,1,0),(12,6603,1,0),(12,7266,1,0),(12,7267,1,0),(12,7355,1,0),(12,8386,1,0),(12,9078,1,0),(12,9125,1,0),(12,20597,1,0),(12,20598,1,0),(12,20599,1,0),(12,20600,1,0),(12,20864,1,0),(12,21651,1,0),(12,21652,1,0),(12,22027,1,0),(12,22810,1,0),(13,81,1,0),(13,133,1,0),(13,168,1,0),(13,203,1,0),(13,204,1,0),(13,227,1,0),(13,522,1,0),(13,668,1,0),(13,2382,1,0),(13,2479,1,0),(13,3050,1,0),(13,3365,1,0),(13,5009,1,0),(13,5019,1,0),(13,6233,1,0),(13,6246,1,0),(13,6247,1,0),(13,6477,1,0),(13,6478,1,0),(13,6603,1,0),(13,7266,1,0),(13,7267,1,0),(13,7355,1,0),(13,8386,1,0),(13,9078,1,0),(13,9125,1,0),(13,20597,1,0),(13,20598,1,0),(13,20599,1,0),(13,20600,1,0),(13,20864,1,0),(13,21651,1,0),(13,21652,1,0),(13,22027,1,0),(13,22810,1,0),(14,78,1,0),(14,81,1,0),(14,107,1,0),(14,201,1,0),(14,202,1,0),(14,203,1,0),(14,204,1,0),(14,522,1,0),(14,669,1,0),(14,1180,1,0),(14,2382,1,0),(14,2457,1,0),(14,2479,1,0),(14,3050,1,0),(14,3365,1,0),(14,5227,1,0),(14,5301,1,0),(14,6233,1,0),(14,6246,1,0),(14,6247,1,0),(14,6477,1,0),(14,6478,1,0),(14,6603,1,0),(14,7266,1,0),(14,7267,1,0),(14,7355,1,0),(14,7376,0,0),(14,7381,0,0),(14,7744,1,0),(14,8386,1,0),(14,8737,1,0),(14,9077,1,0),(14,9078,1,0),(14,9116,1,0),(14,9125,1,0),(14,17737,1,0),(14,20577,1,0),(14,20579,1,0),(14,21156,0,0),(14,21651,1,0),(14,21652,1,0),(14,22027,1,0),(14,22810,1,0),(14,32215,1,0),(17,81,1,0),(17,107,1,0),(17,198,1,0),(17,199,1,0),(17,203,1,0),(17,204,1,0),(17,522,1,0),(17,635,1,0),(17,668,1,0),(17,672,1,0),(17,2382,1,0),(17,2479,1,0),(17,2481,1,0),(17,3050,1,0),(17,3365,1,0),(17,6233,1,0),(17,6246,1,0),(17,6247,1,0),(17,6477,1,0),(17,6478,1,0),(17,6603,1,0),(17,7266,1,0),(17,7267,1,0),(17,7355,1,0),(17,8386,1,0),(17,8737,1,0),(17,9077,1,0),(17,9078,1,0),(17,9116,1,0),(17,9125,1,0),(17,20594,1,0),(17,20595,1,0),(17,20596,1,0),(17,21084,1,0),(17,21651,1,0),(17,21652,1,0),(17,22027,1,0),(17,22810,1,0),(17,27762,1,0),(18,81,1,0),(18,107,1,0),(18,201,1,0),(18,202,1,0),(18,203,1,0),(18,204,1,0),(18,227,1,0),(18,522,1,0),(18,635,1,0),(18,669,1,0),(18,813,1,0),(18,822,1,0),(18,2382,1,0),(18,2479,1,0),(18,3050,1,0),(18,3365,1,0),(18,4493,1,0),(18,4500,1,0),(18,6233,1,0),(18,6246,1,0),(18,6247,1,0),(18,6477,1,0),(18,6478,1,0),(18,6603,1,0),(18,7266,1,0),(18,7267,1,0),(18,7355,1,0),(18,8386,1,0),(18,8737,1,0),(18,9077,1,0),(18,9078,1,0),(18,9116,1,0),(18,9125,1,0),(18,21084,1,0),(18,21651,1,0),(18,21652,1,0),(18,22027,1,0),(18,22810,1,0),(18,27762,1,0),(18,28730,1,0),(18,28734,1,0),(18,28877,1,0),(19,17,1,0),(19,81,1,0),(19,198,1,0),(19,203,1,0),(19,204,1,0),(19,522,1,0),(19,585,1,0),(19,589,1,0),(19,591,1,0),(19,669,1,0),(19,813,1,0),(19,822,1,0),(19,1243,1,0),(19,2050,1,0),(19,2052,1,0),(19,2382,1,0),(19,2479,1,0),(19,3050,1,0),(19,3365,1,0),(19,5009,1,0),(19,5019,1,0),(19,6233,1,0),(19,6246,1,0),(19,6247,1,0),(19,6477,1,0),(19,6478,1,0),(19,6603,1,0),(19,7266,1,0),(19,7267,1,0),(19,7355,1,0),(19,8386,1,0),(19,9078,1,0),(19,9125,1,0),(19,21651,1,0),(19,21652,1,0),(19,22027,1,0),(19,22810,1,0),(19,28730,1,0),(19,28734,1,0),(19,28877,1,0),(22,78,1,0),(22,81,1,0),(22,107,1,0),(22,196,1,0),(22,198,1,0),(22,201,1,0),(22,203,1,0),(22,204,1,0),(22,522,1,0),(22,668,1,0),(22,2382,1,0),(22,2457,1,0),(22,2479,1,0),(22,3050,1,0),(22,3365,1,0),(22,5301,1,0),(22,6233,1,0),(22,6246,1,0),(22,6247,1,0),(22,6477,1,0),(22,6478,1,0),(22,6603,1,0),(22,7266,1,0),(22,7267,1,0),(22,7355,1,0),(22,7376,0,0),(22,7381,0,0),(22,8386,1,0),(22,8737,1,0),(22,9077,1,0),(22,9078,1,0),(22,9116,1,0),(22,9125,1,0),(22,20597,1,0),(22,20598,1,0),(22,20599,1,0),(22,20600,1,0),(22,20864,1,0),(22,21156,0,0),(22,21651,1,0),(22,21652,1,0),(22,22027,1,0),(22,22810,1,0),(22,32215,1,0),(23,78,1,0),(23,81,1,0),(23,107,1,0),(23,196,1,0),(23,198,1,0),(23,201,1,0),(23,203,1,0),(23,204,1,0),(23,522,1,0),(23,668,1,0),(23,2382,1,0),(23,2457,1,0),(23,2479,1,0),(23,3050,1,0),(23,3365,1,0),(23,5301,1,0),(23,6233,1,0),(23,6246,1,0),(23,6247,1,0),(23,6477,1,0),(23,6478,1,0),(23,6603,1,0),(23,7266,1,0),(23,7267,1,0),(23,7355,1,0),(23,7376,0,0),(23,7381,0,0),(23,8386,1,0),(23,8737,1,0),(23,9077,1,0),(23,9078,1,0),(23,9116,1,0),(23,9125,1,0),(23,20597,1,0),(23,20598,1,0),(23,20599,1,0),(23,20600,1,0),(23,20864,1,0),(23,21156,0,0),(23,21651,1,0),(23,21652,1,0),(23,22027,1,0),(23,22810,1,0),(23,32215,1,0);

/*Table structure for table `character_spell_cooldown` */

DROP TABLE IF EXISTS `character_spell_cooldown`;

CREATE TABLE `character_spell_cooldown` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_spell_cooldown` */

insert  into `character_spell_cooldown`(`guid`,`spell`,`item`,`time`) values (18,20608,0,1351198737),(18,21169,0,1351198737);

/*Table structure for table `character_tutorial` */

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

/*Data for the table `character_tutorial` */

insert  into `character_tutorial`(`account`,`realmid`,`tut0`,`tut1`,`tut2`,`tut3`,`tut4`,`tut5`,`tut6`,`tut7`) values (1,1,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295),(2,1,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295),(4,1,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295),(6,1,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295),(9,1,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295,4294967295);

/*Table structure for table `characters` */

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
  `xp_rate` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

/*Data for the table `characters` */

insert  into `characters`(`guid`,`account`,`data`,`name`,`race`,`class`,`gender`,`level`,`xp`,`money`,`playerBytes`,`playerBytes2`,`playerFlags`,`position_x`,`position_y`,`position_z`,`map`,`instance_id`,`dungeon_difficulty`,`orientation`,`taximask`,`online`,`cinematic`,`totaltime`,`leveltime`,`logout_time`,`is_logout_resting`,`rest_bonus`,`resettalents_cost`,`resettalents_time`,`trans_x`,`trans_y`,`trans_z`,`trans_o`,`transguid`,`extra_flags`,`stable_slots`,`at_login`,`zone`,`death_expire_time`,`taxi_path`,`arenaPoints`,`totalHonorPoints`,`todayHonorPoints`,`yesterdayHonorPoints`,`totalKills`,`todayKills`,`yesterdayKills`,`chosenTitle`,`watchedFaction`,`drunk`,`health`,`powerMana`,`powerRage`,`powerFocus`,`powerEnergy`,`powerHappiness`,`deleteInfos_Account`,`deleteInfos_Name`,`deleteDate`,`latency`,`xp_rate`) values (9,4,'9 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7721 10605 0 0 100 0 7721 10605 1000 0 100 0 70 35 1281 0 0 0 0 0 0 0 0 0 4104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1155596288 1157234688 1153138688 1065353216 1069547520 49 49 0 1099079914 1124881438 0 0 0 0 0 0 0 0 0 1062265474 0 0 0 0 39 45 451 551 291 0 0 1136951296 1137377280 1122238464 0 0 0 0 0 1655 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2620 3391 10240 29 0 0 35 0 0 1129562112 1136877568 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 66563 33554435 0 0 0 11178 1 0 0 11488 1 0 0 11524 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31064 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34359 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31070 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 53 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31065 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34528 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31067 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34563 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34434 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31061 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34230 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34429 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32483 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34242 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34179 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34347 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 207 1073741824 212 1073741824 204 1073741824 184 1073741824 206 1073741824 202 1073741824 205 1073741824 201 1073741824 203 1073741824 208 1073741824 213 1073741824 219 1073741824 215 1073741824 216 1073741824 217 1073741824 210 1073741824 218 1073741824 211 1073741824 0 0 270 1073741824 0 0 0 0 0 0 194 1073741824 196 1073741824 195 1073741824 200 1073741824 271 1073741824 267 1073741824 220 1073741824 268 1073741824 272 1073741824 273 1073741824 221 1073741824 286 1073741824 224 1073741824 258 1073741824 274 1073741824 275 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 0 0 779700 54 22937950 0 56 65537 0 95 22937950 0 98 19661100 0 136 22937950 0 162 22937950 0 173 22937950 0 228 22937950 0 415 65537 0 66291 24576375 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1084191933 0 5 0 1084191933 1084191933 0 0 1097584597 1097584597 1097584597 1097584597 1097584597 1097584597 0 9 0 0 1677721600 70024 536871424 0 0 64 0 0 671088640 0 0 0 0 0 16 65536 0 0 65544 8 0 0 0 0 0 0 0 0 0 0 0 1048576 20975616 19456 0 0 16440 1024 172032 0 0 540016640 67108864 0 0 0 67190784 0 4096 0 4162560 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2147155816 0 865 865 865 865 865 865 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1232 0 0 983040 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34513 0 503 0 4294967295 0 0 0 0 0 0 0 109 0 0 146 0 0 0 0 0 0 0 0 324 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34513 0 1117324636 1095552205 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','Aco',1,5,0,70,0,2147155816,66563,33554435,8,16227,16259.2,13.3365,1,0,0,1.55299,'2 0 0 8 0 0 1048576 0 ',0,1,41836,37456,1351506622,0,0,0,0,-107374000,-107374000,-107374000,-107374000,0,9,0,0,876,1341006575,'',0,34513,34513,0,503,0,0,1,4294967295,0,7721,10605,0,0,100,0,NULL,NULL,NULL,0,1),(12,4,'12 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 202 475 0 0 100 0 202 475 1000 0 100 0 11 1 66817 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1156415488 1157234688 1157234688 1053240066 1069547520 50 50 0 1076378244 1083448642 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 22 22 24 36 40 0 0 0 0 0 0 0 0 0 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 215 142 10240 12 0 0 12 0 0 1076737756 1080932060 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 84413697 33554434 1 0 0 15 0 0 0 0 0 0 0 3903 1 0 0 5623 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 53 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6098 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 292 1073741824 288 1073741824 0 0 290 1073741824 314 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 296 1073741824 0 0 0 0 0 0 312 1073741824 0 0 0 0 0 0 298 1073741824 300 1073741824 302 1073741824 303 1073741824 304 1073741824 294 1073741824 332 1073741824 319 1073741824 327 1073741824 334 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5425 8700 54 3604535 0 56 65537 0 95 3604535 0 98 19661100 0 162 3604535 0 228 3604535 0 415 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 0 0 0 1084228004 0 5 0 1084228004 1077098107 1077098107 0 1084226536 1084226536 1084226536 1084226536 1084226536 1084226536 0 0 0 0 1610612736 2147491968 0 0 0 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 150141 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1087625809 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','Test',1,5,1,11,5425,150141,84413697,33554434,2,-9119.06,359.171,93.2217,0,0,0,2.58082,'2 0 0 8 0 0 0 0 ',0,1,1205,847,1341139103,0,0,0,0,6.3763e33,0,0,0,0,8,0,0,12,0,'',0,0,0,0,0,0,0,0,4294967295,0,202,475,0,0,100,0,NULL,NULL,NULL,11,1),(13,6,'13 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3723 4226 0 0 100 0 3723 4226 1000 0 100 0 70 1 2049 0 0 0 0 0 0 0 0 0 4104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1161117696 1157234688 1157234688 1053240066 1069547520 49 49 0 1090024712 1092369028 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 33 39 51 151 159 0 0 0 0 0 0 0 0 0 0 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2241 3393 10240 23 0 0 29 0 0 1084527177 1086624329 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 128 0 0 67765766 33554432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6096 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1395 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 344 1073741824 336 1073741824 0 0 338 1073741824 340 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 342 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 346 1073741824 348 1073741824 350 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 779700 6 65537 0 8 65537 0 95 22937950 0 98 19661100 0 136 22937950 0 162 22937950 0 228 22937950 0 415 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 61 2 0 0 0 1084264284 0 0 0 1084264284 0 0 0 1077076296 1077076296 1077076296 1077076296 1077076296 1077076296 0 0 0 0 536870912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8192 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 150000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1100073310 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','Nice',1,8,0,70,0,150000,67765766,33554432,128,-2040.72,6657.33,13.0533,530,0,0,0,'2 0 0 8 0 0 1048576 0 ',0,1,186,159,1341179554,0,0,0,0,0,0,2.89459e26,14811.6,0,8,0,0,3518,1341178982,'',0,0,0,0,0,0,0,0,4294967295,0,3723,4226,0,0,100,0,NULL,NULL,NULL,0,1),(14,6,'14 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5604 0 0 0 100 0 5604 0 1000 0 100 0 70 5 16843013 0 0 0 0 0 0 0 0 0 4104 0 2457 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1156415488 1157234688 1157234688 1065353216 1069547520 58 58 0 1115930156 1116192300 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 144 94 134 31 56 0 0 0 0 0 0 0 0 0 0 195 0 0 0 0 10 0 0 0 0 0 0 1092616192 0 0 0 0 0 0 0 0 0 4444 10240 478 0 0 154 0 0 1102577664 1103101952 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 134414337 33554434 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 352 1073741824 0 0 0 0 354 1073741824 356 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 358 1073741824 360 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 362 1073741824 364 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 779700 26 65537 0 43 22937950 0 55 22937950 0 95 22937950 0 109 19661100 0 162 22937950 0 173 22937950 0 413 65537 0 414 65537 0 415 65537 0 433 65537 0 673 19661100 0 760 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 61 2 0 0 1084227584 1081639783 0 0 0 1082080939 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16384 0 8192 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 150000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','Omgasd',5,1,1,70,0,150000,134414337,33554434,0,-2147.34,6609.95,2.54132,530,0,0,2.70526,'1024 0 0 4 0 0 1048576 0 ',0,1,766,758,1341181015,0,0,0,0,3.28956e33,0,1.01551e-28,0,0,264,0,0,3518,1341181905,'',0,0,0,0,0,0,0,0,4294967295,0,5604,0,0,0,100,0,NULL,NULL,NULL,0,1),(17,4,'17 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 99936852 3903 0 0 100 0 100000000 3903 1000 0 100 0 70 3 515 0 0 0 0 0 0 0 0 0 4104 0 28489 33079 39625 39439 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 522133279 0 0 0 0 0 0 0 0 0 0 0 0 0 1179010630 70 0 0 0 0 0 0 0 0 0 0 0 0 318767104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1161117696 1157234688 1157234688 1053240066 1069547520 53 53 0 1123056728 1123318872 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 128 73 123 82 88 0 0 0 0 0 0 0 0 0 0 448 0 0 0 10 0 0 1133903872 0 0 0 1092616192 0 0 0 0 0 0 0 0 0 2953 3377 10241 446 120 0 63 120 0 1104749714 1105274002 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 50727173 33554434 0 0 0 11490 0 0 0 11517 1 0 0 11541 0 0 0 11544 0 0 0 10938 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6118 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31856 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2361 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 38 0 0 0 0 0 0 0 414 1073741824 0 0 0 0 416 1073741824 418 1073741824 0 0 0 0 0 0 0 0 504 1073741824 0 0 0 0 420 1073741824 0 0 0 0 0 0 475 1073741824 0 0 0 0 0 0 422 1073741824 424 1073741824 426 1073741824 474 1073741824 503 1073741824 443 1073741824 444 1073741824 436 1073741824 446 1073741824 438 1073741824 439 1073741824 447 1073741824 469 1073741824 476 1073741824 461 1073741824 462 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 64 0 779700 54 22937950 0 95 22937950 0 98 19661100 0 111 19661100 0 160 22937950 0 162 22937950 0 413 65537 0 414 65537 0 415 65537 0 433 65537 0 594 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 61 2 0 0 1084227584 1080335269 0 0 0 1080335269 1080335269 0 0 1082886455 1082886455 1082886455 1082886455 1082886455 1082886455 5 0 0 0 0 0 0 1048576 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32768 0 0 0 0 0 0 0 0 0 0 0 58719232 536870912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16399885 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1089328787 0 70 11520 11521 11523 11525 11532 11533 11535 11536 11537 11538 11539 11540 11543 11545 11546 0 0 0 0 0 0 0 0 0 0 ','Dunky',3,2,0,70,0,16399885,50727173,33554434,0,200.86,-234.008,-9.59653,585,0,0,1.61927,'32 0 0 8 0 0 1048576 0 ',0,1,2869,2863,1341401888,0,0,0,0,1.5028e33,0,0,0,0,8,0,0,4131,1341399472,'',0,0,0,0,0,0,0,38,4294967295,0,99936852,3903,0,0,100,0,NULL,NULL,NULL,2,1),(18,9,'18 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5267 4085 0 0 100 0 5267 4818 1000 0 100 0 80 35 66058 0 0 0 0 0 0 0 0 0 134221832 0 30174 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1157234688 1157234688 1157234688 1053240066 1069547520 15475 15475 17158 1126636866 1133252257 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 134 90 207 143 99 0 0 1115947008 1112014848 0 0 0 0 0 0 184 5 5 5 5 5 5 0 1084227584 1084227584 1084227584 1084227584 1084227584 1084227584 0 0 0 0 0 0 0 2953 3377 10240 488 0 0 80 0 0 1095162734 1096211310 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 151717890 33554440 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 24143 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 24145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 24146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 506 1073741824 0 0 0 0 508 1073741824 510 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 519 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 514 1073741824 516 1073741824 518 1073741824 520 1073741824 522 1073741824 521 1073741824 523 1073741824 0 0 512 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 779700 43 26214800 0 55 26214800 0 95 26214800 0 109 19661100 0 136 26214800 0 137 19661100 0 162 26214800 0 413 65537 0 414 65537 0 415 65537 0 433 65537 0 594 65537 0 756 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 71 2 0 0 1084227584 1081828443 0 0 0 1081828443 1081828443 0 0 1088538979 1088538979 1088538979 1088538979 1088538979 1088538979 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2147351407 11 266 266 266 266 266 266 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 266 4294967256 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 50 0 0 0 29 29 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1037869716 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','Fake',10,2,1,80,0,2147351407,151717890,33554440,8,16215.5,16257.8,13.8728,1,0,0,4.1358,'0 0 131072 4 0 0 1048576 0 ',0,1,2719,2411,1351197619,0,0,0,0,2.82306e33,0,0,0,0,13,0,0,876,0,'',0,0,0,0,0,0,0,0,4294967295,0,5267,4085,0,0,100,0,NULL,NULL,NULL,6,1),(19,9,'19 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 367 0 0 100 0 127 367 1000 0 100 0 6 1610 66826 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8326 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9 0 0 0 6 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4098 1156415488 1157234688 1157234688 1065353216 1069547520 15475 15475 0 1074101336 1082310188 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 18 23 21 33 29 0 0 0 0 0 0 0 0 0 0 68 5 5 5 5 5 5 0 1084227584 1084227584 1084227584 1084227584 1084227584 1084227584 0 0 0 0 0 0 0 152 97 10240 8 0 0 13 0 0 1077336942 1081531246 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18 0 0 67503879 33554432 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 53 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 21007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 21006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 21005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20981 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 527 1073741824 545 1073741824 541 1073741824 540 1073741824 537 1073741824 0 0 544 1073741824 0 0 0 0 0 0 0 0 0 0 531 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 533 1073741824 535 1073741824 539 1073741824 529 1073741824 542 1073741824 543 1073741824 0 0 525 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 675 3600 54 1966110 0 56 65537 0 95 1966110 0 109 19661100 0 137 19661100 0 162 1966110 0 228 1966110 0 415 65537 0 756 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 1084589343 0 0 0 1084589343 1082015090 1082015090 0 1085638338 1085638338 1085638338 1085638338 1085638338 1085638338 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 150061 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1084599177 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','Biitch',10,5,1,6,675,150061,67503879,33554432,18,10458.5,-6364.61,39.7907,530,0,0,2.06766,'0 0 131072 4 0 0 0 0 ',0,1,2306,2073,1351199941,0,0.0103333,0,0,4.42571e-34,0,2.03923e-21,0,0,8,0,0,3430,0,'',0,0,0,0,0,0,0,0,4294967295,0,1,367,0,0,100,0,NULL,NULL,NULL,6,1),(22,4,'22 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 98 0 0 0 100 0 98 0 1000 0 100 0 3 1 16843009 0 0 0 0 0 0 0 0 0 8 0 0 2457 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7936 0 0 0 0 0 0 0 0 0 0 0 0 0 258 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1156415488 1157234688 1157234688 1053240066 1069547520 50 50 0 1087508129 1091110736 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 26 22 24 20 23 0 0 0 0 0 0 0 0 0 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 38 10240 41 0 0 15 0 0 1078535314 1082430025 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34081032 33554432 1 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 577 1073741824 0 0 0 0 579 1073741824 581 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 583 1073741824 585 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 587 1073741824 589 1073741824 605 1073741824 606 1073741824 607 1073741824 608 1073741824 610 1073741824 611 1073741824 612 1073741824 614 1073741824 616 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 308 1400 26 65537 0 43 983055 0 44 983055 0 54 983055 0 95 983055 0 98 19661100 0 162 983055 0 413 65537 0 414 65537 0 415 65537 0 433 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 1084227584 1087398519 0 5 0 1087117879 1085859588 1085859588 0 0 0 0 0 0 0 1 0 0 0 536870912 128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 150000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','Acos',1,1,1,3,308,150000,34081032,33554432,0,-8887.65,-120.463,82.1413,0,0,0,3.42748,'2 0 0 8 0 0 0 0 ',0,1,2432,54,1351505777,0,0,0,0,-107374000,-107374000,-107374000,-107374000,0,8,0,0,12,0,'',0,0,0,0,0,0,0,0,4294967295,0,98,0,0,0,100,0,NULL,NULL,NULL,1,1),(23,4,'23 0 25 0 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 51 0 581 0 100 0 60 0 1000 0 100 0 1 1 16843009 0 0 0 0 0 0 0 0 0 8 0 2457 32216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7967 0 0 0 0 0 0 0 0 0 0 0 0 0 257 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 512 1156415488 1157234688 1157234688 1053240066 1069547520 50 50 0 1084092767 1088287071 0 0 0 0 0 0 0 0 0 1065353216 0 0 0 0 23 20 22 20 22 0 0 0 0 0 0 0 0 0 0 47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 10240 29 0 0 11 0 0 1076138569 1080332873 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 462086 33554434 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 591 1073741824 0 0 0 0 593 1073741824 595 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 597 1073741824 599 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 601 1073741824 603 1073741824 604 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 50 400 26 65537 0 43 327685 0 44 327685 0 54 327685 0 95 327685 0 98 19661100 0 162 327685 0 413 65537 0 414 65537 0 415 65537 0 433 65537 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 1084227584 1086849024 0 5 0 1086618336 1086198906 1086198906 0 0 0 0 0 0 0 1 0 0 0 536870912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 150000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 1065353216 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','Asdd',1,1,1,1,50,150000,462086,33554434,0,-8982.56,-152.209,81.0949,0,0,0,3.4212,'2 0 0 8 0 0 0 0 ',0,1,38,38,1351465759,0,0,0,0,-107374000,-107374000,-107374000,-107374000,0,8,0,0,12,0,'',0,0,0,0,0,0,0,0,4294967295,0,51,0,581,0,100,0,NULL,NULL,NULL,0,1);

/*Table structure for table `corpse` */

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

/*Data for the table `corpse` */

/*Table structure for table `game_event_condition_save` */

DROP TABLE IF EXISTS `game_event_condition_save`;

CREATE TABLE `game_event_condition_save` (
  `event_id` mediumint(8) unsigned NOT NULL,
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`event_id`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `game_event_condition_save` */

insert  into `game_event_condition_save`(`event_id`,`condition_id`,`done`) values (35,1,100),(37,1,100),(41,1,100),(43,1,100),(45,1,100),(47,1,1010);

/*Table structure for table `game_event_save` */

DROP TABLE IF EXISTS `game_event_save`;

CREATE TABLE `game_event_save` (
  `event_id` mediumint(8) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `game_event_save` */

insert  into `game_event_save`(`event_id`,`state`,`next_start`) values (35,4,'0000-00-00 00:00:00'),(36,2,'0000-00-00 00:00:00'),(37,4,'0000-00-00 00:00:00'),(38,2,'0000-00-00 00:00:00'),(39,2,'0000-00-00 00:00:00'),(41,4,'0000-00-00 00:00:00'),(42,2,'0000-00-00 00:00:00'),(43,4,'0000-00-00 00:00:00'),(44,2,'0000-00-00 00:00:00'),(45,4,'0000-00-00 00:00:00'),(46,2,'0000-00-00 00:00:00'),(47,2,'0000-00-00 00:00:00');

/*Table structure for table `gm_surveys` */

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

/*Data for the table `gm_surveys` */

/*Table structure for table `gm_tickets` */

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

/*Data for the table `gm_tickets` */

/*Table structure for table `group_instance` */

DROP TABLE IF EXISTS `group_instance`;

CREATE TABLE `group_instance` (
  `leaderGuid` int(11) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`leaderGuid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_instance` */

/*Table structure for table `group_member` */

DROP TABLE IF EXISTS `group_member`;

CREATE TABLE `group_member` (
  `leaderGuid` int(11) unsigned NOT NULL,
  `memberGuid` int(11) unsigned NOT NULL,
  `assistant` tinyint(1) unsigned NOT NULL,
  `subgroup` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`leaderGuid`,`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Groups';

/*Data for the table `group_member` */

/*Table structure for table `groups` */

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

/*Data for the table `groups` */

/*Table structure for table `guild` */

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

/*Data for the table `guild` */

/*Table structure for table `guild_bank_eventlog` */

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

/*Data for the table `guild_bank_eventlog` */

/*Table structure for table `guild_bank_item` */

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

/*Data for the table `guild_bank_item` */

/*Table structure for table `guild_bank_right` */

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

/*Data for the table `guild_bank_right` */

/*Table structure for table `guild_bank_tab` */

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

/*Data for the table `guild_bank_tab` */

/*Table structure for table `guild_eventlog` */

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

/*Data for the table `guild_eventlog` */

/*Table structure for table `guild_member` */

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

/*Data for the table `guild_member` */

/*Table structure for table `guild_rank` */

DROP TABLE IF EXISTS `guild_rank`;

CREATE TABLE `guild_rank` (
  `guildid` int(6) unsigned NOT NULL DEFAULT '0',
  `rid` int(11) unsigned NOT NULL,
  `rname` varchar(255) NOT NULL DEFAULT '',
  `rights` int(3) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

/*Data for the table `guild_rank` */

/*Table structure for table `instance` */

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

/*Data for the table `instance` */

/*Table structure for table `instance_reset` */

DROP TABLE IF EXISTS `instance_reset`;

CREATE TABLE `instance_reset` (
  `mapid` int(11) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `instance_reset` */

insert  into `instance_reset`(`mapid`,`resettime`) values (249,1356667200),(269,1352606400),(309,1352692800),(409,1355716800),(469,1355716800),(509,1352692800),(531,1355716800),(532,1355716800),(533,1355716800),(534,1355716800),(540,1352606400),(542,1352606400),(543,1352606400),(544,1355716800),(545,1352606400),(546,1352606400),(547,1352606400),(548,1355716800),(550,1355716800),(552,1352606400),(553,1352606400),(554,1352606400),(555,1352606400),(556,1352606400),(557,1352606400),(558,1352606400),(560,1352606400),(564,1355716800),(565,1355716800),(568,1352692800),(580,1355716800),(585,1352606400);

/*Table structure for table `item_instance` */

DROP TABLE IF EXISTS `item_instance`;

CREATE TABLE `item_instance` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  `FakeEntry` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Fake item''s entry',
  `FakeOwner` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character GUIDLow',
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Item System';

/*Data for the table `item_instance` */

insert  into `item_instance`(`guid`,`owner_guid`,`data`,`FakeEntry`,`FakeOwner`) values (184,9,'184 1073741824 3 53 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(194,9,'194 1073741824 3 6948 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(195,9,'195 1073741824 3 13583 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(196,9,'196 1073741824 3 23720 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32833 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(200,9,'200 1073741824 3 1179 1065353216 0 9 0 9 0 0 0 0 0 3 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(201,9,'201 1073741824 3 34563 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 50 ',0,0),(202,9,'202 1073741824 3 34528 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 35 ',0,0),(203,9,'203 1073741824 3 34434 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 35 ',0,0),(204,9,'204 1073741824 3 31070 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 17 60 ',0,0),(205,9,'205 1073741824 3 31067 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 26 75 ',0,0),(206,9,'206 1073741824 3 31065 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 30 100 ',0,0),(207,9,'207 1073741824 3 31064 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18 60 ',0,0),(208,9,'208 1073741824 3 31061 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 35 ',0,0),(210,9,'210 1073741824 3 34335 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 105 ',0,0),(211,9,'211 1073741824 3 34347 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 26 75 ',0,0),(212,9,'212 1073741824 3 34359 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(213,9,'213 1073741824 3 34362 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 524289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(215,9,'215 1073741824 3 34429 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(216,9,'216 1073741824 3 32483 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(217,9,'217 1073741824 3 34242 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(218,9,'218 1073741824 3 34179 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(219,9,'219 1073741824 3 34230 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 524289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(220,9,'220 1073741824 3 17578 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 60 60 ',0,0),(221,9,'221 1073741824 3 29434 1065353216 0 9 0 9 0 0 0 0 0 52 0 0 0 0 0 0 2048 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(222,9,'222 1073741824 3 32374 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 120 120 ',0,0),(224,9,'224 1073741824 3 33102 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(258,9,'258 1073741824 3 32239 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 50 50 ',0,0),(266,9,'266 1073741824 3 18873 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 120 120 ',0,0),(267,9,'267 1073741824 3 23454 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 105 105 ',0,0),(268,9,'268 1073741824 3 30001 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 35 ',0,0),(269,9,'269 1073741824 3 17602 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 60 60 ',0,0),(270,9,'270 1073741824 7 38082 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 22 0 276 1073741824 277 1073741824 278 1073741824 282 1073741824 284 1073741824 222 1073741824 367 1073741824 368 1073741824 369 1073741824 0 0 373 1073741824 374 1073741824 375 1073741824 376 1073741824 377 1073741824 378 1073741824 0 0 0 0 266 1073741824 269 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(271,9,'271 1073741824 3 23302 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 65 65 ',0,0),(272,9,'272 1073741824 3 23303 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 80 80 ',0,0),(273,9,'273 1073741824 3 23289 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 40 40 ',0,0),(274,9,'274 1073741824 3 23288 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 30 30 ',0,0),(275,9,'275 1073741824 3 23317 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 50 50 ',0,0),(276,9,'276 1073741824 3 23316 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 50 50 ',0,0),(277,9,'277 1073741824 3 23453 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(278,9,'278 1073741824 3 28379 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 32768 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(282,9,'282 1073741824 3 32338 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 60 60 ',0,0),(284,9,'284 1073741824 3 32237 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 75 75 ',0,0),(286,9,'286 1073741824 3 29981 1065353216 0 9 0 9 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 120 120 ',0,0),(288,12,'288 1073741824 3 6098 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 35 ',0,0),(290,12,'290 1073741824 3 52 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(292,12,'292 1073741824 3 53 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(294,12,'294 1073741824 3 51 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(296,12,'296 1073741824 3 36 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 ',0,0),(298,12,'298 1073741824 3 159 1065353216 0 12 0 12 0 0 0 0 0 3 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(300,12,'300 1073741824 3 2070 1065353216 0 12 0 12 0 0 0 0 0 5 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(302,12,'302 1073741824 3 6948 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(303,12,'303 1073741824 3 13583 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(304,12,'304 1073741824 3 23720 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 32833 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(312,12,'312 1073741824 7 5572 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(314,12,'314 1073741824 3 80 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 ',0,0),(319,12,'319 1073741824 3 1416 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 35 ',0,0),(327,12,'327 1073741824 7 5572 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(332,12,'332 1073741824 3 5580 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 30 30 ',0,0),(334,12,'334 1073741824 3 6076 1065353216 0 12 0 12 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 30 30 ',0,0),(336,13,'336 1073741824 3 56 1065353216 0 13 0 13 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 35 ',0,0),(338,13,'338 1073741824 3 1395 1065353216 0 13 0 13 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(340,13,'340 1073741824 3 55 1065353216 0 13 0 13 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(342,13,'342 1073741824 3 35 1065353216 0 13 0 13 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(344,13,'344 1073741824 3 6096 1065353216 0 13 0 13 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(346,13,'346 1073741824 3 2070 1065353216 0 13 0 13 0 0 0 0 0 4 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(348,13,'348 1073741824 3 159 1065353216 0 13 0 13 0 0 0 0 0 2 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(350,13,'350 1073741824 3 6948 1065353216 0 13 0 13 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(352,14,'352 1073741824 3 6125 1065353216 0 14 0 14 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(354,14,'354 1073741824 3 139 1065353216 0 14 0 14 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(356,14,'356 1073741824 3 140 1065353216 0 14 0 14 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(358,14,'358 1073741824 3 25 1065353216 0 14 0 14 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 ',0,0),(360,14,'360 1073741824 3 2362 1065353216 0 14 0 14 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 ',0,0),(362,14,'362 1073741824 3 4604 1065353216 0 14 0 14 0 0 0 0 0 4 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(364,14,'364 1073741824 3 6948 1065353216 0 14 0 14 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(367,9,'367 1073741824 3 34368 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(368,9,'368 1073741824 3 30809 1065353216 0 9 0 270 1073741824 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(369,9,'369 1073741824 3 29740 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(373,9,'373 1073741824 3 25398 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 85 85 ',0,0),(374,9,'374 1073741824 3 25084 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2802 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31 4294967278 0 85 85 ',0,0),(375,9,'375 1073741824 3 27502 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(376,9,'376 1073741824 3 21877 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(377,9,'377 1073741824 3 27859 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(378,9,'378 1073741824 3 27860 1065353216 0 9 0 270 1073741824 0 0 0 0 1 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(414,17,'414 1073741824 3 6117 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(416,17,'416 1073741824 3 6118 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(418,17,'418 1073741824 3 43 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(420,17,'420 1073741824 3 2361 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(422,17,'422 1073741824 3 4540 1065353216 0 17 0 17 0 0 0 0 0 4 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(424,17,'424 1073741824 3 159 1065353216 0 17 0 17 0 0 0 0 0 2 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(426,17,'426 1073741824 3 6948 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(436,17,'436 1073741824 3 27860 1065353216 0 17 0 17 0 0 0 0 0 14 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(438,17,'438 1073741824 3 30810 1065353216 0 17 0 17 0 0 0 0 0 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(439,17,'439 1073741824 3 27855 1065353216 0 17 0 17 0 0 0 0 0 16 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(443,17,'443 1073741824 3 30809 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(444,17,'444 1073741824 3 21877 1065353216 0 17 0 17 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(446,17,'446 1073741824 3 22832 1065353216 0 17 0 17 0 0 0 0 0 2 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(447,17,'447 1073741824 3 22829 1065353216 0 17 0 17 0 0 0 0 0 3 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(461,17,'461 1073741824 3 17057 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(462,17,'462 1073741824 3 17058 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(469,17,'469 1073741824 3 29434 1065353216 0 17 0 17 0 0 0 0 0 2 0 0 0 0 0 0 2049 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(474,17,'474 1073741824 3 34537 1065353216 0 17 0 17 0 0 0 0 0 1 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(475,17,'475 1073741824 7 35516 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 0 0 0 478 1073741824 0 0 0 0 0 0 484 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(476,17,'476 1073741824 3 32062 1065353216 0 17 0 17 0 0 0 0 0 1 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(478,17,'478 1073741824 3 22835 1065353216 0 17 0 475 1073741824 0 0 0 0 2 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(484,17,'484 1073741824 3 3187 1065353216 0 17 0 475 1073741824 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 90 0 0 102 0 0 0 0 0 0 593 0 55 55 ',0,0),(503,17,'503 1073741824 3 31890 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(504,17,'504 1073741824 3 31856 1065353216 0 17 0 17 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(506,18,'506 1073741824 3 24143 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(508,18,'508 1073741824 3 24145 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(510,18,'510 1073741824 3 24146 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 16 ',0,0),(512,18,'512 1073741824 3 23346 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(514,18,'514 1073741824 3 20857 1065353216 0 18 0 18 0 0 0 0 0 3 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(516,18,'516 1073741824 3 159 1065353216 0 18 0 18 0 0 0 0 0 1 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(518,18,'518 1073741824 3 6948 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(519,18,'519 1073741824 3 35109 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 120 120 ',0,0),(520,18,'520 1073741824 3 18873 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 120 120 ',0,0),(521,18,'521 1073741824 3 29981 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 120 120 ',0,0),(522,18,'522 1073741824 3 22114 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(523,18,'523 1073741824 3 23720 1065353216 0 18 0 18 0 0 0 0 0 1 0 0 0 0 0 0 32833 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(525,19,'525 1073741824 3 20891 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 35 ',0,0),(527,19,'527 1073741824 3 53 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(529,19,'529 1073741824 3 52 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(531,19,'531 1073741824 3 20981 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18 20 ',0,0),(533,19,'533 1073741824 3 20857 1065353216 0 19 0 19 0 0 0 0 0 4 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(535,19,'535 1073741824 3 159 1065353216 0 19 0 19 0 0 0 0 0 2 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(537,19,'537 1073741824 3 51 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(539,19,'539 1073741824 3 6948 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(540,19,'540 1073741824 3 21006 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 23 25 ',0,0),(541,19,'541 1073741824 3 20998 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 13 14 ',0,0),(542,19,'542 1073741824 3 33154 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 32769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(543,19,'543 1073741824 3 23720 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 32833 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(544,19,'544 1073741824 3 21005 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 12 ',0,0),(545,19,'545 1073741824 3 21007 1065353216 0 19 0 19 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32 35 ',0,0),(577,22,'577 1073741824 3 38 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(579,22,'579 1073741824 3 39 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(581,22,'581 1073741824 3 40 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(583,22,'583 1073741824 3 25 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 ',0,0),(585,22,'585 1073741824 3 2362 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 19 20 ',0,0),(587,22,'587 1073741824 3 117 1065353216 0 22 0 22 0 0 0 0 0 4 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(589,22,'589 1073741824 3 6948 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(591,23,'591 1073741824 3 38 1065353216 0 23 0 23 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(593,23,'593 1073741824 3 39 1065353216 0 23 0 23 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 25 ',0,0),(595,23,'595 1073741824 3 40 1065353216 0 23 0 23 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(597,23,'597 1073741824 3 25 1065353216 0 23 0 23 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 ',0,0),(599,23,'599 1073741824 3 2362 1065353216 0 23 0 23 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 ',0,0),(601,23,'601 1073741824 3 117 1065353216 0 23 0 23 0 0 0 0 0 4 0 4294967295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(603,23,'603 1073741824 3 6948 1065353216 0 23 0 23 0 0 0 0 0 1 0 0 0 0 0 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(604,23,'604 1073741824 3 3370 1065353216 0 23 0 23 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 14 ',0,0),(605,22,'605 1073741824 3 4865 1065353216 0 22 0 22 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(606,22,'606 1073741824 7 5572 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(607,22,'607 1073741824 3 7074 1065353216 0 22 0 22 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(608,22,'608 1073741824 3 1364 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 45 45 ',0,0),(610,22,'610 1073741824 7 5572 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(611,22,'611 1073741824 3 7073 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0),(612,22,'612 1073741824 3 3363 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 12 12 ',0,0),(614,22,'614 1073741824 3 2646 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 45 45 ',0,0),(616,22,'616 1073741824 3 2642 1065353216 0 22 0 22 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 30 30 ',0,0);

/*Table structure for table `item_text` */

DROP TABLE IF EXISTS `item_text`;

CREATE TABLE `item_text` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `text` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

/*Data for the table `item_text` */

/*Table structure for table `mail` */

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

/*Data for the table `mail` */

/*Table structure for table `mail_external` */

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

/*Data for the table `mail_external` */

/*Table structure for table `mail_items` */

DROP TABLE IF EXISTS `mail_items`;

CREATE TABLE `mail_items` (
  `mail_id` int(11) NOT NULL DEFAULT '0',
  `item_guid` int(11) NOT NULL DEFAULT '0',
  `item_template` int(11) NOT NULL DEFAULT '0',
  `receiver` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`mail_id`,`item_guid`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `mail_items` */

/*Table structure for table `pet_aura` */

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

/*Data for the table `pet_aura` */

/*Table structure for table `pet_spell` */

DROP TABLE IF EXISTS `pet_spell`;

CREATE TABLE `pet_spell` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

/*Data for the table `pet_spell` */

/*Table structure for table `pet_spell_cooldown` */

DROP TABLE IF EXISTS `pet_spell_cooldown`;

CREATE TABLE `pet_spell_cooldown` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_spell_cooldown` */

/*Table structure for table `petition` */

DROP TABLE IF EXISTS `petition`;

CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

/*Data for the table `petition` */

/*Table structure for table `petition_sign` */

DROP TABLE IF EXISTS `petition_sign`;

CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(11) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(11) unsigned NOT NULL DEFAULT '0',
  `player_account` int(11) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

/*Data for the table `petition_sign` */

/*Table structure for table `saved_variables` */

DROP TABLE IF EXISTS `saved_variables`;

CREATE TABLE `saved_variables` (
  `NextArenaPointDistributionTime` bigint(40) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Variable Saves';

/*Data for the table `saved_variables` */

insert  into `saved_variables`(`NextArenaPointDistributionTime`) values (1351605751);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
