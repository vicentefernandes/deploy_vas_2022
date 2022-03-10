CREATE DATABASE  IF NOT EXISTS `vas_manager` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vas_manager`;
-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: vas_manager
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'127.0.0.1:8888','ws10');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `client_AFTER_INSERT` AFTER INSERT ON `client` FOR EACH ROW BEGIN
UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `client_AFTER_UPDATE` AFTER UPDATE ON `client` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `client_AFTER_DELETE` AFTER DELETE ON `client` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `videoStream` varchar(255) NOT NULL,
  `activePreset` int DEFAULT NULL,
  `numberOfPresets` int NOT NULL,
  `streamingOutputActive` tinyint(1) DEFAULT NULL,
  `streamingOutputIp` varchar(255) DEFAULT NULL,
  `streamingOutputPort` int DEFAULT NULL,
  `config` json DEFAULT NULL,
  `containerPort` int DEFAULT NULL,
  `cameraApiIp` varchar(45) NOT NULL,
  `cameraApiPort` int NOT NULL,
  `cameraApiUsername` varchar(245) NOT NULL,
  `cameraApiPassword` varchar(245) NOT NULL,
  `cameraModel` varchar(45) NOT NULL,
  `cameraSnapshot` varchar(245) NOT NULL,
  `cameraHeight` int NOT NULL DEFAULT '25',
  `sendAlarms` tinyint(1) NOT NULL DEFAULT '1',
  `gstreamerPipeline` varchar(1024) DEFAULT 'appsrc is-live=true do-timestamp=true typefind=true ! videoconvert ! x264enc key-int-max=5 bframes=0 bitrate=4096 vbv-buf-capacity=60 speed-preset=superfast noise-reduction=0 tune=zerolatency byte-stream=true threads=0 ! video/x-h264, framerate=60/1, profile=main ! rtph264pay config-interval=1 ! udpsink host=XXXX port=YYYY ttl=3 ttl-mc=3 auto-multicast=true sync=false async=true qos=false',
  `classificationActive` tinyint(1) DEFAULT NULL,
  `classificationApiUrl` varchar(255) DEFAULT NULL,
  `classificationScoreThreshold` float DEFAULT NULL,
  `classificationNumberOfFrames` int NOT NULL DEFAULT '3',
  `classificationNumberOfFrames2` int NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (200,1,'http://176.9.251.105/mjpg/video.mjpg',NULL,1,1,'127.0.0.1',7777,'{\"_moduleId\": 85, \"loop_mode\": false, \"input_presets\": [\"rgb\"], \"mosaic_display\": [\"rgb\"], \"_raw_image_path\": \"/tmp/imgs/\", \"streaming_enabled\": true, \"redetection_period\": 1, \"sources_are_videos\": false, \"_annotated_video_path\": \"/tmp\", \"local_display_enabled\": false, \"tracker_configuration\": {\"tracker_channels\": [\"r\", \"g\", \"b\"], \"MOT.justAssociate\": true, \"MOT.overlapThreshold\": 0, \"MOT.removalThreshold\": 0, \"MOT.waitingThreshold\": 2, \"MOT.similarityThreshold\": 10, \"MOT.terminationCriterion\": 1, \"MOT.terminationThreshold\": 0, \"MOT.reactivationThreshold\": 600, \"MOT.dataAssociationDistanceThreshold\": 50}, \"detector_configuration\": {\"history\": 400, \"roi_mask\": \"./saros.png\", \"max_blobs\": 10, \"detector_type\": \"bgsMultiSpectral\", \"max_similarity\": 0.98, \"number_of_erodes\": 1, \"detector_channels\": [\"r\"], \"var_threshold_float\": 125, \"number_of_dilatations\": 7, \"mask_channel_mandatory\": \"0\", \"max_rectangle_area_pixels\": 4000, \"min_rectangle_area_pixels\": 20, \"threshold_nChannels_foreground\": 1}, \"video_analysis_frame_rate\": 250, \"annotated_video_frame_rate\": 30, \"input_offsets_milliseconds\": [0], \"gstreamer_pipeline_file_path\": \"/home/vmachado/work/seers/vas/data/stream_config/streaming_to_gui_multicast.gst\", \"calibration_tools_configuration\": {\"comment1\": \"position of the optical center of the camera (in pixels)\", \"comment2\": \"one \'focal_distance\' for each preset\", \"comment3\": \"**** requires \'angle\' > 0 && angle < 45 *****\", \"comment4\": \"one \'pitch_angle\' for each preset\", \"sensor_pixel_size\": 0.0000017, \"camera_height_meters\": 25, \"pitch_angles_degrees\": [1, 0.21], \"principal_point_x_px\": 360, \"principal_point_y_px\": 240, \"focal_distances_millimeters\": [120, 120]}, \"_refine_detection_bounding_boxes\": {\"min_required_width\": 32, \"min_required_height\": 32}, \"annotated_video_recording_enabled\": true, \"_video_stabilization_configuration\": {\"method\": \"phase_correlation\", \"_method\": \"ecc\", \"__method\": \"optical_flow\", \"warp_mode\": \"translation\"}, \"source_reading_sleeps_milliseconds\": [1], \"****** warp_mode: translation, euclidean, affine or homography\": \"\"}',50030,'172.20.193.37',80,'admin','admin','PT','TODO',40,1,'appsrc is-live=true do-timestamp=true typefind=true ! videoconvert ! x264enc key-int-max=5 bframes=0 bitrate=4096 vbv-buf-capacity=60 speed-preset=superfast noise-reduction=0 tune=zerolatency byte-stream=true threads=4 ! video/x-h264, framerate=25/1, profile=main ! rtph264pay config-interval=1 ! udpsink host=XXXX port=YYYY ttl=3 ttl-mc=3 auto-multicast=true sync=false async=true qos=false',0,'http://172.29.166.101:8501/v1/models/jeddah:predict',0.4,1,3);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `module_AFTER_INSERT` AFTER INSERT ON `module` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `module_AFTER_UPDATE` AFTER UPDATE ON `module` FOR EACH ROW BEGIN
UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `module_AFTER_DELETE` AFTER DELETE ON `module` FOR EACH ROW BEGIN
UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `preset`
--

DROP TABLE IF EXISTS `preset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preset` (
  `moduleId` int NOT NULL,
  `mask` longblob NOT NULL,
  `presetNumber` int NOT NULL,
  PRIMARY KEY (`moduleId`,`presetNumber`),
  CONSTRAINT `fk_preset_1` FOREIGN KEY (`moduleId`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preset`
