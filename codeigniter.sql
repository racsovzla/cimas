/*
Navicat MySQL Data Transfer

Source Server         : Mysql_local
Source Server Version : 50150
Source Host           : localhost:3306
Source Database       : codeigniter

Target Server Type    : MYSQL
Target Server Version : 50150
File Encoding         : 65001

Date: 2012-05-11 17:02:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('02d30bc59a9804fbc458fb952602fe11', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740232', '');
INSERT INTO `ci_sessions` VALUES ('123171bb30e3d2a38343fe98be7d4ae9', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740230', '');
INSERT INTO `ci_sessions` VALUES ('3746aed8866ad1095cdaa2c88625d255', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0', '1336743429', '');
INSERT INTO `ci_sessions` VALUES ('381ab71556a052f3e909bc1279d5c98e', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740232', '');
INSERT INTO `ci_sessions` VALUES ('535086695488e00ad1aaa1187d0f24a4', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740235', '');
INSERT INTO `ci_sessions` VALUES ('8f6184f8a13f06e035c4f0c55416cbdc', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740232', '');
INSERT INTO `ci_sessions` VALUES ('a3527ddbef53d43b60f4760e6c25419c', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740237', '');
INSERT INTO `ci_sessions` VALUES ('bd3ab585f26e682b17b7226b704b8d51', '127.0.0.1', '123456\' generate sql error', '1336740231', '');
INSERT INTO `ci_sessions` VALUES ('c16e05b18bf54ccd9e1c39682686714b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0', '1336767598', '');
INSERT INTO `ci_sessions` VALUES ('c397e594330ca2633db0eedec57ebc47', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740227', '');
INSERT INTO `ci_sessions` VALUES ('e8742996c2aae3b50f75ecf62e3778ab', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740232', '');
INSERT INTO `ci_sessions` VALUES ('fa15f3c197cd05ebfbcac1d3cc901836', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '1336740236', '');

-- ----------------------------
-- Table structure for `login_attempts`
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `user_autologin`
-- ----------------------------
DROP TABLE IF EXISTS `user_autologin`;
CREATE TABLE `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_autologin
-- ----------------------------

-- ----------------------------
-- Table structure for `user_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `usuarios_demo`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_demo`;
CREATE TABLE `usuarios_demo` (
  `nombre` varchar(255) NOT NULL,
  `cedula` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios_demo
-- ----------------------------
INSERT INTO `usuarios_demo` VALUES ('Oscar Hernandez', '16864376', 'ohernandez@odeveloper.com', null, '1');
INSERT INTO `usuarios_demo` VALUES ('Manuel De Tal', '12345678', 'maguirre@odeveloper.com', null, '2');
INSERT INTO `usuarios_demo` VALUES ('Alberto Patiño', '9876543', 'apatino@odeveloper.com', null, '3');
