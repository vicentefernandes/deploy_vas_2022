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
INSERT INTO `preset` VALUES (200,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\0\0\0\0�J�\0\0�IDATx\���j\�V��\���\�>8Xؐ\�f<�d=��\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k\0�\�5\0�\�\Z\0\�v\r\0p�\0�]\0ܮ\0n\�\0\0�k��ٖ�i\�K5��l\�Q\����ݶ�T\��¶\\�m\�\rp�my��\�r���s4�����\r�\�-\\�m\�(\rp�m\�\ZmGi�[l\�h8M\\o[�L\��i\Z\�z\�\�e\�N\�\0\�.\�6p��ضp���5�Ŷ�˴\r�.�-\\�m\�@\rp�m\�\Zmgj��m\�h8S\\l[�F\���\Z\�b\�\�\��\�\0\�.\�6p��Ҷp���c5�e��˴\r���-\\�m\�d\rp�m\�Jm\'k�lWj8Y|�m\�zm\'k�/�-ܢm\�p\r�E��[�\r��ȶp���\�5�W\�\�\�6p���m\�.m\�k�O\�\�\�6p���m\�Fm\�k�O\�\�\�6p���m\�Fm�\�\0��-ܫm\�|\r�	\�½\�\�\�\0��-ܫm\�|\r𧶅\�\�6p��S\�\�wh8\\|Ķ�\�\�\�\0ɶp����5�#m\'k8Y?ƶ�\"m\�j\�ն��j8V/�-�Z\���\Zx�m\�\�h8S\�\�^�\��M\���\Z8Ƕ�S�\��ۖ�\�6p�o[\�\�\�N\��l����\�4�M��B\��i\Z�׶�\�\�\����.\�6p�n�-p���C4p�m���\r��klܮm\�\r|ڶ�c�\r<^�-�Tm�\��o\�8A\���5�k\�gjx���m[\��\��\�\�x����j�I�~���Gj�1�~���Gj��~���\�ix�m��m\�y\Z^m[\�gkx���\���\���᥶H\���\�u��/m\��\"\�����\'ix�m����\�h8߶\0��m\�1\Zη-��ix��\�m�{\���\�X\�|D\��34�i[�jx��3m�Am\�\�p�m�H\��4�f[�Oh�n\r�\�\�s\��U\�Q����\��Wmߪ\�(\�|���\�\�p�m�H\���i8Ƕ\0_�m\��4b[�/\�6�M\Z�-��j�&\r�\�\�K�\r|��lp���\�\�p�m�\�6p��\�\�\�2m�kx�m�\�6p��g\�\�bm�jx�m�\�6p��\�\�.mwix�mn\�6p���\�\�vm\�kx�mn\�6p���\�\�;�\r\\�ᑶ�>mWjx�m�[\��e\Z�g[�\�\�6p��\�\�\�\��\��0\�<C\��5\Zf[�\�h�@\�\�l�$m_�\�a�x���/\��0\�<O\��\�ix�m�m\��4<̶\0O\�6�\Zf[�k����\�\�\�\�>�\�a�x���Ohx�mN\�6�\Zf[�C�\r����\�\�m\��0\��m\��\Zf[���\r|P\�\�lp���\�\��0\���m\��4<̶\0\�j�\r\r�-�\�\��M\�\�lp�����\�a�8_\���5<̶\0�\�6�\r�-�[�\r����\�\�E\���\�a�x����\��0\��Q\��4<̶\0/\�6��\Zf[��jH\Zf[�Wk~���\�\�\�چ��\�a�\�7�\r\�jx�m�mm\�Ŷ\�5<̶\0|P\��E�\�z\r�-\0�m��m�&\r�-\0�\�6?۶<[\�\�l��j��ږ5<̶\0\\�m�-o\��<\�p���\'\�\��\Z�g[\0n\�6�-\\�ᑶ��jx�m\�\Z�j[\0x���\�\0^�᩶��jx�m\�\Z�j[\0x���\�\0^�᩶��jx�m\�\Z�j[\0x���\�\0^�᩶��jx�m\�\Z�j[\0x���\�\0^�᩶��jx�m\�\Z�j[\0x���\�\0^�᩶��jx�m\��\Zl[\0x��g\�\0^�\�ٶ�\�ix�m\�u\Zo[\0x��\�\�\0ޥ\���wix�m\�]\Zo[\0x��\�\�\0ޥ\���wix�m\�]\Zo[\0x��\�\�\0ޥ\���wix�m\�]\Zo[\0x��\�\�\0ޥ\���wix�m\�]\Zo[\0x��\�\�\0ޥ\���wix�m\�]\Zo[\0x��\�\�\0ޥ\���wix�m\�]\ZN�-\0�H\�	��i8��\0�\"\r\'\�\0^�\�\���4�`[\0x��l\0/\�p�m\�E\ZN�-\0�H\�	��i8��\0�\"\r�\�\0ޢ\�\��[4b[\0x��Cl\0o\�p�m\�-\Z�-\0�E\�9��Wh8Ƕ\0�\n\r\�\�\0^�\�\��+4�c[\0x��sl\0�\�p�m\�\ZN�-\0�\�@\��\�\Z�-\0��\�L\���\Z��-\0��\�X\���\Z��-\0��\�X\���\ZN�-\0�\�d\���\Zη-\0�\�|\��Q\Z^a[\08G\�+l\0\�hx�m\�\ro�-\0�\�-��C4�Ŷ\0p���\�\0\��\��!\Z\�b[\08D\�[l\0�hx�m\�\ro�-\0�\�-��C4�Ŷ\0p���\�\0\��\��!\Z\�b[\08D\�+l\0\�hx�m\�\r��-\0��\�|\��Q\Zη-\0�\�p\��i\ZN�-\0�\�d\���\Z��-\0��\�X\���\Zδ-\0�\�@\��\�\ZN�-\0�\�(\���\Z��-\0��\�\��+4�c[\0x��Cl\0o\�p�m\�E\Zo[\0x��\�\�\0ޥ\�ٶ�\�ix�m\�u\Z�j[\0x��\�\�\0^�\�a���kx�m\�hx�m\�gh�n\��\��ݶ��\�m\0?L\�7\�\0~��\�-\0�`\r�\�\0~��{m\0?^\�]�\0�_\�-�\0��\�z\�\0��\�J\�\0\�p�m�\�p�m�_h���\0��5|�m���\�Km\0�����-\0�\Z�ȶ\0�\�i�\"\�\0��\�Ӷ\0>�\�s�\0>�\��\0>�\�Om\0���?�-\0�G\Z�ȶ\0��j�#\�\0�\�\�\0>�ჶ\0>�\�#�\0>�\�m\0|��߶-\0�\Z~϶\0�i�=\�\0_�\�\�l\0|���-\0�\Z��m��\��?m\0|��_\�\0�@\�/l\0\\�᯶\0.\��\�\0�hH�\0n\��_�\0�\��7\�\0Wj���\0�Z\�o\�\0�:\r�-\0�i\rd[\0�m�ȶ�\�\Z>a[\0��m��-�����-\0�\�6�\�>�\�\�l��\�w\�~O\�W\��o\�6\�m[���kl�wh�\'\���\�z\�p��y�m�\�\Zn�-\0Wj�sl\�O\�p�m�Fۜi[~��o�-\0_�m\�n[^�\��\�s\�\�\�\�\Z�j[\0>�m~�m9Yóm�oh��d[N\�p�m����a�\�X\r�\���m~�m9SËl�S�\�ϳ-gj���x���ٶ\�4\r|¶\0ߪm�\�r��ζ\0�j�j[��klp��\�l˳5p�m�N\��\��`\r|�m>�m�=\��<\r<ɶ\0��m��my��j[��\��ڶ<C�\�~����m˷j\�@\�\�K�\r\�b[�O�\�~[\�\0��-ߤ��ؖ�j\�m\�7i\���\�Lm\�h[�Co�-�j\�\�r�H�\�\��1�\�^\r\0�lˍ\Z\0 ٖ5\0@�-7j\0��ؖ[4\0�ٖ\�5\0�_m\�\�\Z\0௶\�b\r\0�W\�r�\0��m�X\0�Ͷ\\�\0�ɶ\\�\0�ɶ\\�\0�ɶ\\�\0�ɶ\\�\0~a[�\�\0\0��-\�h\0�_ۖ4\0��m\�\Z\0\�׶\����\�y\�;\0\0\0\0IEND�B`�',2);
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
