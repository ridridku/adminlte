/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : cendana

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2017-10-11 08:58:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'f0a047143d1da15b630c73f0256d5db0', 'Oziluwfar', 'profil2.jpg');
INSERT INTO `admin` VALUES ('2', 'tgl_hrd', 'f4e404c7f815fc68e7ce8e3c2e61e347', 'Mesut ', 'profil2.jpg');

-- ----------------------------
-- Table structure for kelamin
-- ----------------------------
DROP TABLE IF EXISTS `kelamin`;
CREATE TABLE `kelamin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kelamin
-- ----------------------------
INSERT INTO `kelamin` VALUES ('1', 'Laki laki');
INSERT INTO `kelamin` VALUES ('2', 'Perempuan');

-- ----------------------------
-- Table structure for kota
-- ----------------------------
DROP TABLE IF EXISTS `kota`;
CREATE TABLE `kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO `kota` VALUES ('1', 'Malang');
INSERT INTO `kota` VALUES ('3', 'Blitar');
INSERT INTO `kota` VALUES ('4', 'Tulungagung');
INSERT INTO `kota` VALUES ('17', 'Jakarta');
INSERT INTO `kota` VALUES ('21', 'Surabaya');
INSERT INTO `kota` VALUES ('22', 'Paris');
INSERT INTO `kota` VALUES ('23', 'BRU');
INSERT INTO `kota` VALUES ('24', 'A');
INSERT INTO `kota` VALUES ('25', 'Ss');
INSERT INTO `kota` VALUES ('26', 'Bb');
INSERT INTO `kota` VALUES ('27', 'Vv');
INSERT INTO `kota` VALUES ('28', 'V');

-- ----------------------------
-- Table structure for pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `id_kota` int(11) DEFAULT NULL,
  `id_kelamin` int(1) DEFAULT NULL,
  `id_posisi` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pegawai
-- ----------------------------
INSERT INTO `pegawai` VALUES ('9', 'zzzzzz', '085736333728', '1', '1', '2', '1');
INSERT INTO `pegawai` VALUES ('11', 'Mustofa Halim', '081330493322', '1', '1', '3', '1');
INSERT INTO `pegawai` VALUES ('12', 'Dody Ahmad Kusuma Jaya', '083854520015', '1', '1', '2', '1');
INSERT INTO `pegawai` VALUES ('13', 'Mokhammad Choirul Ikhsan', '085749535400', '3', '1', '2', '1');
INSERT INTO `pegawai` VALUES ('14', 'Achmad Chadil Auwfar', '08984119934', '2', '1', '1', '1');
INSERT INTO `pegawai` VALUES ('15', 'Rizal Ferdian', '087777284179', '1', '1', '3', '1');
INSERT INTO `pegawai` VALUES ('16', 'Redika Angga Pratama', '083834657395', '1', '1', '3', '1');
INSERT INTO `pegawai` VALUES ('8', 'Tolkha Hasan', '081233072122', '1', '1', '4', '1');
INSERT INTO `pegawai` VALUES ('10', 'Wawan Dwi Prasetyo', '085745966707', '4', '1', '4', '1');
INSERT INTO `pegawai` VALUES ('1', 'Tolkha Hasan', '081233072122', '1', '1', '4', '1');
INSERT INTO `pegawai` VALUES ('2', 'Faiq Fajrullah', '085736333728', '1', '1', '2', '1');
INSERT INTO `pegawai` VALUES ('3', 'Wawan Dwi Prasetyo', '085745966707', '4', '1', '4', '1');
INSERT INTO `pegawai` VALUES ('4', 'Mustofa Halim', '081330493322', '1', '1', '3', '1');
INSERT INTO `pegawai` VALUES ('5', 'Dody Ahmad Kusuma Jaya', '083854520015', '1', '1', '2', '1');
INSERT INTO `pegawai` VALUES ('6', 'Mokhammad Choirul Ikhsan', '085749535400', '3', '1', '2', '1');
INSERT INTO `pegawai` VALUES ('7', 'Achmad Chadil Auwfar', '08984119934', '2', '1', '1', '1');

