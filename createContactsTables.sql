CREATE DATABASE `ContactsDB` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `contacts` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(30) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `title` int(16) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=latin1;

CREATE TABLE `ContactAddress` (
  `contactAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `contactId` int(11) NOT NULL,
  `addressType` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  `street` varchar(20) NOT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contactAddressId`),
  KEY `contactId_ibfk_1` (`contactId`),
  CONSTRAINT `contactId_ibfk_1` FOREIGN KEY (`contactId`) REFERENCES `contacts` (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

CREATE TABLE `ContactCommunication` (
  `contactCommunicationId` int(11) NOT NULL AUTO_INCREMENT,
  `contactId` int(11) NOT NULL,
  `communicationType` varchar(20) NOT NULL,
  `communicationValue` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `createdTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatedTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contactCommunicationId`),
  KEY `contact_ibfk_1` (`contactId`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`contactId`) REFERENCES `contacts` (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=1000005 DEFAULT CHARSET=latin1;
