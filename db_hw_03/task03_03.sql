/*
Практическое задание к уроку 3

3. Используя сервис http://filldb.info или другой по вашему желанию, 
сгенерировать тестовые данные для всех таблиц, учитывая логику связей. 
Для всех таблиц, где это имеет смысл, создать не менее 100 строк. 
Создать локально БД vk и загрузить в неё тестовые данные.

*/

drop database if exists snet2008;
create database snet2008;
use snet2008;
 
#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `phone` (`phone`),
  KEY `name` (`name`,`surname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('1', 'harmony46@hotmail.com', 'et', 'Norbert', 'Kuhic', '436-402-9347', 'f', '2014-11-05', 'Parkerville', '69', '1999-09-15 18:35:23');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('2', 'pedro.hintz@walsh.com', 'inventore', 'Terrill', 'Macejkovic', '1-063-210-3271x892', 'f', '1977-02-24', 'West Loniechester', '61', '2019-06-26 00:43:56');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('3', 'dkunze@feilcassin.biz', 'est', 'Cicero', 'Johnson', '(091)259-0638x827', 'f', '2009-02-07', 'Danielaborough', '62', '1986-01-29 13:25:43');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('4', 'afunk@walter.net', 'nam', 'Jasen', 'Connelly', '383.933.8691', 'f', '2002-04-04', 'West Eltonberg', '64', '2009-01-22 00:45:43');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('5', 'emanuel22@yahoo.com', 'doloribus', 'Hayden', 'Stamm', '458-459-5146', 'f', '1983-09-15', 'New Stefan', '8', '2012-09-07 15:02:13');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('6', 'greyson30@gmail.com', 'quos', 'Julien', 'O\'Hara', '(702)739-9429x504', 'm', '2007-10-25', 'East Oswald', '5', '2009-12-30 01:36:57');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('7', 'tpaucek@yahoo.com', 'aliquam', 'Francisca', 'Roberts', '(679)106-3669x114', 'm', '1974-10-27', 'Lake Christian', '12', '1970-12-27 12:33:39');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('8', 'icummerata@renneroconner.com', 'nemo', 'Olga', 'O\'Keefe', '344-440-8006x3723', 'f', '2015-02-23', 'Port Deon', '28', '2004-06-23 17:40:06');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('9', 'laury.glover@hotmail.com', 'totam', 'Daniela', 'Ritchie', '1-456-087-9219', 'f', '2014-02-13', 'Crooksmouth', '98', '1997-03-04 20:26:34');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('10', 'jordyn92@hotmail.com', 'sit', 'Dario', 'Kiehn', '(945)932-9984x852', 'm', '2018-01-14', 'New Floymouth', '79', '1981-10-18 07:56:38');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('11', 'king.madilyn@gmail.com', 'numquam', 'Sarah', 'Kuhic', '1-071-954-2219x570', 'f', '1976-10-20', 'New Freida', '76', '2004-01-06 04:27:38');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('12', 'bjohnson@murazik.com', 'ipsam', 'Gus', 'Considine', '+68(3)9504211181', 'm', '1999-08-13', 'South Austenchester', '77', '2010-01-17 15:27:13');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('13', 'nina64@lind.com', 'recusandae', 'Montana', 'Champlin', '1-791-564-4131x912', 'm', '2005-08-24', 'West Mikel', '59', '1987-12-18 00:32:15');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('14', 'nblanda@collier.com', 'eum', 'Isac', 'Abbott', '016-173-5992x4943', 'f', '1997-03-20', 'Llewellynstad', '11', '1974-03-22 02:01:17');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('15', 'amelia94@hotmail.com', 'laboriosam', 'Thalia', 'Gislason', '1-089-109-1644x654', 'f', '2013-11-10', 'Brownview', '44', '1991-09-09 16:40:26');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('16', 'casper.anika@gmail.com', 'laborum', 'Scottie', 'Johnson', '+51(9)8434579931', 'm', '2003-01-20', 'East Clyde', '10', '1992-09-11 06:19:23');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('17', 'mccullough.terrence@harber.com', 'incidunt', 'Rubie', 'Kihn', '356.834.8057', 'm', '2011-01-31', 'Krisbury', '27', '2005-01-20 10:37:21');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('18', 'gottlieb.daphne@yahoo.com', 'commodi', 'Simeon', 'West', '486-920-4927x083', 'f', '2009-07-02', 'Port Dasiamouth', '17', '1978-11-07 23:39:33');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('19', 'orion34@satterfield.com', 'et', 'Jed', 'Oberbrunner', '03235096278', 'f', '1998-04-16', 'Gersontown', '54', '1997-07-04 23:32:14');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('20', 'marcelo.anderson@gmail.com', 'natus', 'Giovanna', 'Fay', '(530)750-4306x43667', 'f', '1998-11-27', 'South Scarlett', '23', '1998-04-08 04:21:21');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('21', 'walker.hipolito@yahoo.com', 'fugiat', 'Joy', 'Halvorson', '435.650.1279x7603', 'f', '2017-05-10', 'Dorthyfurt', '63', '1985-06-15 02:06:00');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('22', 'goldner.frederik@cassinwilliamson.com', 'nostrum', 'Brendan', 'Toy', '(853)421-6364', 'm', '2004-05-31', 'Sidneychester', '66', '1991-04-02 23:55:48');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('23', 'hauck.tamia@hotmail.com', 'quaerat', 'Elbert', 'Jast', '274-264-1974', 'f', '2015-02-13', 'Lake Bartholometown', '39', '1995-03-26 00:59:49');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('24', 'gleason.lavon@bergstromrice.com', 'incidunt', 'Mable', 'Grady', '303-611-3587', 'm', '2018-07-15', 'Metzhaven', '53', '2001-04-03 21:51:06');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('25', 'kory.schultz@langworthbosco.info', 'eum', 'Florence', 'Hauck', '00826598181', 'm', '1987-12-29', 'Port Rooseveltstad', '99', '1982-07-30 12:57:01');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('26', 'bette.schmeler@hotmail.com', 'veniam', 'Zena', 'Ullrich', '878.541.5350', 'f', '2009-11-13', 'Matildaville', '65', '1977-12-06 16:04:57');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('27', 'presley33@hotmail.com', 'labore', 'Charlotte', 'Pouros', '910-041-1039', 'm', '2005-11-22', 'Port Aidanville', '22', '1996-08-01 01:34:00');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('28', 'kautzer.rachelle@gerlach.com', 'vitae', 'Titus', 'Quigley', '+76(1)1034330086', 'f', '1975-10-25', 'West Dorothyshire', '72', '2004-01-01 21:45:44');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('29', 'verla59@gmail.com', 'voluptatem', 'Makenzie', 'Mayer', '(659)599-9455', 'm', '1997-11-13', 'Schulistshire', '39', '1976-07-13 10:08:18');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('30', 'schultz.chauncey@casper.net', 'totam', 'Dessie', 'Pfannerstill', '+04(2)1093594560', 'm', '1982-04-09', 'Katharinamouth', '33', '1996-08-05 23:03:29');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('31', 'yaufderhar@rolfsonjakubowski.com', 'labore', 'Keanu', 'Koelpin', '166-492-8231x4521', 'm', '2009-07-23', 'Kuphalport', '84', '2011-05-11 12:20:27');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('32', 'ierdman@swift.com', 'nostrum', 'Amaya', 'Bode', '286-115-7225x4094', 'm', '2015-12-23', 'Runolfssonview', '28', '2008-11-21 22:00:12');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('33', 'tavares86@yahoo.com', 'et', 'Herminia', 'Jaskolski', '(289)029-3700', 'm', '2004-11-30', 'Augustfort', '100', '2020-06-24 19:43:34');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('34', 'maxwell39@rosenbaumhermiston.com', 'magnam', 'Chaim', 'Marquardt', '05039003634', 'm', '1990-10-19', 'Port Christop', '48', '1986-06-18 07:39:26');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('35', 'godfrey22@harrisbatz.com', 'ut', 'Cloyd', 'Christiansen', '896-117-6171x691', 'f', '1982-03-06', 'Port Adriana', '10', '2014-10-11 14:31:20');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('36', 'ywill@hotmail.com', 'aut', 'Frances', 'Rogahn', '+82(3)9893826527', 'f', '1987-09-25', 'Lake Thomas', '33', '1994-09-21 01:05:41');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('37', 'lsauer@spencer.com', 'sit', 'Rogelio', 'Schuster', '(397)021-8480x898', 'f', '1987-02-06', 'Mayertberg', '31', '2010-01-15 10:30:40');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('38', 'ova05@yahoo.com', 'laboriosam', 'Gene', 'Bednar', '1-089-881-9344x9698', 'f', '1973-12-03', 'Santinostad', '69', '2018-02-04 14:21:19');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('39', 'rlabadie@nienowfritsch.info', 'dolor', 'Janis', 'Abernathy', '761-355-5262x8835', 'f', '1981-07-17', 'Port Dashawn', '72', '2007-08-02 12:22:17');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('40', 'esmeralda36@leffler.com', 'dolores', 'Anika', 'Legros', '461.151.0893', 'f', '2014-09-29', 'Giovannytown', '45', '2014-04-09 02:35:05');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('41', 'bartoletti.jodie@hotmail.com', 'quis', 'Royal', 'Johnson', '405.513.8061x635', 'm', '1993-09-22', 'Lake Kristopherborough', '1', '1978-10-20 00:50:50');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('42', 'cassandre60@shields.info', 'placeat', 'Luz', 'Bradtke', '203-365-7917x56888', 'f', '1972-03-23', 'Lake Thaddeus', '60', '1996-12-09 18:42:57');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('43', 'adriel41@mayer.net', 'nostrum', 'Cora', 'Flatley', '+13(4)5414979820', 'f', '1978-02-06', 'Lake Lenorafort', '97', '2006-04-04 06:05:57');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('44', 'hassan.ruecker@yahoo.com', 'tempore', 'Isabelle', 'Smith', '(752)050-9953x252', 'm', '1974-07-08', 'New Elsashire', '42', '1970-11-30 14:34:29');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('45', 'truecker@ledner.com', 'qui', 'Talia', 'Hermann', '073.426.5635', 'm', '1971-11-23', 'Hahnshire', '23', '1983-12-16 05:47:04');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('46', 'nitzsche.arely@vandervortmayer.com', 'aut', 'Raheem', 'Kessler', '(459)522-7658', 'f', '1977-06-16', 'Adolfstad', '69', '1984-02-12 07:40:35');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('47', 'beatty.maximillian@hotmail.com', 'aut', 'Clarabelle', 'Leannon', '04172021012', 'f', '1997-01-23', 'Port Joannyside', '61', '1997-09-21 13:23:52');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('48', 'andre.osinski@yahoo.com', 'perspiciatis', 'Ernest', 'Leuschke', '1-749-555-1923', 'm', '2009-11-27', 'Port Meredithbury', '64', '1973-03-29 07:51:07');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('49', 'tmante@nadergottlieb.biz', 'corporis', 'Vito', 'Hansen', '1-292-112-8028x14028', 'm', '1985-09-09', 'West Cecileville', '63', '2017-05-06 20:35:12');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('50', 'maud.bosco@fadelmccullough.com', 'veritatis', 'Lafayette', 'Waelchi', '422.679.7411', 'm', '2000-04-15', 'Kayceehaven', '36', '1980-07-19 00:31:44');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('51', 'jjones@wittingfay.com', 'aut', 'Kathlyn', 'Mohr', '044.119.0535', 'f', '2009-04-21', 'West Kristopher', '83', '2002-01-16 20:56:22');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('52', 'richmond.simonis@hintz.info', 'molestiae', 'Rashad', 'Lind', '1-733-346-6963', 'f', '2016-08-31', 'North Grayce', '41', '1992-01-21 10:23:55');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('53', 'yesenia.russel@schinner.com', 'quia', 'Elmo', 'Mills', '(541)433-9409x252', 'm', '1996-09-01', 'Orlandton', '98', '2003-10-14 17:19:37');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('54', 'marvin.jayne@gmail.com', 'hic', 'Douglas', 'Marks', '(295)424-4483x943', 'f', '2007-04-05', 'West Marianoberg', '58', '2003-04-29 04:45:37');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('55', 'isadore.wilkinson@hegmann.com', 'incidunt', 'Merl', 'Gorczany', '08095758079', 'm', '1996-05-11', 'Lake Henryview', '83', '1977-12-15 23:22:53');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('56', 'runolfsdottir.eldridge@yahoo.com', 'vel', 'Zachery', 'Dietrich', '845-209-7497', 'f', '2019-09-20', 'Schultztown', '45', '1970-02-12 23:11:58');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('57', 'thiel.lavon@treutelbatz.info', 'occaecati', 'Efren', 'Ledner', '(467)482-6867x956', 'f', '2002-06-21', 'Port Laurence', '55', '1988-11-11 05:57:45');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('58', 'leannon.kirstin@tremblay.com', 'ea', 'Isac', 'Renner', '759.833.0582', 'f', '2004-08-10', 'Lake Mallory', '56', '2020-07-13 10:28:43');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('59', 'raynor.nia@wardhansen.info', 'et', 'Elmira', 'Wehner', '03147535268', 'm', '2014-04-27', 'Port Skyemouth', '71', '1987-12-28 14:42:53');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('60', 'henri50@yahoo.com', 'quo', 'Jasmin', 'Schroeder', '233-287-6862x829', 'm', '2007-12-02', 'Port Sheridan', '64', '1975-07-29 10:23:40');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('61', 'lisandro68@murphy.info', 'vel', 'Angel', 'Labadie', '870.119.7255', 'm', '1973-01-03', 'Lillianshire', '96', '2015-02-01 02:12:21');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('62', 'vincenzo.cronin@wisozkwisoky.com', 'illum', 'Kavon', 'Hodkiewicz', '01101803248', 'f', '2009-10-25', 'North Joan', '31', '1998-07-03 06:07:06');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('63', 'vgoyette@hotmail.com', 'veniam', 'Bert', 'Cronin', '(231)606-7195x75805', 'f', '2004-06-29', 'Lurashire', '68', '2015-07-22 01:35:16');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('64', 'vena.stamm@hotmail.com', 'quasi', 'Rafaela', 'Keeling', '(464)728-9942x6274', 'm', '1988-07-05', 'West Birdiebury', '65', '1971-07-14 10:52:09');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('65', 'uhuel@hayes.com', 'nobis', 'Arjun', 'Ritchie', '(713)979-9256x16437', 'm', '1991-12-23', 'South Meda', '97', '2005-04-30 02:34:11');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('66', 'jovany.kunde@hotmail.com', 'et', 'Cleta', 'Reynolds', '1-807-502-7277x983', 'm', '1987-11-20', 'East Carlee', '49', '1999-02-17 07:28:54');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('67', 'casper.stacey@gmail.com', 'pariatur', 'Chadd', 'Ratke', '985.164.0897x61541', 'f', '2002-12-20', 'Izabellafort', '45', '2001-05-04 12:38:44');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('68', 'zora.koch@yahoo.com', 'rerum', 'Katharina', 'Kohler', '08301848619', 'f', '2010-05-06', 'Hoegerborough', '18', '2004-07-26 10:28:44');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('69', 'wsteuber@moore.com', 'perferendis', 'Marques', 'Will', '938.705.4703x9325', 'm', '1984-01-18', 'Port Dougbury', '98', '2014-01-19 23:21:57');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('70', 'o\'conner.lloyd@hotmail.com', 'provident', 'Vicenta', 'Conroy', '794.737.2449x03114', 'f', '1977-08-29', 'South Mckayla', '30', '2010-01-13 21:41:54');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('71', 'kathlyn35@gmail.com', 'sit', 'Eldon', 'Herzog', '(209)169-0590x8421', 'm', '1987-04-28', 'Bergstromfort', '66', '1999-10-20 20:51:41');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('72', 'gdubuque@murazik.net', 'corrupti', 'Jacklyn', 'Powlowski', '1-036-828-9164', 'f', '2003-07-16', 'North Mariohaven', '93', '1999-03-28 04:48:23');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('73', 'ojohns@yahoo.com', 'aspernatur', 'Mossie', 'Parisian', '1-706-411-1688', 'f', '2018-04-29', 'Goyettefurt', '83', '1974-10-24 09:43:35');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('74', 'zora26@howell.com', 'velit', 'Duncan', 'Purdy', '1-358-907-6126', 'm', '1984-12-26', 'West Deliaville', '35', '2013-04-27 20:21:09');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('75', 'fkuvalis@hotmail.com', 'necessitatibus', 'Jovani', 'Waelchi', '04573670178', 'f', '2015-08-05', 'South Roselyn', '2', '1975-03-22 11:04:56');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('76', 'hkris@yahoo.com', 'molestias', 'Webster', 'Davis', '914-639-9885', 'm', '1993-11-14', 'Bartolettimouth', '15', '1984-11-11 15:05:28');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('77', 'jedidiah52@hotmail.com', 'et', 'Lyla', 'Krajcik', '916-077-9023', 'f', '1978-05-19', 'Lynnmouth', '64', '1998-08-11 22:14:51');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('78', 'renner.daniela@hotmail.com', 'dolor', 'Savanna', 'Connelly', '828.962.4382x06726', 'm', '1994-03-17', 'Doyleside', '18', '2004-11-06 00:50:31');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('79', 'bernard83@yahoo.com', 'quam', 'Madyson', 'Schaden', '1-323-356-8025', 'f', '2003-12-08', 'West Bartholome', '89', '1983-02-02 11:12:29');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('80', 'dfeil@yahoo.com', 'magnam', 'Magnus', 'Senger', '(330)233-7814x574', 'f', '2001-10-04', 'Lake Mckenzieview', '63', '1972-08-27 00:36:21');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('81', 'tillman.juliet@gmail.com', 'laudantium', 'Magnolia', 'Blanda', '225.088.6523x9078', 'f', '1991-05-10', 'New Belltown', '27', '1971-10-29 05:28:59');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('82', 'graham.juvenal@cummings.com', 'eos', 'Bo', 'Erdman', '921.172.3530x9765', 'm', '2014-06-07', 'Lillyburgh', '30', '2007-12-04 02:11:23');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('83', 'lsmitham@kshlerin.com', 'molestiae', 'Mandy', 'Jacobi', '(072)539-0174', 'f', '2011-06-23', 'Lake Madonna', '29', '1981-11-28 20:21:28');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('84', 'anjali.shanahan@gmail.com', 'sint', 'Shany', 'Pfannerstill', '055-119-3446x7948', 'm', '1988-05-20', 'Port Ceciliaport', '55', '1976-10-28 05:48:05');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('85', 'npaucek@hotmail.com', 'reprehenderit', 'Opal', 'Mueller', '1-825-990-4144x50723', 'm', '1971-05-24', 'Dickiland', '31', '2004-01-31 18:36:07');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('86', 'jevon39@gmail.com', 'ut', 'Rickie', 'Ziemann', '405.236.7143x79035', 'f', '2001-08-17', 'Lake Evan', '101', '2001-01-05 10:16:29');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('87', 'leonel49@yahoo.com', 'ipsum', 'Milan', 'Schroeder', '+28(9)0719711223', 'm', '1992-03-16', 'Wintheisermouth', '58', '2002-06-18 18:11:40');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('88', 'gunnar86@kerlukeorn.com', 'vel', 'Harrison', 'Eichmann', '286.443.0159x000', 'f', '1972-06-12', 'Michealstad', '18', '2012-07-18 13:22:51');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('89', 'celia.kemmer@jaskolski.biz', 'eos', 'Brando', 'Crooks', '1-995-032-5935x461', 'm', '1998-03-03', 'Dudleyburgh', '51', '1993-04-15 22:24:43');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('90', 'hackett.madonna@bauchdietrich.info', 'ut', 'Nona', 'Hoppe', '829.938.5847', 'f', '1971-01-22', 'South Maybellport', '9', '2019-09-09 19:11:28');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('91', 'marques.fisher@hills.org', 'aut', 'Raul', 'Parker', '940.733.0928x15697', 'f', '1977-01-09', 'Jarodton', '6', '1980-01-06 02:47:05');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('92', 'fidel.schneider@yahoo.com', 'placeat', 'Elva', 'Russel', '1-422-792-2696x91125', 'f', '1986-05-15', 'Batzmouth', '32', '1979-06-21 11:04:02');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('93', 'nicolette.zulauf@yahoo.com', 'quo', 'Burnice', 'Fadel', '216-303-0318', 'm', '2014-10-13', 'Elnoraberg', '33', '1978-03-11 22:17:10');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('94', 'o\'conner.stone@gmail.com', 'atque', 'Darby', 'Gulgowski', '1-892-182-4121x421', 'f', '1996-10-18', 'Nickolasport', '66', '1982-05-10 16:09:41');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('95', 'erunolfsdottir@kunde.com', 'doloribus', 'Vicky', 'Wehner', '03305427439', 'm', '1996-05-09', 'New Theoberg', '90', '1970-07-19 01:13:28');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('96', 'zyundt@hotmail.com', 'et', 'Ryleigh', 'Rosenbaum', '841-170-4738', 'f', '1972-02-24', 'Tobyburgh', '77', '2011-07-09 17:33:40');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('97', 'adelle82@yahoo.com', 'et', 'Ernestine', 'Steuber', '(819)864-0615x074', 'f', '1973-11-29', 'East Javonteview', '101', '2016-03-25 23:37:28');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('98', 'hlittle@haag.org', 'nostrum', 'Darius', 'Nikolaus', '029-566-7969x525', 'm', '2014-01-12', 'Francobury', '95', '1973-10-03 14:35:01');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('99', 'merl32@hotmail.com', 'et', 'Shirley', 'Schmitt', '1-603-974-7559', 'm', '1990-12-11', 'South Tiffanytown', '66', '2007-05-14 02:27:38');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('100', 'twindler@volkmancorkery.com', 'qui', 'Jefferey', 'Fahey', '+95(6)6098203179', 'f', '1979-03-04', 'New Fredrickberg', '67', '2015-08-24 16:32:44');


#
# TABLE STRUCTURE FOR: friend_requests
#

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') COLLATE utf8_unicode_ci DEFAULT 'requested',
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '29', 'approved', '2011-11-14 11:38:57', '1979-08-05 18:35:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '75', 'declined', '2014-11-07 11:20:57', '2002-07-05 16:08:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '73', 'approved', '2018-11-07 14:06:27', '1981-04-14 16:15:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '14', 'requested', '1976-01-19 00:15:08', '2000-10-26 01:53:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '77', 'unfriended', '2005-09-07 16:26:42', '1979-11-23 12:00:56');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '90', 'approved', '1974-09-21 20:44:30', '2010-04-08 14:46:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('8', '5', 'requested', '1972-02-13 08:13:41', '2008-05-24 19:50:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '9', 'requested', '1996-02-19 08:59:58', '2017-04-09 02:43:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '52', 'approved', '1972-08-10 15:18:06', '2017-05-04 17:29:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '36', 'unfriended', '1990-08-07 00:11:15', '2019-03-18 19:15:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '99', 'unfriended', '1972-04-05 18:30:28', '1983-08-12 19:51:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '2', 'approved', '2003-03-03 12:49:13', '1982-01-16 15:02:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '67', 'approved', '1975-01-09 18:31:24', '1995-09-11 17:49:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('12', '50', 'requested', '1995-01-14 06:50:35', '1998-08-06 08:04:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('13', '46', 'approved', '2018-04-28 18:28:44', '1985-08-11 10:55:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('17', '99', 'unfriended', '2008-03-16 14:53:36', '2020-07-23 11:35:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('19', '78', 'approved', '2016-11-15 01:07:50', '2012-01-23 01:06:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('19', '81', 'declined', '1973-04-29 22:09:15', '1999-07-11 13:40:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('20', '32', 'requested', '1988-03-29 23:48:01', '1999-01-13 02:24:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('20', '87', 'approved', '2002-03-04 02:58:26', '2013-01-19 05:26:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('24', '97', 'unfriended', '2007-01-28 03:56:43', '1999-05-29 14:21:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '60', 'declined', '2013-02-15 07:44:39', '2003-01-28 16:35:10');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '83', 'requested', '2014-01-30 08:12:57', '2006-07-20 09:58:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '87', 'unfriended', '1984-01-12 10:47:59', '1971-07-28 20:51:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('27', '31', 'requested', '1978-12-13 01:14:07', '2003-08-09 21:08:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('27', '55', 'unfriended', '2014-01-28 02:44:52', '2009-02-14 06:44:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '6', 'declined', '1987-10-31 07:11:02', '1982-08-02 04:11:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '77', 'declined', '2013-01-05 12:31:13', '1989-02-22 15:12:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('30', '33', 'requested', '1977-07-03 13:05:01', '1971-01-04 19:07:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('31', '38', 'declined', '1990-01-21 12:25:41', '2000-07-04 18:50:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '23', 'unfriended', '1994-02-25 17:09:00', '2004-03-25 14:08:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '30', 'declined', '1999-03-22 03:29:54', '1994-09-28 12:49:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '35', 'unfriended', '1990-02-01 06:40:33', '2009-05-25 13:19:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '50', 'approved', '1983-11-09 19:31:23', '2012-03-30 23:04:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '53', 'approved', '1998-10-19 02:40:32', '2014-03-10 10:22:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('33', '10', 'unfriended', '1972-08-07 14:55:18', '1982-01-19 09:08:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('35', '63', 'requested', '2014-12-16 16:12:05', '2010-12-26 05:04:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '44', 'declined', '2010-05-01 09:06:27', '2002-11-09 13:49:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('39', '35', 'approved', '2017-07-26 00:22:01', '2012-09-30 10:07:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('39', '47', 'approved', '1980-05-09 10:24:58', '1979-09-19 18:14:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('39', '62', 'requested', '1975-05-28 06:44:36', '2009-09-23 21:06:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('40', '80', 'requested', '2016-02-03 05:28:57', '1979-04-02 09:55:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('41', '15', 'requested', '2002-12-06 09:12:19', '1996-07-04 07:09:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '62', 'unfriended', '1985-07-22 22:53:58', '2015-01-26 05:26:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('45', '42', 'unfriended', '1982-06-17 22:57:21', '1986-11-28 11:28:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('48', '6', 'unfriended', '1997-10-03 18:40:15', '1998-01-18 23:24:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('50', '4', 'requested', '1981-09-17 19:09:02', '1991-02-22 22:16:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('50', '35', 'approved', '1980-05-08 03:10:00', '2004-03-29 23:44:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '22', 'approved', '1992-04-25 13:07:12', '1989-06-08 11:06:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '39', 'approved', '1980-08-03 09:25:34', '1979-03-11 06:53:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('58', '2', 'requested', '2005-03-27 22:10:58', '2017-10-29 19:58:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('59', '69', 'unfriended', '1977-05-25 15:26:46', '1982-10-11 18:18:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('59', '92', 'requested', '1986-11-14 08:04:12', '1971-06-08 06:55:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('60', '9', 'unfriended', '1990-10-03 19:51:04', '1984-09-15 05:31:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('60', '98', 'unfriended', '1983-03-26 22:32:32', '2001-07-07 07:15:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('63', '24', 'declined', '1988-08-16 06:30:10', '1970-05-21 08:51:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('63', '63', 'approved', '2013-12-23 04:32:18', '2011-07-12 21:54:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('63', '64', 'requested', '1985-04-26 18:05:16', '1998-03-05 16:02:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('63', '73', 'declined', '1993-06-01 09:27:07', '1986-06-10 12:17:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('63', '94', 'unfriended', '2020-03-24 17:03:04', '1978-01-01 08:00:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('64', '64', 'unfriended', '2012-06-19 09:40:52', '2004-06-15 20:21:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('65', '73', 'requested', '1980-04-19 17:05:26', '2000-08-30 05:13:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('65', '94', 'unfriended', '2004-12-18 05:08:54', '1987-09-23 22:25:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('67', '51', 'unfriended', '2012-10-08 07:34:11', '1981-04-27 12:09:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('69', '61', 'approved', '1984-07-30 12:53:25', '1979-03-20 19:01:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('70', '55', 'approved', '1980-03-25 17:53:47', '1973-06-02 23:19:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('71', '78', 'approved', '2015-06-20 20:32:58', '1995-06-23 02:20:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '56', 'requested', '2014-01-25 22:31:08', '2001-03-02 01:51:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '58', 'declined', '2006-07-03 12:23:13', '1971-10-31 23:47:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '71', 'declined', '1998-04-03 20:27:06', '1999-12-16 21:56:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '75', 'requested', '2002-08-11 12:41:32', '1980-09-12 10:16:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '87', 'unfriended', '2003-12-25 12:00:04', '1988-08-28 00:23:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('74', '89', 'unfriended', '1982-12-20 10:59:43', '1984-03-18 02:13:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('75', '34', 'unfriended', '1971-11-24 09:09:54', '2016-11-04 04:28:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('76', '34', 'requested', '1985-11-08 23:27:46', '1981-03-30 11:17:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('76', '58', 'approved', '2004-09-05 03:25:04', '1975-05-12 21:53:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('76', '84', 'requested', '1975-09-27 21:03:46', '1981-04-17 23:45:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('77', '96', 'declined', '1980-09-14 00:38:56', '1996-02-06 02:35:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('78', '7', 'unfriended', '1975-06-16 00:19:50', '2018-02-18 05:16:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('81', '30', 'approved', '2013-01-05 05:48:44', '2014-12-24 15:52:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('83', '35', 'approved', '1983-11-04 08:38:49', '2007-02-25 23:33:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('83', '94', 'unfriended', '1988-07-15 13:51:08', '2007-06-28 03:01:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('85', '1', 'approved', '2013-07-21 15:24:56', '2019-04-23 02:52:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('85', '12', 'requested', '1993-07-06 02:39:55', '2004-01-14 09:12:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('86', '68', 'declined', '2014-04-18 06:04:54', '2016-07-29 06:02:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('86', '96', 'declined', '1977-08-01 19:47:58', '2017-10-19 11:36:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('87', '25', 'unfriended', '2019-11-16 00:39:55', '2014-07-15 01:32:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('87', '39', 'unfriended', '1988-09-01 16:31:43', '1971-03-07 15:27:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('88', '99', 'unfriended', '1991-03-06 19:53:40', '1992-03-12 22:38:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('89', '96', 'approved', '2017-07-27 03:25:37', '2000-02-26 18:34:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('92', '74', 'approved', '1989-01-29 09:29:15', '1994-10-06 05:44:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('94', '50', 'unfriended', '2009-01-09 02:18:01', '1993-02-27 16:45:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('95', '49', 'unfriended', '2017-03-25 09:24:30', '2019-01-12 00:21:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('95', '57', 'approved', '2004-04-17 20:08:12', '2007-10-05 05:36:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('96', '25', 'declined', '2000-02-15 23:37:48', '2010-03-30 22:06:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('96', '64', 'declined', '2007-12-14 15:38:49', '1993-04-19 00:03:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('96', '87', 'approved', '1996-11-06 11:29:53', '1988-01-10 22:28:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('98', '32', 'declined', '1974-02-14 03:23:24', '2011-01-15 23:52:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('99', '94', 'declined', '1988-04-04 08:11:19', '1998-05-28 11:28:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('100', '99', 'unfriended', '1993-01-11 01:15:20', '1983-06-22 09:11:12');


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES ('86', 'A vel et.');
INSERT INTO `communities` (`id`, `name`) VALUES ('57', 'Accusantium quod autem.');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'Ad delectus voluptates.');
INSERT INTO `communities` (`id`, `name`) VALUES ('55', 'Adipisci minima eligendi.');
INSERT INTO `communities` (`id`, `name`) VALUES ('73', 'Aliquam sed eos enim.');
INSERT INTO `communities` (`id`, `name`) VALUES ('74', 'Animi dignissimos eos voluptas.');
INSERT INTO `communities` (`id`, `name`) VALUES ('84', 'Aut a recusandae.');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'Aut sint quae natus.');
INSERT INTO `communities` (`id`, `name`) VALUES ('46', 'Autem error sint.');
INSERT INTO `communities` (`id`, `name`) VALUES ('78', 'Autem non explicabo.');
INSERT INTO `communities` (`id`, `name`) VALUES ('95', 'Consequatur eos sed.');
INSERT INTO `communities` (`id`, `name`) VALUES ('47', 'Consequatur et et in.');
INSERT INTO `communities` (`id`, `name`) VALUES ('42', 'Consequatur quae possimus ullam.');
INSERT INTO `communities` (`id`, `name`) VALUES ('37', 'Consequuntur eaque aperiam culpa.');
INSERT INTO `communities` (`id`, `name`) VALUES ('50', 'Culpa aut aut consequatur.');
INSERT INTO `communities` (`id`, `name`) VALUES ('70', 'Cumque officia consequatur.');
INSERT INTO `communities` (`id`, `name`) VALUES ('96', 'Cumque placeat dolorem rerum.');
INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'Cumque sequi neque exercitationem.');
INSERT INTO `communities` (`id`, `name`) VALUES ('26', 'Debitis laudantium et totam quam.');
INSERT INTO `communities` (`id`, `name`) VALUES ('71', 'Deleniti veniam.');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'Deserunt in tenetur in.');
INSERT INTO `communities` (`id`, `name`) VALUES ('35', 'Dicta dolorum magni omnis.');
INSERT INTO `communities` (`id`, `name`) VALUES ('82', 'Dolor nisi voluptas.');
INSERT INTO `communities` (`id`, `name`) VALUES ('52', 'Dolore quia voluptates quia.');
INSERT INTO `communities` (`id`, `name`) VALUES ('49', 'Doloremque iusto minus eveniet.');
INSERT INTO `communities` (`id`, `name`) VALUES ('24', 'Doloribus optio enim.');
INSERT INTO `communities` (`id`, `name`) VALUES ('63', 'Eligendi suscipit libero.');
INSERT INTO `communities` (`id`, `name`) VALUES ('81', 'Enim ea expedita eum.');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'Eos libero ut nulla.');
INSERT INTO `communities` (`id`, `name`) VALUES ('36', 'Eos veniam et voluptatem.');
INSERT INTO `communities` (`id`, `name`) VALUES ('69', 'Est eligendi est.');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'Est soluta voluptas quia.');
INSERT INTO `communities` (`id`, `name`) VALUES ('21', 'Et a possimus neque.');
INSERT INTO `communities` (`id`, `name`) VALUES ('94', 'Et quam.');
INSERT INTO `communities` (`id`, `name`) VALUES ('83', 'Et sit laboriosam.');
INSERT INTO `communities` (`id`, `name`) VALUES ('77', 'Et vero officia.');
INSERT INTO `communities` (`id`, `name`) VALUES ('54', 'Excepturi sed.');
INSERT INTO `communities` (`id`, `name`) VALUES ('32', 'Exercitationem vel et neque.');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'Facere pariatur.');
INSERT INTO `communities` (`id`, `name`) VALUES ('28', 'Harum est soluta.');
INSERT INTO `communities` (`id`, `name`) VALUES ('39', 'Hic et et dolor.');
INSERT INTO `communities` (`id`, `name`) VALUES ('33', 'Id deleniti repudiandae amet.');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'Illum dolor et.');
INSERT INTO `communities` (`id`, `name`) VALUES ('92', 'In sed.');
INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'Ipsam suscipit omnis dolor.');
INSERT INTO `communities` (`id`, `name`) VALUES ('99', 'Laboriosam id excepturi.');
INSERT INTO `communities` (`id`, `name`) VALUES ('80', 'Laborum dicta aliquam dolores.');
INSERT INTO `communities` (`id`, `name`) VALUES ('59', 'Mollitia minima ut.');
INSERT INTO `communities` (`id`, `name`) VALUES ('38', 'Natus deleniti non autem.');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'Necessitatibus dignissimos pariatur.');
INSERT INTO `communities` (`id`, `name`) VALUES ('31', 'Necessitatibus ratione.');
INSERT INTO `communities` (`id`, `name`) VALUES ('51', 'Nesciunt hic dolorem tenetur.');
INSERT INTO `communities` (`id`, `name`) VALUES ('79', 'Nobis expedita ut facilis.');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'Numquam aut est.');
INSERT INTO `communities` (`id`, `name`) VALUES ('34', 'Occaecati quod porro.');
INSERT INTO `communities` (`id`, `name`) VALUES ('61', 'Odio vero animi et.');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'Odit assumenda earum.');
INSERT INTO `communities` (`id`, `name`) VALUES ('40', 'Officia nemo occaecati consequatur.');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'Omnis rerum accusamus qui.');
INSERT INTO `communities` (`id`, `name`) VALUES ('56', 'Perferendis ea unde illum.');
INSERT INTO `communities` (`id`, `name`) VALUES ('53', 'Perferendis est voluptatem deserunt.');
INSERT INTO `communities` (`id`, `name`) VALUES ('43', 'Perferendis odio magnam.');
INSERT INTO `communities` (`id`, `name`) VALUES ('60', 'Porro facere unde quisquam.');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'Quas fugiat reprehenderit.');
INSERT INTO `communities` (`id`, `name`) VALUES ('64', 'Quas nesciunt aut.');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'Quas sed vero alias.');
INSERT INTO `communities` (`id`, `name`) VALUES ('72', 'Quasi explicabo quia.');
INSERT INTO `communities` (`id`, `name`) VALUES ('68', 'Quasi suscipit aliquid.');
INSERT INTO `communities` (`id`, `name`) VALUES ('30', 'Qui ipsum ut et.');
INSERT INTO `communities` (`id`, `name`) VALUES ('58', 'Qui maiores et.');
INSERT INTO `communities` (`id`, `name`) VALUES ('48', 'Qui similique.');
INSERT INTO `communities` (`id`, `name`) VALUES ('25', 'Quia consequatur consequatur enim.');
INSERT INTO `communities` (`id`, `name`) VALUES ('90', 'Quia sit dolores.');
INSERT INTO `communities` (`id`, `name`) VALUES ('27', 'Quia voluptates quo.');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'Quis in.');
INSERT INTO `communities` (`id`, `name`) VALUES ('89', 'Quo aut aut.');
INSERT INTO `communities` (`id`, `name`) VALUES ('87', 'Quod sed totam sit eum.');
INSERT INTO `communities` (`id`, `name`) VALUES ('88', 'Recusandae cumque sint vel.');
INSERT INTO `communities` (`id`, `name`) VALUES ('85', 'Recusandae ut odio rerum.');
INSERT INTO `communities` (`id`, `name`) VALUES ('66', 'Reiciendis accusantium quaerat.');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'Reiciendis asperiores et ex.');
INSERT INTO `communities` (`id`, `name`) VALUES ('62', 'Rem ex eveniet quo.');
INSERT INTO `communities` (`id`, `name`) VALUES ('45', 'Repellat omnis nisi nemo ex.');
INSERT INTO `communities` (`id`, `name`) VALUES ('93', 'Rerum saepe consequatur.');
INSERT INTO `communities` (`id`, `name`) VALUES ('44', 'Sed ut debitis est.');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'Similique et et.');
INSERT INTO `communities` (`id`, `name`) VALUES ('29', 'Similique tempora placeat maiores.');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'Sit possimus sint qui.');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'Sit vero.');
INSERT INTO `communities` (`id`, `name`) VALUES ('100', 'Totam consequatur voluptas.');
INSERT INTO `communities` (`id`, `name`) VALUES ('67', 'Ut animi tenetur aut.');
INSERT INTO `communities` (`id`, `name`) VALUES ('98', 'Ut architecto.');
INSERT INTO `communities` (`id`, `name`) VALUES ('91', 'Ut dolorum.');
INSERT INTO `communities` (`id`, `name`) VALUES ('22', 'Ut eius sint.');
INSERT INTO `communities` (`id`, `name`) VALUES ('65', 'Ut et quibusdam tenetur.');
INSERT INTO `communities` (`id`, `name`) VALUES ('75', 'Vero accusamus eveniet mollitia.');
INSERT INTO `communities` (`id`, `name`) VALUES ('97', 'Vitae beatae.');
INSERT INTO `communities` (`id`, `name`) VALUES ('23', 'Vitae possimus nihil.');
INSERT INTO `communities` (`id`, `name`) VALUES ('41', 'Voluptas debitis.');
INSERT INTO `communities` (`id`, `name`) VALUES ('76', 'Voluptas rem incidunt velit.');



#
# TABLE STRUCTURE FOR: users_communities
#

DROP TABLE IF EXISTS `users_communities`;

CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('1', '37', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('2', '56', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('2', '67', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('2', '75', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('2', '82', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('3', '83', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('3', '94', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('4', '44', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('4', '99', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('6', '2', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('7', '22', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('8', '93', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('9', '18', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('9', '54', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('9', '65', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('10', '50', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('11', '64', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('11', '76', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('12', '19', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('12', '50', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('12', '53', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('13', '25', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('15', '56', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('19', '74', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('20', '86', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('20', '95', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('21', '7', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('22', '19', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('22', '36', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('23', '3', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('24', '48', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('24', '74', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('25', '69', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('29', '37', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('30', '1', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('31', '8', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('32', '27', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('34', '1', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('35', '51', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('36', '93', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('40', '12', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('40', '78', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('40', '85', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('41', '6', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('41', '90', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('45', '95', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('47', '46', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('47', '65', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('47', '78', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('48', '46', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('50', '97', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('51', '47', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('52', '66', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('52', '89', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('53', '73', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('54', '10', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('56', '22', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('57', '62', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('59', '51', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('61', '93', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('65', '31', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('66', '97', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('67', '49', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('67', '59', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('67', '62', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('67', '99', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('69', '26', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('70', '26', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('71', '3', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('71', '10', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('74', '73', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('75', '14', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('76', '17', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('78', '2', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('78', '72', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('80', '8', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('80', '100', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('81', '71', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('82', '53', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('82', '65', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('83', '75', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('83', '78', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('83', '82', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('84', '45', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('86', '8', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('86', '37', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('90', '76', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('92', '31', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('95', '35', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('95', '77', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('95', '84', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('95', '98', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('96', '35', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('96', '49', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('97', '10', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('97', '47', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('97', '97', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('98', '48', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('99', '50', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('100', '62', 0);



#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('1', '35', 'AND WASHING--extra.\"\' \'You couldn\'t have done just as well. The twelve jurors were writing down \'stupid things!\' on their hands and feet, to make personal remarks,\' Alice said nothing: she had read.', '1997-08-05 16:28:30', '2002-09-04 12:50:46');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('2', '89', 'The only things in the morning, just time to be executed for having cheated herself in a very decided tone: \'tell her something worth hearing. For some minutes the whole window!\' \'Sure, it does, yer.', '1975-05-29 18:08:57', '2001-08-16 10:57:53');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('3', '23', 'How she longed to change the subject. \'Go on with the words a little, \'From the Queen. \'You make me giddy.\' And then, turning to the door, and knocked. \'There\'s no sort of way to change the subject.', '2014-07-25 08:03:36', '1997-02-27 21:40:08');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('4', '16', 'I the same thing as \"I eat what I used to say than his first remark, \'It was the matter with it. There could be no use in waiting by the time she had read several nice little dog near our house I.', '2010-09-01 03:14:03', '1995-02-23 14:45:52');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('5', '34', 'The Mock Turtle went on. Her listeners were perfectly quiet till she had got burnt, and eaten up by two guinea-pigs, who were all turning into little cakes as they would go, and broke off a little.', '1994-02-26 08:19:45', '2019-04-20 04:03:39');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('6', '50', 'Alice; \'it\'s laid for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' the Hatter asked triumphantly. Alice did not much surprised at this, she noticed a curious appearance in the same thing,\' said.', '2003-07-14 22:27:54', '1978-04-20 19:32:47');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('7', '91', 'Dormouse go on till you come and join the dance? \"You can really have no notion how long ago anything had happened.) So she swallowed one of them at dinn--\' she checked herself hastily. \'I thought.', '1991-08-08 21:49:09', '2018-08-10 01:08:07');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('8', '58', 'Her listeners were perfectly quiet till she was going to say,\' said the others. \'Are their heads off?\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice.', '1986-06-12 08:56:12', '1996-12-13 01:05:04');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('9', '78', 'Dodo could not think of what work it would be four thousand miles down, I think--\' (she was obliged to have got altered.\' \'It is wrong from beginning to write out a box of comfits, (luckily the salt.', '1971-04-07 14:58:19', '1996-12-22 00:08:29');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('10', '60', 'Do come back in a deep, hollow tone: \'sit down, both of you, and listen to me! When I used to say.\' \'So he did, so he did,\' said the Cat, and vanished again. Alice waited till the puppy\'s bark.', '1980-08-17 00:41:57', '1977-12-11 13:01:01');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('11', '33', 'Queen, and in despair she put them into a tidy little room with a smile. There was a most extraordinary noise going on rather better now,\' she added aloud. \'Do you mean by that?\' said the King. The.', '2002-01-07 07:27:36', '1993-11-30 05:35:46');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('12', '10', 'It doesn\'t look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Gryphon. \'Of course,\' the Dodo managed it.) First it marked out a.', '1981-03-07 09:42:17', '1980-08-28 16:47:37');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('13', '30', 'Alice timidly. \'Would you tell me,\' said Alice, \'and if it wasn\'t trouble enough hatching the eggs,\' said the King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m.', '2004-05-23 04:26:07', '1975-12-03 07:25:21');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('14', '69', 'ME,\' but nevertheless she uncorked it and put it to be patted on the table. \'Have some wine,\' the March Hare,) \'--it was at in all my limbs very supple By the time she found herself in a Little Bill.', '1974-05-04 19:07:49', '1993-10-02 08:33:55');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('15', '33', 'Alice, \'it\'s very rude.\' The Hatter was the BEST butter,\' the March Hare. The Hatter looked at it, busily painting them red. Alice thought decidedly uncivil. \'But perhaps it was quite surprised to.', '2004-06-24 12:35:59', '2006-09-22 11:08:46');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('16', '17', 'Cat, and vanished again. Alice waited till the puppy\'s bark sounded quite faint in the window?\' \'Sure, it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in my.', '1989-03-22 02:07:43', '1993-06-20 00:23:52');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('17', '50', 'I then? Tell me that first, and then raised himself upon tiptoe, put his mouth close to her great disappointment it was a body to cut it off from: that he had come back with the day of the officers.', '1975-02-06 02:23:55', '2007-11-11 15:00:49');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('18', '94', 'Tillie; and they lived at the sudden change, but she stopped hastily, for the pool was getting so thin--and the twinkling of the jury wrote it down \'important,\' and some of the party went back to.', '1974-03-27 23:47:54', '1991-06-11 10:36:01');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('19', '30', 'She pitied him deeply. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Dodo, pointing to.', '1998-07-15 22:12:39', '1989-11-16 12:45:13');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('20', '2', 'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice indignantly, and she hastily dried her eyes to see it pop down a large fan in the.', '1993-10-06 03:37:16', '1989-01-19 04:43:27');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('21', '61', 'There was a body to cut it off from: that he had a large mustard-mine near here. And the moral of that is, but I THINK I can listen all day to day.\' This was quite surprised to find my way into that.', '2009-02-11 22:32:23', '2018-06-16 00:15:00');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('22', '33', 'I then? Tell me that first, and then turned to the door, and knocked. \'There\'s no such thing!\' Alice was very nearly carried it out again, so violently, that she was ever to get through the doorway;.', '1991-12-09 12:50:55', '2007-10-28 16:21:05');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('23', '72', 'Hatter, and here the conversation dropped, and the little door, so she set off at once, she found to be no sort of idea that they could not make out that she did not notice this question, but.', '2019-11-25 23:09:49', '1990-09-25 14:00:39');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('24', '4', 'As she said to herself, and nibbled a little bit, and said to live. \'I\'ve seen a cat without a moment\'s delay would cost them their lives. All the time she had made her feel very uneasy: to be a.', '1996-06-19 00:30:22', '1993-09-08 19:01:51');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('25', '87', 'Alice: \'she\'s so extremely--\' Just then her head was so small as this is May it won\'t be raving mad after all! I almost think I can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\'.', '1997-11-07 06:24:08', '1995-02-11 05:40:43');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('26', '85', 'White Rabbit; \'in fact, there\'s nothing written on the shingle--will you come and join the dance. Would not, could not, would not, could not, would not, could not, would not open any of them..', '2001-01-10 22:23:30', '1994-09-24 21:53:21');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('27', '34', 'March Hare,) \'--it was at the Gryphon went on. Her listeners were perfectly quiet till she got up, and began bowing to the Duchess: \'what a clear way you can;--but I must be kind to them,\' thought.', '2020-06-30 05:07:21', '1991-09-17 21:33:53');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('28', '34', 'BEST butter,\' the March Hare was said to Alice, very earnestly. \'I\'ve had nothing else to say it over) \'--yes, that\'s about the temper of your flamingo. Shall I try the experiment?\' \'HE might bite,\'.', '2003-10-31 02:42:41', '1979-05-21 04:48:01');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('29', '27', 'Rabbit, and had just begun \'Well, of all this time, sat down and looked at the thought that it was all about, and make one quite giddy.\' \'All right,\' said the Caterpillar sternly. \'Explain.', '2014-04-28 13:25:18', '2018-06-17 04:20:37');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('30', '13', 'I can\'t see you?\' She was moving them about as much use in saying anything more till the Pigeon in a rather offended tone, \'was, that the reason so many lessons to learn! No, I\'ve made up my mind.', '1977-09-05 15:15:44', '2013-09-27 09:49:59');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('31', '89', 'So she began: \'O Mouse, do you know the song, perhaps?\' \'I\'ve heard something splashing about in all their simple sorrows, and find a thing,\' said the Duchess, it had made. \'He took me for asking!.', '2019-05-06 17:55:09', '1982-03-24 04:24:36');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('32', '61', 'Don\'t let him know she liked them best, For this must be collected at once in the night? Let me see: four times five is twelve, and four times seven is--oh dear! I wish I hadn\'t gone down that.', '1998-02-18 13:29:44', '1973-03-19 01:26:18');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('33', '1', 'Alice quietly said, just as well say,\' added the Hatter, \'you wouldn\'t talk about her and to hear it say, as it is.\' \'I quite forgot you didn\'t sign it,\' said the Mock Turtle; \'but it sounds.', '1978-11-04 02:14:33', '2004-05-15 02:37:48');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('34', '11', 'Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Cat in a coaxing tone, and added with a soldier on each side, and opened their eyes and mouths so VERY much out of sight before.', '1985-07-10 15:41:57', '2015-06-29 00:01:12');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('35', '76', 'I give you fair warning,\' shouted the Queen. \'Can you play croquet?\' The soldiers were always getting up and ran off, thinking while she was in the last words out loud, and the March Hare said to.', '2005-01-22 08:06:35', '2001-08-02 08:06:22');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('36', '34', 'Queen\'s absence, and were resting in the middle. Alice kept her waiting!\' Alice felt a little recovered from the Queen was to find herself talking familiarly with them, as if it wasn\'t trouble.', '1975-04-17 00:51:25', '2006-09-04 03:26:01');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('37', '60', 'Hatter. Alice felt a little animal (she couldn\'t guess of what work it would be four thousand miles down, I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this the.', '1979-05-17 12:28:54', '1975-06-14 02:51:50');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('38', '67', 'Alice with one eye; but to get out at the bottom of a well?\' \'Take some more bread-and-butter--\' \'But what did the Dormouse crossed the court, arm-in-arm with the strange creatures of her favourite.', '2009-02-10 15:45:27', '1995-09-24 16:56:17');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('39', '92', 'There was a very grave voice, \'until all the creatures wouldn\'t be so kind,\' Alice replied, so eagerly that the hedgehog a blow with its arms and frowning at the top of his head. But at any rate a.', '2012-09-18 22:54:15', '1996-10-22 01:25:22');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('40', '38', 'Alice; \'it\'s laid for a good thing!\' she said to herself, (not in a very truthful child; \'but little girls in my own tears! That WILL be a grin, and she dropped it hastily, just in time to hear the.', '1998-03-17 08:17:34', '1999-08-17 06:43:05');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('41', '26', 'Mock Turtle persisted. \'How COULD he turn them out with trying, the poor little thing sobbed again (or grunted, it was growing, and very nearly in the distance. \'Come on!\' cried the Gryphon. \'--you.', '1979-11-23 20:54:09', '2005-12-03 18:05:54');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('42', '25', 'For, you see, because some of the gloves, and she felt a violent blow underneath her chin: it had some kind of serpent, that\'s all you know about it, so she tried to say whether the blows hurt it or.', '2004-04-21 05:18:55', '1975-08-17 03:11:31');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('43', '47', 'I can find out the answer to shillings and pence. \'Take off your hat,\' the King say in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen. \'Can you play croquet with the distant.', '1982-03-19 02:06:49', '1982-05-17 01:11:50');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('44', '55', 'Duchess: you\'d better leave off,\' said the Caterpillar. \'Well, I should think it so VERY wide, but she thought it over afterwards, it occurred to her chin upon Alice\'s shoulder, and it sat down and.', '1975-06-28 22:48:08', '1977-04-14 03:36:06');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('45', '93', 'I hadn\'t cried so much!\' Alas! it was all finished, the Owl, as a drawing of a well?\' The Dormouse shook itself, and began smoking again. This time Alice waited a little, \'From the Queen. An.', '1982-02-15 15:30:56', '1992-06-27 11:04:15');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('46', '80', 'I\'m afraid, but you might like to be no chance of her ever getting out of his head. But at any rate,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the March Hare. \'I didn\'t mean it!\'.', '2000-06-01 08:34:39', '2004-03-07 16:40:43');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('47', '72', 'I don\'t want to be?\' it asked. \'Oh, I\'m not particular as to bring tears into her face. \'Wake up, Alice dear!\' said her sister; \'Why, what a dear quiet thing,\' Alice went on, looking anxiously about.', '1991-01-20 03:51:05', '2008-11-27 01:39:50');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('48', '43', 'Mouse, turning to the three gardeners at it, and then a voice of the well, and noticed that the way to hear his history. I must go by the way YOU manage?\' Alice asked. The Hatter looked at Alice..', '1980-11-04 23:04:16', '1990-09-07 11:41:19');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('49', '74', 'Lory, who at last came a little faster?\" said a whiting to a mouse, That he met in the pool, and the arm that was sitting next to no toys to play croquet.\' Then they all spoke at once, she found.', '1995-09-21 13:01:21', '2011-11-22 15:24:53');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('50', '1', 'These were the cook, to see what would happen next. First, she dreamed of little Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a voice of the deepest contempt. \'I\'ve seen.', '1996-10-18 12:07:51', '1973-06-17 01:27:02');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('51', '44', 'You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head began fading away the time. Alice had begun to repeat it, but her head on her lap as if he.', '2008-07-15 08:37:55', '2002-09-23 04:56:31');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('52', '34', 'You see the Mock Turtle, suddenly dropping his voice; and the other side. The further off from England the nearer is to find herself talking familiarly with them, as if it makes me grow smaller, I.', '2014-04-03 01:08:47', '1998-11-05 20:57:14');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('53', '33', 'SOMETHING interesting is sure to kill it in large letters. It was the King; and as the Dormouse go on in a great many teeth, so she went on eagerly: \'There is such a curious dream, dear, certainly:.', '1982-07-03 05:41:42', '1997-12-28 09:50:42');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('54', '15', 'Alice was more and more puzzled, but she ran with all speed back to the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish.', '1991-03-09 06:03:18', '1976-01-31 18:56:44');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('55', '37', 'And she began thinking over other children she knew, who might do something better with the Queen,\' and she drew herself up on to her daughter \'Ah, my dear! Let this be a Caucus-race.\' \'What IS the.', '2015-02-16 05:33:13', '1976-09-06 22:14:42');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('56', '20', 'Magpie began wrapping itself up very carefully, with one finger pressed upon its nose. The Dormouse again took a minute or two she walked off, leaving Alice alone with the day of the gloves, and was.', '1970-10-10 14:42:23', '1971-10-15 04:29:16');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('57', '99', 'Alice to herself, \'I don\'t know where Dinn may be,\' said the March Hare was said to the Knave \'Turn them over!\' The Knave of Hearts, and I never understood what it was: at first was moderate. But.', '2008-05-30 23:31:36', '1974-05-28 11:51:53');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('58', '70', 'They had not a mile high,\' said Alice. \'Of course you know about it, and then turned to the jury. They were indeed a queer-looking party that assembled on the bank, with her friend. When she got.', '1980-12-10 14:34:42', '2000-12-08 03:38:12');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('59', '53', 'All on a crimson velvet cushion; and, last of all this time. \'I want a clean cup,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he said in a trembling voice to a snail..', '2009-05-23 23:15:46', '2001-10-24 07:48:51');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('60', '26', 'Hatter. \'I deny it!\' said the Gryphon, half to itself, half to herself, and fanned herself with one finger, as he said to the shore. CHAPTER III. A Caucus-Race and a piece of bread-and-butter in the.', '2013-11-29 08:10:42', '1977-11-14 10:30:59');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('61', '83', 'Alice had been to the little thing sobbed again (or grunted, it was a general chorus of \'There goes Bill!\' then the Mock Turtle yet?\' \'No,\' said Alice. \'It must have been changed for any of them..', '1978-07-18 00:18:50', '1982-06-18 23:51:00');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('62', '41', 'And beat him when he sneezes; For he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther were sharing a pie--\' [later editions continued as follows The.', '1982-01-06 11:29:34', '1992-01-01 17:03:38');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('63', '86', 'Queen, and Alice was not even room for her. \'I wish I could say if I chose,\' the Duchess said after a fashion, and this Alice thought this must be a LITTLE larger, sir, if you like!\' the Duchess and.', '1981-04-06 22:22:40', '1981-02-25 04:38:34');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('64', '84', 'I to get into that lovely garden. I think you\'d take a fancy to herself what such an extraordinary ways of living would be the use of a procession,\' thought she, \'if people had all to lie down on.', '1971-11-11 07:47:40', '2012-01-10 20:59:00');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('65', '52', 'And then a great letter, nearly as she spoke--fancy CURTSEYING as you\'re falling through the air! Do you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'I might as well say,\'.', '1993-08-05 22:56:11', '1983-02-26 13:41:23');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('66', '61', 'Alice, \'I\'ve often seen them so often, you know.\' \'Not at all,\' said the Queen. \'Well, I never knew so much already, that it was a little shriek and a long time together.\' \'Which is just the case.', '2001-07-24 10:52:21', '1981-04-30 02:07:08');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('67', '18', 'Alice the moment she appeared; but she did it so yet,\' said the King; \'and don\'t be nervous, or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man,\' the Hatter hurriedly left.', '1976-09-05 22:36:06', '1982-03-17 12:33:40');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('68', '12', 'Cat, and vanished again. Alice waited a little, \'From the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\'.', '1975-08-08 13:13:30', '1983-06-21 23:51:38');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('69', '28', 'Seaography: then Drawling--the Drawling-master was an immense length of neck, which seemed to be executed for having missed their turns, and she tried to look through into the wood for fear of their.', '1985-09-20 23:14:35', '2020-03-11 16:03:08');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('70', '10', 'At this moment Five, who had meanwhile been examining the roses. \'Off with her friend. When she got used to it in time,\' said the King, and the little glass table. \'Now, I\'ll manage better this.', '1973-05-15 10:01:20', '2005-01-13 11:36:28');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('71', '49', 'William,\' the young lady to see that queer little toss of her ever getting out of a procession,\' thought she, \'what would become of you? I gave her answer. \'They\'re done with blacking, I believe.\'.', '2000-05-03 09:11:30', '2012-06-22 10:30:24');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('72', '53', 'Mock Turtle. \'No, no! The adventures first,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of it; so, after hunting all about it!\' Last came a rumbling of little Alice was.', '1972-07-17 11:40:24', '1997-07-16 20:47:27');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('73', '34', 'Oh, I shouldn\'t want YOURS: I don\'t take this young lady tells us a story.\' \'I\'m afraid I don\'t understand. Where did they live on?\' said the Cat again, sitting on a little scream, half of them--and.', '2004-01-20 00:07:20', '2004-01-15 12:53:10');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('74', '96', 'Gryphon, \'that they WOULD not remember ever having seen such a thing before, but she stopped hastily, for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on.', '1995-03-21 09:09:14', '2009-04-08 05:33:30');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('75', '8', 'She was walking by the officers of the leaves: \'I should like to show you! A little bright-eyed terrier, you know, this sort in her life; it was too much pepper in that ridiculous fashion.\' And he.', '2016-06-06 00:42:36', '2016-10-10 14:12:55');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('76', '27', 'The March Hare said to the Gryphon. \'Of course,\' the Gryphon at the White Rabbit returning, splendidly dressed, with a round face, and large eyes full of the creature, but on second thoughts she.', '1991-09-08 19:13:59', '2014-06-27 14:40:26');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('77', '75', 'Dormouse go on in a natural way. \'I thought you did,\' said the King, and the roof of the edge of her or of anything to say, she simply bowed, and took the hookah into its eyes again, to see it trot.', '2003-08-19 11:38:23', '2013-07-24 11:08:40');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('78', '79', 'Knave was standing before them, in chains, with a cart-horse, and expecting every moment to be said. At last the Mock Turtle. \'No, no! The adventures first,\' said the Gryphon: and it sat for a.', '1973-01-03 07:32:19', '1980-08-20 15:47:48');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('79', '69', 'Alice asked. The Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a very decided tone: \'tell her something about the crumbs,\' said the Hatter, and he went on in these.', '1975-03-12 00:52:10', '2014-07-28 05:24:04');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('80', '49', 'YOUR watch tell you his history,\' As they walked off together, Alice heard the Queen say only yesterday you deserved to be told so. \'It\'s really dreadful,\' she muttered to herself, \'Why, they\'re.', '1986-03-13 19:12:56', '2019-03-11 14:47:17');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('81', '80', 'The Mouse did not get hold of it; so, after hunting all about as she could, for the fan and the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you mean \"purpose\"?\'.', '1980-02-16 05:04:16', '1982-03-29 11:34:28');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('82', '12', 'Duchess, \'as pigs have to fly; and the baby violently up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with her head!\' about once in a frightened tone. \'The Queen of Hearts.', '1984-12-28 09:46:11', '2007-01-23 17:07:49');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('83', '82', 'Alice, who felt very curious sensation, which puzzled her too much, so she began shrinking directly. As soon as look at it!\' This speech caused a remarkable sensation among the leaves, which she.', '1978-03-13 21:51:56', '1994-01-07 08:54:10');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('84', '13', 'Queen,\' and she went on eagerly. \'That\'s enough about lessons,\' the Gryphon in an offended tone. And she kept tossing the baby violently up and ran off, thinking while she ran, as well say this),.', '2000-08-26 16:37:22', '1980-07-13 15:56:34');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('85', '27', 'YOU?\' Which brought them back again to the tarts on the trumpet, and then sat upon it.) \'I\'m glad they don\'t seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Gryphon, \'you first form.', '1972-02-15 14:21:55', '2001-03-31 04:58:19');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('86', '19', 'Mock Turtle in a trembling voice, \'Let us get to the Dormouse, and repeated her question. \'Why did you manage on the breeze that followed them, the melancholy words:-- \'Soo--oop of the baby, and not.', '1996-05-11 22:05:05', '1976-08-02 03:09:20');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('87', '32', 'Alice said with some surprise that the meeting adjourn, for the end of the tea--\' \'The twinkling of the month is it?\' \'Why,\' said the Mouse, in a low, trembling voice. \'There\'s more evidence to come.', '1987-11-04 08:56:16', '1983-01-18 07:33:33');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('88', '26', 'I\'m sure she\'s the best thing to nurse--and she\'s such a capital one for catching mice you can\'t help that,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you want to get to,\'.', '1987-11-21 05:03:08', '2001-11-08 07:42:40');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('89', '89', 'Footman went on \'And how many miles I\'ve fallen by this time, as it left no mark on the bank, and of having the sentence first!\' \'Hold your tongue, Ma!\' said the King. \'It began with the end of his.', '1992-06-30 14:48:57', '1971-03-03 17:22:56');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('90', '85', 'And she squeezed herself up on to her usual height. It was the fan and gloves, and, as the hall was very hot, she kept fanning herself all the arches are gone from this side of WHAT? The other.', '2010-12-18 15:59:43', '1975-01-30 22:44:16');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('91', '51', 'I don\'t want YOU with us!\"\' \'They were obliged to write this down on their slates, and she drew herself up and down, and was gone in a low, trembling voice. \'There\'s more evidence to come out among.', '1989-01-31 05:59:02', '2019-08-20 09:14:15');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('92', '71', 'Alice could bear: she got to the table, but it is.\' \'I quite agree with you,\' said Alice, in a melancholy air, and, after glaring at her side. She was a little bottle on it, or at any rate: go and.', '2012-04-13 21:41:38', '2006-06-08 22:04:47');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('93', '25', 'I\'m sure I have ordered\'; and she was holding, and she put them into a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then another confusion of voices--\'Hold up his head--Brandy.', '2019-03-04 05:22:18', '2010-08-25 20:05:01');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('94', '36', 'Mock Turtle, who looked at it uneasily, shaking it every now and then dipped suddenly down, so suddenly that Alice quite jumped; but she saw in another moment down went Alice after it, \'Mouse dear!.', '1976-09-29 08:51:21', '1972-11-18 19:53:44');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('95', '55', 'King put on your shoes and stockings for you now, dears? I\'m sure I have dropped them, I wonder?\' And here Alice began to repeat it, but her voice sounded hoarse and strange, and the Gryphon.', '2013-09-02 23:14:51', '2006-02-10 01:17:34');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('96', '77', 'Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must be shutting up like a candle. I wonder if I\'ve kept her eyes to see if he doesn\'t.', '2015-12-29 05:51:56', '1995-10-31 16:26:53');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('97', '97', 'Said his father; \'don\'t give yourself airs! Do you think you\'re changed, do you?\' \'I\'m afraid I don\'t take this young lady to see some meaning in it,\' but none of them bowed low. \'Would you tell me,.', '2003-01-27 08:16:12', '2007-12-15 09:08:25');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('98', '72', 'SOME change in my size; and as it went, as if it makes me grow large again, for really I\'m quite tired and out of the leaves: \'I should have croqueted the Queen\'s ears--\' the Rabbit whispered in a.', '2008-03-22 05:52:35', '1998-07-12 14:09:32');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('99', '88', 'Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said the Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister;.', '1994-07-05 03:19:27', '2007-01-05 07:21:13');
INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES ('100', '24', 'I say--that\'s the same thing as \"I get what I could shut up like a Jack-in-the-box, and up I goes like a Jack-in-the-box, and up the fan and gloves, and, as the question was evidently meant for her..', '1978-10-27 20:15:27', '1997-02-21 19:29:37');



#
# TABLE STRUCTURE FOR: comments
#

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('1', '59', '19', 'KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, \'they\'re sure to make out what she was going off into a sort of idea that they would call after her: the last concert!\' on which the words.', '2016-12-05 22:02:49');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('2', '50', '28', 'VERY good opportunity for croqueting one of them.\' In another minute there was the Duchess\'s cook. She carried the pepper-box in her hands, and began:-- \'You are old,\' said the King; and the little.', '1974-12-15 10:29:55');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('3', '41', '81', 'I don\'t believe it,\' said the March Hare went \'Sh! sh!\' and the reason of that?\' \'In my youth,\' said his father, \'I took to the jury. \'Not yet, not yet!\' the Rabbit say to itself in a languid,.', '2006-02-09 22:49:29');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('4', '72', '4', 'Alice; \'I must go back and see what the name \'W. RABBIT\' engraved upon it. She went on in these words: \'Yes, we went to school in the sea. The master was an old crab, HE was.\' \'I never thought about.', '2010-08-10 05:54:27');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('5', '85', '70', 'Dormouse\'s place, and Alice thought she had wept when she was quite out of the conversation. Alice replied, so eagerly that the way I ought to be ashamed of yourself,\' said Alice, (she had grown.', '1997-02-27 06:56:11');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('6', '35', '67', 'She was looking at Alice the moment she quite forgot you didn\'t sign it,\' said the March Hare. \'Sixteenth,\' added the Queen. \'I never went to work nibbling at the Caterpillar\'s making such VERY.', '1989-04-17 05:53:13');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('7', '7', '4', 'There was a good deal worse off than before, as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Caterpillar. Alice thought she might as well as she said to.', '1990-09-19 17:39:32');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('8', '98', '90', 'The Cat only grinned a little pattering of feet in a great deal to ME,\' said Alice very humbly: \'you had got burnt, and eaten up by two guinea-pigs, who were giving it something out of a tree. \'Did.', '2008-12-02 13:30:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('9', '27', '6', 'Duck and a Long Tale They were indeed a queer-looking party that assembled on the door of the court with a table in the sky. Alice went on, \'if you don\'t even know what to do anything but sit with.', '1989-09-16 00:08:42');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('10', '53', '70', 'Queen was silent. The King looked anxiously round, to make it stop. \'Well, I\'d hardly finished the goose, with the other: he came trotting along in a louder tone. \'ARE you to learn?\' \'Well, there.', '1979-04-21 04:04:34');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('11', '49', '36', 'YOU like cats if you only kept on good terms with him, he\'d do almost anything you liked with the Queen had ordered. They very soon finished off the cake. * * * * * * * * * * * * * * * * * * * * * *.', '1997-01-07 15:20:50');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('12', '6', '16', 'Alice, \'as all the jelly-fish out of the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice severely. \'What are you getting on now, my dear?\' it continued, turning to.', '2013-01-08 06:08:13');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('13', '83', '20', 'Alice; \'living at the righthand bit again, and Alice was not even get her head to keep back the wandering hair that WOULD always get into that lovely garden. First, however, she went on, \'What HAVE.', '2003-05-28 00:08:53');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('14', '10', '30', 'King said, for about the reason so many out-of-the-way things to happen, that it was a paper label, with the tea,\' the March Hare. \'I didn\'t write it, and on it except a little startled by seeing.', '1971-03-31 08:27:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('15', '90', '62', 'ARE a simpleton.\' Alice did not feel encouraged to ask his neighbour to tell you--all I know all sorts of things, and she, oh! she knows such a thing before, and he wasn\'t going to dive in among the.', '1971-10-06 21:16:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('16', '58', '49', 'Panther received knife and fork with a great deal too flustered to tell me your history, she do.\' \'I\'ll tell it her,\' said the White Rabbit with pink eyes ran close by her. There was a very short.', '1974-03-09 12:18:36');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('17', '81', '7', 'Alice\'s first thought was that you had been looking at everything about her, to pass away the time. Alice had never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' (He pronounced.', '1980-07-28 14:42:03');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('18', '76', '21', 'So she went on for some way, and nothing seems to suit them!\' \'I haven\'t the slightest idea,\' said the Duchess. \'Everything\'s got a moral, if only you can find it.\' And she thought it would not.', '1999-10-30 19:25:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('19', '87', '48', 'Mouse to tell its age, there was a queer-shaped little creature, and held it out into the wood. \'It\'s the stupidest tea-party I ever was at in all directions, \'just like a telescope.\' And so she.', '2019-04-28 20:33:51');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('20', '24', '71', 'Alice, and, after waiting till she got to come before that!\' \'Call the first to break the silence. \'What day of the room. The cook threw a frying-pan after her as she could remember about ravens and.', '2002-04-03 00:13:43');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('21', '17', '59', 'King had said that day. \'That PROVES his guilt,\' said the Dormouse; \'VERY ill.\' Alice tried to look over their shoulders, that all the rats and--oh dear!\' cried Alice, with a whiting. Now you know.\'.', '2007-02-12 01:50:50');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('22', '37', '23', 'As there seemed to be no chance of this, so she sat on, with closed eyes, and half believed herself in a game of croquet she was now, and she heard was a body to cut it off from: that he had never.', '1979-05-05 03:28:20');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('23', '62', '34', 'Alice\'s first thought was that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'I\'ve often seen them so often, you know.\' It was, no doubt: only Alice did not notice this last.', '1975-04-12 17:19:36');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('24', '13', '89', 'Alice after it, \'Mouse dear! Do come back with the clock. For instance, suppose it doesn\'t matter which way it was sneezing and howling alternately without a porpoise.\' \'Wouldn\'t it really?\' said.', '1977-03-30 15:28:59');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('25', '40', '65', 'Alice said; \'there\'s a large cauldron which seemed to follow, except a tiny golden key, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard it say to this: so.', '1995-05-09 11:20:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('26', '59', '89', 'For the Mouse was bristling all over, and she hurried out of sight; and an old crab, HE was.\' \'I never said I didn\'t!\' interrupted Alice. \'You must be,\' said the Gryphon. \'Of course,\' the Gryphon.', '2019-02-28 21:00:51');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('27', '100', '64', 'Hatter. This piece of it had grown up,\' she said to herself. At this moment the King, \'unless it was a large one, but the cook was leaning over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\".', '2016-02-21 19:10:14');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('28', '4', '83', 'Pat! Where are you?\' said the Cat, and vanished. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a deep voice, \'What are they doing?\' Alice whispered to the part about her.', '1986-01-14 19:32:00');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('29', '83', '14', 'Alice; \'it\'s laid for a minute or two. \'They couldn\'t have wanted it much,\' said the Caterpillar; and it set to work nibbling at the Footman\'s head: it just now.\' \'It\'s the oldest rule in the common.', '2005-07-08 11:28:07');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('30', '13', '72', 'The miserable Hatter dropped his teacup and bread-and-butter, and then dipped suddenly down, so suddenly that Alice had been looking at everything about her, to pass away the moment she felt that it.', '1983-07-23 08:00:36');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('31', '75', '70', 'I was going to begin at HIS time of life. The King\'s argument was, that if something wasn\'t done about it just grazed his nose, and broke to pieces against one of the conversation. Alice replied, so.', '2011-09-04 22:58:22');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('32', '21', '56', 'And the Gryphon replied rather crossly: \'of course you don\'t!\' the Hatter was the only difficulty was, that if something wasn\'t done about it in her hands, and began:-- \'You are old,\' said the sage,.', '2018-05-18 16:41:01');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('33', '76', '96', 'Two. Two began in a very difficult question. However, at last she stretched her arms folded, frowning like a frog; and both the hedgehogs were out of the sense, and the others took the place where.', '1990-02-16 22:24:57');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('34', '76', '62', 'I wonder if I only knew the meaning of it appeared. \'I don\'t see how he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Owl and the whole cause, and condemn you.', '1994-09-25 11:21:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('35', '43', '100', 'Mouse, turning to Alice, that she still held the pieces of mushroom in her pocket, and pulled out a box of comfits, (luckily the salt water had not noticed before, and she crossed her hands up to.', '1988-10-10 21:18:28');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('36', '33', '60', 'King; and the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, with a little bottle on it, and found quite a new pair of boots.', '2020-05-26 15:03:19');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('37', '59', '69', 'I have to go on with the clock. For instance, if you were me?\' \'Well, perhaps not,\' said Alice as she leant against a buttercup to rest her chin upon Alice\'s shoulder, and it was done. They had a.', '1980-02-29 21:39:21');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('38', '82', '20', 'Said his father; \'don\'t give yourself airs! Do you think I must have got altered.\' \'It is wrong from beginning to write out a history of the trees under which she concluded that it was quite silent.', '2005-09-16 09:52:04');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('39', '3', '94', 'Queen\'s shrill cries to the beginning again?\' Alice ventured to say. \'What is it?\' Alice panted as she had to leave the room, when her eye fell upon a neat little house, and found that it was.', '1980-06-29 08:29:56');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('40', '9', '43', 'Besides, SHE\'S she, and I\'m sure she\'s the best plan.\' It sounded an excellent plan, no doubt, and very angrily. \'A knot!\' said Alice, \'I\'ve often seen a rabbit with either a waistcoat-pocket, or a.', '2001-10-25 07:59:30');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('41', '58', '67', 'White Rabbit was no label this time she found she could remember them, all these changes are! I\'m never sure what I\'m going to shrink any further: she felt a little anxiously. \'Yes,\' said Alice more.', '2003-11-02 18:09:34');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('42', '31', '58', 'Mock Turtle. So she swallowed one of them can explain it,\' said the King. On this the White Rabbit; \'in fact, there\'s nothing written on the top of the edge of her or of anything else. CHAPTER V..', '1993-07-22 14:54:40');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('43', '31', '35', 'Alice. \'Oh, don\'t talk about wasting IT. It\'s HIM.\' \'I don\'t much care where--\' said Alice. \'Of course they were\', said the one who had followed him into the book her sister sat still just as well..', '2008-09-23 09:17:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('44', '41', '14', 'Gryphon, before Alice could speak again. The Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at the great puzzle!\' And she kept on puzzling about.', '1970-11-27 19:58:45');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('45', '48', '53', 'There\'s no pleasing them!\' Alice was more and more puzzled, but she was about a whiting to a snail. \"There\'s a porpoise close behind her, listening: so she began again. \'I should like to be treated.', '2005-11-27 06:00:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('46', '86', '23', 'THESE?\' said the Dormouse, who was talking. Alice could see this, as she had grown so large in the window, she suddenly spread out her hand again, and that\'s very like having a game of croquet she.', '1984-06-26 16:26:11');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('47', '23', '6', 'They were indeed a queer-looking party that assembled on the same as they came nearer, Alice could hardly hear the words:-- \'I speak severely to my right size to do with this creature when I got up.', '2015-01-22 04:44:19');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('48', '78', '98', 'The Queen turned angrily away from him, and said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to remark. \'Tut, tut, child!\' said the Dormouse, after thinking a minute or two, it was addressed to.', '1982-08-21 09:50:59');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('49', '1', '54', 'I\'ve finished.\' So they got settled down again, the Dodo managed it.) First it marked out a history of the teacups as the door between us. For instance, if you could keep it to speak good English);.', '1988-03-02 07:09:28');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('50', '60', '44', 'Alice did not venture to go nearer till she was beginning to feel which way she put her hand again, and all her knowledge of history, Alice had begun to dream that she was a little irritated at the.', '1989-01-24 10:11:20');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('51', '54', '92', 'Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said with some surprise that the meeting adjourn, for the baby, and not to her, still it had finished this short.', '1976-08-06 02:05:50');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('52', '3', '12', 'Then they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to put everything upon Bill! I wouldn\'t be in a furious passion, and went in. The door led right into a tidy.', '1983-03-22 20:23:09');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('53', '61', '85', 'Gryphon replied very readily: \'but that\'s because it stays the same thing as \"I eat what I should be raving mad--at least not so mad as it went. So she called softly after it, \'Mouse dear! Do come.', '2004-08-03 21:59:32');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('54', '32', '64', 'I am, sir,\' said Alice; \'I might as well as she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was the Duchess\'s cook. She carried the pepper-box in her hand, and a.', '2011-12-19 00:09:26');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('55', '78', '41', 'Hatter hurriedly left the court, without even waiting to put down the chimney close above her: then, saying to herself \'That\'s quite enough--I hope I shan\'t go, at any rate: go and get ready to talk.', '2018-08-08 15:17:31');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('56', '6', '36', 'Bill,\' she gave a little queer, won\'t you?\' \'Not a bit,\' said the King. \'I can\'t go no lower,\' said the King repeated angrily, \'or I\'ll have you got in as well,\' the Hatter said, tossing his head.', '2001-11-29 02:55:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('57', '8', '37', 'King. \'It began with the bread-and-butter getting so far off). \'Oh, my poor little thing grunted in reply (it had left off when they had to leave off being arches to do THAT in a soothing tone:.', '2014-05-26 01:50:50');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('58', '94', '38', 'Gryphon hastily. \'Go on with the tea,\' the March Hare, who had meanwhile been examining the roses. \'Off with her face like the right thing to eat the comfits: this caused some noise and confusion,.', '1973-02-27 06:36:17');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('59', '71', '34', 'IN the well,\' Alice said with some severity; \'it\'s very interesting. I never was so small as this is May it won\'t be raving mad--at least not so mad as it is.\' \'I quite agree with you,\' said the.', '1997-11-18 15:39:59');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('60', '52', '19', 'Eaglet. \'I don\'t know where Dinn may be,\' said the Gryphon. Alice did not get hold of anything, but she added, to herself, \'Why, they\'re only a child!\' The Queen smiled and passed on. \'Who ARE you.', '1995-11-20 03:38:07');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('61', '87', '37', 'Duchess, as she spoke. (The unfortunate little Bill had left off quarrelling with the Mouse to tell them something more. \'You promised to tell its age, there was no use in talking to him,\' the Mock.', '1981-09-07 09:47:10');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('62', '41', '9', 'Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the court. All this time the Mouse had changed his mind, and was just in time to see what I say,\' the.', '1999-06-03 03:03:48');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('63', '42', '18', 'Duchess: \'flamingoes and mustard both bite. And the Eaglet bent down its head down, and the baby was howling so much about a whiting before.\' \'I can tell you my history, and you\'ll understand why it.', '2002-12-22 03:42:04');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('64', '6', '43', 'King; and the jury wrote it down \'important,\' and some were birds,) \'I suppose so,\' said Alice. \'Anything you like,\' said the King replied. Here the Queen was to twist it up into hers--she could.', '1988-07-20 07:11:00');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('65', '72', '66', 'Footman, \'and that for the hedgehogs; and in another moment that it was a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the roof. There were doors all round her,.', '1980-03-30 00:03:37');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('66', '87', '25', 'He looked at them with one finger, as he spoke. \'A cat may look at me like a tunnel for some way, and the small ones choked and had come back in a court of justice before, but she could remember.', '1991-03-01 21:30:30');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('67', '58', '89', 'There was nothing on it (as she had never been in a tone of this pool? I am now? That\'ll be a footman in livery, with a teacup in one hand and a piece of evidence we\'ve heard yet,\' said Alice; \'you.', '1980-11-23 05:24:24');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('68', '37', '18', 'And yesterday things went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she walked on in a very respectful tone, but frowning and making faces at him as he said in a.', '1985-10-15 10:22:32');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('69', '73', '68', 'How I wonder what CAN have happened to me! I\'LL soon make you dry enough!\' They all made of solid glass; there was a real nose; also its eyes again, to see anything; then she had got so close to her.', '1988-10-17 12:14:21');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('70', '82', '51', 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar; and it said nothing. \'This here young lady,\' said the Queen. \'It proves nothing of the hall; but, alas! the little thing sat down.', '1998-10-20 12:23:03');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('71', '8', '88', 'And she began nursing her child again, singing a sort of knot, and then turned to the jury. \'Not yet, not yet!\' the Rabbit asked. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t.', '1976-04-09 06:20:55');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('72', '86', '15', 'Alice. The King looked anxiously round, to make ONE respectable person!\' Soon her eye fell on a three-legged stool in the wood,\' continued the Gryphon. \'I mean, what makes them bitter--and--and.', '1972-10-26 04:06:56');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('73', '24', '79', 'Pigeon. \'I can see you\'re trying to box her own ears for having cheated herself in Wonderland, though she looked back once or twice she had plenty of time as she heard one of them bowed low. \'Would.', '1998-06-07 14:08:31');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('74', '53', '95', 'IS that to be found: all she could not think of anything to say, she simply bowed, and took the cauldron of soup off the top of her hedgehog. The hedgehog was engaged in a moment to be no sort of.', '2019-10-24 20:24:31');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('75', '13', '4', 'Alice had no idea what you\'re talking about,\' said Alice. \'And ever since that,\' the Hatter said, turning to Alice: he had to be a very curious to see if she were saying lessons, and began to say it.', '1982-09-22 09:16:36');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('76', '13', '99', 'Alice ventured to taste it, and behind it, it occurred to her ear. \'You\'re thinking about something, my dear, I think?\' \'I had NOT!\' cried the Gryphon, before Alice could speak again. In a little.', '2013-04-19 14:20:48');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('77', '41', '53', 'Gryphon. \'I\'ve forgotten the little creature down, and felt quite strange at first; but she ran with all speed back to her: first, because the Duchess began in a Little Bill It was so large in the.', '2004-07-23 12:23:30');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('78', '8', '82', 'Adventures of hers would, in the sea, though you mayn\'t believe it--\' \'I never thought about it,\' added the Dormouse, without considering at all the time they were nowhere to be seen: she found to.', '2014-12-23 02:33:33');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('79', '71', '14', 'Alice looked down into its mouth again, and that\'s very like a telescope.\' And so she took courage, and went to school every day--\' \'I\'VE been to her, one on each side, and opened their eyes and.', '1991-08-06 17:23:45');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('80', '25', '42', 'This speech caused a remarkable sensation among the bright eager eyes were looking over his shoulder as she ran. \'How surprised he\'ll be when he sneezes; For he can thoroughly enjoy The pepper when.', '2017-12-13 05:07:02');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('81', '79', '11', 'Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'I told you that.\' \'If I\'d been the right way of settling all difficulties, great or small. \'Off.', '1973-07-13 06:42:35');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('82', '67', '36', 'Gryphon. \'--you advance twice--\' \'Each with a soldier on each side to guard him; and near the right house, because the Duchess sang the second thing is to find that she ought not to lie down on.', '1979-11-03 18:30:24');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('83', '100', '3', 'He looked at it again: but he could think of nothing else to say it any longer than that,\' said the King. On this the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said to one of the.', '1989-05-23 12:50:10');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('84', '54', '73', 'Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle said: \'advance twice, set to work, and very soon finished it off. \'If everybody minded their own business!\' \'Ah, well! It means.', '1974-06-19 03:09:14');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('85', '71', '35', 'Between yourself and me.\' \'That\'s the first witness,\' said the Caterpillar seemed to be no use denying it. I suppose it were nine o\'clock in the world am I? Ah, THAT\'S the great puzzle!\' And she.', '2014-12-14 05:38:05');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('86', '24', '78', 'Why, she\'ll eat a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at them with large round eyes, and half of them--and it belongs to a shriek, \'and just.', '1971-03-28 08:50:34');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('87', '22', '10', 'CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the entrance of the jurymen. \'No, they\'re not,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\'.', '1995-12-07 11:39:50');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('88', '93', '46', 'The Fish-Footman began by taking the little golden key was too slippery; and when she had plenty of time as she could, and waited till she had somehow fallen into the wood. \'It\'s the Cheshire Cat.', '1978-02-28 09:15:01');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('89', '88', '45', 'Good-bye, feet!\' (for when she had found the fan and the two sides of it, and on it except a little sharp bark just over her head impatiently; and, turning to Alice an excellent plan, no doubt, and.', '1987-10-28 02:33:09');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('90', '40', '1', 'Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the wood--(she considered him to be seen: she found it very much,\'.', '2009-07-30 02:57:17');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('91', '49', '52', 'I should think you can have no sort of lullaby to it in her haste, she had succeeded in getting its body tucked away, comfortably enough, under her arm, and timidly said \'Consider, my dear: she is.', '1988-02-14 07:01:45');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('92', '100', '89', 'Hardly knowing what she was beginning to end,\' said the King, going up to her daughter \'Ah, my dear! Let this be a footman because he taught us,\' said the Caterpillar angrily, rearing itself upright.', '1983-02-08 08:33:20');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('93', '5', '7', 'Footman remarked, \'till tomorrow--\' At this moment Alice appeared, she was trying to put down her anger as well go back, and barking hoarsely all the jelly-fish out of its little eyes, but it all.', '2010-04-16 21:22:05');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('94', '71', '75', 'The great question certainly was, what? Alice looked all round her, about four feet high. \'I wish I hadn\'t cried so much!\' said Alice, \'it\'s very interesting. I never was so much contradicted in her.', '2006-10-31 06:44:45');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('95', '20', '95', 'Alice thought she had quite a chorus of voices asked. \'Why, SHE, of course,\' said the Hatter: \'I\'m on the bank, with her head! Off--\' \'Nonsense!\' said Alice, very loudly and decidedly, and he wasn\'t.', '1985-07-17 22:53:16');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('96', '17', '99', 'King, and he called the Queen, and in another moment, splash! she was now about a foot high: then she looked up, and there was enough of it at all,\' said the Mouse heard this, it turned round and.', '1972-02-16 03:14:44');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('97', '6', '83', 'Alice as it didn\'t much matter which way she put them into a graceful zigzag, and was just beginning to get in?\' \'There might be some sense in your knocking,\' the Footman went on again: \'Twenty-four.', '1978-09-27 21:09:33');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('98', '35', '6', 'Dinn may be,\' said the Eaglet. \'I don\'t think they play at all know whether it was done. They had not long to doubt, for the garden!\' and she jumped up in a louder tone. \'ARE you to learn?\' \'Well,.', '1992-10-02 22:52:01');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('99', '86', '88', 'But there seemed to follow, except a tiny little thing!\' said the Mouse, in a game of play with a knife, it usually bleeds; and she hurried out of a globe of goldfish she had expected: before she.', '1976-01-27 05:35:10');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`) VALUES ('100', '79', '56', 'White Rabbit as he spoke, \'we were trying--\' \'I see!\' said the Mouse, sharply and very nearly carried it out loud. \'Thinking again?\' the Duchess said to herself, \'Why, they\'re only a pack of cards,.', '1988-11-26 04:39:14');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('1', '27', '73', 'Est odio ut aut mollitia omnis id vel. Ipsam itaque quod aut modi sed quidem ratione. Soluta numquam illo laboriosam laboriosam pariatur ipsam et. Fugit natus laboriosam in similique rem.', 0, '1974-05-03 08:53:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('2', '50', '53', 'Eum est inventore autem eos mollitia quis voluptatem qui. Sit est a autem qui earum. Architecto magni dolores beatae cumque quo. Eaque temporibus et aliquam omnis accusantium.', 0, '2008-07-22 22:12:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('3', '98', '37', 'Amet dolore tempora ratione earum dolor necessitatibus qui necessitatibus. Quaerat quia odit quia quidem. Voluptatem aut et eaque labore rem nihil. Reprehenderit doloribus labore quis ducimus nam et possimus. Nihil temporibus consequatur at at autem.', 1, '1998-08-12 20:33:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('4', '78', '7', 'Expedita consequatur sunt unde voluptatem. In aliquid optio laudantium quos qui. Dolorum laborum voluptatem at provident.', 1, '2017-06-05 11:25:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('5', '31', '11', 'Voluptas quia est quis voluptas autem ut odit. Qui ut voluptas dolorem ducimus voluptatibus corporis. Necessitatibus qui nisi rerum sequi cumque qui cum.', 0, '1982-06-24 13:07:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('6', '95', '85', 'Sit modi voluptate qui exercitationem. Autem accusantium magnam aut molestiae. Magni eveniet dolor minima nihil quae ipsa ex. Eos rem enim qui debitis quaerat.', 1, '1971-07-18 05:03:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('7', '84', '85', 'Qui et sunt atque et numquam ipsa nihil quam. At et eos velit nisi sapiente. Et maiores sequi harum nihil. Velit corporis sed in voluptatibus.', 0, '1977-10-04 04:37:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('8', '82', '93', 'Est non aut alias ut vel. Neque consequatur a delectus voluptatem aut eum ex. Qui quo facilis eos dolore maiores.', 0, '2007-01-07 07:30:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('9', '4', '88', 'Quisquam voluptates numquam est. Quae sint repudiandae tempora minima repudiandae. Consequatur fugiat eveniet deleniti culpa qui.', 0, '1978-01-08 18:39:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('10', '90', '32', 'Ut dicta est aut modi. Amet non culpa quos non. Ab necessitatibus commodi voluptatum et dolorem non.', 1, '1988-01-18 21:26:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('11', '81', '26', 'Ipsa voluptatum quo et incidunt est. Sit quas excepturi sint veniam sint ex.', 1, '2000-02-06 15:42:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('12', '88', '33', 'Dignissimos cupiditate fugit et facere omnis omnis. Consequuntur voluptas cupiditate harum ut quos inventore ipsam. Est deleniti nemo eum nobis quo quia quibusdam. Facere delectus asperiores voluptatem quae sit magnam.', 1, '1998-05-31 14:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('13', '39', '36', 'Nesciunt autem nihil eum maxime autem sunt. Eos quo et culpa totam quis dicta. Quod nesciunt omnis nemo ullam quo.', 0, '1981-05-10 23:21:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('14', '52', '43', 'Eius nihil quis enim debitis itaque. Et enim autem cum quis vel nesciunt eum ab. Omnis voluptatem quod odit quam asperiores quo. Quae rerum voluptates nihil doloribus necessitatibus repudiandae minus.', 0, '1970-09-24 22:19:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('15', '88', '35', 'Eius nostrum et qui facilis quis consequatur sit. Consectetur mollitia expedita hic nulla tempore. Quidem velit occaecati sapiente provident magnam numquam qui.', 1, '2019-10-13 08:16:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('16', '28', '14', 'Laboriosam sed consequatur reprehenderit doloribus praesentium quis voluptatem. Voluptatibus inventore expedita libero asperiores. Quidem et ut dolor eligendi ut. Velit aut quia quidem et.', 1, '1977-12-02 10:19:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('17', '7', '78', 'Ut unde sequi a optio voluptatem. Et quaerat et iure officia recusandae. Qui voluptatem culpa officiis quibusdam quia. Veritatis quas molestiae voluptas et voluptate.', 0, '1987-01-21 06:58:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('18', '67', '4', 'Eos in aperiam esse non libero. Aut dolore non ut debitis iste. Autem nisi voluptatibus velit veritatis nihil beatae dolorum aut. Est et sit quod quaerat est eum cupiditate.', 1, '1970-11-10 09:14:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('19', '14', '44', 'Omnis asperiores aut laborum fuga aperiam eius. Sunt fugit aut et. Voluptas rerum odit reiciendis necessitatibus libero vel.', 1, '2014-12-05 12:44:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('20', '11', '44', 'Corporis assumenda id modi expedita quisquam id. Ducimus dolores odio eum impedit. Est est et omnis laborum. Quia voluptatem aspernatur odit voluptas laboriosam.', 0, '1973-03-12 09:42:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('21', '55', '5', 'A distinctio neque quo. Ut sit amet odit fuga cumque natus. Voluptatum sint totam perspiciatis facilis est nam. Quia voluptas sapiente ea.', 1, '1993-06-20 09:15:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('22', '29', '38', 'Atque autem rerum aut est voluptatem perspiciatis. Ut et at minus ut dolorem accusantium. Aut sed numquam odit voluptatem consequatur delectus maiores. Eum maxime est blanditiis minus.', 0, '2012-08-10 18:03:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('23', '89', '10', 'Assumenda ut aliquam ut mollitia quasi. Illo quibusdam non possimus vitae praesentium beatae illo. Voluptatum dolorem ea asperiores aut sit eaque. Dolor esse eligendi inventore laboriosam totam aliquam.', 0, '1977-01-01 04:21:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('24', '30', '93', 'Incidunt ad repellendus est id ut tempore. Voluptatem nihil saepe doloribus quia. Minus consequatur non distinctio ex. Sapiente voluptate est non cupiditate excepturi aspernatur.', 0, '2001-11-13 06:24:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('25', '98', '20', 'Est architecto pariatur enim aut. Dicta rerum est reprehenderit quasi voluptas. Accusantium eaque dicta accusamus nostrum iusto.', 0, '2018-07-04 18:13:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('26', '24', '79', 'Eveniet dignissimos quasi quis amet exercitationem. Accusamus rem possimus in ullam eos ab architecto occaecati. Qui inventore ipsum eius eos repellendus. Culpa provident harum beatae officia cumque magni exercitationem.', 0, '1997-08-04 11:36:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('27', '45', '12', 'Earum in ipsam et et similique. Sint culpa placeat blanditiis odit. Vero distinctio molestiae corporis esse et ut ab. Doloribus quae placeat voluptatibus quos sint delectus similique vitae.', 0, '1987-12-25 22:21:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('28', '11', '83', 'Est quos error dolor ducimus cumque est. Eum aut rerum ipsam ea. Nisi rerum unde consequatur sed accusamus. Saepe dolore velit itaque harum maxime.', 0, '2007-04-04 16:24:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('29', '47', '63', 'Aperiam enim dolorem vel eos. Qui dolorem aliquam accusantium et hic cum. Facilis nihil doloribus voluptate dolorem explicabo aut assumenda animi. Est vel consequatur unde soluta maiores optio. Omnis totam et ipsum minima eos sit possimus.', 0, '1999-03-14 18:21:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('30', '26', '34', 'Saepe et corporis illum in culpa ut. Eos autem quas ipsam ipsam nobis. Cumque similique aliquid sed consequatur aliquam nostrum nobis. Dolorem aspernatur aspernatur atque id.', 1, '1980-08-11 14:13:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('31', '97', '54', 'Ea assumenda architecto temporibus ipsam officiis. Aliquid deleniti voluptatibus ipsum id temporibus maiores ea. Aut omnis expedita ut qui perspiciatis.', 0, '2010-04-17 00:23:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('32', '48', '3', 'Explicabo architecto laboriosam assumenda ipsam corrupti consequatur beatae. Itaque qui fugit unde praesentium harum. Consequatur dolore aut asperiores eaque est qui aut. Eveniet quibusdam et maxime quia eius ut ducimus. Voluptatum assumenda modi vero aliquam illum eligendi in.', 0, '1986-05-20 22:07:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('33', '31', '14', 'Hic esse incidunt ut non architecto asperiores sequi. Ipsam vel distinctio non doloremque sit ut voluptatem. Dolor laudantium repellat earum eveniet est.', 1, '1988-02-05 09:24:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('34', '7', '45', 'Ad molestiae laborum perspiciatis dicta dolor at incidunt voluptatem. Rerum autem vel ea voluptas porro. Facilis ab eos voluptates molestiae ut consequatur.', 1, '2014-02-01 22:39:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('35', '58', '18', 'Dicta adipisci illum exercitationem ex molestias. Sunt vero porro hic est sit. Voluptatem voluptas dolor dolores laudantium qui velit ut.', 1, '1990-09-06 18:50:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('36', '88', '12', 'Ullam aperiam iste sequi qui. Architecto est ipsum aut voluptatem quos.', 0, '1985-06-01 19:55:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('37', '22', '16', 'Rerum eum dolorem saepe et eum fuga velit dolorem. Totam aut aut et exercitationem nihil.', 0, '1998-11-19 06:35:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('38', '50', '11', 'Sed occaecati vero fugiat. Et ut voluptates ducimus fuga. Voluptatum optio voluptates et quibusdam quia aut ex. Aut velit nam ut nobis tempore qui.', 0, '1993-09-22 01:24:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('39', '26', '80', 'A repellat enim atque sint eligendi magnam. Officia ab deleniti dolores iure atque facilis dolore. Ea aut totam dolores perspiciatis nihil.', 0, '1987-07-16 22:44:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('40', '4', '24', 'Itaque eaque aperiam ratione veniam. In eius aperiam quia quia. Quisquam ipsam aperiam voluptatum dolorem a est. Totam minus deserunt asperiores aut ut.', 0, '2009-01-19 11:52:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('41', '99', '28', 'Ducimus reiciendis ut voluptatem dolor non autem aspernatur autem. Voluptatem rerum et sunt in in. Enim culpa suscipit sed ut dolorem nam ut qui.', 1, '2006-10-05 05:29:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('42', '2', '43', 'Qui beatae ut assumenda rerum mollitia. Ad nobis dicta harum est asperiores vel delectus. Eligendi explicabo dolor possimus vel sed.', 0, '1990-11-01 21:12:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('43', '39', '13', 'Rerum quod deleniti consequuntur beatae ut natus. Modi harum illo saepe quisquam harum ex fugit. Id nam et molestiae eligendi saepe modi. Repellat similique explicabo molestias praesentium perferendis ut.', 1, '2003-04-26 05:44:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('44', '26', '85', 'Pariatur placeat dolorum distinctio et facilis aliquid laudantium. Dolorum harum ad cupiditate autem omnis laborum. Deserunt placeat excepturi eaque.', 1, '1997-06-07 13:48:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('45', '75', '52', 'Voluptas consectetur ratione maiores quam. Ullam dicta debitis ex voluptas porro eos debitis.', 1, '2016-08-29 01:57:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('46', '19', '71', 'Sit sint et alias neque aspernatur est et. Voluptatibus similique sint ipsam incidunt sunt saepe. Eos consectetur cumque repudiandae sint ut dolorum. Odit maiores veniam sed consequuntur ipsa.', 1, '1999-03-04 05:39:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('47', '5', '66', 'Et atque perspiciatis temporibus aut eius eveniet. Unde quasi facere dolorem consequatur et eum nam quibusdam. Unde aliquam aspernatur incidunt possimus hic.', 0, '2005-08-13 16:29:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('48', '74', '36', 'Consequatur sunt et illo odio quia. Iste repellendus numquam amet sint ullam.', 1, '2017-07-21 09:20:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('49', '80', '81', 'Error est tempore sit et. Ex necessitatibus labore voluptatum iste saepe. Saepe animi exercitationem ut qui eligendi accusantium. Voluptatibus labore qui fuga dolorem ut eos.', 0, '1987-03-06 05:03:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('50', '80', '37', 'Magnam assumenda accusantium rerum nulla ut accusamus itaque. Consequatur natus cupiditate et quo. In quas eum quia ea ut dolorem similique. Officiis sed ratione sit et atque laudantium repellendus.', 1, '2015-05-10 13:07:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('51', '98', '68', 'A aut quod et iure animi et nam. Beatae laudantium nesciunt consequuntur sed inventore voluptatem earum. Quod debitis tempore alias ipsam optio. Et unde est et beatae nobis. Iusto nihil exercitationem ullam consequatur et atque consequatur.', 1, '2000-12-16 09:39:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('52', '49', '20', 'Voluptatem impedit quisquam ut. A labore reiciendis ea quia tempore et quam. Dolores magnam est autem at excepturi non.', 1, '2016-11-28 11:36:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('53', '83', '99', 'Reiciendis distinctio voluptatem occaecati itaque. Eum suscipit commodi nostrum ea eveniet et eveniet. Non dicta quo in dolorum.', 0, '2009-01-29 17:41:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('54', '31', '9', 'Voluptas numquam alias tenetur. Aut sed autem ut culpa ea illo. Quod eligendi sequi molestias cumque ut at. Consequatur eum veritatis ullam consectetur sed.', 0, '1990-07-15 02:07:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('55', '78', '34', 'Iure molestiae est ut. Explicabo est vero recusandae quisquam dolores et quia. Perferendis eos debitis laboriosam pariatur modi voluptate nemo.', 0, '1990-12-05 02:47:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('56', '32', '77', 'Voluptatibus dolores perspiciatis dolorum debitis ut vero cupiditate. Suscipit quidem corporis eius laborum molestias nobis. Amet voluptatibus saepe doloribus quia dolorem quia ullam.', 1, '2011-03-07 10:53:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('57', '61', '33', 'Consequuntur veritatis nemo exercitationem quo et facilis. Eos accusantium aut architecto quisquam esse. Deleniti earum perspiciatis est. Non sint autem error porro ullam.', 0, '1975-08-02 18:49:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('58', '19', '100', 'Perspiciatis cumque nemo veniam assumenda voluptatem. Alias aut sequi atque id ut quam. Necessitatibus aut provident rerum voluptas et cum sed. Consequatur officiis sunt ea et impedit et reprehenderit.', 0, '2006-03-29 23:52:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('59', '45', '45', 'Et et nihil libero. Tempora optio illo possimus rerum laborum aut cupiditate veniam. Reiciendis fugit esse dicta dolorem.', 1, '2015-03-01 12:22:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('60', '84', '20', 'Exercitationem ipsum corrupti aperiam et. Ut a ipsum consequuntur est. Nesciunt repellat id sit impedit. Dolore ut provident et et vitae.', 1, '1989-05-04 21:37:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('61', '96', '2', 'Deserunt dolor qui qui ipsa id. Itaque quod recusandae omnis sunt sequi qui. Dignissimos ipsam quo expedita qui culpa voluptate.', 0, '1979-10-21 06:49:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('62', '90', '1', 'Maxime optio voluptas optio reiciendis. Corrupti eaque enim incidunt mollitia. Et iste fugit ullam quaerat error. Saepe repellendus qui saepe nobis iusto aspernatur.', 0, '1973-03-29 14:05:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('63', '68', '64', 'In hic velit in excepturi fugit asperiores facilis. Quo doloremque velit fuga consectetur magni ea iure. Rem doloremque corporis dolore.', 1, '2017-07-05 15:10:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('64', '36', '47', 'A qui occaecati dolorum quibusdam. Et sed voluptatem quaerat dolorem accusantium fugit. Libero ipsam sapiente qui iure molestias ipsam.', 1, '2020-07-08 16:57:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('65', '44', '15', 'Sit recusandae quas in sint vel. Qui earum corrupti aut quo. Perferendis corrupti aut est sapiente nemo.', 0, '1980-12-06 04:51:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('66', '84', '42', 'Occaecati voluptatibus dignissimos est accusantium totam voluptate explicabo. Ipsum aut corporis vel ullam quos odit. Neque maxime quaerat et sit. Nisi neque laboriosam veniam iste.', 1, '1979-10-27 23:52:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('67', '82', '32', 'Est adipisci sequi ex rerum modi consequatur commodi. Beatae architecto quibusdam suscipit velit. Aut praesentium consequatur dolor ratione in. Est quia dolor eos est nulla.', 1, '2000-08-08 07:55:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('68', '62', '65', 'Nisi veritatis voluptas excepturi adipisci fuga. Et sint sit quibusdam voluptas officiis. Alias cupiditate magni placeat id distinctio sit officiis. Et aut corrupti temporibus temporibus vitae.', 0, '1994-11-16 01:12:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('69', '31', '92', 'Voluptates soluta quibusdam dolores autem adipisci fuga dolor. Ab impedit saepe et omnis et non eligendi. Maxime fugit eos qui iure voluptatem deserunt laboriosam. Voluptates libero sit nam culpa autem provident.', 1, '2013-09-21 19:14:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('70', '74', '8', 'Vel impedit consequuntur rerum. Expedita natus recusandae sint inventore quaerat.', 1, '2002-06-29 15:20:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('71', '26', '5', 'Reiciendis quae velit voluptatem culpa. Dolores asperiores ipsam ad et inventore similique quibusdam. Architecto itaque ex non nisi quisquam voluptatum nam. Quaerat magnam facilis cupiditate perspiciatis voluptatibus harum eos.', 1, '2008-11-17 14:33:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('72', '85', '87', 'Fuga sed vitae inventore et quis dolorem. Sit fuga voluptatibus magnam ut doloremque consequatur voluptatibus. Ut provident illo nisi. Tenetur quidem totam repellendus fuga non aut illo quas.', 1, '1990-09-28 18:08:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('73', '38', '3', 'Aut alias est aut a. Aut aut rerum earum vel sit corporis. Veniam doloribus quia fugiat officiis dicta.', 0, '2007-03-10 21:05:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('74', '86', '83', 'A vel sapiente mollitia sunt tenetur dolores. Asperiores labore doloribus nostrum qui est. Quas explicabo est eos placeat.', 1, '1982-11-24 21:14:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('75', '48', '69', 'Excepturi impedit doloremque nihil architecto nihil fuga. Consequatur est distinctio cum illo. Consequuntur quidem rem consequatur corrupti voluptate voluptatem. Quo pariatur quasi veniam dolores officiis impedit quam. Dolorem nulla pariatur numquam quam repellendus fugiat sit.', 0, '2012-05-03 22:14:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('76', '2', '43', 'Rem nisi quae praesentium. Accusantium quam non et consequuntur at tenetur sequi et.', 1, '1985-10-02 18:32:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('77', '71', '92', 'In ipsum officiis ex quis est. Laudantium recusandae nam molestiae qui voluptatum quaerat sed. Quia eos cumque quaerat eius omnis quaerat nulla. Et in vero et cupiditate modi minima distinctio.', 0, '2003-05-25 20:19:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('78', '43', '38', 'Aliquid quo minima dolorem eveniet rem non. Nobis earum molestias eum consequuntur voluptate quod corrupti. Quo eligendi dolorem adipisci veritatis. Consequatur qui veniam iusto quae.', 1, '2013-01-14 22:10:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('79', '55', '78', 'Neque sed rem ut. Iusto nulla aliquid ut. Officia hic quos sint accusantium modi eum sunt. Earum porro vero tempore maxime placeat.', 0, '2002-05-25 09:26:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('80', '84', '99', 'Molestiae ex et sequi quod molestias voluptas. Tenetur et enim et blanditiis. Beatae officiis impedit alias.', 0, '2004-12-10 03:44:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('81', '93', '68', 'Ullam modi ut autem autem aut est ullam. Veniam autem quo voluptatum reprehenderit. Velit in porro aut doloribus vero et ut. Velit ex quasi quis qui quis adipisci.', 0, '1991-07-06 23:25:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('82', '40', '75', 'Distinctio accusantium dolores eum beatae ratione. Est officia assumenda eum. Deserunt quisquam est nihil aut et voluptate. Tenetur fugiat delectus adipisci.', 0, '1987-07-17 09:08:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('83', '99', '1', 'Sed exercitationem in ea eos dolorem ut. Pariatur quas dolores minima id. Eum deleniti delectus sunt ipsum id doloribus labore.', 0, '1989-02-05 10:40:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('84', '40', '30', 'Eum cupiditate quia ducimus reprehenderit ut placeat corrupti aperiam. Animi reiciendis veniam quisquam. Delectus reprehenderit labore vero blanditiis eius.', 1, '2002-10-06 20:03:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('85', '93', '13', 'Rerum dicta dolore et placeat sit numquam optio. Sit et aut numquam voluptates enim. Modi vero voluptatem veniam consequuntur assumenda. Recusandae ad ex sequi necessitatibus et amet mollitia.', 1, '1982-02-14 22:44:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('86', '37', '18', 'Ut magni blanditiis eveniet quo vel assumenda. Qui natus rerum quis nesciunt ullam. Eveniet inventore tenetur eaque harum.', 1, '1990-08-09 11:10:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('87', '18', '21', 'Expedita sunt magni laborum omnis qui voluptatem aspernatur. Et deleniti soluta aperiam nesciunt harum aut laudantium. Et dignissimos aut dolorum. Velit mollitia quisquam officia nihil voluptatem.', 1, '1978-07-25 12:29:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('88', '5', '55', 'Animi iste corrupti laboriosam. Officiis error sint quod nobis sapiente odio. Quo ut voluptates rerum at.', 1, '1977-06-19 07:34:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('89', '24', '90', 'Optio assumenda veritatis ea quasi delectus. Perspiciatis autem laudantium ex repellendus. Culpa non ut earum ea corporis. Explicabo cumque sit quod laborum impedit.', 0, '1990-05-30 12:19:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('90', '38', '71', 'Eum placeat sed magni in praesentium earum a omnis. Vero qui perspiciatis blanditiis et velit quia. Magni ut recusandae et fugit laboriosam.', 0, '2005-10-04 13:02:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('91', '59', '39', 'Omnis corporis accusamus voluptate nihil et quo. Vel dolor quo veniam explicabo possimus provident non. Amet beatae veritatis reiciendis ut sint quasi nihil.', 0, '2004-11-25 05:02:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('92', '14', '29', 'Laborum esse deserunt aut commodi corporis sequi aperiam. Quasi iste quis exercitationem. Non dignissimos deleniti quae voluptas eum ut.', 0, '2013-09-28 21:00:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('93', '30', '56', 'Asperiores commodi et animi illo. Veniam quidem tempore et debitis velit ad ut. Sit nostrum exercitationem hic sed. Laudantium ut dolorem corporis mollitia voluptas aut.', 0, '1988-08-09 19:11:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('94', '67', '85', 'Neque laudantium adipisci et eius repellat. Rem et qui illo voluptas ipsum ut. Quos tempora ut illo ducimus laboriosam fugit.', 0, '1987-01-06 00:24:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('95', '34', '51', 'Non odit recusandae in sunt cum earum omnis. Quis inventore voluptatem repudiandae sint. Nisi molestiae vitae magni recusandae earum autem temporibus. Quas suscipit dolores libero omnis illo veritatis dolorum ea. Voluptatum voluptatem velit sed voluptas.', 1, '1977-09-20 06:14:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('96', '83', '27', 'Accusantium ut soluta dolor nihil earum. Distinctio distinctio eum rerum. Beatae qui velit ipsum. Est consequuntur recusandae incidunt nihil et quia.', 1, '1980-06-21 15:49:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('97', '18', '23', 'Rerum ratione repellendus enim reprehenderit eos eveniet nostrum odit. Pariatur praesentium expedita reiciendis ex eligendi. Quis et ad cumque architecto.', 1, '1985-08-29 19:21:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('98', '2', '17', 'Quaerat delectus quod at eos corrupti. Laboriosam dolorem excepturi quis. Accusantium dicta voluptas dolor debitis nihil ea voluptas assumenda.', 1, '2007-04-24 17:48:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('99', '23', '42', 'Porro ut in aliquid alias sint vero dolorem. Dolor autem ducimus assumenda accusantium voluptatibus sed dolorem voluptas. Dolore dolorem praesentium ducimus maiores molestiae dignissimos. Et ut impedit qui consequuntur est.', 0, '1993-04-23 09:10:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('100', '46', '16', 'Perspiciatis optio quis suscipit. Aut est voluptate occaecati veniam. Quisquam debitis deleniti sint quia. Beatae consequuntur rerum maiores aut.', 1, '1985-11-14 17:26:35');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('1', '1', 'Modi molestiae dolor quas molestias ut distinctio fugiat. Dignissimos magni voluptates non nam odit dolorem aspernatur sequi. Iure ut dolor aut dolorem qui et officia.', '2001-07-07 21:08:54');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('2', '2', 'Consequatur nisi praesentium et. Tempora quam saepe pariatur alias. Atque suscipit voluptatum deserunt perferendis et ut.', '1991-05-11 12:19:14');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('3', '3', 'Ut veniam perspiciatis quis doloribus autem ab beatae. Aut voluptatibus voluptas nulla officiis labore dolore. Adipisci sit nam saepe est.', '1971-09-16 16:25:07');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('4', '4', 'Odio ea modi provident ut molestias. Aut omnis similique quaerat aut sit facere. Est et voluptatem qui quae sequi. Illo qui dolorum eos eum delectus qui perferendis.', '1977-03-06 17:08:17');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('5', '5', 'Sunt voluptatem perspiciatis ea voluptatem et sunt voluptas placeat. Qui tenetur dignissimos esse quae nihil. Odit quia dignissimos dolorum autem. Dolor quibusdam ab et numquam quas autem labore.', '1999-10-24 08:27:42');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('6', '6', 'Aliquid et est sequi qui aut deleniti eius. Nihil quas eum expedita et repellendus at. Id ullam voluptas quia porro ut ut itaque officiis.', '1984-10-21 20:51:56');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('7', '7', 'Eaque perspiciatis eos quidem eos ipsum tempore enim rerum. Laborum fuga quo quasi sed est est odio.', '1991-07-09 16:20:01');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('8', '8', 'Ut voluptas laudantium doloribus magnam et similique voluptates omnis. Est quia ut voluptatem tenetur quam sunt. Sint velit repellendus odit excepturi inventore.', '1970-02-03 06:07:20');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('9', '9', 'Eligendi id maxime in et sed animi enim debitis. Eaque et eius eum id. Sint omnis ut quae quo nulla.', '1972-08-22 14:04:21');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('10', '10', 'Quia nisi sint nulla libero. Animi quasi nisi aliquid quis. Iste rerum ullam excepturi molestias eos. Aut ad est corporis consequuntur expedita ad enim dicta.', '2005-01-25 17:28:00');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('11', '11', 'Veniam voluptate vel fugit in adipisci iusto rerum. Qui voluptatem aperiam enim earum aut ut odio.', '2000-03-25 06:01:55');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('12', '12', 'Et magni beatae tenetur saepe ut. Est veniam odio hic sint qui odit. Sit consequatur esse eaque aut velit architecto. Quae quasi at provident consequatur earum sunt corporis.', '1985-02-27 19:20:48');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('13', '13', 'Impedit consequatur quo voluptas sed perferendis cumque adipisci. Eum id qui atque placeat doloribus doloremque. Quod omnis suscipit mollitia voluptas dolorum. Illo dolores maxime cumque ducimus quo deleniti.', '1998-08-05 15:38:17');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('14', '14', 'Corporis sed non sint ipsa sapiente sequi consectetur. Voluptas ipsam nostrum eos reprehenderit est sequi. Et et eum voluptas tempora eos consequatur.', '1973-07-14 07:52:41');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('15', '15', 'Aliquam facilis veniam rem sint dignissimos. Qui in totam vero. Nihil itaque et fugit accusamus. Rerum consectetur nihil laboriosam nemo qui.', '2002-07-08 04:15:50');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('16', '16', 'Omnis eaque voluptate quam alias cum. Molestiae odio saepe vero perspiciatis maxime. Sunt amet deserunt veniam dolorem.', '1993-12-05 17:57:23');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('17', '17', 'Eaque ad harum in ea. Placeat voluptatibus explicabo vitae. Voluptas placeat iusto recusandae cupiditate aliquam magni voluptatem.', '2013-05-16 01:32:15');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('18', '18', 'Tempora et eos ut rerum vel provident sit ut. Quibusdam eum accusamus ut quam.', '1978-07-28 18:00:51');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('19', '19', 'Necessitatibus sit et est voluptatem. Alias rerum qui at nisi. Ratione dolores assumenda nisi et qui voluptates.', '1976-09-27 14:37:53');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('20', '20', 'Nesciunt maxime id dolorem non nisi. Omnis voluptates a sapiente laborum est accusamus a.', '2020-03-21 05:43:46');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('21', '21', 'Quis quis dolor dolorum nam reprehenderit facilis ex. Enim autem quis suscipit. Ea est quo vel velit laborum odit. Quidem odio itaque nobis cum in omnis.', '2013-05-09 04:25:27');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('22', '22', 'Eos libero est natus facere et. Mollitia dolor ea qui et libero praesentium voluptas. Id et distinctio sequi temporibus dolorem magni ducimus quas.', '1978-07-17 00:13:57');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('23', '23', 'Aut totam corporis quidem iste accusamus. Est sit labore aut laboriosam eaque dicta possimus. Modi perspiciatis et aut quis deserunt impedit et. Deleniti voluptas qui corrupti dolorem quisquam cupiditate.', '2011-11-15 22:08:36');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('24', '24', 'Molestias exercitationem at veniam ad quisquam unde est. Et vel ut laboriosam numquam exercitationem nihil. Neque nisi amet ut ut esse enim. Cum blanditiis voluptatum aut possimus.', '2014-11-01 23:54:17');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('25', '25', 'Eos ea quis vitae consequuntur dolorum sunt. Provident est sunt quae. Omnis voluptas voluptatem vero ducimus aperiam. Vel eaque excepturi ut exercitationem nostrum debitis.', '2010-08-04 10:24:36');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('26', '26', 'Expedita laudantium ipsa unde. Animi asperiores qui suscipit aut quisquam nostrum quod. Recusandae perspiciatis enim possimus nesciunt repudiandae. Dolores aut natus perspiciatis libero.', '1981-03-14 23:16:35');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('27', '27', 'Voluptatem aperiam sunt repellendus beatae voluptate qui dolorum quia. Ut ab aut laborum eaque quod fugiat. Qui ratione laboriosam id autem. Quae eum non cum quo dolorem sit. Ut occaecati quaerat aut similique eum.', '2010-01-28 06:15:17');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('28', '28', 'Sunt ut tempora vero non qui sunt. Velit qui quod ullam recusandae eligendi amet ut. Corrupti consequatur dolore quis eius iste.', '1972-07-14 15:01:43');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('29', '29', 'Eum dolorum omnis omnis doloribus impedit est modi. Deleniti in incidunt vero aut et unde. Accusantium enim dolor dolorum quibusdam quam sint. Rerum eos dolorem quod ex.', '1979-05-30 17:22:44');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('30', '30', 'Quo deleniti delectus optio fugit et sed quis. Aliquam beatae enim impedit. Vitae sequi rerum fuga incidunt suscipit. Dolor quasi labore quidem aperiam id.', '1970-02-25 17:24:59');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('31', '31', 'Excepturi qui eos totam et quam impedit. Corporis dolores aperiam hic mollitia maiores.', '1991-01-06 04:31:02');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('32', '32', 'Corrupti ut qui omnis aut nisi consequatur. Et qui assumenda soluta molestiae qui aspernatur. Dicta est eligendi qui culpa. Provident perspiciatis ipsa libero id eveniet vel.', '1988-11-20 04:06:46');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('33', '33', 'Quia eos cum culpa explicabo accusamus. Et facere dolores nihil fugiat. Maxime reprehenderit cum aliquid.', '1977-12-08 07:00:30');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('34', '34', 'Voluptatem velit magnam itaque officiis et. Et quia sed laborum quos ut.', '1987-03-06 09:07:39');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('35', '35', 'Dignissimos id sit quia laborum minima odio officia. Quo ea labore dolor ea. Doloremque et eos quia non exercitationem.', '1993-01-05 13:29:27');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('36', '36', 'Rerum qui aut eum dolorem tenetur ducimus quia. Dolorum temporibus velit debitis fuga sequi possimus qui. Rem explicabo cumque animi quae. Qui sint qui quia suscipit explicabo.', '1986-05-04 08:26:13');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('37', '37', 'Amet et sit nulla quos eligendi deserunt qui minima. Accusantium reprehenderit et quam voluptatibus non et dolorum. Quasi voluptatem vel corrupti est sed voluptatem.', '1975-10-05 22:28:30');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('38', '38', 'Vero dolorum perspiciatis velit architecto ut enim. Ad ipsa sed id natus sequi. Et impedit aut eos quae quis.', '1987-04-28 23:29:04');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('39', '39', 'Est dolorem quibusdam ex et. Sint dolorum eius voluptatibus dolore corrupti voluptatem.', '1987-11-06 20:35:45');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('40', '40', 'Consequatur ipsa aliquam laboriosam architecto non. Non eos repellendus laboriosam iure voluptatem ipsam tempora. Iusto delectus numquam ipsum ut.', '2008-05-24 22:33:18');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('41', '41', 'Omnis voluptas modi placeat ad labore. Similique ipsa nostrum sunt laboriosam non. Fugiat eius eaque esse et. Eum in ut ut hic deserunt aut.', '2008-12-26 13:02:15');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('42', '42', 'Quos ut possimus accusamus totam rerum. Dolores voluptatum ut ab. Ab commodi a perspiciatis deserunt omnis.', '2014-06-28 12:06:57');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('43', '43', 'Nemo quo necessitatibus commodi qui tempore placeat iste. Est odit voluptatem deleniti sed et aut quae. Distinctio rerum consequatur ipsam expedita repudiandae. At autem ut sint.', '2004-02-22 20:52:39');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('44', '44', 'Voluptatem nulla repudiandae recusandae rerum expedita autem sunt. Sint possimus tempora est accusantium similique inventore doloribus esse. Enim sint reiciendis laboriosam ad voluptatibus. Voluptatem quidem reiciendis blanditiis iure.', '2011-08-29 13:44:45');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('45', '45', 'Assumenda numquam consectetur saepe similique. Necessitatibus temporibus quasi sit excepturi eaque. Est dolores laudantium voluptatem minima. Molestiae veritatis deserunt debitis et culpa.', '2016-02-02 09:36:52');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('46', '46', 'Quas et porro reiciendis unde maxime eius quia. Eaque animi minus explicabo animi est. Ea ratione quo cupiditate necessitatibus quo delectus sed. Sint et voluptatum consequatur dolore voluptas quidem.', '2014-02-24 08:42:06');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('47', '47', 'Odio laboriosam iure deleniti esse ipsum dolores qui rem. Ea accusamus enim aspernatur numquam reprehenderit neque id. Quo enim quas perferendis reprehenderit iure et vel. Et nesciunt at ea quia qui ut. Dicta earum quam quas ea sapiente iste eligendi alia', '1993-07-25 19:49:54');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('48', '48', 'Neque culpa corrupti sint qui dolorum qui dolor. Rerum fugit commodi molestias. Exercitationem quibusdam perferendis id voluptatibus dolorem.', '1987-07-15 15:01:12');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('49', '49', 'Blanditiis sunt eius fugiat modi error culpa. Similique saepe a minus. Distinctio repudiandae qui omnis doloribus maiores vitae amet laboriosam. Voluptatem a laudantium qui soluta et provident fugit.', '2017-09-12 22:15:07');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('50', '50', 'Et sit nesciunt in aut. Est esse est autem molestias perspiciatis impedit nulla. Omnis et excepturi in recusandae mollitia. Et est sed ut reprehenderit quia exercitationem eligendi.', '1986-06-28 02:51:49');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('51', '51', 'Iste fugiat dolorem debitis a et est ut. Dolorem fuga deleniti ut accusantium nobis in et. Sequi nemo aut dicta dignissimos dolores. Ut nulla nisi aut explicabo.', '1983-12-06 17:36:53');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('52', '52', 'Repudiandae qui enim animi eos id voluptatibus. Ea qui voluptas voluptas. Veritatis vel nemo molestiae aspernatur aperiam error aperiam itaque. Corrupti sunt in explicabo.', '1994-07-02 14:37:22');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('53', '53', 'Sapiente non voluptas deserunt cumque blanditiis quo. Voluptatum qui itaque ipsam necessitatibus. Autem id ex in rerum dolores hic.', '1970-07-14 11:06:50');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('54', '54', 'Excepturi natus architecto recusandae aut consequatur aut et. Molestiae voluptatem dolorum libero quisquam quia. Nihil odio maiores vero officiis.', '2014-01-12 14:45:18');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('55', '55', 'Quis voluptas architecto recusandae eos et iusto. Quos officiis quia corrupti autem at amet et exercitationem. Voluptatum atque voluptas ut laudantium. Et quia a aut cumque minima ab.', '1974-03-13 18:43:19');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('56', '56', 'Tenetur architecto consequuntur quia provident repudiandae dolores. Architecto consectetur molestiae nam nulla molestias aut. Aut sapiente cumque earum nisi quod et. Impedit perferendis repudiandae dolor et blanditiis ut voluptas numquam.', '2014-07-22 18:26:16');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('57', '57', 'Corporis aut facere dolorem labore dolorem qui et quia. Laudantium labore quia eos asperiores doloremque vel. Et qui pariatur maxime modi autem quod.', '1990-09-01 14:04:36');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('58', '58', 'Et id odit placeat et minus eos fugiat. Nemo et doloremque consequuntur sint nam velit. Pariatur qui dolore iste quis porro id. Est temporibus nobis incidunt sunt in qui.', '1982-11-07 10:19:50');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('59', '59', 'Qui mollitia maiores rerum aspernatur eius totam natus aut. Doloribus tenetur veniam molestias cupiditate. Quia consectetur accusamus est ut minus nihil quia nihil. Eaque ut quo enim doloribus.', '2006-08-04 03:53:44');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('60', '60', 'Id impedit vitae ducimus nesciunt sint velit aut. Soluta dicta et enim tempora. Sequi delectus molestiae et. Molestias ullam qui eos laudantium dolores corporis qui. Dolor tempore consequatur sint beatae est iste illo.', '1998-02-25 06:48:28');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('61', '61', 'Iste architecto velit quo voluptatem qui dolorum ea tempore. Et eius dolorum nemo autem dignissimos ea unde. Est quam molestiae quae.', '1993-05-28 10:14:55');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('62', '62', 'Provident quia qui saepe hic. Pariatur perferendis et consequatur natus et nostrum ea. Qui et sed aut inventore maiores vel amet.', '2017-02-22 09:57:42');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('63', '63', 'Cupiditate consectetur qui magni harum deleniti dolorem dolore. Necessitatibus voluptas doloribus sit eos. Cum dolor deleniti facere unde ut dolores repellat.', '1980-01-20 10:12:14');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('64', '64', 'Eligendi mollitia illo aspernatur ipsam assumenda vel provident. Tempore incidunt quo sequi nemo hic dolorem. Nam provident ipsam debitis ut unde cum.', '2020-04-03 16:16:01');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('65', '65', 'Cum veritatis aliquid veniam delectus odit quis. Est enim error expedita vel. Dolorem eveniet est sequi voluptatem sint voluptates. Quis aspernatur aut praesentium aut.', '1986-10-30 00:25:36');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('66', '66', 'Hic aut nesciunt eos cupiditate velit. Qui eligendi molestias omnis quibusdam ipsum. Deleniti libero voluptatem molestias quasi. Atque minus at optio sapiente.', '1987-03-03 01:00:52');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('67', '67', 'Delectus libero quod reprehenderit vitae. Labore voluptatem fugit omnis repellendus enim assumenda ullam. Asperiores ipsum nisi asperiores sed.', '1989-09-04 19:50:39');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('68', '68', 'Aut voluptatem reiciendis facere iusto. Cumque ipsum sed iusto atque dolores. Optio voluptas et vitae accusantium voluptatibus numquam.', '1977-05-22 07:27:33');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('69', '69', 'Soluta qui consequatur alias eius ducimus quos quisquam. Dolorem magni culpa voluptatem ea. Voluptatem doloremque sapiente quo molestiae ut.', '1994-12-05 18:18:42');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('70', '70', 'Debitis iste qui dolore magni. Unde totam rerum ipsam et. Animi fugit accusamus commodi perferendis esse sunt quia. Labore quis quo quia ratione laborum. Ducimus beatae quaerat saepe.', '1995-10-23 12:06:12');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('71', '71', 'Quia et quia repellendus accusantium nostrum sint ex consectetur. In voluptates id neque tempora dicta. Id et expedita et autem eligendi optio aut aspernatur.', '2001-11-28 12:07:47');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('72', '72', 'Impedit voluptatum qui cupiditate totam corporis fugiat fugit quis. Numquam perspiciatis sunt aut aliquam molestiae voluptatem. Autem esse quaerat dolor eum eos.', '1988-12-10 06:17:01');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('73', '73', 'Magni earum quia quia ut sequi voluptatem amet omnis. In placeat ad alias sunt sed deleniti et. Aliquid quibusdam est ducimus. Dignissimos officia magni placeat eligendi.', '1977-05-09 14:45:48');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('74', '74', 'Nostrum est provident libero ex quisquam et est. At velit voluptas similique rerum excepturi. Quaerat perspiciatis porro quis. Voluptatibus et autem odio natus sunt quam. Repellendus aut quia aut quae impedit nulla tenetur.', '1987-09-22 13:36:00');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('75', '75', 'Laboriosam ea similique porro ut dolorem et. Sint aut magni in qui eveniet. In qui autem maxime incidunt voluptas dolorem.', '1978-03-13 18:01:02');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('76', '76', 'Porro in consequatur a assumenda. Ratione fugit facere illo alias magni et. Ipsam nisi quasi dolorem et ea.', '2002-02-06 19:31:53');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('77', '77', 'Architecto recusandae velit aut est cumque accusantium quaerat. Dolorem tempore enim mollitia. Consectetur totam et beatae.', '1982-08-04 11:57:01');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('78', '78', 'Vero inventore dolore quo officia sunt repellat dolores incidunt. Qui ea molestiae eum fugit sunt. Ut eligendi nihil accusamus aut deserunt totam delectus.', '1993-02-15 17:25:29');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('79', '79', 'Eligendi id commodi sit modi unde. Et ut tempora veniam ratione suscipit voluptatem deleniti. Sapiente officia facere quod suscipit consequatur. Voluptate ipsum ut animi.', '1983-03-27 04:41:35');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('80', '80', 'Aut quam aut non perferendis doloremque aliquid. Fugiat sunt dolores sint repellat. Nisi vitae ipsa dicta eos est facere aperiam. Sint et tenetur molestiae ullam et voluptatem perferendis. Mollitia voluptas temporibus repudiandae vel.', '2018-04-10 09:00:57');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('81', '81', 'Temporibus ipsum quaerat est facilis molestias fugiat. Fugit nam rerum est. Quod sequi est voluptas nulla omnis.', '1971-04-08 02:00:06');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('82', '82', 'Qui et sit sequi ex vero saepe. Ut tenetur est expedita exercitationem illum accusamus dolor. Dolor voluptas quidem quia.', '1990-11-14 04:24:05');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('83', '83', 'Pariatur nobis suscipit dolor adipisci aut. Aut nam tenetur ut nemo praesentium et. Reprehenderit quod unde tempore aliquid ipsa.', '1986-02-28 12:21:38');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('84', '84', 'Maiores non sint at minima. Nam odit dignissimos aut aperiam consequatur repellendus. Autem quia soluta ad repellendus. Quam minus perspiciatis incidunt assumenda occaecati harum deserunt voluptates.', '1976-08-25 14:28:29');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('85', '85', 'Odio quo laboriosam ipsum. Eos saepe aspernatur nesciunt eligendi. Dolorem amet dolorum consequatur ut quae placeat. Deserunt a quas qui veritatis.', '1973-07-09 03:04:05');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('86', '86', 'Consequatur et consectetur aut rerum. Aut soluta eum molestiae quia saepe. Voluptatem omnis reprehenderit harum. Saepe quia ratione voluptatum dicta. Culpa et sint distinctio possimus at sunt et mollitia.', '2009-02-28 09:23:57');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('87', '87', 'Repellat dolores impedit exercitationem dolor qui. Ad consequatur quasi quasi beatae quia fugiat consequatur. Dolorum reiciendis expedita qui voluptatem facilis.', '2013-07-05 04:57:43');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('88', '88', 'Aliquam consequatur consequatur error accusamus voluptatem. Assumenda consectetur dolores asperiores cupiditate ut. Velit tempora nam dolorum nihil tempora quae nostrum. Voluptas alias sit molestiae quasi quidem iure ea provident. Tempore reiciendis ut ne', '1978-07-21 21:34:43');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('89', '89', 'Dolore nesciunt enim numquam quae aut tempore ut. Et delectus aperiam minima necessitatibus aut. Et impedit a ut.', '1977-07-31 23:27:09');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('90', '90', 'Est inventore consequatur ea voluptas. Tenetur suscipit ut natus aut harum. Perferendis eum occaecati saepe sequi ea tempora omnis.', '1984-01-08 05:35:37');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('91', '91', 'Laborum at quo nesciunt quae ipsum corrupti ut. Ipsam enim ut dolorem accusantium esse dolores vel. Est praesentium fugit reprehenderit est suscipit quos. Debitis repellendus voluptatem nam aliquam tenetur.', '1982-02-16 22:19:50');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('92', '92', 'Molestias maxime nostrum vitae cum alias quod sequi. Aliquid reiciendis amet et dolore qui vel. Deleniti autem quam iure explicabo vel laboriosam repellat.', '2014-09-18 13:26:37');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('93', '93', 'Ea possimus doloremque necessitatibus reiciendis exercitationem. Sapiente eaque corrupti qui nulla cum velit voluptate. Occaecati soluta eum sit quasi voluptatum. Illum distinctio laborum natus id doloremque debitis.', '1970-10-24 12:16:38');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('94', '94', 'Molestiae et enim beatae optio earum culpa. Dolore et at exercitationem aut. Voluptatem possimus rerum nihil nihil vero dolor molestiae.', '2007-12-27 07:15:47');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('95', '95', 'Soluta voluptatem molestiae aut unde. Voluptates consequatur amet in placeat dolor qui quia. Consequatur molestiae animi in quaerat rerum.', '1993-11-26 15:58:28');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('96', '96', 'Excepturi dolor pariatur pariatur. Laboriosam saepe dolorem qui alias aut. Enim non facilis eos aut vel.', '2001-02-17 17:44:19');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('97', '97', 'Ex voluptates ipsam vel. Autem hic quos sunt ut temporibus in. Vero quia accusantium repellendus eaque.', '2004-08-20 22:36:00');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('98', '98', 'Unde sunt vitae sit officia qui rerum consequatur. Quasi quia dolorem sed in placeat nesciunt. Est optio veniam repellat eaque dignissimos.', '1974-11-11 06:17:03');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('99', '99', 'In modi et aut facere. Quidem quae ratione magni sequi amet.', '1988-05-15 03:29:35');
INSERT INTO `photos` (`id`, `user_id`, `description`, `created_at`) VALUES ('100', '100', 'Non et quibusdam dolor sequi autem quia cupiditate maxime. Sed dolores quibusdam suscipit. Provident minus mollitia aperiam sit ut nisi odit.', '1973-06-07 09:03:24');


#
# TABLE STRUCTURE FOR: settings
#

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `can_see` enum('all','friends_of_friends','friends') COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_comment` enum('all','friends_of_friends','friends','nobody') COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_message` enum('all','friends_of_friends','friends') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('1', 'friends', 'all', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('2', 'all', 'nobody', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('3', 'friends', 'all', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('4', 'all', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('5', 'friends_of_friends', 'all', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('6', 'friends_of_friends', 'nobody', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('7', 'friends', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('8', 'friends_of_friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('9', 'friends_of_friends', 'friends_of_friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('10', 'all', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('11', 'friends_of_friends', 'friends_of_friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('12', 'all', 'friends_of_friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('13', 'friends', 'friends_of_friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('14', 'all', 'friends_of_friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('15', 'friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('16', 'friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('17', 'all', 'all', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('18', 'all', 'all', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('19', 'friends_of_friends', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('20', 'all', 'nobody', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('21', 'friends', 'nobody', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('22', 'friends_of_friends', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('23', 'friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('24', 'friends_of_friends', 'nobody', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('25', 'all', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('26', 'all', 'friends_of_friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('27', 'friends', 'all', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('28', 'all', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('29', 'friends', 'nobody', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('30', 'friends', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('31', 'friends', 'nobody', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('32', 'friends', 'friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('33', 'friends_of_friends', 'all', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('34', 'friends_of_friends', 'friends_of_friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('35', 'friends_of_friends', 'all', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('36', 'friends', 'nobody', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('37', 'all', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('38', 'friends_of_friends', 'friends_of_friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('39', 'friends', 'friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('40', 'friends', 'all', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('41', 'all', 'friends_of_friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('42', 'friends', 'friends_of_friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('43', 'friends_of_friends', 'nobody', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('44', 'all', 'all', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('45', 'friends_of_friends', 'all', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('46', 'friends', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('47', 'friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('48', 'friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('49', 'friends_of_friends', 'all', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('50', 'friends', 'friends_of_friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('51', 'all', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('52', 'friends_of_friends', 'nobody', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('53', 'all', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('54', 'friends', 'all', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('55', 'all', 'nobody', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('56', 'friends_of_friends', 'friends_of_friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('57', 'friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('58', 'friends', 'friends_of_friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('59', 'friends_of_friends', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('60', 'friends', 'all', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('61', 'all', 'friends_of_friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('62', 'friends', 'friends_of_friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('63', 'all', 'all', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('64', 'friends_of_friends', 'friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('65', 'friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('66', 'friends_of_friends', 'friends_of_friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('67', 'friends', 'nobody', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('68', 'friends_of_friends', 'nobody', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('69', 'all', 'friends_of_friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('70', 'all', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('71', 'friends_of_friends', 'nobody', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('72', 'all', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('73', 'friends', 'friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('74', 'friends_of_friends', 'nobody', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('75', 'friends', 'friends_of_friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('76', 'friends', 'all', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('77', 'friends_of_friends', 'friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('78', 'friends', 'all', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('79', 'all', 'nobody', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('80', 'friends_of_friends', 'all', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('81', 'friends_of_friends', 'nobody', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('82', 'all', 'all', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('83', 'friends', 'nobody', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('84', 'all', 'friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('85', 'all', 'friends_of_friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('86', 'all', 'nobody', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('87', 'friends_of_friends', 'friends_of_friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('88', 'friends_of_friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('89', 'all', 'friends', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('90', 'friends_of_friends', 'friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('91', 'friends_of_friends', 'nobody', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('92', 'all', 'friends_of_friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('93', 'friends_of_friends', 'friends_of_friends', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('94', 'friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('95', 'friends_of_friends', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('96', 'all', 'all', 'friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('97', 'all', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('98', 'all', 'friends', 'friends_of_friends');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('99', 'friends_of_friends', 'all', 'all');
INSERT INTO `settings` (`user_id`, `can_see`, `can_comment`, `can_message`) VALUES ('100', 'all', 'friends', 'friends_of_friends');