-- ----------------------------
-- Table structure for posisi
-- ----------------------------
DROP TABLE IF EXISTS `posisi`;
CREATE TABLE `posisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of posisi
-- ----------------------------
INSERT INTO `posisi` VALUES ('1', 'IT KOMPUTER');
INSERT INTO `posisi` VALUES ('2', 'HRD');
INSERT INTO `posisi` VALUES ('3', 'Keuangan');
INSERT INTO `posisi` VALUES ('4', 'Produk');
INSERT INTO `posisi` VALUES ('5', 'Web Developer');

-- ----------------------------
-- Table structure for tbl_ecom
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ecom`;
CREATE TABLE `tbl_ecom` (
  `ORDER_SN` varchar(255) NOT NULL,
  `PRODUCT_ID` varchar(255) NOT NULL,
  `SKU_FOR_PRODUCT_ID` varchar(255) DEFAULT NULL,
  `MODEL_ID` varchar(255) DEFAULT NULL,
  `NO_INDUK_FOR_MODEL_ID` varchar(255) DEFAULT NULL,
  `ITEM_NAME` varchar(255) DEFAULT NULL,
  `MODEL_NAME` varchar(255) DEFAULT NULL,
  `QTY` varchar(255) DEFAULT NULL,
  `ORDER_VALUE` varchar(255) DEFAULT NULL,
  `SHIPPING_OPTION` varchar(255) DEFAULT NULL,
  `SHIPPING_PAID_BY_BUYER` varchar(255) DEFAULT NULL,
  `BUYER_USER_ID` varchar(255) DEFAULT NULL,
  `BUYER_USER_NAME` varchar(255) DEFAULT NULL,
  `BUYER_REAL_NAME` varchar(255) DEFAULT NULL,
  `TEL_BUYER` varchar(255) DEFAULT NULL,
  `BUYER_ADDRES` varchar(255) DEFAULT NULL,
  `BUYER_NOTE` varchar(255) DEFAULT NULL,
  `PURCHASED_DATE` date DEFAULT NULL,
  `SPESIFIC_PURCHASE_TIME` datetime DEFAULT NULL,
  `PAY_DATE` date DEFAULT NULL,
  `SPECIFIC_PAY_TIME` datetime DEFAULT NULL,
  `ORDER_STATUS` varchar(255) DEFAULT NULL,
  `SHIPPING_PAID_BY_SHOPEE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_ecom
-- ----------------------------
INSERT INTO `tbl_ecom` VALUES ('17092610157HYT8', '82236203', 'bundling 10000040 & 10000500', '0', '', 'Olay Total Effects 7 in 1 Day Cream Normal SPF 15 (50 gr)', '', '1', '99000', 'J&T Express', '0', '8744010', 'dithaarbas', 'Ditha Aryani Abas', '6285813574480', 'PT. MULTISUKSES WAHANA KARYA (HIGHLANDER GENSET) Pergudangan prima center 1 blok d no.5 jl. Pool ppd pesing, jakarta barat, KOTA JAKARTA BARAT, CENGKARENG, DKI JAKARTA, ID, 11710', 'Kirim hari ini via GOJEK. Thankyou', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '10000');
INSERT INTO `tbl_ecom` VALUES ('17092610157HYT8', '82236213', '055551', '0', '', 'Olay Total Effects 7in1 Anti-ageing Night Cream 50gr', '', '1', '99000', 'J&T Express', '0', '8744010', 'dithaarbas', 'Ditha Aryani Abas', '6285813574480', 'PT. MULTISUKSES WAHANA KARYA (HIGHLANDER GENSET) Pergudangan prima center 1 blok d no.5 jl. Pool ppd pesing, jakarta barat, KOTA JAKARTA BARAT, CENGKARENG, DKI JAKARTA, ID, 11710', 'Kirim hari ini via GOJEK. Thankyou', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '10000');
INSERT INTO `tbl_ecom` VALUES ('170926231876SRC', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '0', '29779015', 'ucha_hs', 'Yusra Dian', '6289611205702', 'Perum bukit asri blok A5 no.14, KAB. BOGOR, CIOMAS, JAWA BARAT, ID, 16610', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '20000');
INSERT INTO `tbl_ecom` VALUES ('170926231876SRC', '398447324', '10000637', '0', '', 'Downy Pelembut Pakaian Passion Refill 800ml ( PULAU JAWA DAN LAMPUNG ONLY )', '', '1', '28500', 'J&T Express', '0', '29779015', 'ucha_hs', 'Yusra Dian', '6289611205702', 'Perum bukit asri blok A5 no.14, KAB. BOGOR, CIOMAS, JAWA BARAT, ID, 16610', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '20000');
INSERT INTO `tbl_ecom` VALUES ('170926234677DW3', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '2267022', 'dloving_shop', 'Annie selvia', '6287878418645', 'Ruko kapuk muara blok C32 RT06/01  ( DEKAT PABRIK BAKSO IKAN), KOTA JAKARTA UTARA, PENJARINGAN, DKI JAKARTA, ID, 14460', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092606497EQDK', '472092686', '10000582 bundling', '0', '', 'Paket isi 2 - Rejoice Sampo Rich Halus Lembut 340ml', '', '1', '63800', 'J&T Express', '10000', '13536030', '081225916930_ayu.', 'Ayu', '6281225916930', 'Kontrakan Cijingga Rt001/Rw002 serang cikarang selatan kontrakan bapak haji yanto vermax levis kamar 1131, KAB. BEKASI, CIKARANG SELATAN, JAWA BARAT, ID, 57550', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('170926232276VNH', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '36267034', 'neni_89', 'Neni', '6282214931528', 'Jln. Tegar beriman gg.al-kinanah no 73 rt. 03/04 kel. Pakansari Kec. Cibinong, KAB. BOGOR, CIBINONG, JAWA BARAT, ID, 16915', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092523227AP34', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '9452044', 'amilickitung', 'Ventino Bayu Diarga', '6285233517511', 'Instalasi Radiologi.Jl Raya Tlogomas no 45 Landungsari, Dau, Malang, KAB. MALANG, DAU, JAWA TIMUR, ID, 65151', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '26000');
INSERT INTO `tbl_ecom` VALUES ('170924203779VFA', '95550229', '076173', '0', '', 'Gillette Foamy Shave Cream Menthol 175gr ( PULAU JAWA DAN LAMPUNG ONLY )', '', '1', '33000', 'J&T Express', '0', '7071045', 'bagja.kurnia', 'BAGJA KURNIA ( ADE )', '6289628910845', 'Dsn. Bumirejo Gg. 1 No. 17 RT/RW : 02/06 Ds. Cukir, KAB. JOMBANG, DIWEK, JAWA TIMUR, ID, 61471', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('170924203779VFA', '480912386', '10000641 bundling isi 2', '0', '', 'Paket isi 2 - Gillette Pisau Cukur Blue Simple 3 Isi 4', '', '1', '52000', 'J&T Express', '0', '7071045', 'bagja.kurnia', 'BAGJA KURNIA ( ADE )', '6289628910845', 'Dsn. Bumirejo Gg. 1 No. 17 RT/RW : 02/06 Ds. Cukir, KAB. JOMBANG, DIWEK, JAWA TIMUR, ID, 61471', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('170925221478TFT', '82157873', '10000524', '0', '', 'Head & Shoulder Sampo Cool Menthol (2 pcs x 480 ml)', '', '1', '84600', 'J&T Express', '0', '3485045', 'anindyaolshop', 'ida saida', '6287775511942', 'jl.pulo makmur rt 04 rw 12 no.35 kel.gandaria utara, KOTA JAKARTA SELATAN, KEBAYORAN BARU, DKI JAKARTA, ID, 12140', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '20000');
INSERT INTO `tbl_ecom` VALUES ('1709241911784K9', '227296337', '10000567', '0', '', 'Head & Shoulder Sampo Cool Menthol Iconic 330ml', '', '1', '39900', 'J&T Express', '0', '12382051', 'naffiworld', 'Muhammad hanafi', '6285271506060', 'JL. H. HASAN GANI (LORONG KOLONG), LR. SWADAYA MURNI III, NO.19 - PARIT SEBELAS - TEMBILAHAN KOTA., KAB. INDRAGIRI HILIR, TEMBILAHAN, RIAU, ID, 29212', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '39000');
INSERT INTO `tbl_ecom` VALUES ('1709241911784K9', '480912386', '10000641 bundling isi 2', '0', '', 'Paket isi 2 - Gillette Pisau Cukur Blue Simple 3 Isi 4', '', '1', '52000', 'J&T Express', '0', '12382051', 'naffiworld', 'Muhammad hanafi', '6285271506060', 'JL. H. HASAN GANI (LORONG KOLONG), LR. SWADAYA MURNI III, NO.19 - PARIT SEBELAS - TEMBILAHAN KOTA., KAB. INDRAGIRI HILIR, TEMBILAHAN, RIAU, ID, 29212', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '39000');
INSERT INTO `tbl_ecom` VALUES ('170926190570Q5C', '92748873', '100011', '0', '', 'Whisper Reguler Flow Wings 40s', '', '1', '47500', 'J&T Express', '10000', '31064061', 'kessy71', 'kessy', '6281574590026', 'PT. Buccheri Indonesia, Ruko Centra Latumenten Blok G3, Jln Latumenten Raya No.50, KOTA JAKARTA BARAT, GROGOL PETAMBURAN, DKI JAKARTA, ID, 11460', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('170926190570Q5C', '92749074', '130006', '0', '', 'Whisper Regular Flow Wings 20s', '', '1', '25700', 'J&T Express', '10000', '31064061', 'kessy71', 'kessy', '6281574590026', 'PT. Buccheri Indonesia, Ruko Centra Latumenten Blok G3, Jln Latumenten Raya No.50, KOTA JAKARTA BARAT, GROGOL PETAMBURAN, DKI JAKARTA, ID, 11460', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('17092615187T1MN', '82236203', '055531', '0', '', 'Olay Total Effects 7 in 1 Day Cream Normal SPF 15 (50 gr)', '', '1', '99000', 'J&T Express', '0', '25469076', 'betty170987', 'Wahyuningrum', '6281332226069', 'Jalan kembang turi no 9, RT:02, RW:04, KOTA MALANG, LOWOKWARU, JAWA TIMUR, ID, 65141', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '22000');
INSERT INTO `tbl_ecom` VALUES ('170925193774SKS', '85395556', '055175', '0', '', 'Olay Total Effects 7in1 Day Cream Touch of Foundation SPF 15 50gr', '', '1', '99000', 'J&T Express', '0', '33387087', 'tety1404', 'Inkeu', '6285221919600', 'Bni syariah kcp astana anyar jl kopo no 61 A bandung, KOTA BANDUNG, ASTANA ANYAR, JAWA BARAT, ID, 40241', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '11000');
INSERT INTO `tbl_ecom` VALUES ('1709262330772B2', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '0', '31169090', 'sucinuril', 'Suci', '6285217290003', 'Green Palace, Palem 10-AF, Jl. Kalibata Raya No. 1 Rawajati, KOTA JAKARTA SELATAN, PANCORAN, DKI JAKARTA, ID, 12750', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('170926230776G6P', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '19959095', 've2shop', 'Veve', '6287808161889', 'Perumahan poris indah jln melati2 blok c no 563 cipondoh tgr banten, KOTA TANGERANG, CIPONDOH, BANTEN, ID, 15148', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('170926233277498', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '11000', '34540096', 'dhikasatriyo', 'Dhika satriyo', '6287822431618', 'Jl.Taman sari gang lurah hormat Rt3. Rw.13 no.87/58 kost pondok lurah hormat kec. Bandung wetan 40116(intruksi wateg sumber jaya, KOTA BANDUNG, BANDUNG WETAN, JAWA BARAT, ID, 40116', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092617427WGEA', '118484883', '10000525', '0', '', 'Head & Shoulder Sampo Smooth & Silky 480ml', '', '2', '89800', 'J&T Express', '0', '21201108', 'vie0403', 'Viena', '6281289979786', 'Jalan tambora 1 no.19 , rt 009/02 , jembatan lima , jakarta barat, KOTA JAKARTA BARAT, TAMBORA, DKI JAKARTA, ID, 11220', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '10000');
INSERT INTO `tbl_ecom` VALUES ('17092609017GDQ0', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '8339109', 'ganiiaaa', 'Gania Purnamasari', '6285222276519', 'Komp.Giri mande A 4 no. 4 Cikadut, KOTA BANDUNG, MANDALAJATI, JAWA BARAT, ID, 40195', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '11000');
INSERT INTO `tbl_ecom` VALUES ('17092609557HG7E', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '22827114', 'dedehdudin', 'Dedeh (Dudin Kamaludin)', '6285654839085', 'Dedeh (Dudin Kamaludin) | Jln. RE Martadinata Belakang 272 | RT/RW  01/01 | kec.indihiang | Desa Panyingkiran Indihiang, kota Tasikmalaya, KOTA TASIKMALAYA, INDIHIANG, JAWA BARAT, ID, 46151', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '14000');
INSERT INTO `tbl_ecom` VALUES ('170926200472117', '82236203', '055531', '0', '', 'Olay Total Effects 7 in 1 Day Cream Normal SPF 15 (50 gr)', '', '1', '99000', 'J&T Express', '0', '17972115', 'yudirobiantoro', 'Yudi', '6281380192507', 'Alfamart alam sutera 2,jalan jalur sutra Tangerang alam sutera, KOTA TANGERANG, PINANG (PENANG), BANTEN, ID, 84521', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '10000');
INSERT INTO `tbl_ecom` VALUES ('17092609587HJBR', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '26151126', 'citraa3', 'Citra Kurniawan', '6281289590052', 'INDOSURYA SIMPAN PINJAM JL JENDRAL SUDIRMAN RUKO TANGERANG CITY BUSINESS PARK BLOK D 1 KEC. CIKOKOL, KEL. TANGERANG, KOTA TANGERANG, TANGERANG, BANTEN, ID, 15117', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '10000');
INSERT INTO `tbl_ecom` VALUES ('1709262328770V4', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '10566128', 'niniknurjanah', 'Ninik Nurjanah', '628569044326', 'Pondok Pakulonan Blok M 12 No.7 RT 02/05 Kel.Pakualam, KOTA TANGERANG SELATAN, SERPONG UTARA, BANTEN, ID, 15325', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('1709262330772AA', '95383572', '', '75890760', '10000501', 'Pantene Conditioner 3 Minutes Miracle Quantum  (180ml)', 'Total Damage Care', '2', '43000', 'J&T Express', '11000', '18953129', 'lsuna', 'Lie susiana', '6289629679473', 'Tb. Papanggo(toko bangunan) desa mekarsari jln. Kadu ngampar, citeras, KAB. LEBAK, RANGKASBITUNG, BANTEN, ID, 42312', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('1709262330772AA', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '11000', '18953129', 'lsuna', 'Lie susiana', '6289629679473', 'Tb. Papanggo(toko bangunan) desa mekarsari jln. Kadu ngampar, citeras, KAB. LEBAK, RANGKASBITUNG, BANTEN, ID, 42312', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092605507EBAD', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '20588133', 'nokir70', 'Hj. KHOIROH', '6285257865550', 'perum Griya Mapan Jln Bandung F No 08 KACONGAN SUMENEP, KAB. SUMENEP, KOTA SUMENEP, JAWA TIMUR, ID, 69451', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('17092514497VD0M', '82236209', '055581', '0', '', 'Olay Total Effects 7in1 Day Cream Gentle SPF 15 50gr', '', '1', '99000', 'J&T Express', '0', '3274136', 'kawaiisugoishop', 'Della', '6289653354645', 'Jl. Cideng jaya gg bribin no 19 rt 16 rw 04 desa kertawinangun, KAB. CIREBON, KEDAWUNG, JAWA BARAT, ID, 45153', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '14000');
INSERT INTO `tbl_ecom` VALUES ('170926232276VVN', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '11000', '24759141', 'yelisite', 'yeliana o<drg.Weliamo<	', '6289671201375', 'Jl. Sadireja no. 310/41 Rt 02/ RW03, Sukamaju, Cibeunying Kidul 40121, KOTA BANDUNG, CIBEUNYING KIDUL, JAWA BARAT, ID, 40121', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('170926230576F2X', '224986193', '056043', '0', '', 'Olay White Radiance Intensive Lotion (30 ml)', '', '1', '27900', 'J&T Express', '0', '3727142', 'wardasamira', 'Noni basyarahil', '6285866257181', 'd.a Kantor Kementerian Agama Kota Pekalongan Jl. Majapahit No. 7 Kota Pekalongan, KOTA PEKALONGAN, PEKALONGAN BARAT, JAWA TENGAH, ID, 51111', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '21000');
INSERT INTO `tbl_ecom` VALUES ('170926230576F2X', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '0', '3727142', 'wardasamira', 'Noni basyarahil', '6285866257181', 'd.a Kantor Kementerian Agama Kota Pekalongan Jl. Majapahit No. 7 Kota Pekalongan, KOTA PEKALONGAN, PEKALONGAN BARAT, JAWA TENGAH, ID, 51111', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '21000');
INSERT INTO `tbl_ecom` VALUES ('17092605527EBJA', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '30562147', 'tethiwiedha', 'Teti widaningsih', '6282115634320', 'Jl. Pahlawan kiangroke_ciherang . Kp. Dangdeur rt. 02 rw. 08 ds. Kiangroke, KAB. BANDUNG, BANJARAN, JAWA BARAT, ID, 40377', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '11000');
INSERT INTO `tbl_ecom` VALUES ('170927000777Y9S', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '11000', '1646147', 'pulchrastore', 'Fani Hijjati', '628561703004', 'Jalan Senam III No 8 Sukamiskin, KOTA BANDUNG, ARCAMANIK, JAWA BARAT, ID, 40293', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092609147GNBE', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '6616160', 'salmanurh', 'An. Mulyadi', '6285868777590', 'Jalan Nangka V Nomor 2, RT 01 RW 04, Perumahan Kalinegoro, KAB. MAGELANG, MERTOYUDAN, JAWA TENGAH, ID, 56172', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '24000');
INSERT INTO `tbl_ecom` VALUES ('17092623387785T', '95383572', '', '75890761', '10000500', 'Pantene Conditioner 3 Minutes Miracle Quantum  (180ml)', 'Hair Fall Control', '1', '21500', 'J&T Express', '0', '28722169', 'windriakusuma86', 'tyas', '6282232767674', 'kreditplus jl setia budi 41f-g, KOTA MADIUN, TAMAN, JAWA TIMUR, ID, 00000', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '22000');
INSERT INTO `tbl_ecom` VALUES ('17092623387785T', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '0', '28722169', 'windriakusuma86', 'tyas', '6282232767674', 'kreditplus jl setia budi 41f-g, KOTA MADIUN, TAMAN, JAWA TIMUR, ID, 00000', null, '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '22000');
INSERT INTO `tbl_ecom` VALUES ('17092623387785T', '520893675', '0137243', '0', '', 'Pantene Treatment Total Damage Care 135ml', '', '1', '29900', 'J&T Express', '0', '28722169', 'windriakusuma86', 'tyas', '6282232767674', 'kreditplus jl setia budi 41f-g, KOTA MADIUN, TAMAN, JAWA TIMUR, ID, 00000', null, '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '22000');
INSERT INTO `tbl_ecom` VALUES ('17092610277J8V2', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '17210170', 'taripetruk', 'Lestari', '628566063763', 'Gejagan rt/w 001/12 gemblegan, KAB. KLATEN, KALIKOTES, JAWA TENGAH, ID, 57451', null, '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '27000');
INSERT INTO `tbl_ecom` VALUES ('17092523277ASW3', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '10000', '11866177', 'gendoita01', 'Gendo rosita', '6289670104011', 'Jln bungur raya rt014/06.no.72, KOTA JAKARTA SELATAN, KEBAYORAN LAMA, DKI JAKARTA, ID, 12240', null, '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('170924204279YW6', '480912386', '10000641 bundling isi 2', '0', '', 'Paket isi 2 - Gillette Pisau Cukur Blue Simple 3 Isi 4', '', '1', '52000', 'J&T Express', '10000', '14552179', 'rizkinaayu', 'Rizkina Ayu Khoriri', '628562846652', 'Ruko Mutiara Bekasi Center Jl. Ahmad Yani Kav A no. 16 Kayuringin Jaya, KOTA BEKASI, BEKASI SELATAN, JAWA BARAT, ID, 17144', null, '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092508137JD6J', '95550188', '10000123', '0', '', 'Gillette Pisau Cukur Wanita Daisy Classic (Isi 5)', '', '1', '26400', 'J&T Express', '14000', '30782183', 'hamidnf91', 'Hamid', '6281384650625', 'Perum. Garut City Residence Blok G-4, Desa Muara Sanding,, KAB. GARUT, GARUT KOTA, JAWA BARAT, ID, 44119', null, '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092508137JD6J', '480912386', '10000641 bundling isi 2', '0', '', 'Paket isi 2 - Gillette Pisau Cukur Blue Simple 3 Isi 4', '', '1', '52000', 'J&T Express', '14000', '30782183', 'hamidnf91', 'Hamid', '6281384650625', 'Perum. Garut City Residence Blok G-4, Desa Muara Sanding,, KAB. GARUT, GARUT KOTA, JAWA BARAT, ID, 44119', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('170926231276N6W', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '17393190', 'ratu06', 'Ratu', '6281380373110', 'Komp pondok bahar jl betet 2 blok p no 67 rt 002 rw 006, KOTA TANGERANG, KARANG TENGAH, BANTEN, ID, 15158', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('170926231576PUU', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '36141197', 'margarettamasli', 'Margaretta Masli', '6282180465431', 'jalan taman daanmogot 2 no. 33, KOTA JAKARTA BARAT, GROGOL PETAMBURAN, DKI JAKARTA, ID, 11470', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('1709262334775BH', '224315137', '10000187', '0', '', 'Pantene Kondisioner Daily Moisture Repair 165ml', '', '1', '21900', 'J&T Express', '10000', '19006199', 'dianshafa062', 'Dian Anggraini', '6285715257311', 'Pt. Koyorad kawasan MM2100 industrial twon jl lombok blok N4-7, KAB. BEKASI, CIKARANG BARAT, JAWA BARAT, ID, 17530', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('1709262334775BH', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '19006199', 'dianshafa062', 'Dian Anggraini', '6285715257311', 'Pt. Koyorad kawasan MM2100 industrial twon jl lombok blok N4-7, KAB. BEKASI, CIKARANG BARAT, JAWA BARAT, ID, 17530', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092608147FPNC', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '11771200', 'dania_lz', 'Tessa', '6281281396497', 'MENARA BTPN LT.21 Jl. DR IDE ANAK AGUNG GDE AGUNG KAV 5.5-5.6 CBD MEGA KUNINGAN, KOTA JAKARTA SELATAN, SETIA BUDI, DKI JAKARTA, ID, 12950', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '10000');
INSERT INTO `tbl_ecom` VALUES ('1709270013783UM', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '8957208', 'twentytwo_shop', 'Dewi', '6287881103546', 'jl.Pluit Karang Ayu Blok B 1 Utara, apartemen Green Bay Pluit, tower F25BC, Jakarta Utara-14450., KOTA JAKARTA UTARA, PENJARINGAN, DKI JAKARTA, ID, 14450', 'Tolong di packing yang aman dan yang exp datenya masih lama', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092608427G45K', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '21000', '32008209', 'fannytumewu', 'Fanny tumewu', '6285240717667', 'Jl. Bolian no.120 gogagoman, KOTA KOTAMOBAGU, KOTAMOBAGU BARAT, SULAWESI UTARA, ID, 95715', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '40000');
INSERT INTO `tbl_ecom` VALUES ('17092700107818S', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '5381210', 'putrikatonohardjo', 'Putri andam dewi', '6287882956783', 'Jln Triloka 6 No.K1 komplek MBAU RT 03/Rw 04, KOTA JAKARTA SELATAN, PANCORAN, DKI JAKARTA, ID, 12780', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092608577GBB7', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '34163216', 'yanihuda', 'Arina', '6281320207790', 'Jalan Purwakarta, Komp. Bougenville blok f-5, Antapani, KOTA BANDUNG, ANTAPANI (CICADAS), JAWA BARAT, ID, 40291', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '11000');
INSERT INTO `tbl_ecom` VALUES ('17092609337H1NN', '199008986', '10000582', '0', '', 'Rejoice Sampo Rich Halus Lembut 340ml', '', '3', '76500', 'J&T Express', '0', '4152218', 'markasbayi', 'Rianah', '6285921215924', 'Taman Pegangsaan Indah blok N no.10, KOTA JAKARTA UTARA, KELAPA GADING, DKI JAKARTA, ID, 14250', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '20000');
INSERT INTO `tbl_ecom` VALUES ('17092615517TVBX', '82236209', '055581', '0', '', 'Olay Total Effects 7in1 Day Cream Gentle SPF 15 50gr', '', '1', '99000', 'J&T Express', '0', '11439223', 'tantinurhidayah21', 'Tanti nurhidayah', '6281215959516', 'PT. Alun nusantara. Jln mulawarman no.45 rt.32 kelurahan manggar kecamatan balikpapan timur, KOTA BALIKPAPAN, BALIKPAPAN TIMUR, KALIMANTAN TIMUR, ID, 76117', 'Olay day cream gentle spf 15', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '40000');
INSERT INTO `tbl_ecom` VALUES ('170926230876HR3', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '31173239', 'bowo.adira', 'Bowo', '628128934974', 'Graha Adira Jl. MT Haryonokav 42, KOTA JAKARTA SELATAN, PANCORAN, DKI JAKARTA, ID, 12770', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092523347AXW1', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '12086242', 'lovely_fi96', 'FIFI', '6281929482966', 'MS Advertising - Jl. Jend. Sudirman Lrg. Pemulutan No. 908 B (Belakang Restoran Cipta Rasa) Palembang, KOTA PALEMBANG, ILIR TIMUR I, SUMATERA SELATAN, ID, 30244', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '22000');
INSERT INTO `tbl_ecom` VALUES ('170926234777ETY', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '35424244', 'sammi.pakpahan91', 'SAMMY PAKPAHAN', '628986125128', 'Perumahan pondok Sani jl Sadewa III blok B7 no 11 RT.005RW.005 Bekasi barat, KOTA BEKASI, MEDAN SATRIA, JAWA BARAT, ID, 17181', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092609437H7UU', '82236203', '055531', '0', '', 'Olay Total Effects 7 in 1 Day Cream Normal SPF 15 (50 gr)', '', '1', '99000', 'J&T Express', '0', '10765248', 'nonanashwa', 'Toko Nammy', '6281210471161', 'jln. kartini no. 35 (sebelah timur RS Palang Biru) gombong kebumen 54411, KAB. KEBUMEN, GOMBONG, JAWA TENGAH, ID, 54411', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('17092609437H7UU', '82236213', '055551', '0', '', 'Olay Total Effects 7in1 Anti-ageing Night Cream 50gr', '', '1', '99000', 'J&T Express', '0', '10765248', 'nonanashwa', 'Toko Nammy', '6281210471161', 'jln. kartini no. 35 (sebelah timur RS Palang Biru) gombong kebumen 54411, KAB. KEBUMEN, GOMBONG, JAWA TENGAH, ID, 54411', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('17092610077HSQV', '118484883', '10000525', '0', '', 'Head & Shoulder Sampo Smooth & Silky 480ml', '', '2', '89800', 'J&T Express', '0', '26822251', 'noivamya', 'Vita', '6285220872049', 'Jl. Ciumbuleuit Gg. H. Syarif 31/155C, KOTA BANDUNG, COBLONG, JAWA BARAT, ID, 40141', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '11000');
INSERT INTO `tbl_ecom` VALUES ('1709262328771AK', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '14354265', 'silviaharyantih_evi', 'silvia haryantih (evi)', '6283890934655', 'jl alfalah 2 kp kecil rt 002/08 no 39 sukabumi selatan, KOTA JAKARTA BARAT, KEBON JERUK, DKI JAKARTA, ID, 11560', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092610077HSE1', '85395556', '055175', '0', '', 'Olay Total Effects 7in1 Day Cream Touch of Foundation SPF 15 50gr', '', '1', '99000', 'J&T Express', '0', '15892275', 'lialaelasari21', 'Lia laelasari', '6285603164583', 'Kp babakan ciajur rt 8 rw 21 desa sukamanah kecamatan pangalengan, KAB. BANDUNG, PANGALENGAN, JAWA BARAT, ID, 40378', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '28000');
INSERT INTO `tbl_ecom` VALUES ('17092610077HSE1', '179875944', '10000603', '0', '', 'Downy Pelembut Pakaian Sunrise Fresh Refill 1.6L( PULAU JAWA DAN LAMPUNG ONLY )', '', '1', '37500', 'J&T Express', '0', '15892275', 'lialaelasari21', 'Lia laelasari', '6285603164583', 'Kp babakan ciajur rt 8 rw 21 desa sukamanah kecamatan pangalengan, KAB. BANDUNG, PANGALENGAN, JAWA BARAT, ID, 40378', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '28000');
INSERT INTO `tbl_ecom` VALUES ('17092610177J13J', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '25113277', 'rindamiyongkeceng', 'Iis', '6281804485780', 'Krajan 05/03 no.11 Mojosongo Jebres Surakarta 57127, KOTA SURAKARTA (SOLO), JEBRES, JAWA TENGAH, ID, 57127', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '18000');
INSERT INTO `tbl_ecom` VALUES ('170926230876H82', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '24854278', 'tantrigloria', 'tantri gloriawati', '6287885522826', 'ibox kota kasablanka lt UG 36-38, jl casablanka no88 rt 16/05 kel menteng dalam kec tebet, KOTA JAKARTA SELATAN, TEBET, DKI JAKARTA, ID, 12870', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('1709241215707BH', '227503059', '10000115', '0', '', 'Rejoice Kondisioner Rich Halus Lembut 320ml', '', '1', '31900', 'J&T Express', '0', '11819280', 'rosamegawati', 'Rosa (PT. Tiga Permata Logistik)', '6285646299995', 'PT. Tiga Permata Logistik (samping auto 2000), KAB. SIDOARJO, GEDANGAN, JAWA TIMUR, ID, 61254', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '19000');
INSERT INTO `tbl_ecom` VALUES ('1709241215707BH', '472092686', '10000582 bundling', '0', '', 'Paket isi 2 - Rejoice Sampo Rich Halus Lembut 340ml', '', '1', '51000', 'J&T Express', '0', '11819280', 'rosamegawati', 'Rosa (PT. Tiga Permata Logistik)', '6285646299995', 'PT. Tiga Permata Logistik (samping auto 2000), KAB. SIDOARJO, GEDANGAN, JAWA TIMUR, ID, 61254', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '19000');
INSERT INTO `tbl_ecom` VALUES ('170926232376WA7', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '10235282', 'kennybutik_', 'Andry Sugiarto', '628119834876', 'Jalan Kampung Jawa 4 No 10 Rt 002 Rw 10, KOTA JAKARTA BARAT, TAMAN SARI, DKI JAKARTA, ID, 11130', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092608047FJHX', '433704566', 'bundling 055551 & 055531', '0', '', 'Olay Set Perawatan Anti Aging', '', '1', '189670', 'J&T Express', '0', '1850285', 'alliyyariani', 'Alliyya Hijriani', '6281380715577', 'Mutiara Gading Timur Cluster Columbus Mansion Blok P05 No.07 RT013/018 Kel.Mustikajaya, KOTA BEKASI, BEKASI TIMUR, JAWA BARAT, ID, 17158', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '10000');
INSERT INTO `tbl_ecom` VALUES ('170926223975T49', '133802918', '10000390 Bundling', '0', '', 'Paket Isi 2 - Head & Shoulder Sampo Lemon Fresh (Anti Dandruff) 330 ml', '', '1', '75800', 'J&T Express', '0', '7165286', 'zubaidifanani', 'Zubaidi Fanani', '6285226997676', 'Jln. Tanjung Sari II Lr. Anggrek No.59 RT35 Bukit Sangkal, KOTA PALEMBANG, KALIDONI, SUMATERA SELATAN, ID, 30114', '', '2017-10-02', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '22000');
INSERT INTO `tbl_ecom` VALUES ('170926235177HB4', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '30933286', 'ninesepti', 'Nine', '6281218620215', 'Pesona gading cibitung 2 blok AC3 no. 12A, KAB. BEKASI, CIBITUNG, JAWA BARAT, ID, 12942', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('1709241909782V2', '480912386', '10000641 bundling isi 2', '0', '', 'Paket isi 2 - Gillette Pisau Cukur Blue Simple 3 Isi 4', '', '1', '52000', 'J&T Express', '10000', '12008289', 'rusdys', 'rusdy suwardy', '62818637392', 'Jl.Adhi karya Rt.015 Rw.05 No.88 kedoya selatan, KOTA JAKARTA BARAT, KEBON JERUK, DKI JAKARTA, ID, 11520', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('1709261924714NP', '224986193', '056043', '0', '', 'Olay White Radiance Intensive Lotion (30 ml)', '', '1', '27900', 'J&T Express', '10000', '18097296', 'huzaifahahadia', 'Huzaifah ahadia', '6282167750750', 'Jl. Buncit raya gg langgar rt.002/002 no.62 ( dibelakang gedung graha kramayudha ), KOTA JAKARTA SELATAN, PANCORAN, DKI JAKARTA, ID, 12760', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('1709251833739TQ', '82236203', '055531', '0', '', 'Olay Total Effects 7 in 1 Day Cream Normal SPF 15 (50 gr)', '', '2', '198000', 'J&T Express', '74000', '9298299', 'irmasimaela79', 'Firmanita Simaela', '6281399747071', 'GKII EFFATA, Jalan SD Percobaan no. 25, KAB. JAYAWIJAYA, WAMENA, PAPUA, ID, 99511', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '40000');
INSERT INTO `tbl_ecom` VALUES ('1709262337777QX', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '28064302', 'vitria84', 'Vitria', '6281219933838', 'Jl ekor kuning 4 no 31 Rt/Rw 007/007 kel jati, kec pulogadung Rawamangun jakarta timur 13220, KOTA JAKARTA TIMUR, PULO GADUNG, DKI JAKARTA, ID, 13220', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092406467TG0X', '82208641', '10000482', '0', '', 'Pampers Popok Celana L-42 Premium Care', '', '1', '127400', 'J&T Express', '12000', '8192318', 'nurcahyoadi', 'NURCAHYO ADI / TRI ANDRIYA W', '62818456717', 'RANDULAWANG RT.1 RW.2 KEL.JETIS, KAB. SUKOHARJO, SUKOHARJO, JAWA TENGAH, ID, 12345', 'L-42 ya sis thx', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '30000');
INSERT INTO `tbl_ecom` VALUES ('170927000978131', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '36286322', 'jimyjiauw', 'Jimy', '6282114063282', 'Rusun tambora IV blok b lt.2. No.14, KOTA JAKARTA BARAT, TAMBORA, DKI JAKARTA, ID, 113330', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('170926230776GH8', '338484025', 'bundling 10000040 & 10000500', '244732789', '10000040 & 10000500', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', 'Hairfall Control', '1', '56280', 'J&T Express', '10000', '34928325', '88stevcahyadi', 'Steven', '6285714005600', 'Toko Super Jalan Kaliabang Raya No.21 Rt. 03 Rw. 006 (sebelah Kimia Farma gg. Damai) Perwira, KOTA BEKASI, BEKASI UTARA, JAWA BARAT, ID, 17122', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '0');
INSERT INTO `tbl_ecom` VALUES ('17092609117GKDR', '118445819', 'bundling 10000040 & 10000500', '0', '', 'Pantene Sampo Hair Fall Control 750ml', '', '1', '60700', 'J&T Express', '0', '7273328', 'seruninabila', 'Seruni Nabila', '6285311862667', 'CommonRoom jln. Cilandak tengah raya no 1 ( detail box area) Rt 002 Rw 001 kelurahan cilandak barat, KOTA JAKARTA SELATAN, CILANDAK, DKI JAKARTA, ID, 12430', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '20000');
INSERT INTO `tbl_ecom` VALUES ('17092609117GKDR', '205770387', '10000500', '0', '', 'Pantene Kondisioner 3 Minutes Miracle Quantum Hair Fall Control 180ml', '', '1', '21500', 'J&T Express', '0', '7273328', 'seruninabila', 'Seruni Nabila', '6285311862667', 'CommonRoom jln. Cilandak tengah raya no 1 ( detail box area) Rt 002 Rw 001 kelurahan cilandak barat, KOTA JAKARTA SELATAN, CILANDAK, DKI JAKARTA, ID, 12430', '', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', 'order_paid', '20000');
INSERT INTO `tbl_ecom` VALUES ('170927000477W53', '82157833', 'bundling 10000040 & 10000500', '0', '', 'Head & Shoulders Sampo Cool Blast 165 ml', '', '1', '22500', 'J&T Express', '0', '28411333', 'nitatriawulandari', 'Nita tria wulandari', '62895359582258', 'Jln.kopo sayati g.h.abbas no.33 rt.01 rw.03 desa.sayati, KAB. BANDUNG, MARGAHAYU, JAWA BARAT, ID, 40228', 'Mohon dipacking yg rapi ya makasih........p', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', '', '');
INSERT INTO `tbl_ecom` VALUES ('170927000477W53', '83850325', '160227', '0', '', 'Downy Pelembut Pakaian Antibacteria Refill 1L ( PULAU JAWA DAN LAMPUNG ONLY )', '', '1', '29000', 'J&T Express', '0', '28411333', 'nitatriawulandari', 'Nita tria wulandari', '62895359582258', 'Jln.kopo sayati g.h.abbas no.33 rt.01 rw.03 desa.sayati, KAB. BANDUNG, MARGAHAYU, JAWA BARAT, ID, 40228', 'Mohon dipacking yg rapi ya makasih........p', '0000-00-00', '2017-10-10 09:53:06', '2017-10-10', '2017-10-10 09:53:06', '', '');

-- ----------------------------
-- Table structure for tbl_produk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE `tbl_produk` (
  `product__id` int(11) NOT NULL AUTO_INCREMENT,
  `produk__sku` varchar(255) NOT NULL,
  `produk__desc` varchar(255) DEFAULT NULL,
  `produk__user_created` int(11) DEFAULT NULL,
  `produk__user_updated` int(11) DEFAULT NULL,
  `produk__date_created` datetime DEFAULT NULL,
  `produk__date_updated` datetime NOT NULL,
  PRIMARY KEY (`product__id`,`produk__sku`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_produk
-- ----------------------------
INSERT INTO `tbl_produk` VALUES ('1', '82236203', 'Olay Total Effects 7 in 1 Day Cream Normal SPF 15 (50 gr)', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('2', '82236213', 'Olay Total Effects 7in1 Anti-ageing Night Cream 50gr', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('3', '338484025', 'Pantene Sampo 480ml FREE Kondisioner 3 Minutes Miracle 180ml ( Hairfall Control )', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('4', '398447324', 'Downy Pelembut Pakaian Passion Refill 800ml ( PULAU JAWA DAN LAMPUNG ONLY )', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('5', '472092686', 'Paket isi 2 - Rejoice Sampo Rich Halus Lembut 340ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('6', '433704566', 'Olay Set Perawatan Anti Aging', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('7', '95550229', 'Gillette Foamy Shave Cream Menthol 175gr ( PULAU JAWA DAN LAMPUNG ONLY )', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('8', '480912386', 'Paket isi 2 - Gillette Pisau Cukur Blue Simple 3 Isi 4', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('9', '82157873', 'Head & Shoulder Sampo Cool Menthol (2 pcs x 480 ml)', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('10', '227296337', 'Head & Shoulder Sampo Cool Menthol Iconic 330ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('11', '92748873', 'Whisper Reguler Flow Wings 40s', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('12', '92749074', 'Whisper Regular Flow Wings 20s', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('13', '85395556', 'Olay Total Effects 7in1 Day Cream Touch of Foundation SPF 15 50gr', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('14', '229735849', 'Paket isi 2 - Downy Pelembut Pakaian Sunrise Fresh Refill 900ml (PULAU JAWA DAN LAMPUNG ONLY)', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('15', '118484883', 'Head & Shoulder Sampo Smooth & Silky 480ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('16', '95383572', 'Pantene Conditioner 3 Minutes Miracle Quantum  (180ml)', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('17', '82236209', 'Olay Total Effects 7in1 Day Cream Gentle SPF 15 50gr', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('18', '224986193', 'Olay White Radiance Intensive Lotion (30 ml)', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('19', '520893675', 'Pantene Treatment Total Damage Care 135ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('20', '95550188', 'Gillette Pisau Cukur Wanita Daisy Classic (Isi 5)', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('21', '224315137', 'Pantene Kondisioner Daily Moisture Repair 165ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('22', '229763996', 'Paket isi 2 - Downy Pelembut Pakaian Sunrise Fresh Refill 1.6L ( PULAU JAWA DAN LAMPUNG ONLY )', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('23', '199008986', 'Rejoice Sampo Rich Halus Lembut 340ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('24', '179875944', 'Downy Pelembut Pakaian Sunrise Fresh Refill 1.6L( PULAU JAWA DAN LAMPUNG ONLY )', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('25', '227503059', 'Rejoice Kondisioner Rich Halus Lembut 320ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('26', '133802918', 'Paket Isi 2 - Head & Shoulder Sampo Lemon Fresh (Anti Dandruff) 330 ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('27', '82208641', 'Pampers Popok Celana L-42 Premium Care', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('28', '118445819', 'Pantene Sampo Hair Fall Control 750ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('29', '118484090', 'Head & Shoulder Sampo Cool Menthol  480 ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('30', '205770387', 'Pantene Kondisioner 3 Minutes Miracle Quantum Hair Fall Control 180ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('31', '82157833', 'Head & Shoulders Sampo Cool Blast 165 ml', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('32', '9/26/2017', 'order_paid', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');
INSERT INTO `tbl_produk` VALUES ('33', '83850325', 'Downy Pelembut Pakaian Antibacteria Refill 1L ( PULAU JAWA DAN LAMPUNG ONLY )', '1', '1', '2017-10-03 10:08:21', '2017-10-03 10:08:21');

-- ----------------------------
-- Table structure for tbl_sys_master_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sys_master_menu`;
CREATE TABLE `tbl_sys_master_menu` (
  `menu_id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_label` text,
  `menu_link` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `menu_normal_icon` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `menu_mouseover_icon` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `menu_expanded_icon` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `menu_tooltip` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `menu_target` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `menu_style` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `menu_title_style` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `menu_level` smallint(1) DEFAULT NULL,
  `menu_parent` int(4) DEFAULT NULL,
  `menu_sort` int(1) DEFAULT NULL,
  `menu_active` int(1) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=119;

-- ----------------------------
-- Records of tbl_sys_master_menu
-- ----------------------------
INSERT INTO `tbl_sys_master_menu` VALUES ('1', 'HOME', 'home', 'fa fa-home', 'folder1.gif', 'folder1.gif', 'Data Master', null, null, null, '0', '0', '0', '1');
INSERT INTO `tbl_sys_master_menu` VALUES ('2', 'PENGATURAN', '', 'fa fa-cog', 'folder1.gif', 'folder1.gif', 'Modul Lembur', null, null, null, '0', '0', '0', '1');
INSERT INTO `tbl_sys_master_menu` VALUES ('3', 'Pegawai', 'pegawai', 'fa fa-bolt', 'folder1.gif', 'folder1.gif', 'MASTER DATA', null, null, null, '1', '4', '1', '0');
INSERT INTO `tbl_sys_master_menu` VALUES ('4', 'Posisi', 'posisi', 'fa fa-location-arrow', 'text.gif', 'text.gif', 'Penempatan Pegawai', 'mainFrame', null, null, '1', '4', '2', '0');
INSERT INTO `tbl_sys_master_menu` VALUES ('5', 'Kota', 'kota', ' fa fa-location-arrow', 'text.gif', 'text.gif', 'Data Pegawai', 'mainFrame', null, null, '1', '4', '3', '0');
INSERT INTO `tbl_sys_master_menu` VALUES ('6', 'Ecommerce', 'ecommerce', 'fa fa-location-arrow', 'folder1.gif', 'folder1.gif', 'Data Master', null, null, null, '1', '2', '4', '1');

-- ----------------------------
-- Table structure for tbl_sys_master_privileges
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sys_master_privileges`;
CREATE TABLE `tbl_sys_master_privileges` (
  `priv_user_id` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `priv_menu_id` int(10) unsigned NOT NULL DEFAULT '0',
  `priv_view` int(1) DEFAULT '0',
  `priv_insert` int(1) DEFAULT '0',
  `priv_edit` int(1) DEFAULT '0',
  `priv_delete` int(1) DEFAULT '0',
  `priv_search` int(1) DEFAULT '0',
  `priv_report` int(1) DEFAULT '0',
  `priv_print` int(1) DEFAULT '0',
  PRIMARY KEY (`priv_user_id`,`priv_menu_id`),
  KEY `id_menu` (`priv_menu_id`),
  KEY `id_user` (`priv_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=43 COMMENT='tabel hak akses user ke menu';

-- ----------------------------
-- Records of tbl_sys_master_privileges
-- ----------------------------
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd', '4', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd', '5', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('personalia', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('personalia', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('personalia', '4', '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('personalia', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '113', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '112', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '7', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '8', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '49', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '21', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '11', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '19', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '10', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '29', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '28', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '159', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '30', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '32', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '36', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '38', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '39', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '40', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '41', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '45', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '42', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '43', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '46', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '47', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '48', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '50', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '51', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '52', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '53', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '54', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '55', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '58', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '57', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '56', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '59', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '60', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '63', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '64', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '66', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '67', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '68', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '69', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '70', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '71', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '72', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '73', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '74', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '75', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '76', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '77', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '78', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '79', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '80', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '81', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '82', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '83', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '84', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '85', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '86', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '87', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '88', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '89', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '90', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '91', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '92', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '6', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin2', '1', '1', '1', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin2', '5', '1', '1', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin2', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '15', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '3', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin2', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin2', '2', '1', '1', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin2', '12', '1', '1', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin2', '13', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom', '2', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom', '17', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hlgm', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hlgm', '20', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hlgm', '19', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hlgm', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hlgm', '3', '1', '0', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hlgm', '15', '1', '0', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '5', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '20', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '19', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '17', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '13', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '31', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '3', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '13', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cbg_pst', '1', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cbg_pst', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cbg_pst', '5', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cbg_pst', '4', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cbg_pst', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cbg_pst', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cbg_pst', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cbg_pst', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '11', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_bdg', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_subang', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_subang', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_subang', '3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_subang', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_subang', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_subang', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_subang', '10', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_subang', '11', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '34', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '33', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_crb', '4', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_crb', '2', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_crb', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_crb', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_crb', '5', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_crb', '19', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_crb', '14', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bom_crb', '18', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '17', '1', '1', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '18', '1', '1', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '10', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '11', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '22', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bandung_bom', '21', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cirebon_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cirebon_bom', '2', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cirebon_bom', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cirebon_bom', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cirebon_bom', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cirebon_bom', '17', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cirebon_bom', '18', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '19', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '20', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '10', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '22', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '21', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '11', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '24', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrgm', '23', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '21', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '10', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '22', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '28', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '30', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '11', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '36', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '34', '0', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '84', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '34', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '34', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '14', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '17', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '14', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '31', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '34', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '65', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '84', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '17', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '13', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '34', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '31', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '14', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '62', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '84', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '13', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '34', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '31', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '14', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '84', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '34', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '38', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '29', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '36', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '32', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '19', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '20', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '35', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '15', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '50', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '56', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '35', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '53', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '44', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '11', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hglm', '37', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '10', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '3', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '51', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '52', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '57', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '17', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '35', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '58', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '62', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '61', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '37', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '69', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '72', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '40', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '56', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '50', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '42', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '6', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '49', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '19', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '17', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '15', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '69', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '72', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '40', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '7', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '8', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '39', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '48', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '54', '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '60', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '64', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '68', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '67', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '28', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '29', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '11', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '30', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '47', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '59', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '63', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '66', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '62', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '57', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '58', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '45', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '44', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '43', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '36', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '32', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '53', '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '51', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '52', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '50', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '42', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '20', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '12', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '72', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '69', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '73', '0', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '15', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '56', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '45', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '44', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '43', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '51', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '52', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '57', '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '58', '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '62', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '66', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '3', '1', '0', '0', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '42', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '50', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '61', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '65', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '66', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '62', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '58', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '57', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '56', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '45', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '44', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '43', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '15', '1', '0', '0', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '69', '1', '0', '0', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '72', '1', '0', '0', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '40', '1', '0', '0', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '70', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '51', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '52', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '6', '1', '1', '1', '0', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '42', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '50', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '56', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '72', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '69', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '15', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '45', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '44', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '43', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '51', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '52', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '57', '1', '1', '1', '0', '1', '0', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '58', '1', '1', '1', '0', '1', '0', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '62', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '40', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '65', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '61', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '72', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '49', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '19', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '17', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '69', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '3', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '15', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '7', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '6', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '53', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '8', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '42', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '45', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '51', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '50', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '44', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '57', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '56', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '52', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '61', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '58', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '65', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '64', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '65', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '57', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '58', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '62', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '51', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '52', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '32', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '29', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '39', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '11', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '28', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '57', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '58', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '51', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '52', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '45', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '66', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '19', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '42', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '62', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '2', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '10', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '67', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '70', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '61', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '65', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '44', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '43', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '52', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '51', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '50', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '58', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '56', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '40', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '75', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '42', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '3', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '15', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '69', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '72', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '40', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '70', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '63', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '59', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '53', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '47', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '11', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '10', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '66', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '45', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '44', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '43', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '52', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '51', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '58', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '62', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '65', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ceo_tmw', '20', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '14', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '65', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '61', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '13', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '2', '1', '0', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '34', '1', '0', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '31', '1', '0', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '14', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '62', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_COOR', '65', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_GA', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '10', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '13', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '31', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '53', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '63', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '51', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '52', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '51', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '52', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '62', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('BDG_GA', '62', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '62', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '51', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '52', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '62', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '62', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '66', '1', '1', '1', '0', '1', '0', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_GA', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_GA', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_GA', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('CRB_GA', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_GA', '10', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_GA', '53', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_GA', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_GA', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_coor', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '61', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '65', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_coor', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_coor', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_coor', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '34', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '31', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '14', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '13', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '62', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SMG_COOR', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_ga', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_ga', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('YGY_GA', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '65', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '61', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('SLO_GA', '62', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '61', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '65', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '34', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '62', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '66', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '31', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '62', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '66', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '69', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '40', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '2', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '34', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '31', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '17', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '70', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '63', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '53', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '11', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '67', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '59', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '47', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '10', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '10', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '11', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '22', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '38', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '18', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '47', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '53', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '59', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '63', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '67', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '70', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '21', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '41', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '55', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '28', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '29', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '39', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '36', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '32', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '48', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '54', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '60', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '64', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '68', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '71', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '62', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '66', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '37', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '20', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '40', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('demo', '43', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '20', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('admin', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '18', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '20', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '42', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '50', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '56', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '5', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '49', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '4', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hgla', '37', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '33', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '74', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '37', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '14', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '14', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '2', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '75', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '17', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '49', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '5', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '77', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '19', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '33', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '74', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '78', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('support_hris', '76', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '4', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '13', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '83', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '77', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '78', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '82', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '81', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '76', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '79', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('cfo_tmw', '80', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '16', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '12', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '81', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ass_hglm', '75', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_bom', '84', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '5', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_ga', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('coor_pst', '84', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat1', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('crb_bom', '84', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('mgl_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '74', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '1', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pwo_bom', '84', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbg_bom', '84', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_bom', '84', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('slo_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_coor', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_coor', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('pti_bom', '84', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '37', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tsk_hrd', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('ygy_ga', '84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('bdg_coor', '16', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '4', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('sbm_bom', '84', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '49', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('smg_bom', '1', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '37', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tbl_sys_master_privileges` VALUES ('tgl_bom', '84', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_sys_master_privileges` VALUES ('hrd_pusat2', '7', '1', '1', '1', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for tbl_sys_master_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sys_master_user`;
CREATE TABLE `tbl_sys_master_user` (
  `user_id` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `user_password` varchar(35) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user_first_name` varchar(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_last_name` varchar(35) DEFAULT NULL,
  `user_date_join` datetime NOT NULL,
  `user_address` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `user_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_gender` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_email` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `user_active_status` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `user_current_login_date` datetime NOT NULL,
  `user_current_login_host` varchar(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `kode_cabang` varchar(20) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `group_user` int(11) DEFAULT NULL,
  `user_session_aktif` int(11) DEFAULT NULL,
  `user_created` int(255) DEFAULT NULL,
  `user_updated` int(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=67 COMMENT='\r\n<option value="">[Pilih Group Pengguna]</option>\r\n<option value="1"  <!--{if $EDIT_LEVEL == 1}--> selected <!--{/if}-->>HR STAFF</option>\r\n<option value="2" <!--{if $EDIT_LEVEL == 2}--> selected <!--{/if}-->>HR SVP CABANG</option>\r\n<option value="2" <!--{if $EDIT_LEVEL == 3}--> selected <!--{/if}-->>BOM</option>\r\n <option value="2" <!--{if $EDIT_LEVEL == 4}--> selected <!--{/if}-->>HR STAFF PUSAT</option>\r\n   <option value="2" <!--{if $EDIT_LEVEL == 5}--> selected <!--{/if}-->>HR SPV PUSAT</option>\r\n <option value="2" <!--{if $EDIT_LEVEL == 6}--> selected <!--{/if}-->>HR MGR PUSAT</option>\r\n <option value="2" <!--{if $EDIT_LEVEL == 7}--> selected <!--{/if}-->>DIREKTUR</option>\r\n <option value="2" <!--{if $EDIT_LEVEL == 8}--> selected <!--{/if}-->>ADMIN</option>\r\n';

-- ----------------------------
-- Records of tbl_sys_master_user
-- ----------------------------
INSERT INTO `tbl_sys_master_user` VALUES ('admin', 'YWRtaW4=', 'MOCHAMAD', 'TAUFIK', '2017-02-21 11:20:21', 'JL Pangauban No 91 bandung', '', '', '', '1', '1', '0000-00-00 00:00:00', '::1', '1', '69', '8', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('tsk_hrd', 'YWxhbmRhMDE5', 'MIKA', 'JAYANTIKA', '2017-02-25 10:53:19', 'Bebedilan', '', '', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '6', '980', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('crb_hrd', 'Y2lyZWJvbg==', 'CAROLINA', 'PRAESSA', '2017-02-21 11:24:44', 'Jl. Intan 3C 8 No. 08 Phu Rt/Rw 02/14 Kel. Kalijaga Kec. Harjamukti ', '08882343831', 'P', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '5', '742', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('hglm', 'YWRtaW4=', 'IMAN', 'TEGUH', '2017-02-21 11:25:17', 'JL Antrasit B 16A', '08889415199', 'L', '', '1', '1', '0000-00-00 00:00:00', '192.168.254.254', '1', '55', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('bdg_hrd', 'MTIzNDU=', 'YANI', 'CAHYANI', '2017-02-21 11:24:11', 'Kp Bojong Genggong', '-', '', '-', '1', '2', '2015-04-06 15:26:00', '192.168.254.254', '2', '464', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('pti_hrd', 'MTIzNDU=', 'ANISAH', '', '2017-02-23 13:25:05', 'Desa Pesagi Rt 008/001, Kayen, Pati', '0888801859650', 'P', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '8', '2061', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('smg_hrd', 'c21nMjAxMA==', 'RIZA', 'DWI', '2017-02-27 15:53:59', 'Jl. Sembungan Utara No. 276', '088809410231', 'L', '0', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '7', '1211', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('pwo_hrd', 'YWRtaW4=', 'GANJAR', 'WIDYANTOMO', '2017-05-04 11:25:55', 'Jl. Kamandaka Gg. Muria 13', '088809415201', 'L', '281631146', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '12', '1826', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('ygy_hrd', 'YWRtaW4=', 'BAYU', '', '2017-07-05 08:34:58', '                                                \r\n                                        ', '', 'L', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '10', '2265', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('sbm_hrd', 'MjEyMjE5', 'DODI', 'GANDANA', '2017-02-24 10:47:11', 'JL. VETERAN I GG. PERSATUAN 2', '08889634169', 'L', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '4', '630', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('sbg_hrd', 'YWRtaW4=', 'HM', 'ALILUDIN', '2017-03-23 15:07:17', 'jln otista gg nangka ', '088801859651', 'L', '', '0', '2', '0000-00-00 00:00:00', '192.168.254.246', '3', '542', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('tgl_hrd', 'cXdlcnR5', 'EKO', 'PRASTYO', '2017-03-21 09:08:37', 'Jl. Rogojampi Ds. Sumurpanggang Rt 01/02 - tegal', '08882623198', 'L', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '9', '1322', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('slo_hrd', 'YWRtaW4=', 'YOHANES', 'CHRISETYO', '2017-07-05 08:40:02', 'Salam RT 1/RW 3, jati, Gatak, Sukoharjo.', '088801859654', 'L', '', '0', '2', '0000-00-00 00:00:00', '192.168.254.254', '11', '1752', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('mgl_hrd', 'YWRtaW4=', 'TRI', 'HARNINGSIH', '2017-02-23 09:49:40', 'Magersari Panjang', '088801859655', 'P', '', '0', '2', '0000-00-00 00:00:00', '192.168.254.254', '13', '2021', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('bdg_bom', 'YWRtaW4=', 'SUMANTO', 'MS', '2017-07-11 16:18:32', 'JL.BALADEWA GG.V NO.50 RT/RW 7/9 PAJAJARAN PAJAJARAN CICENDO', '08882100819', 'L', '(022)6077877', '1', '2', '0000-00-00 00:00:00', '192.168.254.246', '2', '683', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('crb_bom', 'YWRtaW4=', 'TEDDY', 'HERDIANTO', '2017-07-17 16:18:28', 'Jl. Gunung Kelud Ii Dxi No. 117 Rt 01/07 Kel Kecapi Harjamukti Perumnas Cirebon', '08886050561', 'L', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '5', '862', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('tsk_bom', 'YWRtaW4=', 'ACE', 'SYAIFULLOH', '2017-07-17 09:39:40', 'Gg Sukapakir Tengah No 97 197C', '08889421030', 'L', '', '1', '2', '2015-03-03 00:24:00', '192.168.254.254', '6', '1', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('sbm_bom', 'YWRtaW4=', 'CHRISTIANUS', 'PURWONO', '2017-08-22 09:29:36', 'Komp Cingcin Permata Indah Blok GA No 58 RT1102 Soreang', '-', 'L', '-', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '4', '191', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('sbg_bom', 'YWRtaW4=', 'MARDY', 'KARMIRAN', '2017-02-21 13:33:32', 'Komp. GBI Blok B4 No 11A Ciwastra', '08882101584', 'L', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '3', '556', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('tgl_bom', 'YWRtaW4=', 'SUGIARNO', '', '2016-07-29 15:30:15', 'Jl. Melati IV Mejasem Barat No.19 RT.08/RW.08 Tegal', '-', '', '-', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '9', '100921686', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('smg_bom', 'MTIzNDU=', 'UDI', 'PRATIKTO', '2017-05-10 09:35:01', 'Jl. Blanak II No.17, Perum Minomartani, Sleman, Yogyakarta', '08882706224', 'L', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '7', '1738', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('pti_bom', 'YWRtaW4=', 'MARIA', 'MD', '2016-07-29 15:31:56', 'Karangploso RT 001/059 Kel. Maguwoharjo Kec Depok -Sleman', '-', 'P', '-', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '8', '10822623', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('pwo_bom', 'NTYwMzc1MTBPZA==', 'DEDI', 'ROHENDI', '2017-02-20 10:38:06', 'Situ Beet', '08889398291', 'L', '', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '12', '1796', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('ygy_bom', 'YWRtaW4=', 'PURBOWO', '', '2016-07-29 15:33:40', 'Kiyaran Rt/Rw 01/18 Wukirsari Cangkringan Sleman', '088802755061', 'L', '-', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '10', '81021971', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('slo_bom', 'YWRtaW4=', 'CHILD', 'HITRA', '2017-05-03 20:40:01', 'Gawanan Barat', '08886708639', 'L', '', '1', '2', '2015-01-06 18:50:00', '192.168.254.254', '11', '20', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('mgl_bom', 'YWRtaW4=', 'HERI', '', '2017-05-03 20:38:28', '                                                \r\n                                        ', '-', 'L', '-', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '13', '981221772', '3', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('coor_pst', 'YWRtaW4=', 'LUCKY', 'SUHENDI', '2017-02-23 12:45:34', 'KP Bojongsalak', '088801844625', '', '', '1', '1', '2015-04-17 23:33:00', '192.168.254.254', '1', '64', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('support_hris', 'c2VtYW5nYXQ0NQ==', 'GALIH', 'HUMAM', '2016-11-29 08:46:39', 'Kp. Cimaragas', '08889574043', '', 'galih_rite@tmw.co.id', '1', '1', '0000-00-00 00:00:00', '192.168.254.254', '1', '100130048', '2', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('ass_hglm', 'MTIzNDU=', 'IQBAL', 'IQBAL', '2017-08-31 11:38:05', 'Kp Kertasari', '08882000003', 'L', '', '1', '1', '0000-00-00 00:00:00', '192.168.254.254', '1', '56', '1', '0', null, '69', null, '2017-08-31 11:38:05');
INSERT INTO `tbl_sys_master_user` VALUES ('hrd_pusat1', 'MTIzNDU=', 'ECIN', 'WARYATI', '2017-02-21 11:20:43', 'Jl Jatihandap', '088802024688', '', '', '1', '1', '0000-00-00 00:00:00', '192.168.254.79', '1', '35', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('hrd_pusat2', 'MTIzNDU=', 'WAHYU', 'HIDAYAT', '2017-02-23 17:02:39', 'Jl Kiaracondong blk 350 gg sukamaju no 2', '088801859653', 'L', '', '1', '1', '0000-00-00 00:00:00', '192.168.254.75', '1', '94', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('bdg_coor', 'YWRtaW4=', 'SANI', '', '2016-12-28 10:20:53', '                                                \r\n                                        ', '``', 'L', '``', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '2', '502', '2', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('ceo_tmw', 'YWRtaW4=', 'HANAFIE', 'MULIANA', '2016-12-26 14:54:06', 'parahyangan rumah vila 8 / 106', '``', 'L', '``', '1', '1', '0000-00-00 00:00:00', '192.168.254.254', '1', '52', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('cfo_tmw', 'YWRtaW4=', 'AGUSTIN', 'IMELLDA', '2016-12-26 15:11:03', 'Jl Cipaku indah VI No 1', '``', 'P', '``', '1', '1', '0000-00-00 00:00:00', '192.168.254.246', '1', '5', '7', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('bdg_ga', 'YWRtaW4=', 'VERDIX', 'JUNAEDI', '2017-02-21 11:24:27', 'Perum Rancaekek Permai Blok H6 No 5 ', '-', 'L', '-', '1', '2', '0000-00-00 00:00:00', '192.168.254.254', '2', '445', '2', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('crb_ga', 'YWRtaW4=', 'FIKRI', 'MAULAN', '2016-12-29 08:36:31', 'Empty', '-', 'L', '-', '1', '2', '2016-12-29 08:36:31', '2016-12-29 08:36:31', '5', '2863', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('smg_ga', 'YWRtaW4=', 'ARIF', 'YUNANTO', '2016-12-29 15:19:00', 'Kp. Silandak Rt 001 Rw 013, Kel. Purwoyoso, Kec. Ngaliyan', '08883951350', 'L', '-', '1', '2', '2016-12-29 15:19:00', '2016-12-29 15:19:00', '7', '2079', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('smg_coor', 'YWRtaW4=', 'RIZA', 'DWI', '2016-12-29 15:20:16', 'Jl. Sembungan Utara No. 276', '088809410231', 'P', '-', '0', '2', '2016-12-29 15:20:16', '2016-12-29 15:20:16', '7', '2245', '2', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('ygy_ga', 'YWRtaW4=', 'AZIS', 'NURHUDA', '2016-12-29 15:33:35', 'Jambean Rt 09 Rw 04 Menayu Muntilan Magelang', '``', 'L', '``', '1', '2', '2016-12-29 15:33:35', '2016-12-29 15:33:35', '10', '1874', '1', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('slo_ga', 'YWRtaW4=', 'YOHANES', 'CHRISETYO', '2017-02-21 13:34:49', 'Salam RT 1/RW 3, jati, Gatak, Sukoharjo.', '088801859654', 'L', '', '1', '2', '2016-12-29 15:55:37', '2016-12-29 15:55:37', '11', '1752', '2', '0', null, null, null, null);
INSERT INTO `tbl_sys_master_user` VALUES ('demo', 'bWVyZGVrYWF0YXVtYXRp', 'DEMO', '', '2017-01-04 22:39:45', 'jl kopo jaya no 8 A', '-', '', '-', '1', '1', '0000-00-00 00:00:00', '192.168.254.254', '1', '2767', '2', '0', null, null, null, null);

-- ----------------------------
-- Table structure for tbl_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE `tbl_transaksi` (
  `TRX__SALES_ORDER` varchar(20) NOT NULL,
  `TRX__CUSTOMER_ID` varchar(255) NOT NULL,
  `TRX__QTY` varchar(255) DEFAULT NULL,
  `TRX__HEADER` varchar(255) DEFAULT NULL,
  `TRX__PRODUCT_ID` varchar(255) NOT NULL,
  `TRX__SATUAN` varchar(255) DEFAULT NULL,
  `TRX__PURCHASED_DATE` varchar(255) DEFAULT NULL,
  `TRX__PRICE` varchar(255) DEFAULT NULL,
  `TRX__DESKRIPSI_PRODUCT` varchar(255) DEFAULT NULL,
  `TRX__USER_CREATED` int(11) DEFAULT NULL,
  `TRX__USER_UPDATED` int(11) DEFAULT NULL,
  `TRX__DATE_CREATED` datetime DEFAULT NULL,
  `TRX__DATE_UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`TRX__SALES_ORDER`,`TRX__PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_transaksi
-- ----------------------------
INSERT INTO `tbl_transaksi` VALUES ('17092609117GKDR', 'SHOPEE_ID', '1', '', ' 10000040 ', 'PCS', '2017-10-06 14:12:06', '60700', 'Pantene Sampo Hair Fall Control 750ml', '1', '1', '2017-10-06 14:12:06', '2017-10-06 14:12:06');
INSERT INTO `tbl_transaksi` VALUES ('17092609117GKDR', 'SHOPEE_ID', '1', '', '10000500', 'PCS', '2017-10-06 14:12:06', '60700', 'Pantene Sampo Hair Fall Control 750ml', '1', '1', '2017-10-06 14:12:06', '2017-10-06 14:12:06');
INSERT INTO `tbl_transaksi` VALUES ('17092610077HSQV', 'SHOPEE_ID', '2', '', '10000525', 'PCS', '2017-10-06 14:11:34', '89800', 'Head & Shoulder Sampo Smooth & Silky 480ml', '1', '1', '2017-10-06 14:11:34', '2017-10-06 14:11:34');
INSERT INTO `tbl_transaksi` VALUES ('170926223975T49', 'SHOPEE_ID', '1', '', '10000390 ', 'PCS', '2017-10-06 14:12:06', '75800', 'Paket Isi 2 - Head & Shoulder Sampo Lemon Fresh (Anti Dandruff) 330 ml', '1', '1', '2017-10-06 14:12:06', '2017-10-06 14:12:06');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(25) NOT NULL,
  `kat_menu` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', 'Dasboard', 'fa fa-dashboard', '#', '0');
INSERT INTO `tb_menu` VALUES ('2', 'Dasboard 1', 'fa fa-dashboard', 'dashboard', '1');
INSERT INTO `tb_menu` VALUES ('3', 'Dasboard 2', 'fa fa-dashboard', 'dashboard/2', '1');
INSERT INTO `tb_menu` VALUES ('4', 'Seting Menu', 'fa fa-gears', '#', '0');
INSERT INTO `tb_menu` VALUES ('6', 'menu admin', 'fa fa-gear', 'menu', '4');
INSERT INTO `tb_menu` VALUES ('7', 'Page', 'fa fa-folder', 'menu/page', '0');
