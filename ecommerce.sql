-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2022 pada 15.00
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_description`, `publication_status`) VALUES
(1, 'Hemaviton', '                                    Disuplai dari PT.Bintang Toedjoe                                ', 1),
(3, 'Dettol', 'Disuplai dari PT.Reckitt Benksier                                ', 1),
(4, 'Tertulis', '                                                                        Tidak ada deskripsi                                                                ', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL COMMENT 'Published=1,Unpublished=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_description`, `publication_status`) VALUES
(1, 'Obat Bebas ', '                                                                        <p style=\"box-sizing: border-box; margin: 0px 0px 25px; line-height: 1.6; color: rgb(130, 130, 130); font-family: \" open=\"\" sans\";=\"\" font-size:=\"\" 16.8px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"box-sizing: border-box;\">Obat jenis ini bisa terbilang lebih aman untuk menangani penyakit ringan yang ada di masyarakat.</span><span style=\"font-size: 10pt;\">Kemudian dapat menggunakan atau penanganannya secara mandiri sehingga lebih cepat dan praktis. Sudah teruji juga secara ilmiah bahwa obat jenis ini tidak menimbulkan efek yang berlebihan pada konsumen. Contoh obat bebas seperti oralit, parasetamol, dsb</span></p>                                                                ', 1),
(2, 'Obat Bebas Terbatas', '<span style=\"color: rgb(130, 130, 130); font-family: &quot;Open Sans&quot;; font-size: 16.8px; background-color: rgb(255, 255, 255);\">Terdapat batasan jumlah dalam penjualan obat ini dan harus disertai dengan tanda peringatan seperti P1-P6. Kemudian sudah jelas bahwa penjualan terbatas obat ini hanya kamu dapatkan di toko obat resmi. Serta obat ini relatif aman penggunaanya asalkan mentaati anjuran yang tercantum.&nbsp;</span>', 1),
(3, 'Obat Keras', '<span style=\"color: rgb(130, 130, 130); font-family: &quot;Open Sans&quot;; font-size: 16.8px; background-color: rgb(255, 255, 255);\">Untuk kategori obat ini berbeda dari yang sebelumnya yaitu untuk mendapatkannya harus dengan resep dari dokter.</span>', 1),
(4, 'Vitamin', 'zat yang esensial untuk metabolisme, pertumbuhan dan perkembangan badan, biasanya seperti vitamin A, B, C, D, E, K.', 1),
(5, 'Obat Herbal', 'Obat obatan alami', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_password` varchar(32) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_active` tinyint(4) NOT NULL COMMENT 'Active=1,Unactive=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_phone`, `customer_active`) VALUES
(9, 'Andini', 'a@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Bekasi', '08998789', 0),
(10, 'a', 'andini@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Bekasi', '08998789', 0),
(11, 'kelompok2', 'kelompok2@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Bekasi', '086276378218', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_option`
--

CREATE TABLE `tbl_option` (
  `option_id` int(11) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_copyright` varchar(255) NOT NULL,
  `site_contact_num1` varchar(100) NOT NULL,
  `site_contact_num2` varchar(100) NOT NULL,
  `site_facebook_link` varchar(100) NOT NULL,
  `site_twitter_link` varchar(100) NOT NULL,
  `site_google_plus_link` varchar(100) NOT NULL,
  `site_email_link` varchar(100) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_subtitle` varchar(255) NOT NULL,
  `contact_description` text NOT NULL,
  `company_location` varchar(255) NOT NULL,
  `company_number` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_facebook` varchar(100) NOT NULL,
  `company_twitter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_option`
--

INSERT INTO `tbl_option` (`option_id`, `site_logo`, `site_favicon`, `site_copyright`, `site_contact_num1`, `site_contact_num2`, `site_facebook_link`, `site_twitter_link`, `site_google_plus_link`, `site_email_link`, `contact_title`, `contact_subtitle`, `contact_description`, `company_location`, `company_number`, `company_email`, `company_facebook`, `company_twitter`) VALUES
(1, 'logo1.png', 'logo1.png', '2022 © Kelompok 2', '084-8398-2492', '085-8398-2492', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.plus.google.com', 'https://www.gmail.com', 'Halaman Kontak', 'Ini adalah halaman Kontak', '                                    Silakan Hubungi kami jika membutuhkan bantuan<div>Buka 08.00 s/d 23.00&nbsp;</div>\r\n                                ', 'Jl.Kaliabang Tengah,Depan Universitas BSI', '084-8398-2492', 'https://www.gmail.com', 'https://www.facebook.com', 'https://www.twitter.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` float NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `actions`) VALUES
(2, 4, 7, 8, 11500, 'Pending'),
(3, 4, 8, 9, 81075, 'Pending'),
(8, 4, 9, 14, 402500, 'Pending'),
(9, 9, 11, 15, 57500, 'Pending'),
(10, 11, 12, 16, 28750, 'Pending'),
(11, 11, 13, 17, 24150, 'Pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_image` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_image`) VALUES
(1, 2, 5, 'Product Five', 10000, 1, NULL),
(2, 3, 5, 'Product Five', 10000, 4, NULL),
(3, 3, 3, 'Product Three', 3500, 3, NULL),
(4, 3, 1, 'Product One', 20000, 1, NULL),
(5, 8, 4, 'Product Four', 350000, 1, 'pic3.jpg'),
(6, 9, 12, 'SANADRYL', 21000, 2, 'img-7.jpg'),
(7, 9, 11, 'Produk 8', 4000, 2, 'img-3.png'),
(8, 10, 6, 'RANITIDINE', 25000, 1, 'img81.jpg'),
(9, 11, 12, 'SANADRYL', 21000, 1, 'img-7.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_type`, `actions`) VALUES
(1, 'cashon', 'pending'),
(2, 'ssl', 'pending'),
(3, 'cashon', 'pending'),
(4, 'cashon', 'pending'),
(5, 'cashon', 'pending'),
(6, 'cashon', 'pending'),
(7, 'cashon', 'pending'),
(8, 'cashon', 'pending'),
(9, 'cashon', 'pending'),
(10, 'cashon', 'pending'),
(11, 'cashon', 'pending'),
(12, 'cashon', 'pending'),
(13, 'cashon', 'pending'),
(14, 'cashon', 'pending'),
(15, 'cashon', 'pending'),
(16, 'cashon', 'pending'),
(17, 'cashon', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(225) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_feature` tinyint(4) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_author` int(11) NOT NULL,
  `product_view` int(11) NOT NULL DEFAULT 0,
  `published_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_title`, `product_short_description`, `product_long_description`, `product_image`, `product_price`, `product_quantity`, `product_feature`, `product_category`, `product_brand`, `product_author`, `product_view`, `published_date`, `publication_status`) VALUES
(2, 'HEMAVITON C', '                                                                                                                                                Vitamin c                                                                                                                                ', '                                                                                                                                                                                                                                                            <span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Fungsi</span>&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Hemaviton</span>&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Hemaviton</span>&nbsp;berfungsi sebagai layaknya obat lainnya yaitu untuk membantu meringankan baik penyakit maupun gejala yang dialami pengguna, seperti: Membantu menjaga kesehatan tubuh pengguna Digunakan sebagai multivitamin tambahan agar tubuh pengguna tetap bugar dan segar Membantu memebuhi kebutuhan vitamin dan mineral dalam tubuh                                                                                                                                                                                                                                ', 'img71.jpg', 25000, 85, 1, 4, 1, 1, 0, '2017-11-30 14:29:04', 1),
(3, 'OBH COMBI BATUK FLU', '                                    Batuk Flu                                ', '                                                                                                            <span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">OBH</span>&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Combi</span>&nbsp;adalah obat batuk hitam yang digunakan untuk meredakan batuk yang disertai gejala flu seperti demam, pusing, hidung tersumbat serta bersin-bersin. Obat ini tersedia dalam tiga varian rasa, rasa menthol, rasa jahe dan rasa madu. Selain itu, ada juga tipe batuk berdahak serta&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">OBH</span>&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Combi</span>&nbsp;anak.                                                                                                ', 'img-5.png', 35000, 35, 1, 1, 4, 1, 0, '2017-11-30 14:38:25', 1),
(6, 'RANITIDINE', '                                                                        Pereda Nyeri                                                                ', '                                                                                                                                                Fungsi ranitidine, yaitu untuk mengatasi dan mencegah rasa panas pada perut ( heartburn ), sakit perut, dan maag yang disebabkan oleh tukak lambung. Selain kegunaan tersebut, obat ranitidine juga digunakan untuk mengobati dan mencegah berbagai penyakit perut dan kerongkongan yang disebabkan oleh terlalu banyak asam lambung.                                                                                                                                ', 'img81.jpg', 25000, 12, 0, 1, 4, 1, 0, '2022-12-08 14:55:45', 1),
(7, 'PROMAG TABLET', 'Maag', '                                                                                                            <span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Promag</span>&nbsp;bermanfaat untuk mengatasi keluhan sakit maag, penyakit asam lambung naik, atau perut kembung.&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Promag</span>&nbsp;dijual secara bebas dan tersedia dalam bentuk tablet kunyah serta suspensi cair.&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Promag</span>&nbsp;terdiri dari beberapa produk dengan bahan-bahan yang ditujukan untuk masalah lambung, terutama asam lambung.                                                                                                ', 'img-16.jpg', 5000, 321, 0, 1, 4, 1, 0, '2022-12-08 15:27:04', 1),
(8, 'SANITER WIPES', '                                    Tisu Basah                                ', '                                                                        <span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Tisu</span>&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">basah</span>&nbsp;memang mengandung antiseptik, namun ini tak bisa sebagai pengganti cuci tangan.&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Tisu</span>&nbsp;ini hanya mampu menghilangkan beberapa jenis kuman ringan saja. Sedangkan untuk menjaga kebersihan tangan dari kuman bahaya serta virus, diperlukan sabun atau hand sanitizer.                                                                ', 'img-18.jpg', 30000, 14, 0, 1, 4, 1, 0, '2022-12-08 15:29:19', 1),
(9, 'DETTOL 100 ML', '                                    Antiseptic                                ', '                                                                        Dettol sabun kesehatan antiseptik telah dipercaya oleh para profesional medis untuk membunuh kuman dan melindungi kesehatan keluarga&nbsp;                                                                ', 'img-19.jpg', 20000, 18, 0, 1, 3, 1, 0, '2022-12-08 15:31:09', 1),
(10, 'IMBOOST', 'Suplemen', '                                    Imboost adalah suplemen yang bermanfaat untuk menjaga daya tahan tubuh. Produk suplemen ini dipercaya dapat membantu menghambat perkembangan virus dan mempercepat penyembuhan flu dan common cold. Imboost mengandung ekstrak tumbuhan Echinacea. Ekstrak tumbuhan ini diyakini dapat meningkatkan kinerja sistem kekebalan tubuh dan meredakan peradangan.                                ', 'img-11.jpg', 29000, 32, 0, 4, 4, 1, 0, '2022-12-08 15:32:27', 1),
(11, 'NEOZEP', '                                                                        Obat Flu                                                                ', '                                                                                                            <span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Neozep</span>&nbsp;Forte adalah obat untuk meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat, dan bersin-bersin. Obat ini juga bisa digunakan untuk meringankan nyeri badan (linu), rhinitis alergi, dan sinusitis. Obat ini mengandung empat senyawa aktif, yaitu: phenylpropanolamine HCL 15 mg chlorpheniramine maleate 2 mg paracetamol 250 mg                                                                                                ', 'img-3.png', 4000, 67, 0, 1, 4, 1, 0, '2022-12-08 15:33:59', 1),
(12, 'SANADRYL', '                                                                        Obat Batuk Flu                                                                ', '                                                                                                                                                Berikut ini adalah&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">fungsi</span>&nbsp;obat&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">sanadryl</span>, yaitu: Batuk Flu Pilek Mata berair Gatal-gatal Ruam kulit Gangguan tidur Mabuk perjalanan Gejala tertentu penyakit parkinson Gejala alergi terkait batuk dan pilek Obat ini mungkin juga ditujukan untuk indikasi lainnya yang sesuai dengan resep dokter                                                                                                                                ', 'img-7.jpg', 21000, 21, 0, 3, 4, 1, 0, '2022-12-08 15:35:53', 1),
(13, 'BLACK MORES', '                                                                        Suplemen                                                                ', '                                                                        <span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Blackmores</span>&nbsp;hadir di Indonesia untuk menyediakan solusi kesehatan alami, lewat produk suplemen yang berbahan dasar alami, berkualitas tinggi, serta teruji klinis                                                                ', 'img-9.jpg', 20000, 32, 1, 3, 4, 1, 0, '2022-12-08 17:15:19', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_name` varchar(50) NOT NULL,
  `shipping_email` varchar(100) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `customer_id`, `shipping_name`, `shipping_email`, `shipping_address`, `shipping_phone`) VALUES
(12, 0, 'kelompok 2', 'kelompok2@gmail.com', 'bekasi', '09897678');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_link` varchar(255) NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_title`, `slider_image`, `slider_link`, `publication_status`) VALUES
(1, 'slider 1', 'beranda1.jpg', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbelanja.swiperxapp.com%2Fwp-content%2Fuploads%2F2020%2F02%2F84598865_718479185222975_6175497560954765312_n-1.jpg&f=1&nofb=1&ipt=7e764d32c645856a32854b75a06c7f09e4861cd99d2eb3f978f04c97b4ab5218&ip', 1),
(6, 'Slide 2', 'poster1.jpg', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.nicd.ac.za%2Fwp-content%2Fuploads%2F2020%2F03%2FNOVEL-CORONAVIRUS.jpg&f=1&nofb=1&ipt=663929433ff4ebc3bb847f7e2acf06f61cbc2f4b962b3be5dec6290e0df989f3&ipo=images', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `created_time`, `updated_time`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(2, 'editor', 'editor@gmail.com', '5aee9dbd2a188839105073571bee1b1f', 2, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(3, 'author', 'author@gmail.com', '02bd92faa38aaa6cc0ea75e59937a1ef', 3, '2017-11-13 18:31:36', '2017-11-13 18:31:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Author'),
(3, 'Editor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `tbl_option`
--
ALTER TABLE `tbl_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Indeks untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indeks untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_brand` (`product_brand`);

--
-- Indeks untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_option`
--
ALTER TABLE `tbl_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `tbl_payment` (`payment_id`);

--
-- Ketidakleluasaan untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
