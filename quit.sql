-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: quit
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` mediumtext NOT NULL,
  `col2` mediumtext NOT NULL,
  `col3` mediumtext NOT NULL,
  `col4` mediumtext NOT NULL,
  `col5` mediumtext NOT NULL,
  `col6` mediumtext NOT NULL,
  `col7` mediumtext NOT NULL,
  `col8` mediumtext NOT NULL,
  `col9` mediumtext NOT NULL,
  `col10` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'  CMS QuiT (Quick Tables) предназначена для создания редактируемых сайтов-таблиц. Причём, изменению поддаётся как содержимое, так и структура этих таблиц.','  Составные части:\r\n  1) HTTP-сервер;\r\n  2) База данных.\r\n  Ключевой особенностью этой CMS является полное отсутствие файлов (за исключением исполняемого файла HTTP-сервера). Все таблицы (как системные, так и созданные пользователем) располагаются в базе данных (MySQL). Таким образом, редактирование производится непосредственно из браузера. Установка производится моментально, т.к. для работы данной CMS не требуется наличие ни HTTP-сервера, ни PHP-модуля.\r\n  Доступ к таблицам осуществляется с помощью двух рядов кнопок в верхней части каждой страницы сайта. Верхний ряд - системные таблицы, нижний - таблицы пользователя. Так же, ко всем таблицам можно обращаться по системному имени через адресную строку. Например, адрес этой страницы: http://botinform.com:7770/about. Эту ссылку можно разместить на любом другом сайте.\r\n','  Системные таблицы:\r\n  1) server_info - информация о сервере;\r\n  2) all_tables - перечень всех существующих в базе таблиц;\r\n  3) tab_info - код и свойства таблиц;\r\n  4) tab_columns - код и свойства столбцов таблиц;\r\n  5) tab_dynamic - таблица для определения ячейки типа \"выборка\";\r\n  6) tab_selects - таблица для определения ячейки типа \"выбор\".','  Основные свойства CMS, такие как: \r\n  - URL\r\n  - порт\r\n  - по-умолчанию открываемая таблица\r\n  - стандартная ширина столбцов и высота строк\r\n  - минимальная версия программы для доступа к текущей базе данных\r\nзадаются в таблице server_info.\r\n  Удалить новую таблицу можно в all_tables.\r\n  В таблице tab_info можно поменять такие свойства, как:\r\n  - поддерживаемые функции для ячеек таблицы\r\n  - HTML-код таблицы\r\n  - цвет границы\r\n  - подписи и расположение управляющих кнопок\r\n  - тип таблицы (вертикальная/горизонтальная)\r\n  - выравнивание содержимого ячейки по вертикали\r\n  Таблица tab_columns отвечает за такие свойства столбцов, как:\r\n  - тип\r\n  - заголовок\r\n  - HTML-код заголовка\r\n  - HTML-код ячеек\r\n  - ширина\r\n  - порядковый номер\r\n  - порядок сортировки\r\n  - искать в данном столбце или нет\r\n  - скрыть/показать столбец\r\n  Таблицы tab_dynamic и tab_selects задают значения для типов ячеек \"Выборка\" и \"Выбор\" соответственно. Т.е., если некоторый столбец в таблице имеет тип \"Выборка\", эта таблица и этот столбец должны присутствовать в таблице tab_dynamic (поля \"Таблица\", \"Столбец\"). Два возможных варианта:\r\n  - если значением заданного столбца являются имена столбцов другой таблицы, устанавливается флаг \"Поля\" таблицы tab_dynamic и задаётся поле текущей таблицы, значением которого является id другой таблицы\r\n  - если же значением является само содержимое столбца другой таблицы, то флаг \"Поля\" остаётся пустым, далее задаются  поля \"Таблица выборки\" (другая таблица), \"Столбец индекса\" (как правило, id) и \"Столбец выборки\" (столбец, значения которого будет принимать редактируемая ячейка данной таблицы)\r\n  Для типа \"Выбор\" достаточно добавить данную таблицу и столбец в tab_selects и в поле \"Содержимое выбора\" задать возможные варианты значений.','  Для добавления новой таблицы нажмите кнопку \"Добавить таблицу\" внизу этой страницы. Далее нажмите \"Новая таблица\" и задайте свойства нужные свойства (можно задать:\r\n  - название кнопки таблицы\r\n  - расположение полей (вертикально/горизонтально)\r\n  - отображать кнопку вверху страницы или нет\r\n  - системная/обычная таблица\r\n  - системное имя таблицы (имя в базе данных, только латиница и цифры)\r\n  После задания выше перечисленных свойств, нажмите \"Далее\".\r\n  Теперь можно создать необходимое количество столбцов таблицы и их свойства. Для добавления одного столбца нажмите \"Добавить столбец\". Основные свойства столбца, которые желательно задать явно, это:\r\n  - имя\r\n  - ширина\r\n  - порядковый номер\r\n  - порядок сортировки\r\n  - тип\r\n  Если Вы задали все необходимые свойства таблице, нажмите \"Готово\". Добавлять новые строчки в таблицу можно нажатием \"+\".','  Для того, чтобы изменить содержимое ячейки таблицы кликните на ней и произведите необходимые изменения. Для внесения изменений поле должно быть доступно для редактирования (иметь тип \"Редактор\").','  Возможно задать следующие типы ячеек:\r\n  - Текст (обычный нередактируемый текст без оформления)\r\n  - Редактор (поле ввода для текста)\r\n  - Галочка\r\n  - Выбор (выбор одного из заданных значений, см. описание выше)\r\n  - Картинка\r\n  - Кнопка\r\n  - Да/Нет\r\n  - Фиксатор (редактируемое поле, недоступное после ввода текста)\r\n  - Выборка (значение ячейки некоторой таблицы, см. описание выше)\r\n  - Пароль (скрытый текст)\r\n  - Стиль (нередактируемый текст с сохранением оформления)\r\n  - Поле (поле ввода в одну строчку)','','','');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_tables`
--