--

LOCK TABLES `preset` WRITE;
/*!40000 ALTER TABLE `preset` DISABLE KEYS */;
INSERT INTO `preset` VALUES (200,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0€\0\0\0\0\0\0J¬\0\0IDATx\íÁj\àV‚À\îÿÿ\è>8XØ\Ìf<¶d=¹ª\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k\0€\Û5\0À\í\Z\0\àv\r\0p»\0¸]\0Ü®\0n\×\0\0·k€‡Ù–‡i\àK5À“l\ËQ\Úø¸¸Ý¶¼T\ÛüÂ¶\\©m\à\rp¯my»¶\Ûr¯¶s4À¶…´\r¥\î²-\\£m\à(\rp—m\á\ZmGi€[l\×h8M\\o[¸L\ÛÀi\Z\àz\Û\Âe\ÚN\Ó\0\Û.\Ó6p ¸Ø¶p™¶5ÀÅ¶…Ë´\r¨.¶-\\¦m\à@\rp±m\á\Zmgj€‹m\×h8S\\l[¸F\ÛÀ™\Z\àb\Û\Â\ÚŽ\Õ\0\Û.\Ð6p¬¸Ò¶p¶c5Àe¶…Ë´\r«®±-\\¦m\àd\rpm\áJm\'k€lWj8Y|©m\ázm\'k€/²-Ü¢m\àp\rðE¶…[´\r®¾È¶p‹¶\Ã5ÀW\Ø\î\Ò6p¸ø´m\á.m\çk€O\Û\î\Ò6p¾øœm\áFm\çk€O\Ø\î\Õ6p¾ø„m\áFm¯\Ð\0Ÿ°-Ü«m\à|\rð	\ÛÂ½\Ú\Î\×\0Ÿ°-Ü«m\à|\rð§¶…\ï\Ð6p¸øS\Û\Âwh8\\|Ä¶ð\Ý\Ú\×\0É¶p”¶“5ð#m\'k8Y?Æ¶ð\"m\Çj\àÕ¶…—j8V/µ-¼Z\ÛÀ±\Zx—m\á\Çh8S\ç\Û^­\í¶üM\ÛÀ™\Z8Ç¶ðSµ\ÍÿÛ–ÿ\Ò6p o[\à\×\ÚN\ÓÀlü©¶\Ó4ðM¶¾B\ÛÀi\Z¸×¶À\Ú\Î\ÑÀ¶.\Ó6pˆn±-p±¶C4p¥m»´\r¢klÜ®m\à\r|Ú¶Àc´\r<^·-ðTm\×Ào\Û8A\ÛÀ³5ðk\Ûgjx°†Ÿm[\à\Ú¬\á§\Úxµ¶§jøI¶~’¶Gjø1¶~˜¶Gjø¶~¤¶\çix»m¬m\ày\Z^m[\àgkxž†÷\Úøñ\Úž§á¥¶H\Úž§\áu¶ø/m\Óð\"\Ûü“¶\'ix…mþ§¶\Çh8ß¶\0ÿ¦m\à1\ZÎ·-À¿ixŒ†\Ãmð{\Úž¡\áX\Û|D\ÛÀ34œi[€jx††3mðAm\Ï\Ðp mþH\ÛÀ4œf[€Ohøn\r§\Ù\às\Ú¾U\ÃQ¶øˆ¶\ÛòWmßª\á(\Û|…¶\ï\ÓpŽm¾H\ÛÀ÷i8Ç¶\0_¤m\àû4b[€/\Õ6ðM\Z±-À—jø&\r‡\Ø\àKµ\r|“†lp¶\ï\Ðp‚m®\Ñ6p»†\Ç\Û\à2m·kx¼m®\Ô6p¯†g\Û\àbm÷jx¶m®\×6p£†\Û\à.mwix°mn\Ô6p‹†§\Ú\àvm\×kxªmn\×6p½†§\Ú\à;´\r\\¬á‘¶ø>mWjxžm¾[\ÛÀe\Zžg[€\ï\Ö6p™†\ç\Ù\à\Ú®\Ñð0\Û<C\ÛÀ5\Zf[€\Çh¸@\Ã\Ãlð$m_­\áa¶x˜¶/\Õð0\Û<O\ÛÀ\×ix˜m©m\à‹4<Ì¶\0O\Õ6ð\Zf[€kø´†‡\Ù\à\Ù\Ú>§\áa¶x¼¶Ohx˜mN\Ð6ð§\Zf[€C´\rü‘†‡\Ù\àm\×ð0\Û¥m\àƒ\Zf[€£´\r|P\Ã\Ãlp ¶\ß\Öð0\Ûœ©m\à÷4<Ì¶\0\Çjø\r\r³-À\É\ÚþM\Ã\Ãlp¸¶ÿ©\áa¶8_\ÛÀ¯5<Ì¶\0¯\Ð6ð\r³-À[´\rü“†‡\Ù\àE\Úþ¦\áa¶x¶ÿ\Òð0\Û¼Q\ÛÀ4<Ì¶\0/\Õ6ðÿ\Zf[€÷jH\Zf[€Wk~¼†‡\Ù\à\íÚ†Ÿ­\áa¶\à7´\r\Çjx˜mømm\ÃÅ¶\å«5<Ì¶\0|P\ÛðE¶\åz\r³-\0¤møˆmù&\r³-\0Ÿ\Ó6?Û¶<[\Ã\ÃlÀ—j›÷Ú–5<Ì¶\0\\ m·-o\Ñð<\Ûp±¶ù\'\Û\Âõ\Zžg[\0n\Ñ6µ-\\¯á‘¶€÷jxªm\à¥\Zžj[\0x©†§\Ú\0^ªá©¶€—jxªm\à¥\Zžj[\0x©†§\Ú\0^ªá©¶€—jxªm\à¥\Zžj[\0x©†§\Ú\0^ªá©¶€—jxªm\à¥\Zžj[\0x©†§\Ú\0^ªá©¶€—jxªm\à¥\Zžj[\0x©†§\Ú\0^ªá©¶€—jx°m\à\Zl[\0x£†g\Û\0^§\áÙ¶€\×ix¶m\àu\Zo[\0x—†\Ç\Û\0Þ¥\áñ¶€wix¼m\à]\Zo[\0x—†\Ç\Û\0Þ¥\áñ¶€wix¼m\à]\Zo[\0x—†\Ç\Û\0Þ¥\áñ¶€wix¼m\à]\Zo[\0x—†\Ç\Û\0Þ¥\áñ¶€wix¼m\à]\Zo[\0x—†\Ç\Û\0Þ¥\áñ¶€wix¼m\à]\Zo[\0x—†\Ç\Û\0Þ¥\áñ¶€wix¼m\à]\ZN°-\0¼H\Ã	¶€i8Á¶\0ð\"\r\'\Ø\0^¤\á\ÛÀ‹4œ`[\0x‘†l\0/\Òp‚m\àE\ZN°-\0¼H\Ã	¶€i8Á¶\0ð\"\r‡\Ø\0Þ¢\á\ÛÀ[4b[\0x‹†Cl\0o\Ñpˆm\à-\Z±-\0¼E\Ã9¶€Wh8Ç¶\0ð\n\r\ç\Ø\0^¡\á\ÛÀ+4œc[\0x…†sl\0¯\ÐpŽm\à\ZN³-\0®\á@\ÛÀ\É\Z´-\0œ¬\áL\ÛÀ±\ZŽµ-\0œ©\áX\ÛÀ™\ZŽµ-\0œ©\áX\ÛÀ™\ZN¶-\0¨\ád\ÛÀ\ZÎ·-\0¥\á|\ÛÀQ\Z^a[\08G\Ã+l\0\çhx‹m\à\ro±-\0¢\á-¶€C4¼Å¶\0pˆ†·\Ø\0\Ñð\ÛÀ!\Z\Þb[\08D\Ã[l\0‡hx‹m\à\ro±-\0¢\á-¶€C4¼Å¶\0pˆ†·\Ø\0\Ñð\ÛÀ!\Z\Þb[\08D\Ã+l\0\çhx…m\à\r¯°-\0œ£\á|\ÛÀQ\ZÎ·-\0¥\áp\ÛÀi\ZN¶-\0¨\ád\ÛÀ\ZŽµ-\0œ©\áX\ÛÀ™\ZÎ´-\0«\á@\ÛÀ\É\ZN³-\0®\á(\ÛÀù\ZŽ²-\0œ¯\á\ÛÀ+4œc[\0x…†Cl\0o\Ñp‚m\àE\Zo[\0x—†\Ç\Û\0Þ¥\áÙ¶€\×ix¶m\àu\Zžj[\0x©†\ç\Ù\0^­\áa¶€·kx’m\àhxŒm\àghøn\ÛÀ\ÓðÝ¶€¦\á»m\0?L\Ã7\Ù\0~ª†\ï°-\0ü`\r·\Û\0~¶†{m\0?^\Ã]¶\0þ_\Ã-¶\0þ£\áz\Û\0ÿ¥\áJ\Û\0\Óp™m€\Òpm€_h¸À¶\0À¯5|µm€ÿ©\áKm\0ü›†¯³-\0ð\Z¾È¶\0À\ïiø\"\Û\0¿§\áÓ¶\0>¢\ás¶\0>¨\á¶\0>®\áOm\0ü‘†?µ-\0ðG\ZþÈ¶\0ÀŸjø#\Û\0ª\á\ã¶\0>¡áƒ¶\0>§\á#¶\0>­\á·m\0|…†ß¶-\0ð\Z~Ï¶\0Àiø=\Û\0_¤\á\ßl\0|©†³-\0ð¥\Zþ§m€¯\Öð?m\0|µ†_\Û\0¸@\Ã/l\0\\£á¯¶\0.\Öð\Û\0·hH¶\0n\Ôð_¶\0®\×ð7\Û\0WjøŸ¶\0¾Z\Ão\Ø\0ø:\r±-\0ði\rd[\0¬m¾È¶ð\Õ\Z>a[\0ž§m®·-ü©†¯°-\0\Ñ6÷\Ú>¢\á\ëlÀ´\Íw\Ø~O\ÃW\Û€o\Õ6\ßm[øµ†klÀwh›\'\Ùþ¦\áz\Ûp—¶y¼mù\Ù\Zn´-\0Wj›sl\ËO\Õp»m¸FÛœi[~’†o²-\0_ªm\Þn[^¡\á¶\às\Ú\æ\í¶\å\Zžj[\0>¢m~Œm9YÃ³mÀoh›Ÿd[N\Öpˆmøµ¶ùa¶\åX\r‡\Û€¤m~žm9SÃ‹lðSµ\ÍÏ³-gjø‘¶x‹¶ùÙ¶\å4\r|Â¶\0ßªmø\ÛrŽ¾Î¶\0÷jþj[¯klp±¶\áŸlË³5p£m¾N\Ûð\Ûò`\r|·m>¨mø=\Ûò<\r<É¶\0ÿ¦mø¸myŒžj[øÁ\Ú¾Ú¶<C‡\Ø~†¶‹mË·j\à@\Û\ÂKµ\r\Üb[¾O‡\Û~[\Û\0ÿ±-ß¤·Ø–÷j\à«m\Ë7i\à¶\åLm\Üh[¾Co·-÷j\à\Ûr»H¶\å¯\Úø1¶\å^\r\0lË\Z\0 Ù–5\0@²-7j\0€ÿØ–[4\0ÀÙ–\ë5\0À_m\Ë\Å\Z\0à¯¶\åb\r\0ðW\Ûr±\0ø«m¹X\0üÍ¶\\©\0þÉ¶\\¦\0þÉ¶\\¦\0þÉ¶\\¦\0þÉ¶\\¦\0~a[®\Ñ\0\0¿°-\×h\0€_Û–4\0À¯m\Ë\Z\0\à×¶\åÿ¯£\Ùy\Ö;\0\0\0\0IEND®B`‚',2);
/*!40000 ALTER TABLE `preset` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `preset_AFTER_INSERT` AFTER INSERT ON `preset` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `preset_AFTER_UPDATE` AFTER UPDATE ON `preset` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `preset_AFTER_DELETE` AFTER DELETE ON `preset` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `preset_train`
--

DROP TABLE IF EXISTS `preset_train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preset_train` (
  `moduleId` int NOT NULL,
  `mask` longblob NOT NULL,
  `presetNumber` int NOT NULL,
  PRIMARY KEY (`moduleId`,`presetNumber`),
  CONSTRAINT `fk_preset_train_1` FOREIGN KEY (`moduleId`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preset_train`
--

LOCK TABLES `preset_train` WRITE;
/*!40000 ALTER TABLE `preset_train` DISABLE KEYS */;
/*!40000 ALTER TABLE `preset_train` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `preset_train_AFTER_INSERT` AFTER INSERT ON `preset_train` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `preset_train_AFTER_UPDATE` AFTER UPDATE ON `preset_train` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `preset_train_AFTER_DELETE` AFTER DELETE ON `preset_train` FOR EACH ROW BEGIN
	UPDATE `system` SET `updateFlag`='1' WHERE `id`='1';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `system`
--

DROP TABLE IF EXISTS `system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system` (
  `id` int NOT NULL DEFAULT '1',
  `updateFlag` tinyint(1) NOT NULL DEFAULT '0',
  `vasDeployment` json DEFAULT NULL,
  `spaceTimeFilterRows` int NOT NULL DEFAULT '1',
  `spaceTimeFilterCols` int NOT NULL DEFAULT '1',
  `spaceTimeFilterTimeoutSecs` int NOT NULL DEFAULT '10',
  `detectionColorMap` json NOT NULL,
  `drawCategoryLabel` tinyint(1) NOT NULL DEFAULT '1',
  `maxMessageQueueSize` int NOT NULL DEFAULT '100',
  `queueMessageTimeoutSecs` int NOT NULL DEFAULT '900',
  `analyzeWhenGuardTourInactive` tinyint(1) NOT NULL DEFAULT '0',
  `flirPtzTimeLeftTimeoutSecs` int NOT NULL DEFAULT '1',
  `flirPtzcurrTimeTimeoutSecs` int NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system`
--

LOCK TABLES `system` WRITE;
/*!40000 ALTER TABLE `system` DISABLE KEYS */;
INSERT INTO `system` VALUES (1,1,'{\"kind\": \"Deployment\", \"spec\": {\"replicas\": 1, \"selector\": {\"nodeType\": \"vas\", \"matchLabels\": {\"app\": \"vas\"}}, \"strategy\": {\"type\": \"RollingUpdate\", \"rollingUpdate\": {\"maxSurge\": 1, \"maxUnavailable\": 1}}, \"template\": {\"spec\": {\"volumes\": [{\"name\": \"storage\", \"hostPath\": {\"path\": \"/opt/rec\", \"type\": \"Directory\"}}], \"containers\": [{\"args\": [\"-moduleId\"], \"name\": \"vas\", \"image\": \"repo.gradiant.org:9008/vas-cpu:1.0.8\", \"ports\": [{\"name\": \"http\", \"protocol\": \"TCP\", \"containerPort\": 9080}], \"command\": [\"/vas-environment/va_process_video\"], \"envFrom\": [{\"configMapRef\": {\"name\": \"haramain-master-configmap\"}}], \"resources\": {\"limits\": {\"cpu\": \"8\", \"memory\": \"8Gi\"}, \"requests\": {\"cpu\": \"1\", \"memory\": \"1Gi\"}}, \"volumeMounts\": [{\"name\": \"storage\", \"mountPath\": \"/rec\"}], \"imagePullPolicy\": \"Never\"}], \"hostAliases\": [{\"ip\": \"172.20.202.41\", \"hostnames\": [\"sqlvas\"]}], \"hostNetwork\": true, \"restartPolicy\": \"Always\"}, \"metadata\": {\"labels\": {\"app\": \"vas\"}}}}, \"metadata\": {\"name\": \"vas\", \"labels\": {\"name\": \"vas\"}, \"namespace\": \"haramain-master\"}, \"apiVersion\": \"apps/v1\"}',2,2,100,'{\"OTHER\": {\"b\": 0, \"g\": 0, \"r\": 255}, \"PERSON\": {\"b\": 255, \"g\": 0, \"r\": 0}, \"VEHICLE\": {\"b\": 255, \"g\": 255, \"r\": 0}, \"unknown\": {\"b\": 255, \"g\": 245, \"r\": 235}}',1,75,1,0,1,6);
/*!40000 ALTER TABLE `system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_va_process`
--

DROP TABLE IF EXISTS `system_va_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_va_process` (
  `moduleId` int NOT NULL,
  `pid` int NOT NULL,
  `command` varchar(255) NOT NULL,
  PRIMARY KEY (`moduleId`,`pid`),
  CONSTRAINT `fk_system_va_process_1` FOREIGN KEY (`moduleId`) REFERENCES `module` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_va_process`
--

LOCK TABLES `system_va_process` WRITE;
/*!40000 ALTER TABLE `system_va_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_va_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'vas_manager'
--

--
-- Dumping routines for database 'vas_manager'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-10 21:01:25
