/*
SQLyog Ultimate v11.42 (64 bit)
MySQL - 5.0.21-community-nt : Database - addtostaging
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`addtostaging` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `addtostaging`;

/*Table structure for table `sitewiseanalyticstracker` */

DROP TABLE IF EXISTS `sitewiseanalyticstracker`;

CREATE TABLE `sitewiseanalyticstracker` (
  `id` int(11) NOT NULL auto_increment,
  `SiteId` varchar(500) default NULL,
  `SiteName` varchar(500) default NULL,
  `CameraId` varchar(500) default NULL,
  `CameraName` varchar(500) default NULL,
  `AnalyticType` varchar(500) default NULL,
  `AnalyticName` varchar(500) default NULL,
  `TestId` varchar(500) default NULL,
  `Resolution` varchar(500) default NULL,
  `Polygon` varchar(500) default NULL,
  `SkipFrames` varchar(500) default NULL,
  `ConfThreshold` varchar(500) default NULL,
  `NMSThreshold` varchar(500) default NULL,
  `MaxAge` varchar(500) default NULL,
  `MinHits` varchar(500) default NULL,
  `iOU` varchar(500) default NULL,
  `ModelUsed` varchar(500) default NULL,
  `TrackingAlgorithmUsed` varchar(500) default NULL,
  `Accuracy` varchar(500) default NULL,
  `ComputationTime` varchar(500) default NULL,
  `ComputationReources` varchar(500) default NULL,
  `TotalFrames` varchar(500) default NULL,
  `Status` varchar(500) default NULL,
  `enteredDate` varchar(500) default NULL,
  `enteredId` varchar(500) default NULL,
  `ModifiedDate` varchar(500) default NULL,
  `ModifiedId` varchar(500) default NULL,
  `Remarks` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