DROP TABLE IF EXISTS `all_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_tables` (
  `tab_name` varchar(128) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_button` mediumtext NOT NULL,
  `tab_title_name` mediumtext NOT NULL,
  `tab_system` int(11) NOT NULL DEFAULT '0',
  `tab_show` int(11) NOT NULL DEFAULT '1',
  `delete_button` mediumtext,
  PRIMARY KEY (`tab_name`),
  KEY `tab_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_tables`
--

LOCK TABLES `all_tables` WRITE;
/*!40000 ALTER TABLE `all_tables` DISABLE KEYS */;
INSERT INTO `all_tables` VALUES ('about',64,'<input type=\"button\" value=\"О программе\" onclick=\"location.href=&#039;http://%s/about&#039;\" />','О программе',0,1,''),('all_tables',4,'<input type=\"button\" value=\"all_tables\" onclick=\"location.href=\'http://%s/all_tables\'\" />','Все таблицы',1,1,''),('new_table',7,'<input type=\"button\" value=\"new_table\" onclick=\"location.href=\'http://%s/new_table\'\" />','Колонки новой таблицы',1,0,''),('new_table_info',6,'<input type=\"button\" value=\"new_table_info\" onclick=\"location.href=\'http://%s/new_table_info\'\" />','Добавить таблицу',1,0,''),('pictures',1,'<input type=\"button\" value=\"Картинки\" onclick=\"location.href=\'http://%s/pictures\'\" />','Картинки',0,1,''),('server_info',5,'<input type=\"button\" value=\"server_info\" onclick=\"location.href=\'http://%s/server_info\'\" />','Сервер',1,1,''),('system_log',61,'<input type=\"button\" value=\"Планы\" onclick=\"location.href=&#039;http://%s/system_log&#039;\" />','Планы',1,1,''),('tab39471470',43,'<input type=\"button\" value=\"Пробная таблица\" onclick=\"location.href=&#039;http://%s/tab39471470&#039;\" />','Пробная таблица',0,1,''),('tab7520264',35,'<input type=\"button\" value=\"Справка\" onclick=\"location.href=&#039;http://%s/tab7520264&#039;\" />','Справка',1,0,''),('tab_columns',3,'<input type=\"button\" value=\"tab_columns\" onclick=\"location.href=\'http://%s/tab_columns\'\" />','Колонки таблиц',1,1,''),('tab_dynamic',62,'<input type=\"button\" value=\"tab_dynamic\" onclick=\"location.href=&#039;http://%s/tab_dynamic&#039;\" />','Выборка',1,1,''),('tab_info',2,'<input type=\"button\" value=\"tab_info\" onclick=\"location.href=\'http://%s/tab_info\'\" />','HTML-код таблиц',1,1,''),('tab_selects',49,'<input type=\"button\" value=\"tab_selects\" onclick=\"location.href=&#039;http://%s/tab_selects&#039;\" />','Выбор',1,1,''),('users',68,'<input type=\"button\" value=\"Пользователи\" onclick=\"location.href=&#039;http://%s/users&#039;\" />','Пользователи',1,1,'');
/*!40000 ALTER TABLE `all_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new_col_name` varchar(128) NOT NULL,
  `new_col_type` int(11) NOT NULL DEFAULT '1',
  `new_col_size` int(11) NOT NULL DEFAULT '4',
  `new_col_html_code` mediumtext NOT NULL,
  `new_col_html_hat` mediumtext NOT NULL,
  `new_col_hat` mediumtext NOT NULL,
  `new_col_num` int(11) NOT NULL DEFAULT '1',
  `new_col_hidden` int(11) NOT NULL DEFAULT '0',
  `new_col_default_insert` mediumtext NOT NULL,
  `new_col_fix_size` int(11) NOT NULL DEFAULT '0',
  `new_col_sort` int(11) NOT NULL DEFAULT '0',
  `new_col_group` int(11) NOT NULL DEFAULT '0',
  `new_col_search` int(11) NOT NULL DEFAULT '0',
  `new_col_select_value` mediumtext NOT NULL,
  `new_col_dynamic_tab_id` int(11) NOT NULL,
  `new_col_dynamic_col_id` mediumtext NOT NULL,
  `new_col_dynamic_col_name` mediumtext NOT NULL,
  `new_col_dynamic_desc` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
INSERT INTO `new_table` VALUES (6,'',1,10,'','','',1,0,'',0,0,0,0,'',0,'','',0),(7,'',1,10,'','','',1,0,'',0,0,0,0,'',0,'','',0);
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table_info`
--

DROP TABLE IF EXISTS `new_table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_table_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new_tab_name` varchar(128) NOT NULL,
  `new_tab_public_name` mediumtext NOT NULL,
  `new_table_save_button` mediumtext NOT NULL,
  `new_table_add_button` mediumtext NOT NULL,
  `new_table_is_system` int(11) NOT NULL DEFAULT '0',
  `new_table_head` mediumtext NOT NULL,
  `new_table_end` mediumtext NOT NULL,
  `new_table_tab_begin` mediumtext NOT NULL,
  `new_table_tab_end` mediumtext NOT NULL,
  `new_table_col_begin` mediumtext NOT NULL,
  `new_table_col_end` mediumtext NOT NULL,
  `new_table_http_head` mediumtext NOT NULL,
  `new_table_default_insert` mediumtext NOT NULL,
  `new_table_type` int(11) NOT NULL DEFAULT '0',
  `new_table_is_shown` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table_info`
--

LOCK TABLES `new_table_info` WRITE;
/*!40000 ALTER TABLE `new_table_info` DISABLE KEYS */;
INSERT INTO `new_table_info` VALUES (5,'tab123981193','','<input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" />','<input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /><p align=center><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;delete_row&#039;)\" value=\"Удалить строчку\" /></p><p align=center><input type=\"button\" form=\"mega_form\" onClick=\"clear_tabs(&#039;next_table&#039;)\" value=\"Добавить таблицу\" /></p>',0,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Новая таблица</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"delete_row\" name=\"delete_row_mode\" value=\"yes\" />','</body>\r\n</html>','<table border=1 bordercolor=\"#505050\" align=center>','</table>','<tr>\r\n','</tr>\r\n','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: Win7\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','',0,1);
/*!40000 ALTER TABLE `new_table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `path` varchar(512) NOT NULL,
  `eng_words` varchar(2048) DEFAULT NULL,
  `rus_words` varchar(2048) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  `updated` int(11) NOT NULL DEFAULT '0',
  `md5h` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (322,'my_picture.jpg','d:\\folder','key12 55','ключ','2013-04-21 19:23:57',NULL,0,NULL),(324,'новый_файл.jpg','d:\\folder','new,file,word','новый,файл','2013-04-23 03:58:15','2013-04-23 14:17:01',0,NULL),(330,'it_works!','d:\\123.jpg','all words','ключики','2013-04-24 02:30:18',NULL,0,NULL),(332,'хех.jpg','c:\\путь\\к\\файлу','keyword','описание','2013-04-27 18:38:23',NULL,0,NULL),(333,'pic.jpg','e:\\path','key','описание по-русски','2013-11-28 14:14:20',NULL,0,NULL),(334,'новая_картинка.jpg','c:\\путь\\к\\картинке','something,Linux,Windows','что-то такое','2014-05-07 18:41:59',NULL,0,NULL),(335,'picture.png','/home/User/pics','picture','картинка','2015-11-22 09:44:23',NULL,0,NULL);
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_info`
--

DROP TABLE IF EXISTS `server_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(256) NOT NULL,
  `default_index` varchar(128) NOT NULL,
  `col_width` int(11) NOT NULL DEFAULT '20',
  `col_width_min` int(11) NOT NULL DEFAULT '12',
  `addr_default` varchar(256) NOT NULL,
  `version` varchar(256) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_info`
--

LOCK TABLES `server_info` WRITE;
/*!40000 ALTER TABLE `server_info` DISABLE KEYS */;
INSERT INTO `server_info` VALUES (1,'botinform.asuscomm.com:7770','about',12,10,'botinform.asuscomm.com:7770','1.1.x');
/*!40000 ALTER TABLE `server_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_log`
--

DROP TABLE IF EXISTS `system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` mediumtext NOT NULL,
  `col2` mediumtext NOT NULL,
  `col3` mediumtext NOT NULL,
  `version` mediumtext NOT NULL,
  `release_date` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log`
--

LOCK TABLES `system_log` WRITE;
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
INSERT INTO `system_log` VALUES (1,'Редактирование таблиц при помощи самой программы','0','3','',''),(2,'Картинки','0','3','',''),(3,'Пользователи','1','2','',''),(4,'Сжатие при передаче','0','1','',''),(5,'Удаление отдельных строк (осталось сделать удаление строк для горизонтальных таблиц)','1','3','1.1.3','09.10.2014'),(6,'Поиск','0','3','',''),(7,'Портировать на Linux (осталось сделать перекодировку)','1','2','1.1.6','21.11.2015'),(8,'Встроенная система резервного копирования и восстановления','0','0','',''),(9,'SSL/HTTPS','0','0','',''),(10,'Контроль работы сервера (перезапуск при останове)','0','0','',''),(11,'Журнал операций','0','0','',''),(12,'Поддержка большинства полей HTTP-заголовков (ошибки, перенаправление и т.п.)','0','0','',''),(13,'Добавить тип поля \'Пароль\'','2','1','0.x.x','17.09.2014'),(14,'Объединение ячеек','0','0','',''),(15,'Добавить поддержку кавычек для типа \'Выбор\'','0','1','',''),(16,'Отключаемые границы таблиц','0','0','',''),(17,'Разделители для SQL-запросов (несколько запросов в одном поле input)','0','1','',''),(18,'Протестировать на основных браузерах','1','1','0.x.x',''),(19,'Связи между таблицами (вывод значения поля по ключу)','2','3','0.x.x','17.09.2014'),(20,'Добавить тип поля \'Фиксированный\' (т.е. если ячейка заполнена, она не может быть отредактирована)','2','2','0.x.x','17.09.2014'),(21,'Прикрутить мультиязычность (библиотека iMessage)','0','0','',''),(22,'\"Плавающие\" кнопки (всегда доступные)','0','1','',''),(23,'Добавить тип поля \'Галочка\'','2','2','0.x.x','17.09.2014'),(24,'Настройки выборки при создании таблицы','1','2','0.x.x',''),(25,'Добавить поддержку простых строк (без разделителя ::) для типа \'Выбор\'','2','1','0.x.x','17.09.2014'),(26,'Приоритет сортировки полей','0','1','',''),(27,'Предупреждение перед удалением (подобрать соответствующий код на JavaScript)','0','2','',''),(28,'Добавить NULL (либо пустое поле) для типа \'Выбор\'','0','2','',''),(29,'Добавить NULL (либо пустое поле) для типа \'Выборка\' при связке таблиц, а не только при отображении столбцов','2','3','0.x.x','17.09.2014'),(30,'Сделать автоматическое перемещение к только что добавленной строчке','0','2','',''),(31,'Выборка для вертикальных таблиц','0','3','',''),(32,'Добавить возможность откатить изменения в таблице описания сервера (осталось добавить тестовый запрос)','1','2','0.x.x',''),(33,'Добавить пункт \'Отображать таблицу\' в список таблиц. Системные таблицы (кнопки системных таблиц) отображать над обычными.','2','1','1.1.0','09.10.2014'),(34,'Сделать автоматическое перемещение к только что добавленной таблице','2','1','1.1.4','12.10.2014'),(35,'Добавить параметры ячейки (параметры тега <td>) в таблицу \"Колонки таблиц\"','0','2','',''),(37,'Добавить опцию [-s] (silent - тихий режим) для запускаемой программы','2','0','1.1.1','09.10.2014'),(38,'Добавить опции [-p port] (порт) и [-h] (help - помощь) для запускаемой программы','2','0','1.1.2','09.10.2014'),(39,'Возврат к обычному виду таблицы после повторного нажатия кнопки \"Удалить строчку\"','2','0','1.1.5','29.10.2014'),(40,'BB-коды для возможности добавления ссылок и картинок','0','1','',''),(41,'Добавить тип \'поле\' (поле ввода в одну строчку)','2','0','1.1.7','25.11.2015'),(42,'Безопасность пароля','0','2','',''),(43,'Защита от SQL-инъекций','0','2','',''),(44,'Стили и оформление','0','0','','');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab39322547`
--

DROP TABLE IF EXISTS `tab39322547`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab39322547` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` mediumtext NOT NULL,
  `col2` mediumtext NOT NULL,
  `col3` mediumtext NOT NULL,
  `col4` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab39322547`
--

LOCK TABLES `tab39322547` WRITE;
/*!40000 ALTER TABLE `tab39322547` DISABLE KEYS */;
INSERT INTO `tab39322547` VALUES (1,'','','',''),(2,'','','',''),(3,'','','',''),(4,'','','',''),(5,'','','',''),(6,'','','','');
/*!40000 ALTER TABLE `tab39322547` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab39395339`
--

DROP TABLE IF EXISTS `tab39395339`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab39395339` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab39395339`
--

LOCK TABLES `tab39395339` WRITE;
/*!40000 ALTER TABLE `tab39395339` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab39395339` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab39471470`
--

DROP TABLE IF EXISTS `tab39471470`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab39471470` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` mediumtext NOT NULL,
  `col2` mediumtext NOT NULL,
  `col3` mediumtext NOT NULL,
  `col4` mediumtext NOT NULL,
  `col5` mediumtext NOT NULL,
  `col6` mediumtext NOT NULL,
  `col7` mediumtext NOT NULL,
  `col8` mediumtext NOT NULL,
  `col9` mediumtext NOT NULL,
  `col10` mediumtext NOT NULL,
  `col11` mediumtext NOT NULL,
  `col12` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab39471470`
--

LOCK TABLES `tab39471470` WRITE;
/*!40000 ALTER TABLE `tab39471470` DISABLE KEYS */;
INSERT INTO `tab39471470` VALUES (1,'0','1','','0::Нередактируемый текст\r\n1::Редактируемый текст\r\n2::Галочка\r\n3::Выбор\r\n4::Картинка\r\n5::Кнопка\r\n7::Да/Нет\r\n8::Фиксатор','','69','','17','','5','id','1'),(2,'0','1','0','','2','','','4','onetwo','6','new_tab_name',''),(3,'','1','1','','2','11','2','18','','177','html_col_begin',''),(4,'','0','','','','3','','2','88','89','4',''),(8,'1','','3','','4','','NULL','NULL','','2','7',''),(10,'','1','2','','5','','','15','189','','64','1'),(17,'','','1','','','','1','19','','3','',''),(20,'1','1','3','','4','15','5','16','789665','','version','1'),(21,'1','','2','','3','','35','11','12355554p','','col1','0'),(22,'','','','','','','','17','','','',''),(23,'1','1','','Поле таблицы','4','14','61','17','пароль','55','release_date','1'),(24,'1','','','','','','64','','','','id',''),(25,'','','','','1','','','','','','','1'),(26,'','','','','','','','','','','',''),(27,'1','1','2','ok','4','12','35','12','ккк','','col3','1');
/*!40000 ALTER TABLE `tab39471470` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab7520264`
--

DROP TABLE IF EXISTS `tab7520264`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab7520264` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` mediumtext NOT NULL,
  `col2` mediumtext NOT NULL,
  `col3` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab7520264`
--

LOCK TABLES `tab7520264` WRITE;
/*!40000 ALTER TABLE `tab7520264` DISABLE KEYS */;
INSERT INTO `tab7520264` VALUES (1,'Для того чтобы добавить таблицу, необходимо нажать на кнопку \'Добавить таблицу\'. На открывшейся странице нажать кнопку \'Новая таблица\'. Затем необходимо ввести название новой таблицы и нажать \'Далее\'. После этого можно добавлять столбцы (нажатием кнопки \'Добавить столбец\'). Для каждого столбца необходимо указать название. Так же, можно задать ширину нового столбца, порядковый номер в таблице и пометить данный столбец для поиска.','Нажмите кнопку \'+\'.','Обратитесь к гуру.');
/*!40000 ALTER TABLE `tab7520264` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_columns`
--

DROP TABLE IF EXISTS `tab_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_id` int(11) NOT NULL,
  `col_name` varchar(128) NOT NULL,
  `col_type` int(11) NOT NULL DEFAULT '0',
  `html_code` mediumtext NOT NULL,
  `html_hat` mediumtext NOT NULL,
  `col_hat` mediumtext NOT NULL,
  `col_size` int(11) NOT NULL DEFAULT '10',
  `col_num` int(11) NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '0',
  `col_sort` int(11) NOT NULL DEFAULT '0',
  `col_search` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_columns`
--

LOCK TABLES `tab_columns` WRITE;
/*!40000 ALTER TABLE `tab_columns` DISABLE KEYS */;
INSERT INTO `tab_columns` VALUES (1,3,'tab_id',9,'<td><textarea form=\"frm\" id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Таблица',5,1,0,1,0),(2,3,'col_num',3,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Номер',3,8,0,1,0),(3,3,'hidden',2,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Скрыть',2,11,0,0,0),(4,3,'col_name',9,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Имя столбца',12,2,0,0,0),(5,3,'html_code',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Код строки',30,4,1,0,0),(6,3,'col_hat',12,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Заголовок',35,6,0,0,0),(7,3,'col_type',3,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Тип столбца',2,3,0,0,0),(8,3,'id',0,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Ключ',4,0,0,0,0),(9,4,'id',1,'<td><textarea form=\'frm\' id=\'%s%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ключ',4,0,0,0,0),(10,4,'tab_name',13,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Имя таблицы',16,1,0,0,0),(11,2,'id',0,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ключ',4,0,0,0,0),(12,2,'tab_id',9,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Код таблицы',4,1,0,0,0),(13,2,'html_head',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Заголовок страницы',80,2,0,0,0),(14,2,'html_end',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Конец страницы',8,3,1,0,0),(15,2,'html_col_begin',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Начало строки',8,6,1,0,0),(16,2,'html_col_end',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Конец строки',8,7,1,0,0),(22,1,'eng_words',12,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Ключевые слова (eng)',30,3,0,0,0),(23,1,'rus_words',12,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Ключевые слова (рус)',30,4,0,0,0),(24,1,'add_time',0,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Время добавления',19,5,0,0,0),(25,1,'change_time',0,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Время изменения',19,6,0,0,0),(26,1,'updated',0,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Обновлён',4,7,1,0,0),(27,1,'md5h',0,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Хэш',16,8,1,0,0),(28,4,'id',0,'<td align=center><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Номер таблицы',4,2,0,0,0),(29,4,'tab_button',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Кнопка',35,3,1,0,0),(30,2,'html_tab_begin',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Начало таблицы',10,4,0,0,0),(31,2,'html_tab_end',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Конец таблицы',8,5,1,0,0),(32,2,'html_buttons',1,'<td><textarea form=\'frm\' id=\'%s_%d\' name=\'%s[%d]\' rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>\r\n','<td align=center><h4>%s</h4></td>\r\n','Кнопки',20,8,0,0,0),(36,5,'id',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ключ',4,0,1,0,0),(37,5,'addr',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Адрес сервера',35,1,0,0,0),(38,5,'default_index',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Таблица по-умолчанию',16,3,0,0,0),(39,5,'col_width',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ширина столбца',8,4,0,0,0),(40,5,'col_width_min',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Минимальная ширина столбца',8,5,0,0,0),(41,3,'html_hat',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Код заголовка',12,5,1,0,0),(42,3,'col_size',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ширина',8,7,0,0,0),(43,3,'col_sort',3,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Сортировка',4,9,0,0,0),(44,7,'id',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ключ',4,0,0,0,0),(45,7,'new_col_type',3,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Тип',10,8,0,0,0),(46,7,'new_col_html_code',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Код строки',10,14,0,0,0),(47,7,'new_col_size',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ширина',10,2,0,0,0),(48,7,'new_col_name',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Имя столбца в БД',10,17,0,0,0),(49,7,'new_col_html_hat',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Код заголовка',10,15,0,0,0),(50,7,'new_col_hat',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Имя столбца',10,1,0,0,0),(51,7,'new_col_num',3,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Номер',10,3,0,0,0),(52,7,'new_col_hidden',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Скрыть',10,6,0,0,0),(53,7,'new_col_default_insert',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Значение по-умолчанию',10,7,0,0,0),(54,7,'new_col_fix_size',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Фиксировать ширину',10,16,0,0,0),(55,7,'new_col_sort',3,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Сортировать',10,5,0,0,0),(56,7,'new_col_group',7,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Группировать',10,18,0,0,0),(57,6,'id',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ключ',4,0,1,0,0),(58,6,'new_tab_name',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Системное имя таблицы в БД',10,15,0,0,0),(59,6,'new_tab_public_name',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Название кнопки таблицы',10,1,0,0,0),(60,6,'new_table_save_button',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Кнопка \"сохранить\"',10,3,1,0,0),(61,6,'new_table_add_button',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Кнопка \"+\"',10,4,1,0,0),(62,6,'new_table_is_system',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center width=20><h4>%s</h4></td>\r\n','Системная таблица (показывать кнопку вверху)',10,6,0,0,0),(63,6,'new_table_head',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Заголовок страницы',10,7,1,0,0),(64,6,'new_table_end',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Конец страницы',10,8,1,0,0),(65,6,'new_table_tab_begin',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Начало таблицы',10,9,1,0,0),(66,6,'new_table_tab_end',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Конец таблицы',10,10,1,0,0),(67,6,'new_table_col_begin',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Начало строки',10,11,1,0,0),(68,6,'new_table_col_end',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Конец строки',10,12,1,0,0),(69,6,'new_table_http_head',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','HTTP-заголовок',10,13,1,0,0),(70,6,'new_table_default_insert',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Новая строка',10,14,1,0,0),(71,6,'new_table_type',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Вертикальная таблица',10,2,0,0,0),(72,2,'vertical',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Вертикальная таблица',10,11,0,0,0),(73,7,'new_col_search',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center width=20><h4>%s</h4></td>\r\n','Искать в этом столбце',10,4,0,0,0),(74,3,'col_search',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Поиск',4,10,0,0,0),(75,4,'tab_title_name',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Внешнее имя таблицы',25,5,0,0,0),(76,4,'tab_system',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Системная таблица',10,6,0,0,0),(89,2,'http_head',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','HTTP-заголовок',10,10,1,0,0),(90,2,'default_insert',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Добавление по-умолчанию',10,9,1,0,0),(91,1,'id',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Ключ',4,0,0,0,0),(92,1,'name',8,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Картинка',20,1,0,0,0),(93,1,'path',8,'<td>\r\n<textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4><font color=\'#00AA00\'>%s</font></h4></td>\r\n','Путь',20,2,0,0,0),(142,35,'col1',8,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Как добавить таблицу',100,1,0,0,0),(143,35,'col2',8,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Как добавить новую строчку в таблицу',100,2,0,0,0),(144,35,'col3',8,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Как что-то поменять в таблице',100,3,0,0,0),(145,35,'id',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Ключ',4,0,1,0,0),(160,4,'delete_button',5,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Удалить',30,8,0,0,0),(197,43,'col1',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','1',10,1,0,0,0),(198,43,'col2',7,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','2',10,1,0,0,0),(199,43,'col3',3,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','3',10,1,0,0,0),(200,43,'col4',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','4',10,1,0,0,0),(201,43,'col5',3,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','5',10,1,0,0,0),(202,43,'col6',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','6',10,1,0,0,0),(203,43,'col7',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','7',10,1,0,0,0),(204,43,'col8',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','8',10,1,0,0,0),(205,43,'col9',10,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','9',5,1,0,0,0),(206,43,'col10',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','10',5,1,0,0,0),(207,43,'col11',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','11',5,1,0,0,0),(208,43,'col12',7,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','12',10,1,0,0,0),(209,43,'id',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Ключ',4,0,1,0,0),(229,49,'tab_id',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Код таблицы',10,1,0,1,0),(230,49,'col_name',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Имя столбца',10,1,0,0,0),(231,49,'value_of_select',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Содержимое выбора',10,1,0,0,0),(232,49,'id',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Ключ',4,0,1,0,0),(233,7,'new_col_select_value',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Значения для выбора',10,9,0,0,0),(280,61,'col1',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Идея',100,1,0,0,1),(281,61,'col2',3,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Реализация',10,4,0,2,0),(282,61,'id',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Ключ',4,0,1,0,0),(283,62,'tab_id',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Таблица',10,1,0,1,0),(284,62,'col_name',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Столбец',15,2,0,1,0),(285,62,'dynamic_tab_id',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Таблица выборки',10,4,0,0,0),(286,62,'dynamic_col_name',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Столбец выборки',15,6,0,0,0),(287,62,'id',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Ключ',4,0,1,0,0),(288,62,'dynamic_col_id',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Столбец индекса',10,5,0,0,0),(289,62,'dynamic_tab_desc',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Поля',10,3,0,0,0),(303,4,'tab_button',5,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Вид кнопки',35,4,0,0,0),(304,7,'new_col_dynamic_tab_id',9,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Выборка (таблица)',10,11,0,0,0),(305,7,'new_col_dynamic_col_id',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Выборка (столбец индекса)',10,12,0,0,0),(306,7,'new_col_dynamic_col_name',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Выборка (столбец выборки)',10,13,0,0,0),(307,7,'new_col_dynamic_desc',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Выборка (столбцы)',10,10,0,0,0),(308,61,'col3',3,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Значимость',10,5,0,2,0),(309,5,'addr_default',8,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Сервер по-умолчанию',10,2,0,0,0),(310,4,'tab_show',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Отображать',10,7,0,0,0),(311,6,'new_table_is_shown',2,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Отображать (показывать кнопку)',10,5,0,0,0),(355,5,'version',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Версия',10,6,0,0,0),(356,61,'version',12,'<td><textarea align=center form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Версия',5,2,0,2,0),(357,61,'release_date',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>\r\n','Дата реализации',10,3,0,2,0),(361,64,'col1',11,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center width=200><h4>%s</h4></td>','Коротко о CMS QuiT',600,1,0,0,0),(362,64,'col2',11,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Особенности',600,2,0,0,0),(363,64,'col3',11,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Структура CMS QuiT',600,3,0,0,0),(364,64,'col4',11,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Редактирование структуры CMS QuiT и таблиц',600,4,0,0,0),(365,64,'col5',11,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Добавление новой таблицы',600,5,0,0,0),(366,64,'col6',11,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Редактирование содержимого таблицы',600,7,0,0,0),(367,64,'col7',11,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Типы ячеек',600,6,0,0,0),(368,64,'col8',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','',600,8,1,0,0),(369,64,'col9',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','',600,9,1,0,0),(370,64,'col10',1,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','',600,10,1,0,0),(371,64,'id',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Ключ',4,0,1,0,0),(384,68,'col1',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','',30,1,0,0,0),(385,68,'col2',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','',30,2,0,0,0),(386,68,'col3',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','',30,5,0,0,0),(387,68,'name',12,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=left><h4>%s</h4></td>','Логин:',10,3,0,0,0),(388,68,'pass',10,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(\'%s_%d\')\">%s</textarea></td>','<td align=left><h4>%s</h4></td>','Пароль:',10,4,0,0,0),(389,68,'id',0,'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>','<td align=center><h4>%s</h4></td>','Ключ',4,0,1,0,0);
/*!40000 ALTER TABLE `tab_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_dynamic`
--

DROP TABLE IF EXISTS `tab_dynamic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_id` int(11) NOT NULL,
  `col_name` mediumtext NOT NULL,
  `dynamic_tab_desc` int(11) NOT NULL DEFAULT '0',
  `dynamic_tab_id` int(11) NOT NULL,
  `dynamic_col_id` mediumtext NOT NULL,
  `dynamic_col_name` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_dynamic`
--

LOCK TABLES `tab_dynamic` WRITE;
/*!40000 ALTER TABLE `tab_dynamic` DISABLE KEYS */;
INSERT INTO `tab_dynamic` VALUES (1,49,'tab_id',0,4,'id','tab_title_name'),(2,3,'tab_id',0,4,'id','tab_title_name'),(3,62,'tab_id',0,4,'id','tab_title_name'),(4,62,'dynamic_tab_id',0,4,'id','tab_title_name'),(5,5,'default_index',0,4,'tab_name','tab_title_name'),(6,2,'tab_id',0,4,'id','tab_title_name'),(8,43,'col6',0,3,'id','col_name'),(9,62,'col_name',1,62,'tab_id','col_name'),(10,62,'dynamic_col_name',1,62,'dynamic_tab_id','col_name'),(12,62,'dynamic_col_id',1,62,'dynamic_tab_id','col_name'),(13,43,'col8',1,43,'id','col1'),(14,3,'col_name',1,3,'tab_id',''),(15,49,'col_name',1,49,'tab_id','id'),(16,7,'new_col_dynamic_tab_id',0,4,'id','tab_title_name'),(17,7,'new_col_dynamic_col_id',1,7,'new_col_dynamic_tab_id',''),(18,7,'new_col_dynamic_col_name',1,7,'new_col_dynamic_tab_id',''),(19,43,'col7',0,4,'id','tab_title_name'),(20,43,'col11',1,43,'col7','tab_name');
/*!40000 ALTER TABLE `tab_dynamic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_info`
--

DROP TABLE IF EXISTS `tab_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_id` int(11) NOT NULL,
  `html_head` mediumtext NOT NULL,
  `html_end` mediumtext NOT NULL,
  `html_tab_begin` mediumtext NOT NULL,
  `html_tab_end` mediumtext NOT NULL,
  `html_col_begin` mediumtext NOT NULL,
  `html_col_end` mediumtext NOT NULL,
  `html_buttons` mediumtext NOT NULL,
  `http_head` mediumtext NOT NULL,
  `default_insert` mediumtext NOT NULL,
  `vertical` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_info`
--

LOCK TABLES `tab_info` WRITE;
/*!40000 ALTER TABLE `tab_info` DISABLE KEYS */;
INSERT INTO `tab_info` VALUES (1,1,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Картинки</title>\r\n<script type=\"text/javascript\" language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\',\'mega_form\');\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\',\'mega_form\');\r\ndocument.forms[\'mega_form\'].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\'clear_new_table_info\').setAttribute(\'form\',\'mega_form\');\r\ndocument.getElementById(\'clear_new_table\').setAttribute(\'form\',\'mega_form\');\r\ndocument.getElementById(elemid).setAttribute(\'form\',\'mega_form\');\r\ndocument.forms[\'mega_form\'].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1)\r\n  document.getElementById(elemid).value = \'1\';\r\nelse\r\n  document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\'mega_form\' name=\'mega_form\' action=\'http://%s/%s\' method=\'POST\'></form>\r\n<form id=\'frm\' name=\'frm\' method=\'POST\' action=\'http://%s/%s\'>\r\n  <input type=\'hidden\' form=\'frm\' id=\'insert_new\' name=\'insert_new_default_value\' value=\"%s\" />\r\n  <input type=\'hidden\' form=\'frm\' id=\'clear_new_table_info\' name=\'make_some_request\' value=\'delete from new_table_info\' />\r\n  <input type=\'hidden\' form=\'frm\' id=\'clear_new_table\' name=\'make_some_request\' value=\'delete from new_table\' />\r\n  <input type=\'hidden\' form=\'frm\' id=\'next_table\' name=\'next_table_name\' value=\'new_table_info\' />\r\n  <input type=\"hidden\" form=\"frm\" id=\"delete_row\" name=\"delete_row_mode\" value=\"yes\" />\r\n</form>\r\n','</body>\r\n</html>\r\n','<table border=1 bordercolor=\'#000000\' align=center>\r\n','</table>\r\n','<tr>','</tr>\r\n','<p align=center><input type=\'submit\' form=\'mega_form\' value=\'Сохранить\' /><input type=\'button\' form=\'mega_form\' onClick=\"myreqins(\'insert_new\');\" value=\'+\' /></p>\r\n<p align=center><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;delete_row&#039;)\" value=\"Удалить строчку\" /></p>\r\n<p align=center>\r\n<input type=\'button\' form=\'mega_form\' onClick=\"clear_tabs(\'next_table\')\" value=\'Добавить таблицу\' />\r\n</p>\r\n','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked\r\n','insert into pictures(name,path,eng_words,rus_words,add_time) values(\'\',\'\',\'\',\'\',now())',0),(2,3,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Колонки таблиц</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\ndocument.forms[\'mega_form\'].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\'mega_form\' action=\'http://%s/%s\' method=\'POST\'></form>\r\n<form id=\'frm\' method=\'POST\' action=\'http://%s/%s\'></form>\r\n<input type=\'hidden\' form=\'frm\' id=\'insert_new\' name=\'insert_new_default_value\' value=\"%s\" />\r\n','</body>\r\n</html>','<table border=1 bordercolor=\'#E0E000\' align=center>\r\n','</table>\r\n','<tr>\r\n','</tr>\n','<p align=center><input type=\'submit\' form=\'mega_form\' value=\'Сохранить\' /><input type=\'button\' form=\'mega_form\' onClick=\"myreqins(\'insert_new\')\" value=\'+\' ></p>\r\n','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked\r\n','insert into tab_columns(tab_id,col_name,col_type,html_code,html_hat,col_hat,col_num,hidden) values(0,\'\',1,\'<td><textarea form=\"frm\" id=\"%s_%d\" name=\"%s[%d]\" rows=%d cols=%d onChange=\"myreq(&#039;%s_%d&#039;)\">%s</textarea></td>\',\'<td align=center><h4>%s</h4></td>\r\n\',\'\',1,0)',0),(3,2,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Оформление \r\nтаблиц</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\ndocument.forms[\'mega_form\'].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\'clear_new_table_info\').setAttribute(\'form\', \'mega_form\');\r\ndocument.getElementById(\'clear_new_table\').setAttribute(\'form\', \'mega_form\');\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\ndocument.forms[\'mega_form\'].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\'mega_form\' action=\'http://%s/%s\' method=\'POST\'></form>\r\n<form id=\'frm\' method=\'POST\' action=\'http://%s/%s\'></form>\r\n<input type=\'hidden\' form=\'frm\' id=\'insert_new\' name=\'insert_new_default_value\' value=\'%s\' />\r\n<input type=\'hidden\' form=\'frm\' id=\'clear_new_table_info\' name=\'make_some_request\' value=\'delete from new_table_info\' />\r\n<input type=\'hidden\' form=\'frm\' id=\'clear_new_table\' name=\'make_some_request\' value=\'delete from new_table\' />\r\n<input type=\'hidden\' form=\'frm\' id=\'next_table\' name=\'next_table_name\' value=\'new_table_info\' />\r\n','</body>\r\n</html>','<table border=1 bordercolor=\'#E000E0\' align=center>\r\n','</table>\r\n','<tr>\r\n','</tr>\n','<p align=center>\r\n<input type=\'submit\' form=\'mega_form\' value=\'Сохранить\' />\r\n<!--input type=\'button\' form=\'mega_form\' onClick=\"myreqins(\'insert_new\')\" value=\'+\' /-->\r\n</p>\r\n','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked\r\n','insert into tab_info(tab_id,html_head,html_end,html_tab_begin,html_tab_end,html_col_begin,html_col_end,html_buttons,http_head,default_insert) values(0,\'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Таблица</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\',\'</body>\r\n</html>\',\'<table border=1 bordercolor=\"#00E000\" align=center>\',\'</table>\',\'<tr>\',\'</tr>\',\'\r\n<p align=center><input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" /><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /></p>\r\n\',\'HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: Win7\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked\',\'\')',0),(4,4,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Список таблиц</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\ndocument.forms[\'mega_form\'].submit();\r\n}\r\nfunction del_tab(elemid,table_name_id){\r\ndocument.getElementById(elemid).value=document.getElementById(table_name_id).value;\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\ndocument.forms[\'mega_form\'].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\'mega_form\' action=\'http://%s/%s\' method=\'POST\'></form>\r\n<form id=\'frm\' method=\'POST\' action=\'http://%s/%s\'></form>\r\n<input type=\'hidden\' form=\'frm\' id=\'insert_new\' name=\'insert_new_default_value\' value=\"%s\" />\r\n<input type=\'hidden\' form=\'frm\' id=\'delete_table\' name=\'delete_table_from_database\' value=\'\' />\r\n','</body>\r\n</html>','<table border=1 bordercolor=\'#00E000\' align=center>\r\n','</table>\r\n','<tr align=center>\r\n','</tr>\n','<p align=center><input type=\'submit\' form=\'mega_form\' value=\'Сохранить\' /><!--input type=\'button\' form=\'mega_form\' onClick=\"myreqins(\'insert_new\')\" value=\'+\' /--></p>\r\n','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked\r\n','insert into all_tables(tab_name,tab_button) values(\'\',\'\')',0),(8,5,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Свойства сервера</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\'hidden\' form=\'frm\' id=\'load_backup\' name=\'make_some_request\' value=\"UPDATE server_info SET addr=\'localhost:7770\',default_index=\'tab7520264\',col_width=12,col_width_min=10 WHERE id=1\" />','</body>\r\n</html>','<table border=1 bordercolor=\"#E00000\" align=center>','</table>','<tr>','</tr>','<p align=center><input type=\'submit\' form=\'mega_form\' value=\'Сохранить\' onClick=\"document.forms.mega_form.submit()\"/></p>\r\n<p align=center>\r\n<input type=\'submit\' form=\'mega_form\' value=\'Откатить\' onClick=\"myreqins(\'load_backup\')\" /></p>','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','',0),(9,6,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<meta charset=\"windows-1251\">\r\n<title>Добавить таблицу</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\'clear_new_table_info\').setAttribute(\'form\', \'mega_form\');\r\ndocument.getElementById(elemid).setAttribute(\'form\', \'mega_form\');\r\ndocument.forms[\'mega_form\'].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"open_next\" name=\"next_table_name\" value=\"new_table\" />\r\n','</body>\r\n</html>','<table border=1 bordercolor=\"#2090FF\" align=left>\r\n','</table>\r\n','<tr>','</tr>\r\n','<input type=\"button\" form=\"mega_form\" onClick=\"clear_tabs(&#039;insert_new&#039;)\" value=\"Новая таблица\" />\r\n<br clear=\"all\" />\r\n<p align=left>\r\n<input type=\"button\" value=\"Далее\" onclick=\"myreqins(&#039;open_next&#039;)\" />&nbsp;&nbsp;&nbsp;&nbsp;\r\n<input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" />\r\n</p>\r\n','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','insert into new_table_info(new_tab_name,new_tab_public_name,new_table_save_button,new_table_add_button,new_table_head,new_table_end,new_table_tab_begin,new_table_tab_end,new_table_col_begin,new_table_col_end,new_table_http_head,new_table_default_insert) values(\'\',\'\',\'<input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" />\',\'<input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /><p align=center><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;delete_row&#039;)\" value=\"Удалить строчку\" /></p><p align=center><input type=\"button\" form=\"mega_form\" onClick=\"clear_tabs(&#039;next_table&#039;)\" value=\"Добавить таблицу\" /></p>\',\'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Новая таблица</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"delete_row\" name=\"delete_row_mode\" value=\"yes\" />\',\'</body>\r\n</html>\',\'<table border=1 bordercolor=\"#505050\" align=center>\',\'</table>\',\'<tr>\r\n\',\'</tr>\r\n\',\'HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: Win7\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked\',\'\')',1),(10,7,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Столбцы новой таблицы</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n  if(elemid.substring(0,20) == \'new_col_dynamic_desc\')\r\n  {\r\n    document.forms[\"mega_form\"].submit();\r\n  }\r\n}\r\nfunction prepair(){\r\n  var elems = document.getElementsByTagName(\'*\');\r\n  for(var i=0;i<elems.length;++i)\r\n  {\r\n    if(elems[i].id.substring(0,22) == \'new_col_dynamic_tab_id\')\r\n    {\r\n      if(document.getElementById(\"new_col_dynamic_desc\"+elems[i].id.substring(22,32)+\"_ch\").checked == 1)\r\n        document.getElementById(elems[i].id).disabled = 1;\r\n    }\r\n    else if(elems[i].id.substring(0,24) == \"new_col_dynamic_col_name\")\r\n    {\r\n      if(document.getElementById(\"new_col_dynamic_desc\"+elems[i].id.substring(24,32)+\"_ch\").checked == 1)\r\n        document.getElementById(elems[i].id).disabled = 1;\r\n    }\r\n  }\r\n}\r\n</script>\r\n</head>\r\n<body onLoad=\'prepair()\'>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"command_list\" name=\"command_list\" value=\"create_new_table\" />\r\n','</body>\r\n</html>','<table border=1 bordercolor=\"#00A0FF\" align=left>','</table>','<tr>','</tr>\r\n','<input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"Добавить столбец\" />\r\n<br clear=\"all\" />\r\n<p align=left>\r\n<input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;command_list&#039;)\" value=\"Готово\" />\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n<input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" />\r\n</p>\r\n','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','insert into new_table(new_col_name,new_col_type,new_col_size,new_col_html_code,new_col_html_hat,new_col_hat,new_col_num,new_col_hidden,new_col_default_insert,new_col_fix_size,new_col_sort,new_col_group,new_col_search,new_col_dynamic_tab_id,new_col_dynamic_col_id,new_col_dynamic_col_name,new_col_dynamic_desc,new_col_select_value) values(\'\',1,10,\'\',\'\',\'\',1,0,\'\',0,0,0,0,0,\'\',\'\',0,\'\')',1),(33,35,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Справка</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />','</body>\r\n</html>','<table border=1 bordercolor=\"#8080FF\" align=center>','</table>','<tr>\r\n','</tr>\r\n','<!-- <p align=center><input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" /><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /></p> -->\r\n\r\n<p align=center><input type=\"button\" form=\"mega_form\" onClick=\"clear_tabs(&#039;next_table&#039;)\" value=\"Добавить таблицу\" /></p>','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','insert into tab7520264(col1,col2,col3) values(\'\',\'\',\'\')',1),(41,43,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Пробная таблица</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"delete_row\" name=\"delete_row_mode\" value=\"yes\" />','</body>\r\n</html>','<table border=1 bordercolor=\"#505050\" align=center>','</table>','<tr>\r\n','</tr>\r\n','<p align=center><input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" /><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /></p>\r\n<p align=center><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;delete_row&#039;)\" value=\"Удалить строчку\" /></p>\r\n<p align=center><input type=\"button\" form=\"mega_form\" onClick=\"clear_tabs(&#039;next_table&#039;)\" value=\"Добавить таблицу\" /></p>','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','insert into tab39471470(col1,col2,col3,col4,col5,col6,col7,col8,col9,col10,col11,col12) values(\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\')',0),(47,49,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Ячейки с выбором</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\nif(elemid.substring(0, 6) == \'tab_id\') document.forms[\"mega_form\"].submit();\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1) document.getElementById(elemid).value = \'1\';\r\nelse document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"delete_row\" name=\"delete_row_mode\" value=\"yes\" />','</body>\r\n</html>','<table border=1 bordercolor=\"#a0a050\" align=center>','</table>','<tr>\r\n','</tr>\r\n','<p align=center><input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" /><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /></p>\r\n<p align=center><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;delete_row&#039;)\" value=\"Удалить строчку\" /></p>','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','insert into tab_selects(tab_id,col_name,value_of_select) values(\'\',\'\',\'\')',0),(59,61,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Планы</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction ch_data(elemid){\r\nif(document.getElementById(elemid+\'_ch\').checked == 1)\r\n  document.getElementById(elemid).value = \'1\';\r\nelse\r\n  document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"delete_row\" name=\"delete_row_mode\" value=\"yes\" />','</body>\r\n</html>','<table border=1 bordercolor=\"#505050\" align=center>','</table>','<tr>\r\n','</tr>\r\n','<p align=center><input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" /><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" />\r\n<p align=center><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;delete_row&#039;)\" value=\"Удалить строчку\" /></p>\r\n<p align=center><input type=\"button\" form=\"mega_form\" onClick=\"clear_tabs(&#039;next_table&#039;)\" value=\"Добавить таблицу\" /></p>','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','INSERT INTO system_log(col1,col2,col3) VALUES(\'\',\'0\',\'0\')',0),(60,62,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Выборка</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction prepair(){\r\n  var elems = document.getElementsByTagName(\'*\');\r\n  for(var i=0;i<elems.length;++i)\r\n  {\r\n    if(elems[i].id.substring(0,14) == \"dynamic_tab_id\")\r\n    {\r\n      if(document.getElementById(\"dynamic_tab_desc\"+elems[i].id.substring(14,32)+\"_ch\").checked == 1)\r\n        document.getElementById(elems[i].id).disabled = 1;\r\n    }\r\n    else if(elems[i].id.substring(0,16) == \"dynamic_col_name\")\r\n    {\r\n      if(document.getElementById(\"dynamic_tab_desc\"+elems[i].id.substring(16,32)+\"_ch\").checked == 1)\r\n        document.getElementById(elems[i].id).disabled = 1;\r\n    }\r\n  }\r\n}\r\nfunction ch_data(elemid){\r\n  if(elemid.substring(0,16) == \'dynamic_tab_desc\')\r\n  {\r\n    if(document.getElementById(elemid+\'_ch\').checked == 1)\r\n    {\r\n      document.getElementById(\"dynamic_tab_id\"+elemid.substring(16,32)).value = document.getElementById(\"tab_id\"+elemid.substring(16,32)).value;\r\n      document.getElementById(\"dynamic_tab_id\"+elemid.substring(16,32)).setAttribute(\"form\", \"mega_form\");\r\n    }\r\n  }\r\nif(document.getElementById(elemid+\'_ch\').checked == 1)\r\n document.getElementById(elemid).value = \'1\';\r\nelse\r\n document.getElementById(elemid).value = \'0\';\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\n</script>\r\n</head>\r\n<body onLoad=\'prepair()\'>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />','</body>\r\n</html>','<table border=1 bordercolor=\"#f0b0b0\" align=center>','</table>','<tr>\r\n','</tr>\r\n','<p align=center><input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" /><input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /></p>','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: localhost\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','INSERT INTO tab_dynamic(tab_id,col_name,dynamic_tab_desc,dynamic_tab_id,dynamic_col_id,dynamic_col_name) VALUES(\'\',\'\',0,\'\',\'id\',\'\')',0),(62,64,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>О программе</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"delete_row\" name=\"delete_row_mode\" value=\"yes\" />','</body>\r\n</html>','<table border=1 bordercolor=\"#509050\" align=center>','</table>','<tr>\r\n','</tr>\r\n','<p align=center><input type=\"submit\" form=\"mega_form\" value=\"Сохранить\" /><!-- input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /--><p align=center><!--input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;delete_row&#039;)\" value=\"Удалить строчку\" /--></p><p align=center><input type=\"button\" form=\"mega_form\" onClick=\"clear_tabs(&#039;next_table&#039;)\" value=\"Добавить таблицу\" /></p>','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: Win7\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','INSERT INTO about(col1,col2,col3,col4,col5,col6,col7,col8,col9,col10) VALUES(\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\',\'\')',1),(66,68,'<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Пользователи</title>\r\n<script language=\"JavaScript\">\r\nfunction myreq(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\n}\r\nfunction myreqins(elemid){\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction clear_tabs(elemid){\r\ndocument.getElementById(\"clear_new_table_info\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(\"clear_new_table\").setAttribute(\"form\", \"mega_form\");\r\ndocument.getElementById(elemid).setAttribute(\"form\", \"mega_form\");\r\ndocument.forms[\"mega_form\"].submit();\r\n}\r\nfunction open_tabs(elemid){\r\ndocument.forms[\"open_form\"].submit();\r\n}\r\n</script>\r\n</head>\r\n<body>\r\n<form id=\"mega_form\" action=\"http://%s/%s\" method=\"POST\"></form>\r\n<form id=\"frm\" method=\"POST\" action=\"http://%s/%s\"></form>\r\n<form id=\"open_form\" method=\"POST\" action=\"http://botinform.com:7770/about\"></form>\r\n<input type=\"hidden\" form=\"frm\" id=\"insert_new\" name=\"insert_new_default_value\" value=\"%s\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table_info\" name=\"make_some_request\" value=\"delete from new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"clear_new_table\" name=\"make_some_request\" value=\"delete from new_table\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"next_table\" name=\"next_table_name\" value=\"new_table_info\" />\r\n<input type=\"hidden\" form=\"frm\" id=\"delete_row\" name=\"delete_row_mode\" value=\"yes\" />','</body>\r\n</html>','<table border=0 bordercolor=\"#505050\" align=center>','</table>','<tr>\r\n','</tr>\r\n','<p align=center><input type=\"submit\" form=\"open_form\"\r\nonClick=\"myreqins(&#039;open_tabs&#039;)\" value=\"Войти\" /><!--input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;insert_new&#039;)\" value=\"+\" /--><p align=center><!--input type=\"button\" form=\"mega_form\" onClick=\"myreqins(&#039;delete_row&#039;)\" value=\"Удалить строчку\" /--></p><p align=center><!--input type=\"button\" form=\"mega_form\" onClick=\"clear_tabs(&#039;next_table&#039;)\" value=\"Добавить таблицу\" /--></p>','HTTP/1.1 200 OK\r\nServer: List/0.1.0\r\nReference: Win7\r\nContent-Type: text/html; charset=windows-1251\r\nTransfer-Encoding: chunked','INSERT INTO users(col1,col2,col3,name,pass) VALUES(\'\',\'\',\'\',\'\',\'\')',1);
/*!40000 ALTER TABLE `tab_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_selects`
--

DROP TABLE IF EXISTS `tab_selects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_selects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_id` int(11) NOT NULL,
  `col_name` mediumtext NOT NULL,
  `value_of_select` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_selects`
--

LOCK TABLES `tab_selects` WRITE;
/*!40000 ALTER TABLE `tab_selects` DISABLE KEYS */;
INSERT INTO `tab_selects` VALUES (6,7,'new_col_type','0::Текст\r\n1::Редактор\r\n2::Галочка\r\n3::Выбор\r\n4::Картинка\r\n5::Кнопка\r\n7::Да/Нет\r\n8::Фиксатор\r\n9::Выборка\r\n10::Пароль\r\n11::Стиль\r\n12::Поле\r\n13::Замок'),(12,43,'col3','нет\r\nда\r\nможет быть\r\nпоживём - увидим'),(13,3,'col_type','0::Текст\r\n1::Редактор\r\n2::Галочка\r\n3::Выбор\r\n4::Картинка\r\n5::Кнопка\r\n7::Да/Нет\r\n8::Фиксатор\r\n9::Выборка\r\n10::Пароль\r\n11::Стиль\r\n12::Поле\r\n13::Замок'),(14,61,'col2','Нет\r\nЧастично\r\nГотово'),(15,3,'col_sort','не сортировать\r\nпо возрастанию\r\nпо убыванию'),(16,7,'new_col_sort','нет\r\nпо возрастанию\r\nпо убыванию'),(17,3,'col_num','0\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19'),(18,43,'col5','Очень плохо\r\nПлохо\r\nХорошо\r\nОчень хорошо\r\nОтлично\r\nПревосходно!'),(19,61,'col3','Второстепенное\r\nЖелательно сделать\r\nВажное\r\nОчень важное!\r\n'),(20,7,'new_col_num','0\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19');
/*!40000 ALTER TABLE `tab_selects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` mediumtext NOT NULL,
  `col2` mediumtext NOT NULL,
  `col3` mediumtext NOT NULL,
  `name` mediumtext NOT NULL,
  `pass` mediumtext NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'','','','','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-09 20:09:49
