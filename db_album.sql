-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 08:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_album`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id_category` varchar(6) NOT NULL,
  `name_category` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id_category`, `name_category`) VALUES
('cate1', 'Album'),
('cate3', 'Lightstick'),
('cate2', 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `id_customer` int(5) NOT NULL,
  `name_customer` varchar(50) NOT NULL,
  `email_customer` varchar(50) NOT NULL,
  `address_customer` varchar(50) NOT NULL,
  `phone_customer` varchar(50) NOT NULL,
  `note_customer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `id_order` int(5) NOT NULL,
  `id_customer` int(5) NOT NULL,
  `date_order` datetime NOT NULL,
  `total_order` decimal(9,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

DROP TABLE IF EXISTS `tbl_order_detail`;
CREATE TABLE `tbl_order_detail` (
  `id_order` int(5) NOT NULL,
  `id_product` varchar(6) NOT NULL,
  `quantity_order` int(6) NOT NULL,
  `unit_price` decimal(9,0) NOT NULL,
  `price_detail` decimal(9,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Triggers `tbl_order_detail`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `id_product` varchar(6) NOT NULL,
  `id_category` varchar(6) NOT NULL,
  `name_product` varchar(150) NOT NULL,
  `unit_price` decimal(9,0) NOT NULL,
  `stock_quantity` int(6) NOT NULL,
  `description_product` text NOT NULL,
  `img_main_product` varchar(500) NOT NULL,
  `img_detail_product` varchar(500) NOT NULL,
  `highlight_product` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `id_category`, `name_product`, `unit_price`, `stock_quantity`, `description_product`, `img_main_product`, `img_detail_product`, `highlight_product`) VALUES
('pro1', 'cate1', 'NCT DOJAEJUNG – The 1st Mini Album [Perfume] (Photobook Ver.)', 500000, 20, '* 1 bìa<p> -  tập sách 96p<p> -  1 loại của cd-r<p> -  ngẫu nhiên 1 ra khỏi 9 gấp áp phích<p> -  thẻ ảnh (nhóm ver.) - ngẫu nhiên 1 ra của 3 loại<p> -  thẻ ảnh (thành viên ver.) - ngẫu nhiên 1 ra khỏi 9 các loại', 'https://lzd-img-global.slatic.net/g/p/371fcb26b7ed353ac711c34c3f8eeb8f.jpg_720x720q80.jpg', 'https://www.ktown4u.com/goods_files/bodys/images/02_-NCT-%EB%8F%84%EC%9E%AC%EC%A0%95_%EB%AF%B8%EB%8B%881%EC%A7%91_%EC%83%81%EC%84%B8-%EC%9D%B4%EB%AF%B8%EC%A7%80(Photobook-Ver.jpg', b'0'),
('pro10', 'cate1', 'aespa – The 3rd Mini Album [MY WORLD] (Intro Ver.) (Random Ver.)', 390000, 10, '* Size: 176*250*6 mm<p> -  Dust Jacket: 1ea (Random out of 4)<p> -  Booklet: 1ea (1 version) (72p)<p> -  Photo Card: 1ea (Random out of 4)<p> -  English Lyric Paper: 1ea<p> -  Folding Poster: 1ea (Random out of 4)', 'https://pos.nvncdn.net/6bea12-26155/ps/20230508_30Iq7YGCFu.jpeg', 'https://www.ktown4u.com/goods_files/bodys/images/01_%20aespa_%EB%AF%B8%EB%8B%883%EC%A7%91_%EC%83%81%EC%84%B8%20%EC%9D%B4%EB%AF%B8%EC%A7%80(Intro%20Ver_).jpg', b'1'),
('pro11', 'cate1', 'iKON – 3RD FULL ALBUM [TAKE OFF] (Random Ver.)', 370000, 13, '* CD<p> -  Booklet (100 P)<p> -  Random Passport Photo<p> -  Random Passport Book<p> -  Random Travel Tag<p> -  Random Deco Sticker<p> -  Random Folded Poster (On Pack)<p> -  Random Photocard (3 P)', 'https://kpopmart.com/36313-large_default/ikon-3rd-full-album-take-off-random.jpg', 'https://kpopmart.com/img/cms/kpop/male_group/ikon/ikon_vol3_detail.jpg', b'1'),
('pro12', 'cate1', 'WINNER 2ND ALBUM [EVERYD4Y]', 428327, 5, '* CD<p> -  Booklet (116 P)<p> -  Lyrics Book (28 P)<p> -  Postcard (5 P)<p> -  1 Random Polaroid<p> -  3 Random Photocards (2 Common<p> -  1 Selfie)<p> -  1 Random Sticker', 'https://m.media-amazon.com/images/I/51+zyNGiQpL._UF1000,1000_QL80_.jpg', 'https://www.musickorea.asia/storage/woo680821KR/www/frontstore/defaultKR/KR/Frontend/img/productcontents/winner_everyd4yday_contents.jpg', b'1'),
('pro13', 'cate1', 'TREASURE 1ST ALBUM [THE FIRST STEP : TREASURE EFFECT] KiT ALBUM', 550000, 3, '* CD<p> -  PHOTOBOOK : 156p<p> -  PHOTOCARD FILE FOLDER : Random 1p out of 12p<p> -  LYRICS POSTCARD SET : 1ea<p> -  HOLROGRAM POSTCARD : Random 1p out of 12p<p> -  UNIT POLAROID  : Random 1p out of 4p<p> -  BABY PHOTOCARD :  Random 1p out of 12p<p> -  PHOTOCARD :  Random 1p out of 12p<p> -  SELFIE PHOTOCARD : Random 1p out of 12p<p> -  GRAPHIC STICKER', 'https://cdn-amz.woka.io/images/I/61u97ECL1yL.jpg', 'https://pbs.twimg.com/media/EvaDcGHU4AE9XRQ?format=jpg&name=4096x4096', b'0'),
('pro14', 'cate1', 'TREASURE 2nd MINI ALBUM [THE SECOND STEP : CHAPTER TWO] (PHOTOBOOK ver.)', 165000, 7, '* CASE : 62 x 90 x 4 (mm)<p> -  SELFIE TAG CARD : 55 x 85 (mm) / Random 1ea out of 10ea<p> -  LYRICS PHOTO CARD SET : 55 x 85 (mm) / 11ea<p> -  UNIT PHOTO CARD : 55 x 85 (mm) / Random 1ea out of 20ea', 'https://cdn11.bigcommerce.com/s-7uw7zc08qw/images/stencil/1280x1280/products/6142/14108/ImageViewerEShop_IID_P000458929&FMT_2&ATTACH_PO&TYPE_B__56287.1662443499.jpg?c=2', 'https://down-mx.img.susercontent.com/file/f2b8961b5fa8d34a545ae3f5a31068f4', b'0'),
('pro15', 'cate1', 'AKMU COLLABORATION ALBUM [NEXT EPISODE] LP', 940000, 2, '* Package Sleeve<p> -  CD<p> -  Booklet Set (7ea / 16 Pages Each)<p> -  Sticker Set (1ea)<p> -  Folded Poster (1ea)', 'https://cdn11.bigcommerce.com/s-7uw7zc08qw/images/stencil/500x659/products/5114/12951/images%2FthumbNail%2FAKMU%20-%20COLLABORATION%20%20%20ALBUM%20%20%5BNEXT%20EPISODE%5D%20LP__57669.1645520731.jpg?c=2', 'https://firebasestorage.googleapis.com/v0/b/interasiastock.appspot.com/o/images%2Fdescrip%2FAKMU%20-%20COLLABORATION%20%20%20ALBUM%20%20%5BNEXT%20EPISODE%5D%20LP.jpg?alt=media&token=74cdc8ff-30f4-43a8-b305-1d67a95cfbaa', b'0'),
('pro16', 'cate2', 'SM ARTIST SSG PHOTOPACK - AESPA', 300000, 6, '* postcards (2 pcs.)<p> -  photo cards (2 pcs.)<p> -  polaroid<p> -  card sleeve', 'https://pos.nvncdn.net/6bea12-26155/ps/20220506_MueIFMuW6BjJhMx1kaaJp8ww.png', 'https://pos.nvncdn.net/6bea12-26155/ps/20220506_soM8ggx5uBr4DfjAvHMgn8rk.jpg', b'0'),
('pro17', 'cate2', '[SKZ] 4 CUT PHOTO SET [Stray Kids 2nd World Tour “MANIAC” in Seoul]', 190000, 15, '* package size : 110 x 160 (mm)<p> -  4 cut photo : 100 x 150 (mm) / 2ea', 'https://i.ebayimg.com/images/g/guAAAOSwbd5ieg4F/s-l500.jpg', 'https://i.ebayimg.com/images/g/MT8AAOSw3VFieg4H/s-l1600.jpg', b'1'),
('pro18', 'cate2', '[SKZ x SKZOO] ACRYLIC KEYRING [Stray Kids 2nd World Tour “MANIAC” in Seoul]', 350000, 8, '', 'https://m.en.skzoostore.com/web/product/big/202204/bb47269674c1835ec53c1955b172f2b8.jpg', 'https://herefan.com/wp-content/uploads/2022/04/skz-skzoo-maniac-acrylic-keyring-detail.jpg', b'1'),
('pro19', 'cate2', '[SKZ x SKZOO] GEL PEN [Stray Kids 2nd World Tour “MANIAC” in Seoul]', 165000, 16, '', 'https://media.karousell.com/media/photos/products/2022/4/27/stray_kids__2nd_world_tour_man_1651051743_1fa5bb00_progressive.jpg', 'https://www.kpopusaonline.com/wp-content/uploads/2022/04/maniac-pen-des-1.png', b'1'),
('pro2', 'cate1', 'ALBUM (G)I-DLE - I FEEL JEWEL CASE VER.', 240000, 15, '* size : 142mm x 124mm<p> -  booklet : 1ea (image varies by version)<p> -  lyric paper : 1ea (same images by version)<p> -  cd-r : 1ea (same images by version)<p> -  photo card : random 1 out of 15 (same images by version)', 'https://cdn.shopify.com/s/files/1/0535/5461/0372/products/G_I-DLE6THMINIALBUM-IFEEL_RAMDOMVER._4_1024x1024.jpg?v=1681800653', 'https://cfw-makesta-real-production.s3.ap-northeast-2.amazonaws.com/file/SHOP2/L200002589_%EC%8B%A0%EB%B3%B4%EC%95%88%EB%82%B4%EC%84%9C_(%EC%97%AC%EC%9E%90)%EC%95%84%EC%9D%B4%EB%93%A4%20%EB%AF%B8%EB%8B%88_Jewel%20Ver._%ED%8C%A9%EC%83%B7%EC%9D%B4%EB%AF%B8%EC%A7%80-min.jpg', b'0'),
('pro20', 'cate2', 'Handy Fan BLACKPINK Kill This Love', 640000, 20, '', 'https://pbs.twimg.com/media/D_ZbSA7UIAEq55P?format=jpg&name=medium', 'https://bucket.nhanh.vn/6bea12-26155/ps/20191103_smXwm0ivQHNs21wfCzgDMu35.jpg', b'1'),
('pro21', 'cate2', 'Sạc dự phòng BLACKPINK', 630000, 12, '', 'https://cf.shopee.vn/file/108de3e65ba8a5268b67b63d2afb96b1', 'https://cf.shopee.vn/file/993c424f1c15fcdd3adbe601756e1c68', b'1'),
('pro22', 'cate2', 'Móc Khóa Keyring BLACKPINK', 260000, 5, '', 'https://cf.shopee.vn/file/30a7789339d1415b3a58260b02a174a3', 'https://cf.shopee.vn/file/7074293f8c2625a8ff337e177fadf050', b'0'),
('pro23', 'cate2', '[YG Official ] [H.Y.L.T] BLACKPINK CHARACTER CROSS BAG ', 500000, 10, '', 'https://cdn-amz.woka.io/images/I/61xaTJSnueL.jpg', 'https://cdn-amz.woka.io/images/I/61LyHCzmGAL.jpg', b'0'),
('pro24', 'cate2', 'WINNER - MSCB200', 200000, 25, '* 1 iring+ nametags+sticker+nhẫn', 'https://media3.scdn.vn/img3/2018/12_28/4hAdr2_simg_de2fe0_500x500_maxb.jpg', 'https://media3.scdn.vn/img2/2018/8_3/9hfThp_simg_de2fe0_500x500_maxb.jpg', b'0'),
('pro25', 'cate2', 'Giá đỡ điện thoại KPOP BTS BT21', 100000, 25, '', 'https://cf.shopee.vn/file/7dcfbfa8d351010cef54de5e54eb65fa', 'https://my-test-11.slatic.net/p/152f30682650b06ff4db41b56b5f0b48.jpg', b'1'),
('pro26', 'cate2', 'Móc khóa idol BLACKPINK Cute selfie 221122 - Mix', 25000, 30, '', 'https://pos.nvncdn.net/cba2a3-7534/ps/20221122_8MUxl8uskBWXlxyoR8Gz01TV.jpg', 'https://pos.nvncdn.net/cba2a3-7534/ps/20221204_Jn59U2r354nRgoHM2BHbUF4P.jpg', b'1'),
('pro27', 'cate3', 'NMIXX OFFICIAL LIGHT STICK CHÍNH HÃNG', 1000000, 5, '', 'https://pbs.twimg.com/media/Fpam2sgWAAAljAE?format=jpg&name=large', 'https://media.karousell.com/media/photos/products/2023/2/22/nmixx_official_lightstick_1677060896_d63d5ada_progressive.jpg', b'1'),
('pro28', 'cate3', 'IVE OFFICIAL LIGHT STICK CHÍNH HÃNG', 980000, 16, '', 'https://cf.shopee.vn/file/vn-11134207-7qukw-lffe3d8k2fsla6', 'https://withdrama.speedgabia.com/star-3/IVE/2303-IVE_LIGHTSTICK.jpg', b'0'),
('pro29', 'cate3', 'TWICE CANDYBONG Z CHÍNH HÃNG', 920000, 13, '', 'https://bandina.vn/wp-content/uploads/2023/02/CandyBong-Z-Square-Poster.png', 'https://i.imgur.com/4tF9Q1s.png', b'1'),
('pro3', 'cate1', 'CIX - \'OK\' Episode 2: I\'m OK (6th EP Album)', 739700, 4, '* 1 cd<p> -  1 photobook (80 pages)<p> -  2 photo cards (random out of 10 types)<p> -  1 folding photo<p> -  1 star card (random out of 5 types)<p> -  1 frame photo (random out of 5 types)<p> -  1 tatto sticker', 'https://k-you-shop.com/cdn/shop/files/cix-ok-episode-2-im-ok-6th-ep-album-kyou.png?v=1684075382&width=1946', 'https://i.redd.it/1rp95216udza1.jpg', b'0'),
('pro30', 'cate3', 'TXT (TOMORROW X TOGETHER) - Official Light Stick', 1706120, 12, '* out box<p> -  light stick<p> -  strap<p> -  dust bag<p> -  photo cards<p> -  guarantee', 'https://urishop.cl/cdn/shop/products/IMG-9266_600x.webp?v=1669752258', 'https://cdn-contents.weverseshop.io/public/shop/63b05cdb62769387f4f98784ab872a81.jpg', b'1'),
('pro31', 'cate3', 'TREASURE | Official lightstick ver1 (đèn cổ vũ)', 980000, 15, '* lightstick<p> -  card pre-order random (basic 1 card<p> -  pre-order từ weverse / yg 1 card)<p> -  pre-order', 'https://cf.shopee.vn/file/85e4b9339f92076aa54ad47e3b7560a3', 'https://item-shopping.c.yimg.jp/i/n/hanshop_trs-011_3', b'0'),
('pro32', 'cate3', 'BLACKPINK OFFICIAL LIGHT STICK Ver.2', 910000, 20, '* 1 package<p> -  1 light stick ver.2<p> -  1 strap<p> -  1 quick guide', 'https://i.imgur.com/KCwaLEx.jpg', 'https://cdn-contents.weverseshop.io/public/shop/bcd97d5555fdc3fda64db28ab42a323f.png?q=95&w=720', b'1'),
('pro33', 'cate3', 'Lightstick BTS – Bomb', 1050000, 20, '* 1 gậy cổ vũ<p> -  1 strap<p> -  1 HDSD<p> -  1 hộp<p> -  1 set card<p> -  1 túi đựng', 'https://cf.shopee.vn/file/ab339f5b7ca2dec42731c0edecbdfab2', 'https://cdn-amz.woka.io/images/I/51uGAihZNkL.jpg', b'0'),
('pro34', 'cate3', 'Lightstick EXO ver 3', 1020000, 10, '* 1 hộp<p> -  1 nút cao su<p> -  1 strap<p> -  1 sách HDSD<p> -  1 set dính hologram<p> -  1 gậy cổ vũ<p> -  tặng (1 card thành viên random<p> -  1 set sticker)', 'https://cdn-amz.woka.io/images/I/51s8SRgSqoL.jpg', 'https://pos.nvncdn.net/6bea12-26155/ps/20191004_UbR7HXbbPFBm6ug9qdkbeXOT.jpg', b'0'),
('pro35', 'cate3', 'Lightstick SEVENTEEN – Carat Bong', 960000, 10, '', 'https://cdn-amz.woka.io/images/I/51cCyhkEYOL.jpg', 'https://down-ph.img.susercontent.com/file/40bb1976889c3ef9ac0c35954daf5fb1', b'1'),
('pro36', 'cate3', 'RED VELVET Official Lightstick Mandu Bong', 650000, 2, '* Outbox<p> -  Lightstick<p> -  Strap<p> -  Manual<p> -  Size: 255 x 88.5 x 88.5mm<p> -  Material: PCB, LED', 'https://pos.nvncdn.net/6bea12-26155/art/artCT/20200526_gQSlYQUZVUnh7dWNFl49vqrd.png', 'https://media.karousell.com/media/photos/products/2020/01/20/red_velvet_mandu_bong_1579524797_7abff4cd.jpg', b'0'),
('pro37', 'cate3', 'SHINee Official Fanlight (Lightstick)', 1300000, 4, '* Light Mode: On, Blink, Flicker, Off<p> -  Maximum Operation: 5 Hours<p> -  Weight: 1.5lbs /680g<p> -  Concert light syncing feature / Changes color<p> -  Connects via Bluetooth with a smartphone', 'https://m.media-amazon.com/images/I/31gzlHa4bPL._AC_UF894,1000_QL80_.jpg', 'https://m.media-amazon.com/images/I/41Gg4kYzpML._AC_UF894,1000_QL80_.jpg', b'0'),
('pro38', 'cate3', 'SUPER JUNIOR - Official Fanlight Ver.2 [Superbong]', 950000, 5, '* Out Box <p>- Lightstick <p>- Strap <p>- User Guide', 'https://i.ebayimg.com/images/g/J-IAAOSwvrRfFwp6/s-l1600.jpg', 'https://cdn.shopify.com/s/files/1/0589/0844/2805/files/d5058eb22e4b68267426b9a874d8e212.jpg?v=1651134324', b'0'),
('pro39', 'cate3', 'Lightstick GOT7 – Ahgabong', 1700000, 15, '', 'https://ae01.alicdn.com/kf/H135819b374c2423990ae6198e544bb7ci.jpg', 'https://cbu01.alicdn.com/img/ibank/2020/795/033/20924330597_1141508764.jpg', b'0'),
('pro4', 'cate1', 'LOVE YOURSELF轉 ‘TEAR’', 420000, 8, '* cover : 1 version<p> -  photo book 196p<p> -  lyrics paper : 1 version<p> -  mini folded poster : 1 version<p> -  letter paper : 1 version<p> -  lift ticket : random 1 out of 14<p> -  envelope : 1 version<p> -  photocard : random 2 out of 58<p> -  poster : 1 version (first press-only)', 'https://upload.wikimedia.org/wikipedia/zh/2/28/BTS_Love_Yourself_Tear.jpg', 'https://jumpseller.s3.eu-west-1.amazonaws.com/store/kpopparadise/assets/1526262916.jpg', b'0'),
('pro40', 'cate3', 'LIGHTSTICK TEMPEST ', 1120000, 3, '', 'https://i.imgur.com/wN2cfOp.jpeg', 'https://cafe24img.poxo.com/yuehuamall/web/upload/NNEditor/20230516/230515_ED859CED8E98EC8AA4ED8AB8_EC9D91EC9B90EBB489_ED8AB9ECA084-EAB3B5ECA780_EC9CA0ED86A0ED94BCEC9584EB8298.jpg', b'1'),
('pro5', 'cate1', 'ALBUM IU - LOVE POEM', 380000, 10, '* photobook<p> -  disc 1<p> -  size : 140*190*12(mm)<p> -  photo card : random 1p out of 2p<p> -  bookmark : random 1p out of 2p<p> -  poster : 1p (for the first press only)', 'https://cf.shopee.vn/file/6a470f35507d598105b1e5e682c989bf', 'https://bucket.nhanh.vn/6bea12-26155/ps/content/20230311_LbhNahPG8Fz4.jpg', b'0'),
('pro6', 'cate1', 'ALBUM IU - LILAC', 480000, 19, '* photo book : 72p<p> -  cd : disc1<p> -  lyric book : 1ea / 16p<p> -  ar photo card : 1ea<p> -  photo card : random 1ea out of 3ea<p> -  id photo kit : 1ea<p> -  artwork stiker : 1ea', 'https://bucket.nhanh.vn/6bea12-26155/ps/20210402_miZ8w9N0xKSf5cXUJpOaDY4z.png', 'https://kpoptown.com/shop298397/CD/iu_5th_lilac_01.jpg', b'0'),
('pro7', 'cate1', 'JISOO – JISOO FIRST SINGLE ALBUM (Black Ver.)', 490000, 16, '* 1 photobook (88p)<p> -  1 package box (2 versions)<p> -  1 cd (2 versions)<p> -  1 selfie photocard (1 out of 4 per version (total:8))<p> -  1 polaroid (1 out of 4 per version (total:8))<p> -  1 lyrics paper (2 versions)<p> -  1 bookmark (2 versions)', 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lfcz1kfxsadgc0', 'https://www.ktown4u.com/goods_files/bodys/images/BLACK_DETAIL.jpg', b'1'),
('pro8', 'cate1', 'JEON SOMI – THE FIRST ALBUM XOXO KIT ALBUM', 480000, 20, '* Package Box<p> -  Air KiT 1ea<p> -  Lyrics Photocard Set (14ea)<p> -  Sticker 1ea<p> -  Magnet 1ea ', 'https://down-ph.img.susercontent.com/file/05ae5d5c3403c4fa602449e3cf30ac22', 'https://sfs.synnara.co.kr/App/ImageViewerEShop?IID=M000386986&FMT=2&ATTACH=E&TYPE=1', b'0'),
('pro9', 'cate1', 'JOOHONEY – 1st Mini Album [LIGHTS] (Jewel Ver.) (Random Ver.)', 120000, 5, '* PHOTO BOOK : 120 x 120(mm) / 16p. / 1 type (different image for each version)<p> -  CD-R: 1 type (different image for each version)<p> -  PHOTOCARD : 62 x 88(mm) / Random 1ea out of 5 types (same image per version)<p> -  MINI FOLDED POSTER : 115 x 230(mm) / 1ea random out of 3 types (same image per version)', 'https://theklayent.com/pub/media/catalog/product/cache/9e1e0113ac5855f5fc62fe6573e7b3a9/j/o/joohoney_-_1st_mini_album_lights_jewel_ver._.jpg', 'https://www.ktown4u.com/goods_files/bodys/images/L100005919_%EC%8B%A0%EB%B3%B4%EC%95%88%EB%82%B4%EC%84%9C_%EC%A3%BC%ED%97%8C%20%EB%AF%B8%EB%8B%88%201%EC%A7%91_LIGHTS_JEWEL%20VER__%ED%8C%A9%EC%83%B7%EC%9D%B4%EB%AF%B8%EC%A7%80.jpg', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_category`),
  ADD UNIQUE KEY `name_category` (`name_category`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD UNIQUE KEY `date_order` (`date_order`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id_order`,`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD UNIQUE KEY `name_product` (`name_product`),
  ADD KEY `id_category` (`id_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id_customer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `tbl_customer` (`id_customer`);

--
-- Constraints for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD CONSTRAINT `tbl_order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`),
  ADD CONSTRAINT `tbl_order_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`);

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
