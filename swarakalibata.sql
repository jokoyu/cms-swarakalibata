-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 25, 2013 at 01:21 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `swarakalibata`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL auto_increment,
  `tema` varchar(100) collate latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_agenda` text collate latin1_general_ci NOT NULL,
  `tempat` varchar(100) collate latin1_general_ci NOT NULL,
  `pengirim` varchar(100) collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) collate latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL default '1',
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_agenda`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=65 ;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Elton John Greatest Hits Tour', 'elton-john-greatest-hits-tour', 'November ini,&nbsp; Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John. Penampilan Elton John yang pertama kalinya di Indonesia akan berlangsung pada 17 November 2012, di&nbsp; Sentul International Convention Center, Bogor yang lokasinya tidak begitu jauh dari Jakarta.<br />\r\n<br />\r\nKonser Elton John ini merupakan bagian dari tur dunianya yang bertajuk &ldquo;Greatest Hits Tour&rdquo; dan akan dimulai pada awal November dari Latvia sampai ke Australia. Elton John akan membawa band lamanya yang terdiri dari Davey Johnstone, Nigel Olsson, Robert Birch, Kim Bullard dan John Mahon, dan empat backing vocal yaitu Rose&nbsp; Batu (Sly dan The Family Stone), Lisa Bank, Tata Vega, dan Jean Witherspoon.\r\n', 'Sentul International Convention Center', '', '510070sc-elton.jpg', '2012-11-17', '2012-11-17', '2012-08-20', '--', 26, 'admin'),
(62, 'Maroon Live in Jakarta 2012', 'maroon-live-in-jakarta-2012', 'Maroon 5 akan kembali menghibur penggemar Jakarta mereka dengan sebuah konser pada 5 Oktober 2012 di Istora Senayan, Jakarta. Ini akan menjadi penampilan kedua mereka di tanah air setelah tampil pada konser sold out 27 April 2011 lalu. Grup musik beraliran pop rock yang berasal dari Los Angeles, California Amerika Serikat. Rencananya menggelar konsernya pada 5 Oktober 2012, di Istora Senayan, Jakarta. Java Musikindo selaku promotor telah mengumumkan pembagian kelas serta harga tiket konser. Band yang digawangi oleh Adam Levine (vokal/gitar), Jesse Carmichael (keyboard/gitar),Mickey Madden (bass), James Valentine (gitar), Matt Flynn (drum) ini menggelar konser di Jakarta sebagai bagian dari promo album barunya, Overexposed, yang dirilis Juni lalu.\r\n', 'Istora Senayan Jakarta', '', '209930maroon_live_in_jakarta_2012.jpg', '2012-10-05', '2012-10-05', '2012-08-19', '', 23, 'admin'),
(63, 'Festival Musik Bambu Nusantara 2012', 'festival-musik-bambu-nusantara-2012', 'Bambu Nusantara ke-6 tahun ini akan digelar di Jakarta Convention Center (JCC), di Jalan Jenderal Gatot Subroto, Jakarta, pada 1 - 2 September 2012. Acara tersebut akan menghadirkan beraneka kreasi berbahan bambu dan tampilnya beragam seni dari bambu. Selain suguhan musik etnik berpadu dengan musik modern, dalam Acara ini juga akan turut diisi dengan pameran, seminar, merchandise, kuliner, dan fashion yang dipadu padankan dengan karya berbahan bambu.<br />\r\n', 'Jakarta Convention Center (JCC), Jakarta', '', '85235BambuNusantara2012.jpg', '2012-09-01', '2012-09-02', '2012-08-20', '09.00 - 21.00 Wib', 25, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL auto_increment,
  `jdl_album` varchar(100) collate latin1_general_ci NOT NULL,
  `album_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `keterangan` text collate latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  `hits_album` int(5) NOT NULL default '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_album`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Konser Kantata Barock 2011', 'konser-kantata-barock-2011', 'Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta,\r\nJumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya\r\nsetelah 21 tahun vakum dari dunia musik.\r\n<div style="overflow: hidden; color: #000000; background-color: #ffffff; text-align: left; text-decoration: none; border: medium none">\r\n<br />\r\n</div>\r\n', '4520kantata_barock.jpg', 'Y', 36, '2012-08-20', '09:12:06', 'Senin', 'admin'),
(31, 'Festival Seni Terbesar di Dunia', 'festival-seni-terbesar-di-dunia', '', '13festival_seni.jpg', 'Y', 37, '2012-08-20', '09:40:01', 'Senin', 'admin'),
(28, 'Murah Meriah di Pasar Asemka', 'murah-meriah-di-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran. \r\n', '18asemka.jpg', 'Y', 170, '2012-08-18', '23:14:05', 'Sabtu', 'admin'),
(29, 'Karpet Raksasa dari Bunga', 'karpet-raksasa-dari-bunga', 'Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.\r\n', '92bungaraksasa2.jpg', 'Y', 25, '2012-08-19', '03:02:27', 'Minggu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL auto_increment,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_background`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'main-body-bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY  (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(17, 'Komunitas 80an', 'http://komunitas80an.blogspot.com', '80an.jpg', '2011-06-26'),
(14, 'Beta UFO Indonesia', '', 'betaufo.jpg', '2011-06-22'),
(18, 'Lokomedia', 'http://bukulokomedia.com', 'lokomedia2.jpg', '2011-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL auto_increment,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) collate latin1_general_ci NOT NULL,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `sub_judul` varchar(100) collate latin1_general_ci NOT NULL,
  `youtube` varchar(100) collate latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `headline` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `utama` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  `isi_berita` text collate latin1_general_ci NOT NULL,
  `keterangan_gambar` text collate latin1_general_ci NOT NULL,
  `hari` varchar(20) collate latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL default '1',
  `tag` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=655 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(644, 41, 'admin', '"Banjir Jakarta" Paling Dicari di Google', 'Jakarta Darurat Banjir', '', 'banjir-jakarta-paling-dicari-di-google', 'N', 'Y', 'N', '<p>\r\nJakarta - Banjir yang mengguyur Jakarta beberapa hari lalu membuat sejumlah lokasi di ibukota banjir. Internet, jadi media yang digunakan warga Jakarta untuk mencari tahu informasi terkini seputar banjir. &nbsp;\r\n</p>\r\n<p>\r\nDalam laporan Pencarian Terhangat Google Indonesia sepanjang 11 - 17 Januari 2013, kata kunci &quot;Banjir di Jakarta&quot; adalah yang paling banyak dimasukkan dalam mesin pencari Google.\r\n</p>\r\n<p>\r\nTak hanya mesin pencari, beberapa platform milik Google juga digunakan untuk memberi informasi seputar banjir. Ada Google Crisis Response, yang menyajikan informasi lokasi-lokasi banjir di Jakarta. Bahkan, layanan ini juga memperlihatkan kondisi lalu lintas yang macet akibat banjir.\r\n</p>\r\n<p>\r\nDi dalam Google Crisis Response juga terdapat beberapa nomor telepon penting dari lembaga pemerintah DKI Jakarta maupun swadaya masyarakat, yang dapat dihubungi oleh warga untuk mendapat bantuan dan evakuasi.\r\n</p>\r\n<p>\r\nSelain layanan Google, jejaring sosial Twitter juga banyak digunakan untuk mencari informasi terkini. Beberapa akun Twitter yang memberi informasi banjir antara lain @TMCPoldaMetro dan @LewatMana.\r\n</p>\r\n<p>\r\nSitus web pemberi informasi lalu lintas LewatMana.com juga laris dikunjungi dalam sepekan ini. LewatMana memperlihatkan kondisi lalu lintas dan gambar dari CCTV. Ia menduduki peringkat 10 Pencarian Terhangat Google Indonesia pada 11 - 17 Januari 2013.\r\n</p>\r\n<p>\r\nDalam sepekan ini, warga juga ingin tahu soal perkiraan cuaca dengan memasukkan kata kunci BMKG di mesin pencari Google. BMKG (Badan Meteorologi Klimatologi dan Geofisika) masuk ke posisi 9 sebagai topik yang paling dicari di Google Indonesia pekan ini. (Sumber: kompas.com)\r\n</p>\r\n', '', 'Senin', '2013-01-21', '09:46:27', '25banjir-jakarta.jpg', 5, 'nasional'),
(645, 48, 'admin', 'Korban dan Pelaku Pemerkosaan Saling Menikmati?', 'Seleksi Calon Hakim Agung', '', 'korban-dan-pelaku-pemerkosaan-saling-menikmati', 'N', 'N', 'Y', '<p>\r\nCalon hakim agung Muhammad Daming Sanusi menyatakan, hukuman mati tidak layak diberlakukan bagi pelaku pemerkosaan. Penjelasannya soal ini mengundang tawa sejumlah anggota Komisi III saat berlangsung fit and proper test hakim agung di Komisi III DPR pada Senin (14/1/2013) ini.\r\n</p>\r\n<p>\r\n&quot;Bagaimana menurut Anda, apabila kasus perkosaan ini dibuat menjadi hukuman mati?&quot; tanya anggota Komisi III dari Fraksi PAN, Andi Azhar, ketika itu kepada Daming.\r\n</p>\r\n<p>\r\nDaming menjawab, &quot;Yang diperkosa dengan yang memerkosa ini sama-sama menikmati. Jadi, harus pikir-pikir terhadap hukuman mati.&quot;\r\n</p>\r\n<p>\r\nJawaban Daming ini pun langsung mengundang tawa, tetapi tidak sedikit yang mencibir pernyataannya. Dijumpai seusai menjalani fit and proper test, Daming berdalih bahwa pernyataannya itu hanya untuk mencairkan suasana.\r\n</p>\r\n<p>\r\n&quot;Kita tadi terlalu tegang, jadi supaya tidak terlalu tegang,&quot; imbuhnya.\r\n</p>\r\n<p>\r\nMenurut Daming, hukuman mati harus dipertimbangkan baik-baik. Ia beralasan, dirinya belum memberikan jawaban tegas apakah ia mendukung atau tidak penerapan hukuman mati bagi pelaku pemerkosaan. &quot;Tentu kita harus pertimbangkan baik-baik kasus tertentu, seperti narkoba, korupsi, saya setuju. Tapi untuk kasus pemerkosan, harus dipertimbangkan dulu. Tadi saya belum memberikan jawaban yang tegas,&quot; kata Daming.\r\n</p>\r\n<p>\r\nMenanggapi pernyataan itu, anggota Komisi III lain dari Fraksi Partai Demokrat, Himmatul Aliya Setiawati, menilai candaan Daming sangat tidak pantas.\r\n</p>\r\n<p>\r\n&quot;Saya kira candaannya tidak pas. Saya setuju ada hukuman mati ya,&quot; ucap Aliya.\r\n</p>\r\n<p>\r\nMeski menganggap tak pantas, ia menilai jawaban Daming sudah memenuhi kriteria yang diharapkan dari seorang hakim agung. &quot;Dari Fraksi Gerindra menyatakan tidak akan memilih, tapi kalau saya sih soal memilih kita lihat nilai-nilai keseluruhannya,&quot; tutur Aliya. (Sumber: kompas.com\r\n</p>\r\n', '', 'Senin', '2013-01-21', '15:59:46', '31palu-hakim.jpg', 0, 'hukum'),
(622, 31, 'admin', 'Orang yang Beriman Kondisi Fisik dan Mentalnya Lebih Sehat', '', '', 'orang-yang-beriman-kondisi-fisik-dan-mentalnya-lebih-sehat', 'N', 'N', 'N', 'Orang yang beriman disayang Tuhan, mungkin itulah sebabnya kemudian orang yang beriman juga memiliki kondisi kesehatan yang baik. Nyatanya, berbagai penelitian menunjukkan bahwa orang-orang yang memiliki keyakinan dan keimanan yang teguh juga memiliki kondisi fisik yang lebih prima.<br />\r\n<br />\r\n&quot;Keyakinan terhadap agama bisa mengurangi stres, depresi, dan meningkatkan kualitas hidup,&quot; kata Dr Harold G. Koenig, profesor psikiatri dan ilmu perilaku di Duke University Medical Center seperti dilansir Medpagetoday.com, Minggu (19/8/2012).<br />\r\n<br />\r\nData sebuah penelitian yang dimuat American Journal of Health Promotion tahun 2005 menyimpulkan bahwa orang yang banyak berdoa lebih banyak mendapat manfaat kesehatan dengan cara menerapkan perilaku yang sehat, menjalankan antisipasi terhadap penyakit dan lebih puas terhadap pelayanan kesehatan.<br />\r\n<br />\r\nSebuah penelitian tahun 2006 yang dimuat British Medical Journal juga menemukan bahwa kehadiran dalam sebuah acara keagamaan ternyata berkaitan dengan penurunan risiko penyakit menular.<br />\r\n<br />\r\nMenurut Koenig, adanya keyakinan beragama dan kegiatan spiritual berhubungan dengan risiko penyakit atau gangguan kesehatan yang lebih rendah, misalnya stres, penyakit kardiovaskular, tekanan darah, reaktivitas kardiovaskular, gangguan metabolisme serta dapat menjamin keberhasilan operasi jantung. Namun di sisi lain, Koenig juga memperingatkan bahwa cara kerja Tuhan ini tidak dapat diukur dengan cara dan metode apapun.<br />\r\n<br />\r\n&quot;Saya percaya bahwa doa efektif, tapi tidak berfungsi secara ilmiah dan tidak dapat diprediksi. Tidak ada alasan ilmiah atau teologis atas setiap efek dari keyakinan yang dapat dipelajari atau didokumentasi, seolah-olah Tuhan adalah bagian dari alam semesta yang dapat diprediksi. Ilmu pengetahuan tidak dirancang untuk membuktikan hal-hal yang supranatural,&quot; kata Koenig.<br />\r\n<br />\r\nSelain itu, keyakinan terhadap agama juga telah dikaitkan dengan umur panjang, perkembangan penyakit kognitif yang lebih lambat dan penuaan yang sehat. Senada dengan Koenig, dr Robert A. Hummer, profesor sosiologi di University of Texas di Austin yang berfokus pada hubungan antara agama dan rendahnya risiko kematian juga memiliki pendapat yang sama.<br />\r\n<br />\r\nHummer merujuk sebuah penelitian yang melacak beberapa orang berusia 51 - 61 tahun selama 8 tahun untuk mendokumentasikan tingkat ketahanan hidupnya. Penelitian tersebut menemukan bahwa peserta yang tidak menghadiri acara keagamaan sama sekali memiliki kemungkinan 64 persen lebih tinggi mengalami kematian dibandingkan orang yang sering beribadah.\r\n', '', 'Senin', '2012-08-20', '08:51:08', '19shalat.jpg', 13, 'kesehatan'),
(623, 41, 'admin', 'Mau jadi Megapolitan atau Megapelitan?', '', '', 'mau-jadi-megapolitan-atau-megapelitan', 'N', 'N', 'N', 'Jakarta - Peneliti bidang perkotaan Yayat Supriatna menilai konsep megapolitan dengan Jakarta sebagai pusatnya sudah semestinya diterapkan.<br />\r\n<br />\r\nNamun, sebagai inti kawasan dengan dukungan kekuatan pendanaan yang lebih besar, pemerintah Jakarta terkesan enggan berbagi madu dengan wilayah-wilayah pendukungnya.<br />\r\n<br />\r\nYayat lantas menyindir sikap pemerintah Jakarta yang dipandangnya terlampau pelit terhadap pemerintah di daerah pendukung.<br />\r\n<br />\r\n&quot;Sebenarnya mau jadi megapolitan atau megapelitan. Kalau untuk mengatasi banjir di Jakarta lalu dengan pembangunan waduk di hilir, Kabupaten Bogor, kenapa cuma kasih dana hibah Rp 5 miliar?&quot; sindir Yayat saat menjadi pembicara dalam seminar manajemen perkotaan di Kampus Pascasarjana Universitas Mercu Buana.<br />\r\n<br />\r\nJumlah tersebut menurut Yayat terlalu kecil untuk mengongkosi pembangunan waduk untuk menyalurkan air Sungai Ciliwung.<br />\r\n<br />\r\nDana yang dimiliki Pemprov DKI sendiri jauh lebih besar, selain memiliki kemampuan untuk memperoleh sumber dana tambahan.<br />\r\n<br />\r\n&quot;Apalagi kerugian yang diakibatkan oleh banjir di Jakarta jauh lebih besar dari nilai Rp 5 miliar,&quot; imbuh Yayat.<br />\r\n<br />\r\nPeneliti dari Universitas Trisakti ini menyebutkan, harus ada kompensasi yang dikeluarkan Jakarta untuk mengatasi persoalan-persoalan kota jika ingin bekerja sama dengan daerah pendukung. Untuk itu, sangat tidak beralasan bila pemerintah Jakarta terlalu irit dalam soal kompensasi antarwilayah.<br />\r\n<br />\r\n&quot;Wajar jika Pemerintah Bogor, misalnya, tidak siap membangun waduk. Ya, karena kompensasinya terlalu kecil,&quot; tandas Yayat.<br />\r\n<br />\r\nIa berharap, pemerintah Jakarta pada periode mendatang lebih mampu membangun sinergi dengan wilayah sekitarnya dan tidak arogan sebagai Ibu Kota negara.<br />\r\n<br />\r\n&quot;Jakarta tidak bisa menyelesaikan problem-problemnya sendirian. Jakarta butuh bantuan dari kawasan penyangga baik untuk atasi banjir, transportasi, pemukiman hingga sumber daya manusianya,&quot; pungkas Yayat.<br />\r\n', '', 'Selasa', '2012-10-02', '10:02:51', '91banjir_jakarta.jpg', 12, 'metropolitan'),
(624, 41, 'admin', 'Tuntut THR, Ratusan Pekerja Transjakarta Mogok', '', '', 'tuntut-thr-ratusan-pekerja-transjakarta-mogok', 'N', 'N', 'N', 'Jakarta - Ratusan pekerja bus koridor I (Blok M-Kota) dan X (Cililitan-Tanjung Priok) mogok bekerja. pramudi, teknisi, dan petugas keamanan menuntut kenaikan upah dan pembayaran Tunjangan Hari Raya (THR). Mereka di depan Pool Pinang Ranti, Jalan Raya Pondok Gede, Pinang Ranti, Makassar, Jakarta Timur, sambil berorasi membentangkan spanduk bertemakan agar PT Jakarta Expres Trans (JET) membayar THR.<br />\r\n<br />\r\nMenurut&nbsp; pramudi Bus TransJakarta Koridor I, Maya, pihaknya terpaksa melakukan mogok operasi karena pihak perusahaan tidak membayarkan kewajibannya memberikan THR.<br />\r\n<br />\r\n&quot;Sementara, anak-anak sudah menunggu di rumah ingin jalan-jalan ke mal untuk beli baju Lebaran,&quot; ujarnya kepada wartawan, Senin (13/08/2012).<br />\r\n<br />\r\nSedangkan Abdul Chakim berharap, selain memberikan THR perusahaan PT JET juga menaikan upah. Pasalnya, untuk Pramudi yang di bawah manajeman PT JET upahnya bervariasi mulai dari Rp2,4 juta-Rp2,8 juta. Sedangkan pramudi yang berada di bawah manajemen gajinya mencapai Rp5,3 juta.<br />\r\n<br />\r\n&quot;THR kami segera terbayar dan gaji kami dinaikkan sejajar dengan pramudi dari koridor lainnya,&quot; imbuhnya.<br />\r\n<br />\r\nHingga bubar aksi berjalan berdamai, pihak perusahaan berjanji akan membayarka THR dan menaikan upah para pekerja bus Transjakarta.\r\n', '', 'Senin', '2012-08-20', '10:14:24', '95demo_karyawan-transjakarta.jpg', 8, 'metropolitan'),
(625, 41, 'admin', 'Effendi Ghazali: Putaran Kedua Pilkada DKI Ketat', '', '', 'effendi-ghazali-putaran-kedua-pilkada-dki-ketat', 'N', 'Y', 'N', 'Jakata - Pengamat politik dari Universitas Indonesia, Effendi Ghazali, mengungkapkan pada putaran kedua pemilihan kepala daerah (Pilkada) pada September mendatang, akan terjadi persaingan ketat antara pasangan Joko Widodo-Basuki T Purnaka dengan pasangan Fauzi Bowo-Nachrowi Ramli.<br />\r\n<br />\r\n&ldquo;Kami telah mengadakan survey internal, dan hasilnya, akan terjadi persaingan ketat antara Pak Jokowi dan Pak Fauzi Bowo. Tidak seperti hasil sebelumnya yang memang jauh jarak perolehannya,&rdquo; ujarnya ditemui di acara open house yang diadakan Gubernur Fauzi Bowo, di rumah dinasnya Jalan Taman Suropati No. 7, Jakarta Pusat, Minggu (19/08/2012).<br />\r\n<br />\r\nMeski demikian, Effendi urung menyebutkan nilai dari survey yang dilakukan oleh pihaknya, mengingat masih ada margin eror yang besar dari 450 responden yang dilakukan survey. &ldquo;Siapa yang lebih unggul, belum bisa saya kasih tahu sekarang, karena survey kami agak besar margin errornya,&rdquo; jelasnya.<br />\r\n<br />\r\nMenyinggung maraknya penggunaan isu SARA yang terjadi selama bulan ramadhan kemarin, Effendi angkat bicara. Menurutnya, penggunaan isu SARA yang dilakukan oleh pihak-pihak tertentu sudah menimbulkan dampak yang besar, baik di kalangan masyarakat bawah maupun untuk calon pasangan. &ldquo;Itu jelas ada dampaknya. Bahkan pengaruhnya cukup besar untuk pilkada putaran kedua nanti,&rdquo; tandasnya.\r\n', 'Joko Widodo (kiri), Fauzi Bowo (kanan)\r\n', 'Jumat', '2012-09-14', '10:42:25', '53joko_foke.jpg', 18, 'metropolitan'),
(621, 31, 'admin', 'Manfaat Berenang untuk Bayi', '', '', 'manfaat-berenang-untuk-bayi', 'N', 'N', 'N', 'Mengajarkan bayi berenang sejak tahun pertama memiliki banyak manfaat. Tak hanya bermanfaat untuk bayi, berenang juga bisa meningkatkan bonding antara orangtua-anak.<br />\r\n<br />\r\nSayangnya, masih banyak orangtua yang memandang sebelah mata kegiatan berenang untuk bayi. Atau mungkin, mereka terlalu khawatir dan menganggap terlalu dini. Padahal, mengajarkan berenang se-dini mungkin kepada anak, memberikan lebih banyak manfaat.<br />\r\n<br />\r\nSurvei yang diadakan Water Babies menunjukkan 40 persen orangtua di Inggris mengaku tak pernah memperkirakan adanya manfaat positif dari mengajarkan berenang pada bayi. Padahal kecelakaan ketiga tertinggi pada anak di Inggris disebabkan karena anak tenggelam. Mengajarkan berenang sejak dini pada anak, justru mampu meningkatkan kepercayaan diri anak di dalam air, dan membuatnya bisa melindungi diri.<br />\r\n<br />\r\n<strong>Bonding</strong><br />\r\nBerenang bersama bayi menjadi momen yang&nbsp; menyenangkan untuk anak dan orangtua. Selain mendebarkan, berenang bersama bayi juga meningkatkan bonding orangtua-anak.<br />\r\n<br />\r\n<strong>Perkembangan fisik dan mental</strong><br />\r\nAktivitas berenang melatih perkembangan fisik dan mental anak. Anak tak hanya tumbuh lebih bugar dan kuat, namun juga membantu anak untuk lebih bernafsu makan dan lebih nyenyak tidur.<br />\r\n<br />\r\n<strong>Belajar life-skill</strong><br />\r\nNyatanya, renang bukan hanya olahraga fisik. Melalui renang, bayi juga bisa belajar life-skill, termasuk kemampuan untuk bertahan dan menjaga diri.<br />\r\n<br />\r\nMenurut survei, 90 persen ayah dan ibu setuju bahwa menjadi tanggungjawab mereka untuk menjamin anak-anaknya memiliki life-skill. Artinya, adalah tugas orangtua untuk mendidik dan membimbing anak untukmemiliki life-skill seperti kemampuan berenang, bersepeda, memahami etika di meja makan. Namun, lebih dari sepertiganya mengaku komitmen untuk menumbuhkan life-skill ini terkalahkan karena kesibukan pekerjaan.<br />\r\n<br />\r\nPaul Thompson, salah satu pendiri Water Babies mengatakan, &quot;Mengajarkan anak mengenai keamanan tingkat dasar di dalam air dan kepercayaan diri di dalam air bisa menyelamatkan jiwanya. Melalui pelatihan yang progresif, bayi bisa belajar keterampilan pertahanan diri sejak dini, seperti berenang mendekati benda padat saat berada di dalam air, dan lain sebagainya.&quot;<br />\r\n<br />\r\n<strong>Usia berapa mulai berenang?</strong><br />\r\nKebanyakan orangtua, para responden survei Water Babies, mengatakan anak-anak sebaiknya mulai belajar beranang mulai usia tiga. Namun faktanya, anak-anak bisa belajar berenang lebih dini lagi.<br />\r\n<br />\r\nBayi pada tahun pertama mengalami perkembangan otak yang tinggi, setiap gerakan akan merangsang perkembangan otak, menguatkan saraf dan membuat kerja otak semakin efisien.<br />\r\n<br />\r\n&quot;Bayi usia dua hari pernah belajar berenang bersama kami. Tahun pertama kehidupan bayi sangat krusial terutama dalam perkembangannya. Olahraga rutin turut punya andil besar dalam mendukung tumbuh kembangnya. Air memungkinkan otot bayi bergerak bebas. Latihan di air, cocok untuk anak-anak,&quot; tandas Thompson.<br />\r\n', '', 'Senin', '2012-08-20', '08:42:51', '76smackdown_baby_swim.jpg', 11, 'kesehatan'),
(620, 31, 'admin', 'Kandungan Khasiat Buah Naga', '', '', 'kandungan-khasiat-buah-naga', 'N', 'N', 'N', 'Buah naga mempunyai khasiat yang bermanfaat bagi kesehatan manusia diantaranya sebagai penyeimbang kadar gula darah, pelindung kesehatan mulut, pencegah kanker usus, mengurangi kolesterol, pencegah pendarahan dan mengobati keluhan keputihan.<br />\r\n<br />\r\nBuah naga biasanya dikonsumsi dalam bentuk buah segar sebagai penghilang dahaga, karena buah naga mengandung kadar air tinggi sekitar 90 % dari berat buah. Rasanya cukup manis karena mengandung kadar gula mencapai 13-18 briks. Buah naga juga dapat disajikan dalam bentuk jus, sari buah, manisan maupu selai atau beragam bentuk penyajian sesuai selera anda.<br />\r\n<br />\r\nSecara umum,pakar sependapat dan mengakui buah naga kaya dengan potasium, ferum, protein, serat, sodium dan kalsium yang baik untuk kesihatan berbanding buah-buahan lain yang diimport.<br />\r\n<br />\r\nMenurut AL Leong dari Johncola Pitaya Food R&amp;D, organisasi yang meneliti buah naga merah , buah kaktus madu itu cukup kaya dengan berbagai zat vitamin dan mineral yang sangat membantu meningkatkan daya tahan dan bermanfaat bagi metabolisme dalam tubuh manusia.<br />\r\n<br />\r\n&ldquo;Penelitian menunjukkan buah naga merah ini sangat baik untuk sistem peredaran darah, juga memberikan efek mengurangi tekanan emosi dan menetralkan toksik dalam darah.&ldquo;Penelitian juga menunjukkan buah ini bisa mencegah kanker usus, selain mencegah kandungan kolesterol yang tinggi dalam darah dan menurunkan kadar lemak dalam tubuh,&rdquo; katanya.<br />\r\n<br />\r\nSecara keseluruhan, setiap buah naga merah mengandungi protein yang mampu meningkatkan metabolisme tubuh dan menjaga kesehatan jantung; serat (mencegah kanker usus, kencing manis dan diet); karotin (kesehatan mata, menguatkan otak dan mencegah masuknya penyakit), kalsium (menguatkan tulang).<br />\r\n<br />\r\nBuah naga juga mengandungi zat besi untuk menambah darah; vitamin B1 (mencegah demam badan); vitamin B2 (menambah selera); vitamin B3 (menurunkan kadar kolesterol) dan vitamin C (menambah kelicinan, kehalusan kulit serta mencegah jerawat).<br />\r\n<br />\r\n<strong>Berikut ini kandungan nutrisi lengkap buah naga :</strong><br />\r\n<br />\r\nKadar Gula : 13-18 briks<br />\r\nAir : 90 %<br />\r\nKarbohidrat : 11,5 g<br />\r\nAsam : 0,139 g<br />\r\nProtein : 0,53 g<br />\r\nSerat : 0,71 g<br />\r\nKalsium : 134,5 mg<br />\r\nFosfor : 8,7 mg<br />\r\nMagnesium : 60,4 mg<br />\r\nVitamin C : 9,4 mg\r\n', '', 'Sabtu', '2012-11-17', '08:20:50', '76buah_naga.jpg', 9, 'kesehatan'),
(619, 31, 'admin', '4 Alasan Kenapa Memaafkan Penting Bagi Kesehatan', '', '', '4-alasan-kenapa-memaafkan-penting-bagi-kesehatan', 'N', 'N', 'N', 'Jakarta - Memaafkan bukan berarti melupakan, tapi memberi kesempatan kepada diri sendiri untuk menghapus rasa kesal dan dendam terhadap orang lain. Dengan demikian, rasa marah dan tekanan yang mengganggu emosi pun dapat diredakan. Akibatnya, pikiran jadi lebih tenang dan jauh dari stres. Sejatinya, tak hanya itu saja manfaat kesehatan dari memaafkan orang lain.<br />\r\n<br />\r\nSecara ilmiah, memaafkan kesalahan orang lain dapat bermanfaat baik bagi kesehatan fisik maupun mental. Secara sosial, memaafkan orang lain merupakan wujud kebesaran jiwa dan perilaku yang dianggap baik. Ada banyak manfaat kesehatan dari memaafkan orang lain seperti dilansir Mayo Clinic dan Telegraph, Minggu (19/8/2012) antara lain:<br />\r\n<br />\r\n<strong>1. Terhindar dari Penyakit Tekanan Darah Tinggi</strong><br />\r\nPara peneliti dari University of California, San Diego menemukan bahwa orang-orang yang bisa melepaskan kemarahannya dan memaafkan kesalahan orang lain cenderung lebih rendah risikonya mengalami lonjakan tekanan darah.<br />\r\n<br />\r\nPeneliti meminta lebih dari 200 relawan untuk memikirkan saat temannya menyinggung perasaan. Setengah dari kelompok diperintahkan untuk berpikir mengapa hal tersebut bisa membuatnya marah, sedangkan yang lainnya didorong untuk memaafkan kesalahan tersebut. Peneliti menemukan bahwa orang yang marah mengalami peningkatan tekanan darah lebih besar dibanding orang yang pemaaf.<br />\r\n<strong><br />\r\n2. Terhindar dari Risiko Penyalahgunaan Obat dan Alkohol</strong><br />\r\nSejumlah penelitian telah membuktikan bahwa rasa benci, dendam dan permusuhan dapat memicu tekanan darah tinggi. Stres muncul ketika perasaan kecewa atau tersakiti. Memaafkan adalah sebuah proses perdamaian dengan diri sendiri. Seseorang yang memberi maaf justru akan merasa lebih rileks untuk menerima kondisinya.<br />\r\n<br />\r\nDengan kondisi mental yang lebih rileks, seseorang juga akan terhindar dari risiko penyalahgunaan alkohol dan obat terlarang. Risiko tersebut umumnya dihadapi oleh para pendendam yang membutuhkan jalan pintas untuk lepas dari beban emosi negatifnya.<br />\r\n<br />\r\n<strong>3. Menurunkan Risiko Serangan Jantung</strong><br />\r\nPara ilmuwan membuktikan bahwa permintaan maaf yang ditujukan pada seseorang bisa meningkatkan kesehatan jantungnya. Orang yang mengalami perlakuan kasar akan mengalami peningkatan tekanan darah yang dapat memicu serangan jantung atau stroke. Namun ketika mendengarkan kata &#39;maaf&#39;, tekanan darah akan menurun kembali.<br />\r\n<br />\r\nTekanan darah yang diukur dalam penelitian adalah tekanan darah diastolik, yaitu tekanan dalam darah antara detak jantung atau tekanan dalam arteri-arteri ketika jantung istirahat setelah kontraksi. Jika terlalu tinggi atau terjadi untuk waktu yang lama, dapat meningkatkan kemungkinan stroke atau serangan jantung.<br />\r\n<br />\r\n<strong>4. Jauh dari Stres dan Depresi</strong><br />\r\nSebuah penelitian yang dimuat Personality and Social Psychology Bulletin menemukan bahwa memafkan secara positif dapat mengurangi gejala depresi. Tak hanya itu, memaafkan akan mengembalikan pikiran positif, dan memperbaiki hubungan. Selain itu, memaafkan juga berkaitan dengan perilaku positif lain seperti sifat dermawan, murah hati dan tidak mudah tertekan.<br />\r\n', '', 'Sabtu', '2012-11-17', '08:14:51', '7health.jpg', 12, 'kesehatan'),
(617, 23, 'admin', '"Expendables 2" Impian Jean Claude Van Damme', '', 'http://www.youtube.com/embed/7rkdTcQLwZ4', 'expendables-2-impian-jean-claude-van-damme', 'N', 'N', 'N', 'Peran dalam Expendables 2 telah lama diinginkan oleh Jean-Claude Van Damme. Pasalnya aktor laga yang satu ini punya impian untuk bermain bersama Arnold Schwarzenegger, Sylvester Stallone dan Bruce Willis.<br />\r\n<br />\r\nVan Damme yang memerankan si jahat Jean Vilain dalam Expendables 2 mengungkap kepada PostMedia bahwa kesempatan yang didapat untuk bermain bersama kedua aktor idamannya itu sangatlah berharga.<br />\r\n<br />\r\n&quot;Aku selalu berharap untuk bisa membuat film bersama salah satu dari mereka. Kini aku bermain film bersama keduanya,&quot; ungkapnya. Ahli bela diri asal Belgia ini juga mengaku kagum dengan dedikasi Stallone dalam membuat film laga spektakuler ini (Expendables).<br />\r\n<br />\r\n&quot;Aku melihat pria dengan usia lebih dari 60 dan ia masih bisa menikmati apa yang ia lakukan. Aku bahagia kembali, ia (Stallone) membuatku cinta kepada film lagi,&quot; komentarnya.<br />\r\n<br />\r\nSeperti filmnya yang pertama, The Expendables 2 sudah pasti menyajikan baku hantam, adegan tembak-menembak yang intens, serta ledakan di mana-mana. Itulah alasan mengapa The Expendables 2 dibuat, supaya adrenalin penonton terpacu.\r\n', 'Jean-Claude Van Damme.\r\n', 'Senin', '2012-08-20', '05:47:30', '76jean-claude-van-damme-the-expendables-2.jpg', 12, 'film,hiburan'),
(616, 23, 'admin', 'Nyanyikan Anti Putin, Personel Pussy Riot Dibui', '', '', 'nyanyikan-anti-putin-personel-pussy-riot-dibui', 'N', 'N', 'N', 'Rusia - Pengadilan Rusia memvonis penjara dua tahun personel band Pussy Riot karena menyanyikan lagu anti Presiden Vladimir Putin.<br />\r\n<br />\r\nPengadilan menetapkan tiga anggota band itu bersalah melakukan &#39;hooliganisme&#39; dengan motivasi agama.<br />\r\n&nbsp;<br />\r\nHakim Marina Syrova mengatakan para anggota band &quot;secara berhati-hati merencanakan&quot; nyanyian mereka tanggal 21 Februari lalu di dalam katedral di Moskow. &quot;Tolokonnikova, Alyokhina dan Samutsevich melakukan &quot;hooliganisme&quot; -- dengan kata lain pelanggaran berat ketertiban umum,&quot; kata Syrova.<br />\r\n<br />\r\n&quot;Pengadilan menyatakan mereka bersalah. Pengadilan meraih putusan berdasarkan kesaksian terdakwa sendiri dan bukti lain,&quot; tambahnya.<br />\r\n<br />\r\nJaksa menuntut hukuman tiga tahun penjara atas tiga anggota band itu.<br />\r\n<br />\r\nPara pendukung band itu melakukan protes di sejumlah tempat di Moskow.&nbsp; Keamanan ketat pun diterapkan dan sejumlah jalan ditutup.<br />\r\n<br />\r\nPussy Riot mengecam kasus tersebut yang mereka katakan diorganisir Putin.<br />\r\n<br />\r\n<strong>Buat Marah Gereja</strong><br />\r\n<br />\r\nSejumah selebriti termasuk bintang pop Amerika, Madonna, menyerukan agar mereka dibebaskan.<br />\r\n<br />\r\nKetiga anggota band itu mengatakan &quot;doa punk&quot; mereka adalah tindak politik untuk memprotes gereja ortodoks Rusia yang mendukung Presiden Putin.<br />\r\n<br />\r\nDalam penampilan seronok mereka di dekat altar mereka meminta Bunda Maria untuk &quot;menggeser Putin&quot;.<br />\r\n<br />\r\nNyanyian mereka membuat marah gereja Ortodoks dan ketua gereka Kirill menyebutkan penampilan itu sama saja dengan penghujatan agama. Namun sejumlah warga Rusia menganggap kasus itu sebagai upaya pemerintah membungkam kritikan.\r\n', '<span class="judul judul_artikel2011">Pussy Riot. </span>\r\n', 'Senin', '2012-08-20', '05:30:13', '46Pussy-Riot.jpg', 9, 'hiburan,musik'),
(615, 23, 'admin', 'Foto Panas Beredar Lagi, Nikita Mirzani Syok', '', '', 'foto-panas-beredar-lagi-nikita-mirzani-syok', 'N', 'N', 'Y', 'Jakarta - Nama Nikita Mirzani memang sedang naik daun belakangan ini. Dengan keberaniannya dalam menampilkan lekuk tubuhnya di beberapa film yang diperaninya, dirinya pun sempat didaulat dengan predikat sebagai salah satu artis hot tanah air.<br />\r\n<br />\r\nNamun, keberaniannya tersebut ternyata harus seiring dengan pil pahit yang ditelannya. Beberapa waktu lalu, foto topless dirinya sempat beredar luas di dunia maya. Dan kini, kembali foto-foto yang memperlihatkan kenekatannya di depan kamera dipertontonkan.<br />\r\n<br />\r\nDalam foto-foto ini, Nikita hanya menutupi payudaranya dengan jari ataupun rambutnya, tanpa mengenakan sehelai baju pun. Saat dikonfirmasi, Nikita mengaku syok.<br />\r\n<br />\r\n&quot;Gue syok. Gak tahu mau ngomong apa lagi. Itu foto emang udah lama banget,&quot; tuturnya, Rabu (15/8).<br />\r\n<br />\r\nArtis yang sempat mengisi program Kakek Kakek Narsis di Trans TV ini belum mau memberikan konfirmasi lebih. Dirinya masih mencari ketenangan atas musibah yang menimpanya untuk ke sekian kali.<br />\r\n<br />\r\n&quot;Gak bisa mikir. Mau ngomong apa. Kasih nafas dulu, kasih gue ketenangan. Ya Tuhan, ada aja musibah menimpa hidup gue. Pokoknya maaf gak bisa ngomong banyak,&quot; tukasnya.\r\n', 'Nikita Mirzani \r\n', 'Senin', '2012-08-20', '05:24:44', '11NikitaMirzani.jpg', 5, 'hiburan,selebritis'),
(613, 19, 'admin', 'Lenovo Yakin Kalahkan Microsoft Surface', '', '', 'lenovo-yakin-kalahkan-microsoft-surface', 'N', 'N', 'N', 'Jakarta - Microsoft akan menjual tablet produksi sendiri yang bernama Surface. Beberapa mitra produsen PC kabarnya tak senang dengan kehadiran Surface yang dianggap sebagai pesaing. Namun Lenovo percaya diri tablet buatannya akan mampu mengalahkan Surface.<br />\r\n<br />\r\n&quot;Microsoft memang kuat di software, namun saya tidak percaya mereka bisa menyediakan hardware terbaik di dunia. Sedangkan Lenovo bisa,&quot; klaim CEO Lenovo, Yang Yuanqing.<br />\r\n<br />\r\n&quot;Meskipun kami tidak suka Microsoft membuat hardware, namun meskipun mereka memulai bisnis hardware ini, kami pikir itu hanya berarti satu kompetitor bertambah lagi,&quot; imbuhnya, yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\nSebelumnya, kehadiran Microsoft Surface mendapat perlawanan dari Acer. Vendor komputer asal Taiwan itu menyatakan bahwa kedatangan Surface akan berdampak negatif bagi ekosistem industri PC.<br />\r\n<br />\r\nDi masa lalu, Microsoft memang selalu bermitra dengan vendor PC untuk membuat komputer berbasis sistem operasi Windows. Namun untuk Windows 8, mereka memutuskan membuat tablet PC sendiri.<br />\r\n<br />\r\nBahkan, ada kabar yang beredar bahwa Surface akan dijual hanya USD 199. Jika benar, bisa jadi Surface sukses besar mengingat harganya yang sangat terjangkau. Kabarnya, Surface akan dipasarkan sekitar bulan Oktober mendatang, bersamaan dengan perkenalan resmi OS Windows 8.\r\n', '', 'Senin', '2012-08-20', '04:53:44', '43Microsoft-Surface.jpg', 7, 'teknologi'),
(614, 19, 'admin', 'Zuckerberg akan Berhenti Pimpin Facebook?', 'Buntut Anjloknya di Bursa Saham', '', 'zuckerberg-akan-berhenti-pimpin-facebook', 'N', 'N', 'Y', 'Jakarta - Harga saham Facebook terus terjun bebas. Rekor harga terendah terjadi baru-baru ini senilai USD 19,06 dari harga awalnya USD 38. Buruknya performa saham Facebook ini memunculkan spekulasi bahwa Mark Zuckerberg tidak seharusnya terus memimpin Facebook sebagai CEO.<br />\r\n<br />\r\nSeorang analis industri menilai bahwa Zuckerberg yang dikenal dengan dandanan kasualnya bisa fokus pada urusan teknologi di Facebook. Sedangkan bisnis Facebook dipegang oleh orang yang benar-benar kompeten.<br />\r\n<br />\r\n&quot;Saya pikir ada rasa kurang percaya terhadap kemampuannya untuk menjalankan korporasi,&quot; kata Andre Stoltman, pengacara sekuritas di New York yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\n&quot;Zuckerberg, dipandang dari sisi manapun memang adalah orang yang jenius. Akan tetapi Anda seharusnya memiliki chief executive yang dewasa dan lebih berpengalaman dalam menjalankan perusahaan tersebut,&quot; imbuhnya.<br />\r\n<br />\r\nNamun demikian, Zuckerberg tetap punya dukungan untuk terus memimpin Facebook. Patrik Moorhead, analis di Moor Insights &amp; Strategy, menyatakan masih terlalu awal untuk membicarakan kemungkinan pergantian CEO Facebook.<br />\r\n<br />\r\n&quot;Dia telah menyediakan visi yang diperlukan Facebook untuk menjadi sebesar sekarang dan mereka tetap akan membutuhkan dia sebagai pemandu. Zuckerberg harus tetap ada di posisi top sekarang,&quot; kata Patrik.<br />\r\n<br />\r\nKarten Weide selaku analis di IDC menyatakan pula bahwa Zuckerberg tidak akan memberi kesempatan pada orang lain untuk memimpin perusahaan yang didirikannya itu.<br />\r\n<br />\r\n&quot;Mark Zuckerberg tidak akan lengser dalam waktu dekat. Dia adalah pria dalam sebuah misi, yaitu ingin memaksa dunia, jika perlu, agar lebih terbuka. Dan sebagai pria dalam sebuah misi, dia tidak mengutamakan soal bisnis,&quot; demikian pendapat Karten.<br />\r\n', '<font face="Verdana, Arial, Helvetica, sans-serif" color="#000000">Mark Zuckerberg</font>\r\n', 'Jumat', '2012-11-02', '04:59:50', '22Mark-Zuckerberg.jpg', 25, 'teknologi'),
(610, 2, 'admin', 'Max Biaggi Bantah ke Ducati Musim Depan ', '', '', 'max-biaggi-bantah-ke-ducati-musim-depan-', 'N', 'N', 'Y', 'Roma- Mantan pembalap MotoGP Max Biaggi tengah menikmati kariernya di World Super Bike (WSBK). Terlebih, pencapaiannya di musim ini cukup membuatnya bahagia.<br />\r\n<br />\r\nBiaggi masih memimpin di puncak klasemen WSBK musim ini dengan 272 poin. Hasil ini membuatnya semakin bersemangat untuk menorehkan lagi prestasi juara seperti yang ditorehkannya pada 2010.<br />\r\n<br />\r\nSituasi seperti itu, semakin membuat The Roman Emperor, julukan Biaggi, nyaman membela timnya Aprilia. Makanya, saat disinggung masalah isu kepindahannya ke Ducati musim depan, Biaggi buru-buru membantah. Dia menegaskan ingin mengakhiri kariernya bersama Aprilia.<br />\r\n<br />\r\nSetelah empat tahun melanglang buana di ajang MotoGP dengan prestasi terbaik menjadi runner-up pada musim pertamanya bersama Yamaha, Biaggi memutuskan hengkang pada 2005. Dua tahun berikutnya, pembalap kelahiran Juni 1971 ini terjun ke arena WSBK.<br />\r\n<br />\r\nSebelum berlabuh di Aprilia, Biaggi lebih dulu bergabung dengan Suzuki di tahun pertamanya, dan setahun berikutnya ke Ducati sebelum akhirnya melompat ke Aprilia pada 2009.\r\n', 'Max Biaggi.\r\n', 'Minggu', '2012-08-19', '05:13:20', '6max_biaggi.jpg', 10, 'olahraga'),
(611, 2, 'admin', 'Duel Swiss di Semifinal Cincinnati Masters', 'Tenis Cincinnati Masters 2012', '', 'duel-swiss-di-semifinal-cincinnati-masters', 'N', 'N', 'N', 'Cincinnati - Dua petenis asal Swiss berhasil mengempaskan lawan-lawannya dan akan bertemu di semifinal Cincinnati Masters. Stanislas Wawrinka sukses membungkam petenis Kanada, Milos Raonic, sementara Roger Federer berhasil menumbangkan Mardy Fish.<br />\r\n&nbsp;<br />\r\nWawrinka mengalahkan Raonic dengan pertarungan sengit. Bahkan sebelumnya, petenis 27 tahun tersebut sempat tertinggal di set pertama. Pada set awal tersebut, Wawrinka takluk 2-6.<br />\r\n&nbsp;<br />\r\nNamun pada set kedua, Wawrinka mampu mengendalikan permainan, dia mampu mengembalikan dengan baik pukulan keras dari Raonic. Hingga akhirnya sukses merebut set kedua ini dengan skor 7-6.<br />\r\n&nbsp;<br />\r\nSetelah berhasil menyamakan keadaan, Wawrinka terus mendominasi dan mengakhiri perlawanan Raonic dengan skor akhir di set ketiga 6-4. &ldquo;Saya bermain hebat setelah menjalani dua bulan yang menyulitkan,&rdquo; ujar Wawrinka, seperti disitat Yahoo Sports, Sabtu (18/8/2012).<br />\r\n&nbsp;<br />\r\nNantinya di babak semifinal, Wawrinka bakal menghadapi rekan senegaranya, Federer yang menghentikan langkah Fish dengan skor 6-3 7-6. Dengan gugurnya Fish atas Federer, maka tak ada satu pun petenis Amerika yang berpeluang menjadi juara di kandang sendiri.<br />\r\n', 'Stanislas Wawrinka.\r\n', 'Minggu', '2012-08-19', '05:22:25', '46Stanislas-Wawrinka.jpg', 8, 'olahraga'),
(612, 19, 'admin', 'Google Pakai Motorola untuk Gugat Apple', '', '', 'google-pakai-motorola-untuk-gugat-apple', 'N', 'N', 'N', 'Jakarta - Perang gugatan antara para produsen smartphone belum menunjukkan tanda berakhir. Yang terbaru, Motorola menuding Apple melanggar tujuh patennya.<br />\r\n<br />\r\nVendor ponsel yang diakuisisi Google pun meminta pihak berwewenang untuk memblokir impor iPhone, iPad dan komputer Mac. Perangkat-perangkat tersebut diminta dilarang beredar di Amerika Serikat.<br />\r\n<br />\r\nKomplain Motorola didaftarkan ke lembaga International Trade Comission (ITC). Paten yang dipermasalahkan terkait location reminders, notifikasi email, pemutar video dan sebagainya.<br />\r\n<br />\r\n&quot;Kami ingin menyelesaikan persoalan paten tersebut, namun ketidakmauan Apple untuk melisensinya membuat kami tidak punya pilihan selain mempertahankan inovasi kami,&quot; demikian pernyataan Motorola yang TerasJakarta kutip dari DigitalTrends, Minggu (19/8/2012).<br />\r\n<br />\r\nHal ini dinilai sebagai perang antara Google dan Apple, dengan Google menggunakan paten Motorola untuk menyerang Apple. Terlebih lagi, Apple banyak memperkarakan vendor Android seperti Samsung dan juga Motorola sendiri.\r\n', '', 'Senin', '2012-08-20', '04:49:48', '7google_motorola.jpg', 9, 'teknologi'),
(608, 39, 'admin', 'Bos Amazon Temukan Mesin Apollo 11', '', 'http://www.youtube.com/embed/mxMiN9iYlkQ', 'bos-amazon-temukan-mesin-apollo-11', 'N', 'N', 'N', 'Jeff Bezos, pendiri retailer online terbesar Amazon, mengumumkan bahwa ia dan timnya telah menemukan 5 mesin Apollo 11 yang jatuh pada tahun 1969 di Samudera Atlantik.<br />\r\n<br />\r\nKini, Jeff Bezos merencanakan untuk mengangkat satu atau dua dari mesin tersebut ke permukaan untuk kemudian dipamerkan di Museum Penerbangan di kampung halamannya, Seattle. Sebelumnya, Jeff Bezos akan meminta izin terlebih dahulu kepada Nasa selaku pemilik dari Apollo 11.<br />\r\n<br />\r\nSeluruh biaya yang diperlukan dalam ekspedisi dan pengangkatan mesin Apollo 11 akan ditanggung oleh Jeff Bezos sendiri. Sementara itu, Nasa menyatakan akan menunggu kabar lebih lanjut tentang penemuan oleh tim Jeff Bezos tersebut.<br />\r\n<br />\r\nMesin berkekuatan 32 juta tenaga kuda (hp) yang mampu membakar 6.000 pon kerosin dan oksigen cair per detik tersebut telah membawa Apollo 11 mendarat dengan sukses di bulan pada tahun 1969. Namun dalam perjalanan kembali ke bumi, mesin tersebut terbakar hingga terjatuh di Samudera Atlantik dan belum ditemukan hingga akhirnya Jeff Bezos mengumumkan berita ini.\r\n', '', 'Senin', '2012-11-19', '04:51:31', '16JeffBezos.jpg', 49, 'internasional'),
(609, 2, 'admin', 'Liverpool Ucapkan Selamat Hari Kemerdekaan RI', '', '', 'liverpool-ucapkan-selamat-hari-kemerdekaan-ri', 'N', 'N', 'N', 'Liverpool - Melalui situs resmi klub, Liverpool mengucapkan selamat hari kemerdekaan kepada semua pendukung The Reds di Indonesia. Dalam halaman khusus, Liverpool merilis pernyataan resmi memakai dua bahasa, Indonesia dan Inggris.<br />\r\n<br />\r\n&quot;Kepada semua pendukung The Reds di Indonesia,<br />\r\n<br />\r\nIzinkan kami mengucapkan Selamat Hari Kemerdekaan bagi semua pendukung Liverpool FC se-Indonesia. Sebagai rasa terima kasih kami akan dukungan yang luar biasa kepada LFC, tahun ini kembali lagi kami membuat laman khusus, hanya untuk Anda!<br />\r\n<br />\r\nDIRGAHAYU KE-67 REPUBLIK INDONESIA!&quot;<br />\r\n<br />\r\nDalam kesempatan itu juga Liverpool membeberkan beberapa program klub di Indonesia. Termasuk diantaranya mendirikan beberapa akademi sepak bola untuk menjaring pemain berbakat di Indonesia.<br />\r\n<br />\r\nLiverpool juga berencana mencari pemain Indonesia berbakat yang bakal masuk dalam skuad Indo elite LFCIA saat The Reds mengunjungi tanah air tahun 2013 mendatang.\r\n', 'Banner khusus dalam situs resmi Liverpool untuk Indonesia &copy; LFC\r\n', 'Minggu', '2012-08-19', '05:07:05', '36banner_dirgahayuRI.jpg', 8, 'bola,olahraga'),
(598, 40, 'admin', 'Laksa Betawi yang Menggugah Selera', '', '', 'laksa-betawi-yang-menggugah-selera', 'N', 'N', 'N', 'Makanan khas betawi yang satu ini memang sudah agak jarang bisa ditemui. Namun bukan berarti punah. Di beberapa lokasi tertentu, anda masih bisa menemukan Laksa betawi. Bagi anda yang belum mengetahui apa itu Laksa Betawi, Laksa betawi adalah Penganan berjenis mie yang diberi bumbu. Laksa Betawi memiliki kuah berwarna kekuningan. Campuran udang rebon yang ada dalam kuah laksa, membuat rasanya menjadi segar dan di padu aroma khas udang.<br />\r\n<br />\r\nSelain itu, Makanan ini menggunakan Ketupat. Isi dari ketupat laksa betawi adalah irisan ketupat, telur, kemangi, tauge. kucai, bihun, perkedel, dan bawang goreng, serta kuahnya yang kental dengan taburan udang kering. Namun ada yang bilang bahwa Bihun dan perkedel hanya variasi tambahan dari laksa, bukan bawaan asli nya.<br />\r\n<br />\r\nCara lain untuk menikmati Laksa adalah menggunakan Semur betawi. Paduan rasa manis pada semur, tentu nya akan menambah rasa gurih di lidah. Namun hal ini bukan suatu keharusan. Tergantung selera masing-masing.<br />\r\n<br />\r\nCara mengolah Laksa Betawi<br />\r\n<br />\r\nMengolah laksa betawi susah-susah gampang. Bumbunya sederhana, terdiri dari kunyit, lengkuas, sereh, daun salam, daun jeruk, jahe, jintan, lada, temu kunci, serta dua kilogram udang rebon. Semua bumbu dihaluskan dengan lumpang lalu ditumis dan dicampur dengan santan cair.<br />\r\n<br />\r\nBumbu baru ditambahkan dengan santan kental. Proses ini dilakukan sampai tiga kali. Sejak dahulu hingga sekarang. Dengan proses yang agak rumit, tidak aneh kalau makanan ini jadi agak langka. Orang maunya langsung jadi tanpa memikirkan cara pembuatannya.<br />\r\n<br />\r\n', '', 'Kamis', '2012-10-25', '02:13:20', '87laksa-betawi_yang_menggugah_selera.jpg', 8, 'kuliner'),
(599, 40, 'admin', 'Semur, Aslinya dari Belanda', '', '', 'semur-aslinya-dari-belanda', 'N', 'N', 'N', 'Jangan merasa tidak terima jika dikatakan bahwa semur adalah hidangan Belanda. Sebab, di balik semur memang ada riwayat nusantara, bukti bagaimana silang budaya terjadi antara Indonesia dan Eropa, demikian menurut ahli kajian budaya Dr phil Lily Tjahjandari.<br />\r\n<br />\r\nPercaya tidak, Indonesia ternyata sudah meramu berbagai makanan dengan berbagai jenis rempah sejak abad pertama. Hal ini terjadi karena posisi Indonesia terletak di tengah jalur perdagangan dunia.<br />\r\n<br />\r\nKekayaan rempah Indonesia ini lalu mengundang berbagai bangsa untuk datang dan mengeksplorasi citarasa rempah. Diawali dengan kedatangan pedagang India pada abad 1-7, dan diikuti oleh pedagang China dan Arab. Perdagangan rempah kemudian membuka jalan ekspansi masif bangsa Eropa pada abad 16-19. Mereka menjelajah wilayah Indonesia untuk menemukan rempah-rempah, dan memulai terjadinya interaksi budaya kuliner antara Eropa dan Indonesia.<br />\r\n<br />\r\n&quot;Sebelumnya, penguat rasa makanan Eropa hanya terbatas pada tomat, ceri, bawang bombai, madu, atau wine,&quot; ungkap Lily, yang juga Manajer Penelitian dan Pengabdian Masyarakat Fakultas Ilmu Pengetahuan Budaya Universitas Indonesia. Orang Eropa lalu mendapatkan inspirasi untuk menggunakan berbagai rempah Asia untuk mengolah makanan Eropa.<br />\r\n<br />\r\nNah, ketika keahlian meramu bumbu khas Indonesia seperti lada, kayu manis, jahe, kemiri, cengkeh itu berpadu dengan teknik memasak bangsa Eropa, hadirlah hidangan unik seperti semur. Semur sendiri asalnya dari bahasa Belanda, smoor, yang artinya masakan daging yang direbus dengan tomat dan bawang secara perlahan.<br />\r\n<br />\r\n&quot;Ketika itu, orang Eropa yang bisa memasak dengan rempah-rempah dianggap sebagai kalangan aristokrat. Hidangan semur ini diterima dengan baik oleh lidah kaum priyayi Belanda, dan menjadi menu rijsttafel,&quot; kata Lily, saat talkshow bertema &quot;Semur, Turun-Temurun Menghangatkan Hati Keluarga Indonesia&quot; di Restoran Warung Daun, Kebayoran Baru, Jakarta Selatan, beberapa waktu lalu.<br />\r\n<br />\r\nRijstaffel merupakan konsep penyajian makanan lengkap ala restoran di Eropa, yang diawali dengan hidangan pembuka, hidangan utama, dan hidangan penutup. Namun hidangan yang disajikan bukan hidangan Eropa, melainkan menu Indonesia dimana nasi sebagai makanan utama dinikmati dengan lauk-pauk.<br />\r\n<br />\r\nSebenarnya, semur itu sendiri bukan makanan asli Belanda. Semur, menurut pakar kuliner Chef Ragil Imam Wibowo, merupakan persepsi bangsa Indonesia dari hidangan tradisional Belanda yang bernama hachee. Hachee merupakan hidangan daging rebus yang dipotong-potong, kadang-kadang juga menggunakan ikan, burung, dan sayuran. Bumbu dasarnya adalah bawang dan rasa asam (biasanya didapat dari cuka atau wine). Cengkeh dan daun salam lalu ditambahkan ke dalam kuah kaldunya yang kental.<br />\r\n<br />\r\nHachee kelak menjadi trigger untuk hidangan semur. Dalam versi Indonesia, semur ini menggunakan bumbu bawang merah, bawang putih, dengan tambahan berbagai rempah lain untuk menguatkan rasa, seperti ketumbar, pala, lada, cengkeh, dan kayu manis. Semur lalu menjadi istimewa karena menggunakan kecap sebagai penguat rasa manis yang legit, dan memberi warna coklat yang menggugah selera.<br />\r\n<br />\r\n&quot;Kecap itu idenya ketika orang Indonesia berimajinasi bagaimana membuat warna coklatnya. Pada hachee, warna coklat didapat dari brownstock, yaitu kaldu dari tulang sapi yang dibakar. Orang Indonesia lalu mencari, apa yang kira-kira bisa memberi warna dan rasa yang diinginkan,&quot; ujar Chef Ragil dalam acara yang sama.<br />\r\n<br />\r\nSemur kemudian melekat menjadi tradisi bangsa Indonesia., dan menjadi menu favorit setiap keluarga Indonesia. Menu ini hadir dengan inovasi bumbu dan topping yang beraneka ragam. Jika awalnya semur identik dengan daging sapi, Anda bisa menemukan semur daging kambing, ayam, telur, tahu, tempe, terong, dan bahkan ikan. Dan semuanya lezat!<br />\r\n<br />\r\n<br />\r\n', '', 'Minggu', '2012-11-11', '02:17:45', '16semur_asli-dari-belanda.jpg', 8, 'kuliner'),
(600, 40, 'admin', 'Ikan Asin Bukan Makanan Orang Miskin', '', '', 'ikan-asin-bukan-makanan-orang-miskin', 'N', 'N', 'N', 'Ikan asin tergolong makanan yang populer, karena mudah sekali ditemukan di pasar. Harganya yang murah membuat ikan asin kerap disantap oleh masyarakat dengan ekonomi lemah.<br />\r\n<br />\r\n&quot;Tak heran kalau, ikan asin akhirnya menjadi simbol rakyat miskin atau wong cilik,&quot; tukas sejarawan JJ Rizal, saat diskusi &quot;Kuliner Nusantara dan Kebudayaan,&quot; di Fakultas Ilmu Budaya, Universitas Indonesia, Depok.<br />\r\n<br />\r\nKarena terlanjur suka dan terbiasa, masyarakat Indonesia dari kelas sosial yang lebih rendah sampai kini masih sering menyantap ikan asin. Selain murah dan enak, ikan asin juga praktis karena tahan lama.<br />\r\n<br />\r\nNamun menurut Rizal, simbol ikan asin sebagai makanan wong cilik ini sebaiknya tidak perlu ditonjolkan. Secara tak langsung, hal itu akan menyebabkan jurang pemisah antara masyarakat kaya dan miskin semakin tajam. &quot;Harus ada upaya dari pemerintah untuk menghilangkan simbol ikan asin adalah makanan wong cilik,&quot; tegasnya.<br />\r\n<br />\r\nUpaya ini perlu dilakukan, karena dalam kenyataannya ikan asin bukan monopoli rakyat miskin saja.<br />\r\n<br />\r\n&quot;Banyak juga kok orang kaya dan pejabat negara yang makan ikan asin, cuma mereka tidak ngaku saja. Hanya jaga gengsi. Padahal tidak ada yang salah dengan makan ikan asin. Seharusnya malah mereka merakyat dan lebih prihatin, bukan malah ikut-ikutan untuk makan mewah,&quot; tambah Rizal.<br />\r\n<br />\r\nCukup ditemani sayur asem, sambal superpedas, dan kerupuk, ikan asin memang sudah menjelma menjadi lauk yang &quot;mewah&quot;. Bagaimana dengan Anda? Apakah ikan asin juga menjadi bagian dari hidangan Anda sehari-hari?<br />\r\n', '', 'Selasa', '2012-10-09', '02:27:57', '75ikan-asin-bukan-makanan-orang-miskin.jpg', 11, 'kuliner'),
(601, 40, 'admin', 'Es Teler, Sejarahmu Dulu dan Kini', '', '', 'es-teler-sejarahmu-dulu-dan-kini', 'N', 'N', 'N', 'Es Teler adalah minuman es berisi potongan buah alpukat, kelapa muda, nangka matang, dan santan kelapa encer dengan pemanis berupa sirup. Es yang dipakai bisa berupa es serut atau es batu.<br />\r\n<br />\r\nVariasi lain es teler berisi cincau, kolang-kaling, dan pacar china, potongan buah apel, pepaya, sawo, melon, roti, dan agar-agar, hingga es teler menjadi sulit dibedakan dengan es campur.<br />\r\n<br />\r\nEs Teler adalah jenis Kuliner yang murni &quot;Fresh from Nature&quot;, Tanpa diolah, hanya dipotong dan dibersihkan, lalu di beri kuah rasa sesuai selera dan di minum/makan dingin. Sehingga kandungan Gizi yang terdapat dalam buah yang dipakai otomatis masih baik. Es Teler --&gt; recomended deh sebagai makanan penutup dibanding makanan penutup olahan.<br />\r\n<strong><br />\r\nSejarah Es Teler</strong><br />\r\n<br />\r\nEs teler diciptakan Tukiman Darmowijono, pedagang es campur dengan gerobak di Jalan Semarang Jakarta Pusat pada tahun 1980-an. Es campur kreasi Tukiman begitu enak sehingga anak-anak muda yang meminumnya mengaku keenakan seperti &quot;teler&quot; akibat mengkonsumsi narkoba. Es kelapa muda bercampur alpukat yang dijual Tukiman di Jalan Semarang kemudian dikenal sebagai &quot;es teler.&quot;<br />\r\n<br />\r\nKepopuleran es yang bikin teler makin mencuat berkat promosi dari mulut ke mulut dan liputan media massa. Pembeli yang datang bermobil menimbulkan antrian parkir mobil yang dirasakan penduduk Jalan Semarang dan sekitarnya sebagai pengganggu ketenangan. Es teler Tukiman harus pindah ke Jalan Pegangsaan Barat dan kemudian ke dalam kompleks bioskop Megaria. Kedai es teler Tukiman di kompleks bioskop Megaria sekarang bernama kedai ayam bakar dan es teler Sari Mulia Asli.<br />\r\n<br />\r\nWaralaba nasional Es Teler 77 Juara Indonesia didirikan Sukyatno Nugroho, setelah sang mertua bernama Ny Murniati Widjaja menjuarai lomba es teler nasional di tahun 1982. Gerai Es Teler 77 yang pertama terdapat di pertokoan Duta Merlin, Harmoni, Jakarta Pusat. Di gerai Es Teler 77 juga tersedia berbagai makanan pendamping seperti mi bakso dan nasi goreng. Di luar negeri, gerai Es Teler 77 terdapat di Australia, Malaysia, dan Singapura.<br />\r\n', '', 'Jumat', '2012-11-02', '02:33:43', '16es-teler-sejarahmu-dulu-dan-kini.jpg', 20, 'kuliner');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(602, 2, 'admin', 'La Nyalla Kembalikan Riedl Jadi Pelatih Timnas', '', '', 'la-nyalla-kembalikan-riedl-jadi-pelatih-timnas', 'Y', 'N', 'N', 'Jakarta - Jakarta - Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.<br />\r\n<br />\r\nPria asal Austria itu sebelumnya pernah menukangi Timnas, namun dipecat pada 13 Juli 2011 akibat kisruh ditubuh PSSI. Dengan penunjukan itu, berarti Riedl akan kembali jadi peramu permainan skuad &#39;Pasukan Garuda&#39; jelang Piala AFF di Malaysia, November mendatang. <br />\r\n<br />\r\nMenurut Acting Sekjen PSSI Tigor Shalom Boboy,&nbsp; Riedl ditunjuk oleh Direktur Teknik Timnas Benny Dollo yang sebelumnya diberi mandat oleh PSSI&nbsp; Rabu (8/8/2012) lalu. <br />\r\n<br />\r\n&quot;Benny Dollo telah memberikan rekomendasinya terkait posisi pelatih kepala tim nasional senior kepada Exco PSSI melalui Ketua Umum La Nyalla Mahmud Mattalitti. Posisi pelatih kepala tim nasional senior yg direkomendasikan oleh Benny Dollo selaku Direktur Teknik adalah Alfred Riedl,&quot; ujar Tigor melalui rilis yang diterima INILAH.COM, Kamis (16/8/2012).<br />\r\n<br />\r\nTigor mengungkapkan bahwa Riedl sudah menyatakan kesediaannya terhadap penunjukannya sebagai pelatih kepala tim nasional senior. Pria 62 tahun itu akan&nbsp; tiba di Indonesia pada akhir Agustus 2012.<br />\r\n<br />\r\nSetelah itu, Riedl akan langsung menyusun nama-nama siapa saja yang akan masuk dalam tim besutannya.<br />\r\n<br />\r\n&quot;Susunan Managemen dan Official serta pemain Tim Nasional akan diumumkan pasca lebaran menunggu konfirmasi pelatih kepala Alfred Riedl,&quot; tukas Tigor.<br />\r\n<br />\r\nSebelumnya, pihak PSSI KLB pimpinan La Nyalla menyatakan membentuk Timnas sendiri setelah mandegnya pertemuan Joint Committee PSSI. Menurut pihak La Nyalla, seharusnya pembentukan Timnas dibahas di komite bersama tersebut melibatkan dua belah pihak, antara kubu Djohar Arifin dengan pihaknya.<br />\r\n<br />\r\nPiala AFF akan diselenggarakan 22 November hingga 22 Desember 2012 dengan tuan rumah Malaysia dan Thailand. Indonesia akan bermain di Grup B yang bertempat di Malaysia bersama Malaysia, Singapura dan Runner Up babak penyisihan.\r\n', '', 'Minggu', '2012-08-19', '03:19:23', '84alfred-riedl6.jpg', 12, 'bola,olahraga'),
(603, 19, 'admin', '4 Teknologi yang Bakal Bertahan Sampai 2030', '', '', '4-teknologi-yang-bakal-bertahan-sampai-2030', 'Y', 'Y', 'N', 'Perkembangan teknologi telah mengantarkan berbagai perangkat yang lebih kecil, cepat dan tangguh ke dalam genggaman tangan. Ada juga yang telah ditinggalkan atau digantikan teknologi lain, seperti sebuah floppy disk. &nbsp;<br />\r\nSelain teknologi yang ditiggalkan, ada juga beberapa teknologi yang diprediksi akan tetap bertahan sampai puluhan tahun ke depan. Seperti dilansir Live Science, Sabtu (18/8/2012), berikut empat teknologi yang diprediksi akan bertahan sampai 2030.<br />\r\n<br />\r\n<strong>1. Papan Ketik QWERTY</strong><br />\r\nTeknologi untuk melakukan input telah semakin banyak, ada voice recognition, handwriting recognition dan gesture control. Ini diperkiraka akan semakin akurat dan populer dalam dua dekade ke depan. Namun, sampai nanti ditemukan cara input teks menggunakan kendali pikiran, metode mengetik akan tetap sebuah metode menyusun teks yang paling akurat.<br />\r\nKehadiran papan ketik di tablet dan telefon genggam memang semakin terancam, namun layout QWERTY yang sejak dulu digunakan akan terus hidup.<br />\r\n<br />\r\n<strong>2. PC</strong><br />\r\nBeberapa orang berpendapat kita sedang memasuki zaman pasca PC. Pasalnya kini orang semakin sering menghabiskan waktu menggunakan smartphone dan tablet ketimbang menggunakan komputer desktop tradisional berbasis Windows atau Mac.<br />\r\nNamun di sisi lain, ketika sudah waktunya menggarap pekerjaan yang benar-benar serius, terutama yang melibatkan multitasking, PC masih merupakan perangkat yang&nbsp; paling bisa diandalkan.<br />\r\n&nbsp;<br />\r\nPada 2030, ukuran serta bentuk PC mungkin akan berubah. Beberapa orang bahkan berpendapat bahwa dengan adanya prosesor berotak empat, telefon genggam dan tablet menjelma menjadi PC. Tetap saja, apapun faktor yang mempengaruhi, pengguna yang fokus pada produktivitas akan membutuhkan sebuah komputer utama dengan kemampuan proses yang tinggi dan sanggup multitasking.<br />\r\n&nbsp;<br />\r\n<strong>3. USB Ports</strong><br />\r\nSekarang telah lebih dari 15 tahun sejak USB pertama kali diperkenalkan dan kita akan sulit membayangkan hidup tanpa USB. Ini hampir menjadi sebuah standar untuk membuat Anda bisa menransfer data dan menghubungkan dengan berbagai hal seperti papan ketik atau harddisk eksternal. Beberapa orang berpendapat bahwa standar seperti Thunderbolt dari Intel akan menandingi USB, tapi mereka tidak memiliki dasar instalasi untuk menandingi USB. Standar ini diprediksi akan semakin berkembang ke depannya.<br />\r\n<strong><br />\r\n4. Uang Tunai</strong><br />\r\nAda beberapa perdebatan mengenai apakah kartu kredit dan debit akan sepenuhnya digantikan oleh sistem pembayaran mobile dalam beberapa tahun ke depan. Walau bagaimanapun, uang tunai tampaknya akan tetap dibawa meski pada 2030.<br />\r\n&nbsp;<br />\r\nPasalnya di era informasi ini, membayar dengan uang tunai adalah cara terbaik untuk membuat pembelian yang Anda lakukan tetap anonim dan pribadi. Selain itu, uang kertas memiliki perlindungan terbaik dalam melawan pencuri indentitas karena orang yang menerima pembayaran tidak harus mengetahui nama Anda.\r\n', '', 'Sabtu', '2012-11-17', '03:27:34', '5technology-gadgets.jpg', 11, 'teknologi'),
(604, 39, 'admin', 'Usai China, Indonesia Tuan Rumah Miss World 2013', '', '', 'usai-china-indonesia-tuan-rumah-miss-world-2013', 'Y', 'N', 'N', 'Masyarakat Indonesia pantas bahagia dua kali lipat saat penyelenggaraan final Miss World 2012. Bukan saja prestasi Ines Putri yang masuk dalam jajaran 15 besar, tetapi Indonesia juga diumumkan menjadi lokasi penyelenggaraan Miss World 2013.<br />\r\n&nbsp;<br />\r\nAjang Miss World 2012 di Ordos, Mongolia, China, berlangsung sukses. Diikuti 116 finalis dari seantero dunia, Miss World yang diselenggarakan ke-62 tahun ini akhirnya mendaulat Wenxia Yu sebagai Miss World 2012.<br />\r\n<br />\r\nSelama setahun, wakil dari Republik Rakyat China ini akan berkeliling dunia dan menjalankan misi sosial dalam program yang dikemas secara baik bernama Beauty with a Purpose.<br />\r\n<br />\r\nAdapun masa tugas terakhir dari pemilik tinggi badan 177 sentimeter ini akan dilakukan saat penyelenggaraan Miss World 2013 di Indonesia. Dan, kepastian soal lokasi penyelenggaraan Miss World dilakukan secara simbolis saat malam final Miss World 2012. Saat itu, Nana Putra, Managing Director MNC Group menerima bendera Miss World.<br />\r\n<br />\r\nRencananya, Miss World 2013 diselenggarakan September dengan mengambil lokasi karantina di Bali. Sementara itu, Jakarta sebagai Ibu Kota Indonesia dipilih menjadi lokasi malam final Miss World 2013.<br />\r\n<br />\r\n&ldquo;Jakarta akan menjadi tuan rumah malam final Miss World 2013. Namun tepatnya di mana lokasi tersebut, kami belum bisa memastikan,&rdquo; tutur Kanti Mirdiati kepada Okezone di Blacksteer Lounge, Belleza Shopping Arcades, Permata Hijau, Jakarta, belum lama ini.<br />\r\n<br />\r\nProject Director Miss Indonesia &amp; Managing Director RCTI ini pun menjelaskan alasan Jakarta dipilih sebagai lokasi malam final Miss World 2013.<br />\r\n<br />\r\n&ldquo;Ini merupakan bagian dari upaya memperkenalkan Jakarta dan Indonesia sendiri ke mata dunia. Kebanyakan orang luar negeri tahu Bali, tapi tidak tahu kalau Bali ada di Indonesia. Mereka mengira bahwa Bali itu sebuah negara,&rdquo; ucap wanita ramah ini.\r\n', '', 'Minggu', '2012-08-19', '03:37:05', '85missworld.jpg', 14, 'internasional'),
(605, 39, 'admin', 'Memalukan! Bu Guru di AS Bercinta dengan 4 Muridnya ', 'Didakwa Penyimpangan Seks', '', 'memalukan-bu-guru-di-as-bercinta-dengan-4-muridnya-', 'Y', 'N', 'N', 'Texas - Memalukan! Seorang guru SMA di Amerika Serikat diadili karena berhubungan seks dengan empat muridnya sementara murid kelima merekam aksi mesum tersebut.<br />\r\n<br />\r\nWanita bernama Brittni Colleps tersebut dikenai sejumlah dakwaan, termasuk seks menyimpang dan hubungan tidak pantas antara pendidik dan pelajar.<br />\r\n<br />\r\nWanita berumur 28 tahun itu tadinya merupakan guru Bahasa Inggris di SMA Fort Worth, Texas. Di persidangan yang digelar hari ini seperti dilansir MyFoxDFW.com, Kamis (16/8/2012), terungkap bahwa terdakwa yang telah memiliki tiga anak itu, menggunakan pesan-pesan SMS untuk mendekati kelima pelajar putra tersebut.<br />\r\n<br />\r\nSalah seorang remaja mengaku, dia dan Colleps berkirim 100 SMS dalam satu hari saat musim semi pada tahun 2010. Pesan-pesan itu kemudian kian menjadi-jadi sehingga akhirnya mereka sepakat untuk bertemu guna bercinta.<br />\r\n<br />\r\n&quot;Dia (Colleps) bilang dia mendambakan... bahwa saya punya sesuatu yang dia inginkan,&quot; kata remaja tersebut.<br />\r\n<br />\r\nDiungkapkan remaja laki-laki tersebut, dalam satu kesempatan, empat remaja berhubungan intim dengan bu guru yang telah dipecat tersebut. Para remaja tersebut sebenarnya sudah bisa digolongkan dewasa, namun hukum melindungi para pelajar dari hubungan dengan seseorang yang jabatannya lebih tinggi, dalam hal ini guru.<br />\r\n<br />\r\nSeorang remaja lainnya merekam adegan seks tersebut dengan video telepon genggamnya. Video tersebut diputar di persidangan.<br />\r\n<br />\r\nJika terbukti bersalah, Colleps terancam hukuman penjara maksimum 20 tahun. Suaminya, Christopher Colleps, seorang tentara AS, telah menegaskan bahwa dirinya akan terus mendukung istrinya dan bahwa mereka akan tetap mempertahankan rumah tangga mereka.\r\n', 'Brittni Colleps (foto:abc)\r\n', 'Minggu', '2012-08-19', '04:20:50', '97abc_brittni_colleps.jpg', 23, 'internasional'),
(606, 42, 'admin', 'Astagfirullah, Festival Wine Digelar di Halaman Masjid ', '', '', 'astagfirullah-festival-wine-digelar-di-halaman-masjid-', 'N', 'N', 'N', 'Beer El-Sabe - Kelompok Muslim menyatakan kemarahannya atas rencana penyelenggaraan Festival Wine di kota Beer el-Sabe, Israel. Kemarahan karena, penyelenggaraan akan dilaksanakan di halaman luar sebuah bangunan bekas masjid kuno di wilayah tersebut.<br />\r\n<br />\r\nMenurut laporan media Israel, Gerakan Islam di Israel mengatakan festival ini merupakan &quot;dosa tak termaafkan&quot;. Festival juga dianggap sebagai pukulan keras bagi umat Muslim di sana Sebab menurut kelompok Muslim tersebut, publisitas festival anggur merupakan penghinaan terhadap sensitivitas Muslim. Seperti diketahui Islam melarang konsumsi alkohol.<br />\r\n<br />\r\nFestival &quot;Salut Wine dan Beer Festival&quot; ke enam ini rencananya akan diselenggarakan di pelataran sebuah bangunan bekas masjid di Beer el-Sabe, pada 5-6 September. Festival akan menampilkan minuman beralkohol dari sekitar 30 pabrik dan perkebunan anggur di seluruh negeri.<br />\r\n<br />\r\nPusat Hukum untuk Hak Minoritas Arab di Israel, Kamis (16/8) lalu, mengirimkan surat pada Jaksa Agung, Menteri Kebudayaan dan Olahraga Israel serta Kotamadya Beer el-Sabe. Mereka menuntut agar festival Wine di wilayah tersebut dibatalkan. &quot; Penggunaan pelataran Masjid untuk festival minuman beralkohol adalah sesuatu yang sensitif. Sebab Islam melarang konsumsi alkohol dan tak sesuai dengan penggunaan masjid untuk beribadah,&quot; tulis organisasi tersebut dalam surat ke Jaksa Aram Mahameed.<br />\r\n<br />\r\nSurat juga menambahkan, Festival Wine melanggar keputusan Mahkamah Agung Israel yang keluar Juni 2011 lalu. Dalam keputusan tersebut memerintahkan masjid untuk diubah menjadi museum sejarah dan kebudayaan Islam.<br />\r\n<br />\r\nMasjid yang dibangun pada Era Usmani pada 1906 ini sempat menjadi tempat ibadah hingga 1948. Kemudian berubah menjadi penjara dan pengadilan hingga 1952. Lalu dari 1953-1991 dibuka sebagai Museum Tanah Negeb. Pada 2002 sempat ada sebuah petisi yang meminta masjid untuk dibuka kembali sebagai tempat ibadah.\r\n', '', 'Minggu', '2012-08-19', '04:32:25', '42festival_wine.jpg', 20, 'dunia-islam'),
(607, 39, 'admin', 'Moskow Larang Parade Gay Selama 100 Tahun', '', '', 'moskow-larang-parade-gay-selama-100-tahun', 'Y', 'Y', 'N', '<p>\r\nPengadilan di Moskow mengukuhkan keputusan untuk melarang parade homoseksual untuk seratus tahun ke depan.<br />\r\n<br />\r\nLangkah ini dilakukan menyusul upaya pegiat hak homoseksual Rusia, Nikolay Alexeyev untuk membatalkan keputusan pemerintah kota melarang parade.<br />\r\n<br />\r\nIa meminta hak melakukan parade selama 100 tahun ke depan.<br />\r\n<br />\r\nAlexeyev juga menentang larangan kota St Petersburgh untuk menyebarkan &quot;propaganda homoseksual.&quot;\r\n</p>\r\n<p>\r\nMahkamah hak asasi Eropa telah  meminta pemerintah Rusia untuk membayar kerugian kepada Alexeyev.\r\n</p>\r\n<p>\r\nAlexeyev mengatakan Jumat (17/08) ia akan kembali ke Mahkamah Eropa untuk meminta agar menetapkan bahwa larangan itu tidak adil.\r\n</p>\r\n<p>\r\nPemerintah kota Moskow menyatakan parade gay akan menimbulkan risiko gangguan ketertiban umum.\r\n</p>\r\n<p>\r\nPemkot juga mengatakan sebagian besar warga Moskow menentang kegiatan itu.\r\n</p>\r\n<p>\r\nBulan September lalu, Dewan Eropa -pengawasan \r\nHAM di Eropa- akan meneliti tanggapan Rusia atas keputusan Mahkamah \r\nEropa sebelumnya tentang hak gay, menurut media Rusia.\r\n</p>\r\n<p>\r\nBulan Oktober 2010, Mahkamah Eropa mengatakan Rusia melakukan diskriminasi terhadap Alexeyev karena orientasi seksualnya.\r\n</p>\r\n<p>\r\nMahkamah saat itu menangani larangan Moskow atas parade gay antara tahun 2006-2008.\r\n</p>\r\n', 'Nikolay Alexeye. \r\n', 'Sabtu', '2012-11-17', '04:43:57', '7Nikolay-Alexeyev.jpg', 20, 'internasional'),
(597, 44, 'admin', 'Pasar Tiban Kalibata Selalu Ramai Pengunjung', '', '', 'pasar-tiban-kalibata-selalu-ramai-pengunjung', 'Y', 'Y', 'N', 'Jakarta - Pasar tiban, atau pasar musiman, istilah untuk menjelaskan pasar yang musiman, tidak punya tempat menetap. Ada juga istilah pasar malam, pasar tumpah atau pasar kaget. Biasanya pasar ini mengambil waktu tertentu misalnya: bulan puasa, atau hari tertentu yang libur. Pasar tiban di Kalibata &lsquo;buka&rsquo; tiap hari minggu.<br />\r\n<br />\r\nBermacam-macam barang dijajakan, mulai dari pakaian, mainan anak-anak, sepatu, tas, tanaman hias, jajan pasar, peralatan rumah tanggga, sprei, parfum, buku dan majalah bekas, pigura, dll. Semua dengan harga murah. Pasar ini mengambil tempat sepanjang jalan dari menuju Stasiun Kalibata sampai depan STEKPI, samping periumahan DPR RI Kalibata.<br />\r\n<br />\r\nPasar ini awalnya tidak begitu ramai. Waktu itu setiap hari minggu di danau Taman Makam pahlawan (TMP) Kalibata banyak orang yang melakukan olah raga pagi. Muda-mudi paling banyak. Hukum ekonomi berjalan, di mana ada keramaian selalu ada yang menggunakan peluang. Maka ada orang jualan bubur ayam, lontong sayur, ketoprak dan lainnya. Mengambil tempat sempit di depan gerbang parkir TMP.<br />\r\n<br />\r\nLama-lama ada yang berjualan pakaian, mainan, poster, dan lainnya. Semakin banyak yang berjualan dan mengambil tempat di sepanjang jalan depan TMP. Di sini mulai ada masalah, kemacetan. Mungkin karena pengunjung semakin banyak, membuat kemacetan, pasar &lsquo;dipindah&rsquo; ke dalam. Hingga sekarang. Sebenarnya tidak tahu dipindah atau pindah sendiri, mungkin pihak berwenang berprinsip, yang penting tidak mebuat jalan macet.<br />\r\n<br />\r\nJadilah seperti sekarang, pasar tiban menjadi hiburan sendiri untuk warga Kalibata, Pancoran, Pasar minggu dan sekitarnya. Tempatnya yang relatif jauh dari jalan raya, masih hijau, memang enak buat jalan-jalan. Setelah lelah jalan-jalan melihat-lihat barang, tersedia berbagai warung yang meyediakan berbagai menu, tinggal pilih: Nasi uduk, lontong sayur, nasi rames, mendowan, bubur ayam, pecel lele, warung Padang, warung Sunda. Juga minuman, ada es tebu, Es Teh, es buah.<br />\r\n<br />\r\nPenasaran, sempatkan hari muingggu ke Kalibata. Tersedia angkutan dari berbagai arah: Dari Blok M, naik Kopaja 57, Dari Cililitan kopaja 57/ Metrimini 64, dari Kampung melayu dan Pasar Minggu naik M16, dari Manggarai naik Metromini 62. Jangan lupa ajak keluarga, sekalian makan bersama di hari Minggu.<br />\r\n', '', 'Minggu', '2012-08-19', '01:54:07', '15pasar_tiban_kalibata.jpg', 17, 'wisata'),
(627, 40, 'admin', 'Nikmatnya Bubur Ayam Cikini', '', '', 'nikmatnya-bubur-ayam-cikini', 'N', 'N', 'N', 'Jakarta - Jika Anda pecinta kuliner Bubur, pasti sudah mengenal Bubur Cikini H. Sulaiman. Bubur yang satu ini memang terbilang populer di Jakarta. Kabarnya bubur ini didirikan sejak tahun 1980-an. Bisa bertahan sampai sekarang tentu merupakan jaminan tersendiri. Kualitas rasa adalah modal utama sebuah usaha kuliner selalu diterima konsumen. Bubur Cikini H. Sulaiman memiliki hal tersebut.<br />\r\n<br />\r\nDahulu Bubur Cikini H. Sulaiman bisa dijumpai di tenda kaki lima. Jam operasional juga dimulai sekitar jam 6 sore hari. Namun kini Bubur Cikini H. Sulaiman telah memiliki tempat permanen yang lebih nyaman. Jam operasional juga berubah. Kini Bubur Cikini juga bisa dinikmati di pagi hari. Bagi yang suka menu bubur untuk sarapan, jangan sampai melewatkan Bubur Cikini.<br />\r\n<br />\r\nSoal menu, Bubur Cikini H. Sulaiman tentu menyajikan menu bubur sebagai sajian utama. Menu yang bisa dicicipi antara lain Bubur Ayam Biasa, Bubur Ayam Telur, Nasi Goreng Ayam, Nasi Goreng Otokwok, Mie Goreng/Rebus, Telur Goreng, Empal Gentong Nasi/Lontong, Ati Ampela, aneka minuman dan masih banyak lagi lainnya. Jika Ingin menikmati empal Gentong Nasi/Lontong harus datang di hari Sabtu atau Minggu sebab menu tersebut tidak tersedia setiap harinya.<br />\r\n<br />\r\nSoal harga memang fluktuatif. Bisa berubah kapanpun. Tetapi sebagai deskripsi harga, seporsi Bubur Ayam Biasa bisa dinikmati dengan harga Rp.13.000 per porsi, menu Bubur Telur juga di harga yang sama. Untuk Nasi Goreng Ayam bisa dinikmati dengan membayar Rp.15.000, sedangkan Nasi Goreng Otokwok bisa dinikmati dengan harga Rp,17.000. Bagi yang menyukai menu Empal Gentong Nasi/Lontong bisa dicicipi dengan membayar Rp.20.000 per porsi. Cukup murah!\r\n', '', 'Selasa', '2012-08-21', '13:55:20', '32bubur_ayam_cikini.jpg', 20, 'kuliner'),
(628, 40, 'admin', 'Soto Betawi H. Husein', '', '', 'soto-betawi-h-husein', 'N', 'N', 'N', 'Indonesia sangat kaya akan khazanah kuliner. Masing-masing wilayah mempunyai makanan yang khas. Meskipun sama jenisnya, namun rasa dan racikannya berbeda.<br />\r\nSama seperti daerah-daerah lain di Indonesia, masyarakat Betawi juga mempunyai makanan khas yaitu soto Betawi. Salah satu yang terkenal adalah soto Betawi Haji Husein yang ada di kawasan Minangkabau, Manggarai, Jakarta Selatan. Di tempat seluas 5 x 10 meter, Bang Husein, 57; panggilan akrabnya, membuka usahanya dari pukul 07.00 WIB hingga dagangannya habis. Usaha ini telah dirintisnya sejak tahun 1989. Sebelum membuka usaha sendiri, ia terlebih dahulu belajar dari pamannya sejak tahun 1970-an.<br />\r\n<br />\r\nSaya sudah mulai ikut usaha sejak Kelas 4 SD. Waktu itu ikut Uwak (panggilan paman-Red) jualan sate, tongseng, sama soto, kata Bang Husein. Bapak empat orang anak ini mengaku memilih soto karena lebih praktis, selain itu ia ingin melestarikan makanan asli Betawi.<br />\r\nYang membedakan soto Betawi Haji Husein dengan soto di daerah lainnya adalah proses pengolahan isi sotonya. Olahan daging sapi yang berupa daging, jeroan, dan kikil terlebih dahulu direbus; baru kemudian digoreng. Yang hampir sama biasanya soto Makassar, cuma biasanya dagingnya direbus saja, nggak digoreng, ujar pria kelahiran Jakarta ini.<br />\r\nDalam sehari Bang Husein biasa menyediakan 50 Kg olahan daging sapi yang terdiri dari daging, jeroan, dan kikil. Mulai pukul 03.00 WIB ia merebus semuanya hingga pukul 06.00 WIB. Menurutnya proses merebus membutuhkan waktu yang cukup lama. Bumbu yang digunakan untuk kuah sotonya hanya terdiri dari rempah-rempah biasa yang banyak dijual di pasar. Bahan-bahan itu kemudian diracik sedemikian rupa sehingga mempunyai rasa yang khas. Kuah soto Betawi umumnya kental karena menggunakan santan. Dalam sehari ia bisa menghabiskan berpuluh butir kelapa tua untuk diolah menjadi santan.<br />\r\n<br />\r\nSetiap hari warungnya selalu ramai dikunjungi orang. Biasanya mereka datang pada saat jam istirahat makan siang. Penikmat soto Haji Husein berasal dari berbagai kalangan. Mulai dari yang berkantong tipis sampai yang berkantong tebal. Demikian lakunya, tidak jarang pelanggannya harus antre menunggu pelanggan lain yang sedang makan.<br />\r\nTempatnya yang terletak persis di pinggir jalan terkadang tidak muat menampung sepeda motor dan mobil yang dikendarai para pelanggannya. Tak jarang pula orang-orang kantoran datang jauh-jauh hanya untuk merasakan kenikmatan sotonya.<br />\r\n<br />\r\nMelihat banyaknya pengunjung yang datang, bisa dipastikan rasanya pastilah menggugah selera. Dalam sehari Bang Husein mengaku bisa menghabiskan lebih kurang 100 porsi. Untuk satu porsinya ia hargai Rp16.000, itu sudah termasuk nasi. Omzet per-bulannya bisa mencapai lebih kurang Rp20 juta. Ke-12 orang karyawan kini membantunya melayani pelanggan setiap hari. Waktu awal buka mah cuma berdua. Sekarang pegawainya nggak pernah berubah, ungkapnya. Di antara karyawannya ada dua anak lelakinya yang ikut membantu.<br />\r\nUsaha ini merupakan usaha keluarga turun-temurun. Bang Husein merupakan generasi keempat. Sebelum di tempatnya saat ini ia sempat merasakan berjualan keliling menggunakan pikulan.<br />\r\n<br />\r\nUang Rp400.000 menjadi modal awal usahanya. Dulu uang segitu besar, bisa buat beli semua, katanya. Usaha ini dijalaninya mulai dari bawah sekali. Bahan-bahan sotonya didapatkan dengan cara mengutang. Ia juga harus membayar sewa tempat.<br />\r\nSaat ini dengan omzet besar ia tidak perlu lagi mengutang. Bahkan sejak tahun 2000 tempatnyapun sudah menjadi milik pribadi. Asal ada kemauan, semua pasti bisa. Yang penting jangan pernah bosan kalau usaha, ujarnya. Untuk mempertahankan cita-rasa agar tidak berubah, Bang Husein selalu memerhatikan takaran komposisinya. Hal inilah yang menjadi salah satu daya tarik pengunjung untuk kembali karena rasa tidak berubah-ubah.<br />\r\n<br />\r\nMeski sudah menjadi pemilik, kakek dua orang cucu ini masih melayani sendiri para pelanggannya. Ia tidak canggung berbaur dengan karyawan lainnya. Ini juga menjadi salah satu trik untuk menarik pelanggannya. Terkadang para pelanggan yang seumurnya apabila dilayani olehnya akan merasa senang. Menurut mereka liat muka kita aja udah enak, makanan nomer dua, katanya sambil tertawa. Pertemuan seperti ini seperti sebuah nostalgia baginya.<br />\r\nSemua jerih payahnya telah membuahkan hasil yang cukup membanggakan baginya. Dari hasilnya berjualan ia sudah bisa pergi haji dan membiayai anak-anaknya sekolah. Ia juga sudah memberangkatkan dua karyawannya untuk menunaikan ibadah haji. Soto Betawi Bang Husein buka dari Senin sampai Minggu. Khusus hari Jumat ia sengaja tidak membuka warungnya untuk ibadah sholat Jumat. Pada bulan Ramadhan ia juga menutup usahanya sebulan penuh.<br />\r\n<br />\r\nInilah Bang Husein, usahanya dijalani secara seimbang dengan ibadah. Ia juga tidak sungkan membagi rahasia dapurnya. Rezeki mah ada aja, udah ada yang ngatur. Selain usaha juga jangan lupa berdoa, ujarnya.\r\n', '', 'Selasa', '2012-08-21', '14:35:48', '16Soto-Betawi.jpg', 11, 'kuliner'),
(629, 31, 'admin', 'Cokelat Hitam Turunkan Tekanan Darah', '', '', 'cokelat-hitam-turunkan-tekanan-darah', 'N', 'N', 'N', 'Cokelat hitam sudah lama diketahui manfaatnya bagi kesehatan. Hasil analisa terhadap 20 studi menunjukkan, konsumsi cokelat hitam setiap hari akan menurunkan tekanan darah.<br />\r\n<br />\r\nPenelitian yang dilakukan The Cochrane Group melaporkan, zat aktif dalam cokelat bermanfaat untuk membuat pembuluh darah lebih rileks. Akibatnya, tekanan darah pun turun.<br />\r\n<br />\r\nZat aktif yang punya efek positif tersebut adalah flavonol, yang di dalam tubuh akan menghasilkan zat kimia oksida nitrat dan membuat pembuluh darah lemas sehingga darah lebih lancar bersirkulasi.<br />\r\n<br />\r\nAnalisis yang dibuat tersebut mengombinasikan beberapa penelitian sebelumnya untuk mengetahui ada tidaknya efek cokelat bagi tekanan darah. Cokelat hitam yang dikonsumsi partisipan dalam penelitian itu cukup banyak, antara 3 gram sampai 105 gram setiap hari.<br />\r\n<br />\r\nNamun penurunan tekanan darah yang dihasilkan tidak terlalu besar, hanya 2-3 mmHg. Akan tetapi penelitian hanya dilakukan selama dua minggu sehingga tidak diketahui dampaknya dalam jangka panjang.<br />\r\n<br />\r\n&quot;Meski kami belum mendapat bukti adanya efek jangka panjang penurunan tekanan darah, tetapi penurunan sedikit dalam jangka pendek ini mungkin dalam jangka panjang bisa berkontribusi pada penurunan risiko penyakit jantung,&quot; kata Karin Ried, dari National Institute of Integrative Medicine di Melbourne, Australia.<br />\r\n<br />\r\nTekanan darah tinggi cukup banyak diderita dan diperkirakan menjadi penyebab terbanyak stroke dan penyakit jantung.<br />\r\n<br />\r\nBila Anda ingin mendapatkan manfaat dari cokelat hitam, sebaiknya pastikan produk yang dibeli mengandung cokelat dalam jumlah tinggi karena kebanyakan produk di pasaran lebih banyak kandungan gula dan lemaknya.<br />\r\n<br />\r\nSelain cokelat, kacang, aprikot, blackberries, dan apel juga mengandung flavonol meski kadarnya lebih rendah daripada cokelat.\r\n', '', 'Selasa', '2012-08-21', '14:48:52', '78chocolate-negro-corazon.jpg', 18, 'kesehatan'),
(630, 19, 'admin', 'Bos Yahoo Bajak 2 Karyawan Google', '', '', 'bos-yahoo-bajak-2-karyawan-google', 'N', 'N', 'N', 'Marissa Mayer, sang CEO Yahoo kembali memperkuat &#39;pasukannya&#39;. Pernah \r\nbernaung di bawah bendera Google, Mayer pun membajak dua karyawan dari \r\nkantor terdahulunya tersebut.<br />\r\n<br />\r\nWanita yang diangkat menjadi CEO perusahaan internet pada bulan Juli lalu ini telah mempekerjakan mantan<em> Product Marketing Manager</em> Google yang bernama Andrew Schulte. Ia kini menjadi kepala staff di tubuh Yahoo.<br />\r\n<br />\r\nSchulte\r\nbergabung dengan Google pada tahun 2007. Ia sempat menangani kampanye \r\nmarketing Google+. Penegasan kepindahan dirinya ia tuliskan di akun \r\nTwitter maupun profil LinkedInnya.<br />\r\n<br />\r\nSebelum Schulte, Mayer sudah membajak Anne Espiritu di mana duluanya bekerja sebagai<em> consumer technology PR </em>di Google, demikian dikutip dari <em>Cnet</em>, Senin (20/8/2012).<br />\r\n<br />\r\nMayer memang tengah sibuk menata struktur manajemen Yahoo. Perusahaan ini kabarnya juga tengah berburu <em>Chief Operating Officer </em>(COO) dengan pengalaman di bidang manajemen finansial dan restrukturisasi perusahaan.\r\n', '', 'Selasa', '2012-08-21', '14:58:08', '82yahoodlm.jpg', 11, 'teknologi'),
(631, 19, 'admin', 'Sharp Tak Lagi Produksi TV?', '', '', 'sharp-tak-lagi-produksi-tv', 'N', 'N', 'N', 'Tokyo - Sharp kabarnya mempertimbangkan untuk lebih fokus memproduksi panel LCD (liquid crsytal display) sehingga perlu menjual sejumlah unit bisnisnya. Perusahaan asal Jepang ini berencana untuk tak lagi merakit TV.<br />\r\n<br />\r\nSharp seperti dilaporkan surat kabar setempat Nikkei, disebut-sebut akan melepas unit bisnis mesin fotokopi dan pendingin ruangan (AC) agar lebih fokus dalam persaingan pasar LCD.<br />\r\n<br />\r\nNamun seperti dilansir Reuters dan dikutip detikINET, Sabtu (18/8/2012), Sharp melalui juru bicaranya menolak laporan tersebut. &quot;Kami mempelajari berbagai pengukuran, namun tidak ada fakta yang mendukung laporan surat kabar Nikke mengenai kemungkinan penjualan operasional utama Sharp,&quot; ujar juru bicara tersebut.<br />\r\n<br />\r\nPerforma perusahaan elektronik ini memang tidak menggembirakan awal bulan ini, dengan harga saham yang merosot pada titik terendahnya dalam 40 tahun terakhir.<br />\r\n<br />\r\nNikkei menyebutkan, sebagai bagian dari upaya pemulihan, Sharp juga akan melakukan spinoff pabriknya di pusat Jepang, yang membuat panel LCD untuk smartphone dan tablet, termasuk untuk komponen iPhone dan iPad Apple.<br />\r\n<br />\r\n&quot;Sharp mungkin saja menerima suntikan investasi dari pabrikan lain dan menjalankan operasional pabrik bersama-sama, seperti yang dilakukan Hon Hai roPrecision asal Taiwan di pabrik Sakai yang berlokasi di prefecture Osaka,&quot; tulis Nikkei.<br />\r\n<br />\r\nSaham Sharp turun 1,14% menjadi 173 yen pada penutupan perdagangan Jumat.\r\n', '', 'Selasa', '2012-08-21', '15:01:36', '68sharptv.jpg', 19, 'teknologi'),
(632, 19, 'admin', 'Kemungkinan Kodak Batal Jual Paten', '', '', 'kemungkinan-kodak-batal-jual-paten', 'N', 'N', 'N', 'New York - Kodak berencana menjual sebagian dari paten-patennya guna melindungi perusahaannya dari kebangkrutan. Namun belakangan, sang pionir di dunia fotografi ini menimbang ulang rencana tersebut.<br />\r\n<br />\r\nDilaporkan bahwa Kodak bisa jadi hanya menjual sebagian paten digital imaging yang hendak dilepas, atau malah tidak menjualnya satupun, demikian seperti dikutip detikINET dari AllThingsD, Senin (20/8/2012).<br />\r\n<br />\r\nKabar ini menyusul pemberitaan sebelumnya yang mengatakan bahwa Kodak telah menunda pengumuman hasil penjualan patennya. &quot;Kodak belum mencapai kepastian atau persetujuan untuk menjual portofolio paten digital imagingnya, &quot;ujar Kodak dalam sebuah pernyataan.<br />\r\n<br />\r\nSuara resmi tersebut menyugestikan bahwa lelang paten yang sudah berjalan tidak berjalan sesuai harapan perusahaan yang berbasis di Rochester, New York, Amerika Serikat ini.<br />\r\n<br />\r\nSebuah sumber yang mengetahui hal itu mengatakan bahwa tawaran yang datang untuk portofolio ini hanya berada di bawah angka USD 2 miliar.<br />\r\n<br />\r\nSebelumnya, Wall Street Journal pernah melaporkan bahwa tawaran awal datang dari dua konsorsium, di mana dipimpin oleh perusahaan raksasa, Google dan Apple.<br />\r\n<br />\r\nSeperti diketahui, Kodak berjuang keras menyelematkan &#39;nyawa&#39; perusahaan. Selain menjual sebagian dari 1.100 patennya, Kodak juga telah keluar dari bisnis kamera dan beralih ke digital printing serta penciptaan aplikasi-aplikasi baru di bidang tersebut.\r\n', '', 'Selasa', '2012-08-21', '15:07:45', '74kodakdlm.jpg', 14, 'teknologi'),
(633, 31, 'admin', 'Depresi? Cek Cara Bicaranya', '', '', 'depresi-cek-cara-bicaranya', 'N', 'N', 'N', 'Jakarta, Beberapa orang pandai menyembunyikan perasaan, dari luar tampak baik-baik saja meski hatinya menangis tercabik-cabik. Para ilmuwan baru-baru ini berhasil menentukan dengan tepat tingkat keparahan depresi berdasarkan cara berbicara.<br />\r\n<br />\r\nDalam penelitian yang diklaim sebagai yang terbesar di dunia tersebut, para ilmuwan menemukan bahwa cara berbicara susah dipalsukan ketika seseorang sedang depresi. Perubahan cara bicara itu bisa dipakai untuk mengukur tingkat keparahan depresi yang dialami.<br />\r\n<br />\r\nAdam Vogel, kepala Speech Neuroscience Unit di University of Melbourne mengatakan bahwa cara berbicara adalah penanda kesehatan otak yang sangat kuat. Berbagai perubahan yang terjadi pada cara berbicara bisa menunjukkan seberapa bagus otak bekerja.<br />\r\n<br />\r\n&quot;Cara berbicara orang yang sedang depresi berubah dan dipengaruhi oleh terapi yang diberikan, menjadi lebih cepat dengan jeda yang lebih pendek,&quot; kata Vogel dalam laporannya di jurnal Biological Psychiatry seperti dikutip dari Medindia, Selasa (21/8/2012).<br />\r\n<br />\r\nDalam penelitian tersebut, Vogel melakukan pengamatan terhadap 105 pasien yang sedang menjalani terapi untuk menyembuhkan depresi. Beberapa hal yang diamati antara lain waktu, nada dan intonasi bicara yang kemudian dibandingkan dengan hasil pemeriksaan psikologis.<br />\r\n<br />\r\nPara pasien diminta melakukan panggilan telepon ke sebuah mesin penjawab otomatis. Ada yang diminta berbicara apa saja, mengungkapkan perasaan dan sebagian hanya diminta untuk membaca teks supaya tidak perlu repot-reopot memikirkan mau bicara tentang apa.<br />\r\n<br />\r\n&quot;Temuan ini memungkinkan para psikolog jadi lebih fleksibel dalam memeriksa pasien dari jarak jauh, hanya dengan mendengarkan pola dan cara berbicara meski dari lokasi yang sangat jauh atau di kampung-kampung,&quot; kata James Mundt dari Centre for Psychological Consultation di Wisconsin.<br />\r\n', '', 'Selasa', '2012-08-21', '15:13:07', '8akitmentalts.jpg', 12, 'kesehatan'),
(634, 31, 'admin', 'Makanan Sehari-hari Penyumbang Kegemukan', '', '', 'makanan-seharihari-penyumbang-kegemukan', 'N', 'N', 'N', 'Jakarta - Salah satu faktor yang banyak bikin orang jadi gemuk adalah mengonsumsi makanan yang berlebihan dan salah. Untuk itu ketahui makanan apa saja yang ditemui sehari-hari dan bisa bikin gemuk.<br />\r\n<br />\r\n&quot;Yang paling banyak bikin gemuk adalah makanan dengan kandungan gula murni dan tepung,&quot; ujar dr Pauline Endang, SpGK dari FKUI, Rabu (15/8/2012).<br />\r\n<br />\r\ndr Pauline menjelaskan banyak orang yang kadang tidak suka nasi tapi ia suka mengemil. Namun sayangnya cemilan ini makanan yang manis dengan kadar gula tinggi, kadang ada telur dan menteganya sehingga kalori tinggi.<br />\r\n<br />\r\n&quot;Makanan-makanan ini tidak bikin kenyang, jadi orang yang mengonsumsi bawaannya ia ingin makan terus apalagi jika ditambah dengan makan gorengan yang kandungan lemaknya tinggi,&quot; ungkapnya.<br />\r\n<br />\r\nHal senada juga diungkapkan oleh ahli gizi dr Inge Permadhi, MS, SpGK bahwa makanan tinggi kalori, tinggi gula dan tinggi lemak bisa menyebabkan seseorang mengalami kegemukan.<br />\r\n<br />\r\n&quot;Misalnya makanan berminyak, daging yang ada gajih, mentega, margarin, makanan-makanan ini rasanya enak dan gurih sehingga bikin orang ketagihan,&quot; ujar dr Inge dari Departemen Ilmu Gizi FKUI.<br />\r\n<br />\r\nBerikut ini beberapa makanan yang diketahui bisa menyumbang kegemukan yaitu:<br />\r\n<br />\r\n1. Gorengan, mengandung banyak lemak dan juga kolesterol<br />\r\n2. Martabak, mengandung tinggi gula dan lemak<br />\r\n3. Cake, mengandung tinggi gula dan lemak<br />\r\n4. Minuman manis, mengandung tinggi gula dan kalori<br />\r\n5. Minuman soda, menyebabkan timbunan lemak visceral di perut<br />\r\n6. Kerupuk, mengandung karbohidrat dan kadar lemak yang tinggi<br />\r\n7. Es krim,mengandung tinggi gula dan lemak<br />\r\n8. Daging yang masih ada gajihnya<br />\r\n9. Fast food atau makanan cepat saji, kandungan lemak dan kalorinya tinggi tapi cenderung minim nutrisi<br />\r\n10. Keripik, kandungan lemak dan gula dari keripik ini membuat jumlah kalorinya tinggi serta ditambah dengan tinggi garam<br />\r\n11. Sereal manis, mengandung karbohidrat yang tinggi dan ditambah dengan gula yang bisa memicu penimbunan lemak<br />\r\n12. Krim-krim penambah minuman (Whipped cream), mengandung kadar lemak yang tinggi<br />\r\n<br />\r\n&quot;Kandungan dari bahan makanan ini bila asupannya melebihi kebutuhan tubuh maka akan diubah dan disimpan di dalam sel lemak dan tentu saja membuat seseorang jadi gemuk,&quot; ujar Dr Marini Siregar, MGizi, SpGK dari RS Premier Jatinegara.<br />\r\n<br />\r\nDr Marini menyarankan agar tidak menjadi gemuk yang terpenting adalah keseimbangan antara apa yang dimakan dengan aktivitas fisik yang dilakukan. Jika termasuk orang yang aktivitas fisiknya rendah, asupan makanannya harus disesuaikan tidak boleh terlalu banyak.<br />\r\n<br />\r\n&quot;Jangan lupa mengonsumsi air yang cukup agar metabolisme dalam tubuh berjalan dengan baik, serta sayuran dan buah yang mengandung serat tinggi akan membuat kita merasa lebih kenyang sehingga mengurangi asupan makanan yang lain dan tidak akan terjadi kegemukan,&quot; ujar Dr Marini.\r\n', '', 'Selasa', '2012-08-21', '15:23:01', '41gorengants2.jpg', 15, 'kesehatan'),
(635, 39, 'admin', 'Foto Bugil Pangeran Harry Beredar', '', '', 'foto-bugil-pangeran-harry-beredar', 'N', 'N', 'N', 'Las Vegas - Pangeran Harry dari Inggris kembali membuat sensasi. Kali ini TMZ, sebuah situs hiburan Amerika Serikat, merilis foto-foto bugil adik Pangeran William itu, Selasa (21/8/2012).<br />\r\n<br />\r\nMenurut TMZ, foto itu diambil ketika putra kedua Pangeran Charles itu berpesta dengan teman-temannya di kamar hotelnya di Las Vegas, Jumat (18/8/2012).<br />\r\n<br />\r\nMengutip sumbernya, TMZ melaporkan, Harry dan teman-temannya turun ke bar hotel dan bertemu sejumlah perempuan, yang kemudian diundangnya ke kamar suite-nya di hotel itu.<br />\r\n<br />\r\nSuasana pun menjadi liar karena anak-anak muda itu mengadakan permainan biliar. Dalam aturan permainan itu, yang kalah harus melepas pakaian, sampai akhirnya semua peserta bugil.<br />\r\n<br />\r\nBeberapa orang yang hadir di pesta itu memotret kehebohan pesta tersebut. Dalam salah satu foto, tampak Harry dalam keadaan telanjang bulat dengan kedua tangan menutupi alat vitalnya. Sementara itu, foto lainnya menunjukkan Harry memeluk seorang perempuan yang juga terlihat bugil.<br />\r\n<br />\r\nKepada TMZ, Keluarga Kerajaan Inggris mengatakan, &quot;Kami tidak berkomentar tentang foto-foto itu saat ini.&quot; \r\n', '', 'Kamis', '2012-08-23', '01:39:51', '92pangeran_harry.jpg', 23, 'internasional'),
(636, 2, 'admin', 'Hukuman Ganda Korea Diperingan, Greysia/Meiliana Tunggu Nasib', 'Buntut Pertandingan "Sabun" di Olimpiade London', '', 'hukuman-ganda-korea-diperingan-greysiameiliana-tunggu-nasib', 'N', 'N', 'N', 'Seoul - Otoritas bulutangkis Korea Selatan, Rabu (22/8) mengurangi hukuman untuk \r\nempat pemain yang diduga sengaja kalah pada pertandingan di Olimpiade \r\nLondon, dari dua tahun menjadi enam bulan setelah terjadi proses \r\nbanding.<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\nJung Kyung-Eun, Kim Ha-Na, Ha Jung-Eun, dan Kim \r\nMin-Jung dilarang berpartisipasi di kompetisi-kompetisi domestik dan \r\ninternasional selama enam bulan, demikian disampaikan oleh Asosiasi \r\nBulutangkis Korea, Rabu.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKeempat atlet itu berkata mereka \r\nhanya mengikuti perintah pelatih Sung Han-Kook, dan asisten Kim \r\nMoon-Soo. Sebelumnya, hukuman seumur hidup mereka telah dikurangi \r\nmenjadi dua tahun.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nDelapan pebulutangkis ganda putri, dari \r\nKorea Selatan, Indonesia, dan China didiskualifikasi dari Olimpiade \r\nkarena sengaja mengalah agar dapat mengamankan posisi yang lebih \r\nmenguntungkan di babak berikutnya.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nSkandal ini membuat bintang bulutangkis China, Yu Yang, pensiun dari bulutangkis.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nPresiden\r\nFederasi Bulutangkis Dunia, Kang Young-Joong, telah menepis rumor bahwa\r\npublikasi yang buruk dari olahraga ini dapat membahayakan masa depan \r\nbulutangkis di Olimpiade.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKorea Selatan mendapat satu medali \r\nperunggu dari cabang olahraga bulutangkis di London - itu merupakan \r\npenampilan terburuk sepanjang partisipasi mereka di Olimpiade.<br />\r\n<br />\r\nSementara\r\ndi Indonesia, PBSI akhirnya memutuskan akan menjatuhkan sanksi kepada \r\ndua pemain ganda putri andalannya, Greysia Polii dan Meiliana Jauhari. \r\nSeperti diketahui, Greysia/Meiliana harus didiskualifkasi dari Olimpiade\r\nLondon 2012 karena diduga sengaja mengalah pada penyisihan grup untuk \r\nmenghindari lawan berat di babak perempat final.<br />\r\n&nbsp;<br />\r\nBadminton World\r\nFederation (BWF) memutuskan Greysia/Meiliana dan lawannya, Ha Jung \r\nEun/Kim Min Jung dari Korea didiskualifikasi dari turnamen paling \r\nbergengsi tersebut. Pasangan terkuat dunia asal China, Wang Xiaoli/Yu \r\nYang dan Kim Ha Na/Jung Kyung Eun dari Korea juga terkena \r\ndiskualifikasi.<br />\r\n<br />\r\n&ldquo;Kami tak mau dipengaruhi oleh keputusan yang \r\ndiambil oleh Korea atau China, karena setiap organisasi memiliki \r\nkebijakan masing-masing. Walaupun demikian, kami menghargai IOC dan BWF \r\nyang telah memutuskan bahwa Greysia/Meiliana bersalah, hal ini tidak \r\nboleh terulang lagi kedepannya. PBSI akan memberikan sanksi, namun belum\r\nbisa diumumkan bentuk sankisnya seperti apa&rdquo; ujar Sekjen PBSI, Yacob \r\nRusdianto di Pelatnas Cipayung, Selasa (21/8) sepersti dikutip situs \r\nPBSI.<br />\r\n&nbsp;<br />\r\nSaat ini PBSI masih dalam proses diskusi mengenai sanksi \r\nyang akan diberikan kepada Greysia/Meiliana dan belum ada keputusan \r\nserta pemberitahuan resmi kepada keduanya. Namun ia mengaku telah \r\nbeberapa kali mengadakan pertemuan kekeluargaan bersama kedua pemain \r\nuntuk membicarakan masalah ini dan kemungkinan-kemungkinan yang akan \r\nterjadi.\r\n', 'Suasana pertandingan memalukan itu.\r\n', 'Kamis', '2012-08-23', '01:47:26', '45bulutangkis_sabun.jpg', 10, 'olahraga'),
(637, 2, 'admin', 'Zeelenberg: Lorenzo Akan Bangkit di Brno', 'MotoGP', '', 'zeelenberg-lorenzo-akan-bangkit-di-brno', 'N', 'N', 'N', 'London - Setelah harus bekerja keras merebut posisi kedua di Indianapolis,  \r\nManajer tim Yamaha, Wilco Zeelenberg, yakin pebalap Jorge Lorenzo akan  \r\nbangkit di MotoGP seri Ceko.\r\n<p>\r\nLorenzo diyakini dapat tampil sebagai\r\npemenang untuk menjaga posisi tertinggi di klasemen sementara.         \r\n&quot;Sirkuit Indianapolis menyulitkan kami saat start. Namun, Sirkuit \r\nBrno memiliki lintasan yang halus dan cepat. Saya yakin kami dapat \r\ntampil lebih baik di sana,&quot; kata Zeelenberg, London, Rabu (22/8/2012) di\r\nLondon.\r\n</p>\r\n<p>\r\nLorenzo menang di Brno pada musim 2010 tetapi finis \r\nkeempat di musim 2011. Lorenzo akan berusaha merebut kemenangan keenam \r\npada musim ini di Brno.\r\n</p>\r\nKemenangan ini penting bagi Lorenzo untuk \r\nmemastikan langkahnya menjadi juara dunia di musim ini. Jika sampai \r\nkalah dari Dani Pedrosa, gelar juara dunia harus ditentukan sampai lomba\r\ndi akhir musim\r\n', 'Pebalap Yamaha, Jorge Lorenzo, dengan motor Jupiter Z1 di paddock Yamaha. \r\n', 'Kamis', '2012-08-23', '01:52:27', '48JorgeLorenzo.jpg', 12, 'olahraga'),
(638, 2, 'admin', 'Tyson Peringatkan "Rapper" 50 Cent', '', '', 'tyson-peringatkan-rapper-50-cent', 'N', 'N', 'N', 'New York - Mantan juara dunia tinju kelas berat Mike Tyson memperingatkan rapper 50 Cent yang kini bertindak sebagai promotor tinju.<br />\r\n<br />\r\nRapper yang bernama asli Curtis Jackson ini baru saja mendirikan The Money Team (TMT) Promotions bersama petinju legendaris AS lainnya, Floyd Mayweather Jr. TMT bergerak di bidang pertandingan tinju profesional.<br />\r\n<br />\r\nSaat mendirikan perusahaan ini, 50 Cent bermaksud melakukan perubahan mendasar pada olahraga tinju profesional di AS.<br />\r\n<br />\r\nNamun, Tyson yang pernah malang melintang di dunia tinju antara 1985 hingga 2005 ini memperingatkan 50 Cent tentang &quot;kotornya&quot; dunia tinju profesional.<br />\r\n<br />\r\n&quot;Anda harus tahu tentang dunia tinju. Ini merupakan bisnis yang legal, tetapi tidak semua berjalan terbuka,&quot; kata Tyson. &quot;Memang seharusnya bisnis ini dikelola pemerintah.&quot;<br />\r\n<br />\r\n&quot;50 (Cent) adalah seorang bintang rap, penghibur, dan enterpreneur. Namun, ia sama sekali tidak mengerti dunia tinju,&quot; lanjut juara dunia tinju kelas berat 1986-1990 ini.<br />\r\n<br />\r\nMenurut Tyson, pengetahuan tentang tinju diperoleh 50 Cent hanya versi dari Floyd Mayweather.&nbsp; &quot;Begitu dia berkecimpung di dunia ini, ia harus tahu bahwa kawan bisa menjadi lawan,&quot; kata Tyson. &quot;Mereka hanya inginkan uang Anda dan ingin terus menguasai dunia ini.&quot;<br />\r\n<br />\r\n50 Cent mendapatkan izin promotornya di New York pada Juli lalu, dan mendapat izin usahanya di Nevada. Saat ini mereka telah mengikat beberapa petinju potensial, seperti petinju kelas bulu Yuriorkis Gamboa dari Kuba dan Billy Dib dari Australia.\r\n', 'Mike Tyson\r\n', 'Kamis', '2012-08-23', '01:56:01', '24mike_tyson.jpg', 21, 'olahraga'),
(639, 23, 'admin', 'Hilman Hariwijaya dan Eko Patrio akan Re-cycle Film "Lupus"', '', '', 'hilman-hariwijaya-dan-eko-patrio-akan-recycle-film-lupus', 'N', 'N', 'N', 'Jakarta - Kabar gembira bagi Anda pecinta novel maupun serial Lupus. Pasalnya, tokoh fiksi rekaan Hilman Wijaya ini akan segera diangkat ke layar lebar oleh rumah produksi eKomando Production.<br />\r\n<br />\r\n&quot;Nanti mau produksi film Lupus, kita re-cycle. Kita mudain lagi,&quot; ujar Eko, pemilik eKomando Production, saat ditemui di kawasan dr Saharjo, Jakarta, Kamis (16/8/2012).<br />\r\n<br />\r\nFilm Lupus diangkat kembali ke layar lebar bukan tanpa alasan. Menurut Eko, tokoh Lupus merupakan anak muda yang konyol tetapi inspiratif. Setiap seri Lupus selalu mengangkat unsur persahabatan. Tak ada nuansa politis atau hal lainnya.<br />\r\n<br />\r\n&quot;Di Lupus ada persahabatan yang abadi, bahu-membahu. Tidak pernah berkaitan dengan masalah politik dan sebagainya. Di sini pure banget yang diangkat pertemanan,&quot; tambah Eko.<br />\r\n<br />\r\nSaat ini skenario sudah rampung dibuat oleh penulisnya, Hilman Hariwijaya. Meski demikian, tokoh Lupus hingga saat ini belum ditentukan. Rencananya, Lupus mulai tayang di bioskop pada Februari 2013, bertepatan dengan Hari Valentine.\r\n', '', 'Kamis', '2012-08-23', '02:21:00', '40film_lupus.jpg', 3, 'film,hiburan'),
(640, 23, 'admin', 'Marvel Umumkan Jadwal Rilis "The Avengers 2"', '', '', 'marvel-umumkan-jadwal-rilis-the-avengers-2', 'N', 'N', 'N', 'Los Angeles - The Avengers is back. Setelah memastikan Joss Whedon bakal kembali berada di balik layar, Marvel juga mengumumkan jadwal penayangan perdana The Avengers 2.<br />\r\n<br />\r\nRencanannya, film kumpulan para superhero ini akan dirilis pada tanggal 1 Mei 2015 mendatang setelah mereka menanyangkan film-film terkaitnya seperti Iron 3, Captain America 2 dan Thor 2.<br />\r\n<br />\r\nMeski belum memiliki judul, Marvel dan Disney sudah siap untuk kembali memproduksi film terlaris ketiga box office sepanjang masa. &quot;Walt Disney telah mengumumkan tanggal perilisan sekuel dari film blockbuster superhero terbesar dan film terlaris ketiga sepanjang masa, The Avengers,&quot; tulisnya dalam rilis yang dilansir Digital Spy.<br />\r\n<br />\r\n&quot;Josh Whedon akan kembali menulis naskah dan menyutradarai sekuel Avengers ini dan akan dirilis pada 1 Mei 2015,&quot; tambah Marvel.<br />\r\n<br />\r\nMenyusul pengumuman tersebut, bisa dipastikan bahwa para bintang The Avengers seperti Robert Downey Jr, Chris Hemsworth dan Chris Evens akan kembali tampil untuk memeriahkan film tersebut.\r\n', 'The Avengers\r\n', 'Kamis', '2012-08-23', '02:33:21', '88the_avenger.jpg', 15, 'film,hiburan'),
(641, 23, 'admin', 'Film Dirilis, Dewi Lestari Deg-degan', '', 'http://www.youtube.com/embed/QgDWRe1TNRg', 'film-dirilis-dewi-lestari-degdegan', 'N', 'N', 'N', 'Jakarta -&nbsp; Penulis novel laris &quot;Perahu Kertas&quot;, Dewi Lestari, mengaku tegang menjelang penayangan perdana film Perahu Kertas di bioskop hari ini. &quot;Sangat deg-degan,&quot; kata penulis dengan nama pena Dee itu usai jumpa pembaca novel Perahu Kertas di Gramedia Matraman, Jakarta, Kamis. Film yang diangkat dari novel setebal 456 halaman itu sudah tayang khusus untuk media dan undangan Rabu (8/8/2012) lalu. <br />\r\n<br />\r\n&quot;Kalau yang kemarin kan baru wartawan dan undangan, tetapi kalau sekarang yang dihadapi real judgment (penilaian nyata), sekarang penonton yang menilai. Lama film tayang di bioskop kan ditentukan dari penonton,&quot; kata Dee.<br />\r\n<br />\r\nFilm&nbsp; Perahu Kertas disutradarai oleh Hanung Bramantyo. Artis muda Maudy Ayunda dan Adipati Dolken yang pernah beradu akting di film&nbsp; Malaikat Tanpa Sayap menjadi pemeran utama film tersebut.<br />\r\n<br />\r\nMeskipun ada beberapa adegan film yang berbeda dengan kisah dalam novel namun Dee mengatakan hampir 80 persen jalan cerita film Perahu Kertas&nbsp; sama dengan novel.<br />\r\n<br />\r\n&quot;Kalau ada yang protes itu risiko ya, pasti ada dan buat saya itu wajar. Komparasi pasti terjadi. Tetapi sebagai film, Perahu Kertas solid,&quot; kata ibu dua anak itu.\r\n', 'Dewi Lestari.\r\n', 'Kamis', '2012-08-23', '02:40:30', '65dee.jpg', 28, 'film,hiburan');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(642, 39, 'admin', 'Ahmadinejad: Israel, Tumor yang Harus Dihancurkan', '', '', 'ahmadinejad-israel-tumor-yang-harus-dihancurkan', 'Y', 'N', 'N', 'Teheran - Israel adalah &quot;tumor kanker&quot; yang akan segera dihancurkan, kata Presiden Iran, Mahmoud Ahmadinejad, Jumat (17/8/2012), kepada para demonstran yang melakukan protes tahunan terhadap eksistensi negara Yahudi itu.<br />\r\n<br />\r\n&quot;Rezim Zionis dan warga Zionis adalah satu tumor kanker. Kendatipun satu sel dari mereka dikeluarkan dalam satu inci tanah (Palestina), pada masa depan sejarah ini (bagi eksistensi Israel) akan terulang kembali,&quot; katanya dalam satu pidato di Teheran untuk memperingati Hari Quds Iran yang disiarkan langsung televisi negara itu.<br />\r\n<br />\r\n&quot;Negara-negara dari kawasan ini akan segera mengusir kaum Zionis perampas tanah Palestina.... Sebuah Timur Tengah baru pasti dibentuk. Dengan bantuan Allah dan negara-negara kawasan ini, Timur Tengah baru tidak akan ditemukan lagi orang-orang Amerika dan Zionis,&quot; katanya.<br />\r\n<br />\r\nPeringatan itu dilakukan pada saat ketegangan meningkat antara Israel dan Iran menyangkut program nuklir Iran yang disengketakan itu.<br />\r\n<br />\r\nIsrael pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.<br />\r\n<br />\r\nTelevisi Pemerintah Iran menunjukkan, massa berpawai di bawah sinar matahari yang menyengat di Teheran dan kota-kota lain negara itu untuk memperingati Hari Quds (Jerusalem) yang bertujuan membebaskan kota Jerusalem, yanga akan dijadikan ibu kota negara Palestina masa depan (Israel juga bersikeras untuk menjadikan Jerusalem sebagai ibu kotanya).<br />\r\n<br />\r\nPara pengunjuk rasa membawa bendera-bendera Palestina dan foro-foto pemimpin tertinggi Iran, Ayatollah Ali Khamenei, dan spanduk bertuliskan &quot;Ganyang Israel&quot; dan &quot;Ganyang Amerika&quot;. Satu kelompok orang di Teheran terlihat membakar satu bendera Israel.<br />\r\n<br />\r\nUnjuk rasa itu telah menjadi kegiatan tahunan selama Ramadhan di Iran sejak Revolusi Islam tahun 1979. Para pengunjuk rasa menegaskan antipati Iran terhadap Israel dan sekutunya Amerika Serikat serta mendukung perjuangan rakyat Palestina, yang Khamenei sebut &quot;satu tugas agama.&quot;<br />\r\n<br />\r\nPemimpin tertinggi itu, Rabu, menyebut Israel sebagai &quot;hasil pertumbuhan Zionis gadungan dan palsu&quot; di Timur Tengah yang &quot;akan dilenyapkan&quot;.<br />\r\n<br />\r\nPemimpin Pengawal Revolusi yang berpengaruh, Jenderal Mohammed Ali Jafari, mengemukakan kepada kantor berita Fars, ketika menghadiri unjuk rasa di Teheran itu, bahwa &quot;negara Iran sekarang berada di garis depan perlawanan regional anti-Israel dalam menunjukkan kebenciannya pada Israel.&quot; Ia menambahkan, Iran tetap mempertahankan sikap tegas itu.<br />\r\n<br />\r\nAhmadinejad dalam pidatonya menyatakan, Zionis menimbulkan perang dunia pertama dan kedua, dan &quot;menguasai masalah-masalah dunia, sejak saat itu mereka menguasai Pemerintah AS.&quot; \r\n', 'Mahmud Ahmadinejad.\r\n', 'Kamis', '2012-08-23', '02:49:25', '9ahmadinejad.jpg', 37, 'internasional'),
(643, 42, 'admin', 'Fatima Nabil, Presenter TV Berjilbab Pertama di Mesir', '', '', 'fatima-nabil-presenter-tv-berjilbab-pertama-di-mesir', 'N', 'N', 'N', '<p>\r\nKairo - Fatima\r\nNabil mencatat sejarah. Ia menjadi presenter pertama yang berjilbab \r\nyang muncul di televisi milik pemerintah Mesir. Dalam balutan jilbab \r\nberwarna krem, dan jas hitam Fatima membacakan buletin berita siang, \r\nMinggu 2 September 2012.&nbsp;\r\n</p>\r\n<p>\r\n&quot;Akhirnya revolusi juga terjadi di \r\ntelevisi milik pemerintah,&quot; kata Nabil. Ia berharap kemunculannya ini \r\ndiikuti tak hanya presenter berita tapi juga presenter cuaca dan \r\nlainnya.\r\n</p>\r\n<p>\r\n&quot;Saat ini, standar bukan tergantung pada \r\njilbab, yang sebenarnya merupakan pilihan pribadi setiap perempuan. Tapi\r\nlebih pada profesionalitas dan intelektual,&quot; ujarnya.\r\n</p>\r\n<p>\r\nSejak televisi pemerintah ini berdiri tahun 1960, dibawah rejim Presiden\r\nHosni Mubarok, perempuan yang mengenakan jilbab dilarang menjadi \r\npresenter. Aturan ini sempat ditentang sejumlah aktivis hak asasi dan \r\nkelompok liberal, namun kandas.\r\n</p>\r\n<p>\r\nPemerintah baru yang \r\ndipimpin Presiden Mohammed Mursi, mencabut aturan ini. Menteri Informasi\r\nBaru Saleh Abdel-Makshoud mengatakan sudah banyak perempuan berjilbab \r\nyang muncul sebagai presenter di channel-channel televisi Arab dan \r\ninternasional. Jadi perubahan ini tak menjadi masalah apalagi saat ini \r\nhampir 70% perempuan Mesir mengenakan jilbab.\r\n</p>\r\n<p>\r\nPetinggi stasiun televisi tersebut mengatakan munculnya Nabila bisa \r\nmembangkitkan semangat perempuan lain yang ingin tetap mempertahankan \r\njilbab mereka tanpa harus takut kehilangan pekerjaan. (Sumber: Tempo.co)\r\n</p>\r\n', 'Fatima Nabil\r\n', 'Kamis', '2012-11-22', '10:07:13', '89fatima.jpg', 11, 'internasional'),
(650, 22, 'admin', 'Roy Suryo Menpora, SBY Dipertanyakan', '', '', 'roy-suryo-menpora-sby-dipertanyakan', 'Y', 'N', 'N', '<p>\r\nPengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n</p>\r\n<p>\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. &quot;Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,&quot; kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n</p>\r\n<p>\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. &quot;Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,&quot; katanya. (sumber: republika.co.id)<br />\r\n</p>\r\n', 'Roy Suryo saat dilantik jadi Menpora', 'Jumat', '2013-01-25', '00:01:04', '60roy-suryo.jpg', 1, 'politik'),
(651, 21, 'admin', 'Banjir Jakarta, Kerugian Ekonomi Capai Rp 1 Triliun', 'Jakarta Darurat Banjir', 'http://www.youtube.com/embed/RQMbr4DBqXk', 'banjir-jakarta-kerugian-ekonomi-capai-rp-1-triliun', 'N', 'N', 'Y', '<p>\r\nKetua Asosiasi Pengusaha Indonesia Sofjan Wanandi mengatakan, banjir yang melanda Jakarta sepekan ini telah menimbulkan kerugian ekonomi yang cukup tinggi. Biaya bencana yang ditanggung untuk sekadar menyediakan makan&nbsp; bagi para pengungsi pun mencapai Rp 1 miliar lebih. \r\n</p>\r\n<p>\r\nHal itu disampaikan Sofjan, saat ditemui di area bencana banjir di Penjaringan, Jakarta Utara, Minggu (20/1/2013).\r\n</p>\r\n<p>\r\nSofjan menegaskan, tak bergeraknya roda ekonomi di Jakarta akibat bencana banjir menyebabkan kerugian lebih dari Rp 1 triliun. Aktivitas perdagangan menjadi tidak berjalan, dan kawasan Industri Pulogadung juga ikut lumpuh karena tak memperoleh suplai listrik akibat gardu listrik terendam banjir. \r\n</p>\r\n<p>\r\nNegara importir pun, katanya, mulai mempertanyakan kapan Jakarta bisa pulih, karena ini sangat terkait dengan kegiatan ekspor komoditas keluar negeri dari seluruh daerah di Indonesia yang bertumpu di Jakarta.\r\n</p>\r\n<p>\r\n&rdquo;Importir itu mulai bertanya-tanya, kapan banjir di Jakarta bisa surut. Kendati mereka saat ini memahami Jakarta sedang dilanda bencana,&rdquo; kata Sofjan. (sumber: kompas.com)\r\n</p>\r\n', 'Banjir di daerah Pluit', 'Jumat', '2013-01-25', '00:06:15', '44banjir-lagi.jpg', 1, 'ekonomi'),
(652, 22, 'admin', 'Hary Tanoe Mundur dari Partai Nasdem', '', '', 'hary-tanoe-mundur-dari-partai-nasdem', 'N', 'Y', 'N', '<p>\r\nKetua Dewan Pakar DPP Partai Nasional Demokrat (Nasdem) Hary Tanoesoedibjo menyatakan mundur dari keanggotaan Partai Nasdem. Hal itu disampaikannya secara resmi dalam jumpa pers, Senin (21/1/2013), di Jakarta.\r\n</p>\r\n<p>\r\n&quot;Saya menyatakan mundur dalam kapasitas saya sebagai Ketua Dewan Pakar. Mulai hari ini, saya bukan lagi anggota dari Partai Nasdem. Keputusan ini saya lakukan dengan berat hati,&quot; kata Hary.\r\n</p>\r\n<p>\r\nIa menyatakan, sejak bergabung dengan Partai Nasdem pada 9 Oktober 2011, Hary merasa telah melakukan upaya terbaik, baik energi, pikiran, dana, maupun risiko, untuk berpartisipasi membesarkan Partai Nasdem. &quot;Target utamanya lolos verifikasi dan lolos sebagai partai peserta pemilu. Saya merupakan bagian yang ikut meloloskan Nasdem,&quot; kata bos MNC Grup ini.\r\n</p>\r\n<p>\r\n&quot;Keputusan saya ini tidak mengenakkan, tapi pada satu titik saya harus memutuskan ini. Aktivitas politik harus tetap dijalankan. Destiny keterlibatan saya di politik adalah menjadi bagian dari perubahan untuk bangsa Indonesia menjadi lebih baik. Saya ingin ikut andil secara nyata, langsung. Karena bagaimanapun politik menjadi satu bagian ideologi dan bagian dari masa depan kita,&quot; papar Hary.\r\n</p>\r\n<p>\r\nPerpecahan di tubuh Nasdem mulai merebak ketika beredar kabar adanya faksi di dalam partai itu. Dikabarkan, Surya Paloh yang akan menjadi ketua umum partai itu berseberangan dengan faksi Hary Tanoe. Beberapa waktu lalu, kelompok Surya Paloh memecat Sekjen Garda Pemuda Nasional Demokrat (GPND), Saiful Haq.\r\n</p>\r\n<p>\r\nTentang alasannya mundur, Hary mengatakan karena ada perbedaan pendapat dengan Ketua Majelis Tinggi Partai Nasdem Surya Paloh (sumber: kompas.com) \r\n</p>\r\n', 'Hary Tanoe saat memberikan keterangan pers', 'Jumat', '2013-01-25', '00:58:26', '90hari-tanoesoedibjo.jpg', 0, 'politik'),
(653, 41, 'admin', 'Ketika "Ciyus" Terucap dari Mulut Jokowi', '', '', 'ketika-ciyus-terucap-dari-mulut-jokowi', 'N', 'Y', 'N', '<p>\r\nKata <em>ciyus</em> atau serius sering terdengar diucapkan anak-anak \r\nzaman sekarang yang sering dijuluki anak baru gede (ABG). Nah, ketika \r\nbahasa gaul itu diucapkan oleh Joko Widodo, para pewarta yang bertugas \r\nmeliput kegiatan Gubernur DKI Jakarta itu tak bisa menahan tawa karena \r\nnadanya yang sedikit medok.\r\n</p>\r\n<p>\r\nTerhitung sudah dua kali Jokowi \r\nmelontarkan kata itu kepada wartawan.    Pertama, saat Jumat (18/1/2013)\r\nmalam lalu, ketika Jokowi meninjau perbaikan Tanggul Kanal Banjir Barat\r\n(KBB) di Latuharhary, Jakarta Pusat. Seharian raut muka Jokowi begitu \r\nserius dan tegang karena pengerjaan tanggul yang masih belum selesai, \r\nditambah hujan deras yang terus mengguyur Ibu Kota. Pendek kata, Jokowi \r\ntampak sangat suntuk dan senyum khasnya pun tak terpancar dari dirinya.\r\n</p>\r\n<p>\r\nSaat\r\nitu, Jokowi menghampiri wartawan yang sudah menunggunya di luar rel \r\nkereta api yang terputus. Lantas para wartawan berniat mencairkan \r\nsuasana dengan melontarkan pertanyaan-pertanyaan konyol kepada Jokowi, \r\nseperti &quot;Apabila tanggul selesai, ditandai oleh pemotongan pita di Sency\r\n(Senayan City)?&quot;. Mendengar pertanyaan itu, senyum yang hilang dari \r\nJokowi akhirnya muncul kembali.\r\n</p>\r\n<p>\r\nSeraya mengernyitkan dahinya, \r\nJokowi bertanya, &quot;Apa itu Sency?&quot;   Wartawan pun langsung menjelaskan \r\nkalau Sency itu adalah kependekan dari Senayan City. Mengetahui hal \r\ntersebut, Jokowi pun tertawa dan mengatakan kalau berbicara hendaknya \r\njangan disingkat-singkat. &quot;Oh, <em>kirain </em>saya sensitif itu maksudnya. <em>Mbok</em>, jangan disingkat-singkat, <em>tho</em>,&quot; kata Jokowi.\r\n</p>\r\n<p>\r\nPembicaraan itu pula yang membuat Jokowi melontarkan kata <em>ciyus</em> dan <em>miapah</em> kepada wartawan. &quot;Kalau <em>ciyus miapah </em>itu apa? Ha-ha-ha,&quot; kata Jokowi yang membuat suasana lokasi tersebut yang awalnya tegang menjadi ramai. \r\n</p>\r\n<p>\r\nKata <em>ciyus </em>kembali\r\ndiucapkan Jokowi, Selasa (22/1/2013) kemarin, saat berbincang dengan \r\nwartawan di Balaikota DKI. Bahasa gaul itu keluar kembali setelah ia \r\nditanya terkait kinerjanya 100 hari. \r\n</p>\r\n<p>\r\nSaat itu, Jokowi ditanya \r\nmasalah Jakarta apa yang membuat Jokowi pusing. Jokowi pun menjawab  tak\r\nada persoalan yang membuatnya pusing karena ia telah menghadapi  \r\nmasalah itu sejak ia memimpin Solo selama delapan tahun. Namun, ada satu\r\nmasa Jokowi mengaku tidak memiliki semangat. &quot;Yaitu kalau pas B sama \r\npas T. Apa  itu? Pokoknya pas B sama pas T. <em>Ciyuss</em>,&quot; canda Jokowi yang mengundang  tawa para wartawan. (sumber: kompas.com)\r\n</p>\r\n', '', 'Jumat', '2013-01-25', '01:11:01', '42jokowi.jpg', 0, 'metropolitan'),
(654, 31, 'admin', 'Bahaya Mendiagnosis Penyakit Lewat Internet', '', '', 'bahaya-mendiagnosis-penyakit-lewat-internet', 'N', 'Y', 'N', '<p>\r\nApakah Anda mengunjungi &quot;dokter Google&quot; lebih sering dari dokter di \r\nklinik? Anda tidak sendiri. Dalam sebuah survei tahun lalu di Amerika \r\ndiketahui bahwa 35 persen responden mencocokkan gejala penyakitnya di \r\ninternet dan mendiagnosis dirinya sendiri.\r\n</p>\r\n<p>\r\nMasih menurut survei \r\nyang dilakukan The Pew Research Center&#39;s Internet &amp; American Life \r\nProject itu, sekitar 41 responden mengatakan diagnosis sendiri itu \r\nternyata dikonfirmasi kebenarannya oleh dokter. \r\n</p>\r\n<p>\r\nTetapi, sekitar \r\nsatu dari tiga responden mengaku tidak pernah pergi ke dokter untuk \r\nmencari opini kedua. Malahan, 18 persen responden mengatakan bahwa upaya\r\nmendiagnosis sendiri itu ternyata salah ketika ditanyakan ke dokter. \r\n</p>\r\n<p>\r\nMeski\r\nsurvei yang melibatkan 3.000 responden itu sebenarnya dilakukan untuk \r\nmengetahui siapa yang mencari informasi kesehatan secara <em>online</em>, tetapi para profesional medis merasa khawatir dengan tren itu.\r\n</p>\r\n<p>\r\n&quot;Rata-rata\r\ntiap orang mengunjungi empat situs lalu memutuskan ia menderita kanker \r\ndan akan segera meninggal. Padahal, di internet banyak informasi yang \r\nkeliru,&quot; kata Rahul K Khare, dokter unit gawat darurat dari Northwestern\r\nMemorial Hospital.\r\n</p>\r\n<p>\r\nMenurut Khare, ia sering menemukan pasien \r\nyang hidupnya menjadi penuh kecemasan karena mereka merasa menderita \r\npenyakit berat setelah mencocokkan gejala yang dirasakannya dengan \r\ninformasi di internet. (sumber: kompas.com)\r\n</p>\r\n', '', 'Jumat', '2013-01-25', '01:18:13', '60keluarga.jpg', 0, 'kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `nama_file` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY  (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(3, 'Membuat Shopping Cart dengan PHP', 'shopping cart.pdf', '2009-02-17', 16),
(5, 'Skrip Captcha', 'captcha.rar', '2009-02-06', 15),
(1, 'Kalender Tahun 2009', 'kalender2009.rar', '2009-02-06', 19),
(8, 'Wallpaper PHP', 'PHP_weapon.jpg', '2009-10-28', 37),
(9, 'Slide  Pemrograman VBA Excell', 'Excell_VBA.ppt', '2009-11-03', 24);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL auto_increment,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) collate latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `keterangan` text collate latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_gallery`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=241 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(240, 30, 'admin', 'Doa Bersama', 'doa-bersama', 'Para personil Kantata tengah melakukan doa bersama sebelum pementasan.\r\n', '38kantata1.jpg'),
(239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', '7kantata2.jpg'),
(238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', '7kantata3.jpg'),
(237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', '44kantata4.jpg'),
(236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', '85kantata5.jpg'),
(235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', '95kantata6.jpg'),
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', '32kantata7.jpg'),
(232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', '', '45bungaraksasa8.jpg'),
(233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', '32kantata8.jpg'),
(231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', '89bungaraksasa7.jpg'),
(230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', '17bungaraksasa6.JPG'),
(229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', '74bungaraksasa5.JPG'),
(228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', '22bungaraksasa4.JPG'),
(227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', '78bungaraksasa3.JPG'),
(225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', '17bungaraksasa1.JPG'),
(226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', '22bungaraksasa2.JPG'),
(224, 28, 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', '34asemka10.jpg'),
(223, 28, 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', '6asemka9.jpg'),
(222, 28, 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', '2asemka8.jpg'),
(221, 28, 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', '82asemka4.jpg'),
(220, 28, 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', '21asemka7.jpeg'),
(219, 28, 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', '41asemka1.jpg'),
(218, 28, 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', '7asemka6.jpeg'),
(217, 28, 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', '22asemka5.jpeg'),
(216, 28, 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', '84asemka2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL auto_increment,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) character set latin1 collate latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL default '1',
  `jam` time NOT NULL,
  `hari` varchar(20) character set latin1 collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_halaman`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(18, 'Tentang Kami', 'tentang-kami', '<p>\r\nIngin mempunyai website seperti SwaraKalibata.com ini? Bingung membuat website?\r\nKami menawarkan jasa pembuatan website berkualitas dengan fitur professional.\r\nKami melayani pembuatan website untuk keperluan website pribadi (personal\r\nwebsite), perusahaan (company profile), website sekolah (web school), photography\r\n(web gallery), toko online (e-commerce) serta website untuk keperluan khusus\r\nbagi perusahan, organisasi, lembaga pemerintah, personal, komunitas,\r\norganisasi, UKM atau lainnya.<br />\r\n<br />\r\n<strong>Kelebihan Kami</strong><br />\r\nKelebihan kami adalah kemampuan untuk menawarkan kepada anda layanan penuh.\r\nMulai dari desain web, script, keamanan sistem, garansi kerusakan, sesuai\r\nstandar dan tren web terkini. Selain itu kami juga telah menggunakan CMS\r\n(Content Management System) sehingga memudahkan anda untuk mengelola website\r\nsemudah mengelola file dokumen Microsoft Word. Cukup dengan keahlian mengetik\r\ndi Microsoft Word anda sudah dapat menjadi webmaster yang powerfull dan\r\nprofesional. \r\n</p>\r\n<p>\r\nBerbekal pengalaman dalam jasa pembuatan website ke berbagai perusahaan dan\r\nlainnya, kami siap membantu untuk menghadirkan website anda di internet melalui\r\nbeberapa produk desain website kami. Segera hubungi kami dan dapatkan website\r\nidaman anda! <br />\r\n<br />\r\n<strong>Berikut beberapa demo/contoh website produk kami:&nbsp;</strong>\r\n</p>\r\n<ul>\r\n	<li><a href="http://griya-parfum.co.cc">GriyaParfum</a> </li>\r\n	<li><a href="http://luxindotours.com">Luxindo Tours</a> </li>\r\n	<li><a href="http://iwapi-pusat.org">Iwapi Pusat</a> </li>\r\n	<li><a href="http://kuejajananpasar.com">Kue Jajanan Pasar</a> </li>\r\n	<li><a href="http://kenrizresto.co.cc">KenrizResto</a> </li>\r\n	<li><a href="http://resoar.co.cc">Reka Solusi Arthamedia</a> </li>\r\n	<li><a href="http://eksotika-photography.co.c">Eksotika Photography</a> </li>\r\n	<li><a href="http://griyagaya.co.cc">Griyagaya</a> </li>\r\n	<li><a href="http://rizalonline.morganhosting.co.cc/anekajam">Aneka Jam</a> </li>\r\n	<li><a href="http://rizalonline.morganhosting.co.cc/artfurniture">Art Furniture</a> </li>\r\n	<li><a href="http://rizalonline.morganhosting.co.cc/selarasinterior">Selaras Interior</a> </li>\r\n</ul>\r\n<p>\r\n<font size="3">Hubungi kami <strong>di 021. 329 72 759</strong> (rizal faizal)<br />\r\natau <strong>Email: rizal_fzl@yahoo.com</strong></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', '2012-03-08', 'webdesign.jpg', 'admin', 733, '20:08:00', 'Kamis');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY  (`id_header`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL auto_increment,
  `nama` varchar(50) collate latin1_general_ci NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `subjek` varchar(100) collate latin1_general_ci NOT NULL,
  `pesan` text collate latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`id_hubungi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`) VALUES
(26, 'Rizal Faizal', 'rizal_fzl@yahoo.com', 'test', 'test', '2012-05-10', '00:00:00', 'Y'),
(27, 'Niken', 'azzamrabbanirizaldi@gmail.com', 'tes', 'If you need to buy a premium account to help download of the fast? We recommend that you purchase Account Extabit or I-filez follow the link below to ensure correct service: ', '2012-05-12', '00:00:00', 'Y'),
(29, 'Muhammad', 'hidmuh@gmail.com', 'Assalamu Alaikum', 'Mas. Rizal faisal, Saya berminat memiliki Template seperti http://swarakalibata.com beserta modul" baru barunya. Mas bisa membuatkan saya template seperti situs ini, namun dengan skema warna yang berbeda ? Dan, Berapa harga yang harus saya bayar?', '2012-06-11', '00:00:00', 'N'),
(30, 'wesiyadi', 'wesiyadi@digiporch.com', 'pasang iklan baris gratis', 'silahkan pasang iklan baris anda di www.digiporch.com gratis pasang tanpa perlu daftar\r\n\r\ntrims.', '2012-06-25', '00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL auto_increment,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) character set latin1 collate latin1_general_ci NOT NULL,
  `facebook` varchar(100) character set latin1 collate latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) character set latin1 collate latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_identitas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`) VALUES
(1, 'SwaraKalibata.com - Suara dari Selatan Jakarta', 'rizal_fzl@yahoo.com', 'http://localhost/swarakalibata', 'https://www.facebook.com/pages/SwaraKalibata/239333572825492', 'Bank Mandiri No Rek 126-00-0524471-9 atas nama Niken Sulanjari', '021. 32972759', 'SwaraKalibata.com adalah Situs Portal Berita Jakarta Selatan', 'swarakalibata, berita, info, politik, nasional, budaya, sepakbola, hiburan, kuliner, dunia islam', 'favicon.png');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY  (`id_iklanatas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(35, '', 'admin', '#', 'promoiklan.gif', '2012-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY  (`id_iklantengah`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(26, 'Lembaga Amil Zakat dan Pemberdayaan  DOMPET SOSIAL INSAN MULIA', '', '#', 'dsim_lbanner.jpg', '2011-06-26'),
(30, 'ingin punya website?', '', 'hal-jasa-pembuatan-website.html', 'webDesignBanner.jpg', '2012-01-08'),
(31, 'Contoh Iklan', '', '#', '179748contoh_iklan002.jpg', '2012-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL auto_increment,
  `kata` varchar(60) collate latin1_general_ci default NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `ganti` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_jelek`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL auto_increment,
  `nama_kategori` varchar(50) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`) VALUES
(19, 'Teknologi', '', 'teknologi', 'Y'),
(2, 'Olahraga', '', 'olahraga', 'Y'),
(21, 'Ekonomi', '', 'ekonomi', 'N'),
(22, 'Politik', '', 'politik', 'N'),
(23, 'Hiburan', '', 'hiburan', 'Y'),
(31, 'Kesehatan ', '', 'kesehatan-', 'Y'),
(36, 'Komunitas', '', 'komunitas', 'N'),
(34, 'Seni & Budaya', '', 'seni--budaya', 'N'),
(37, 'Sekitar Kita', '', 'sekitar-kita', 'N'),
(39, 'Internasional', '', 'internasional', 'Y'),
(40, 'Kuliner', '', 'kuliner', 'Y'),
(41, 'Metropolitan', '', 'metropolitan', 'N'),
(42, 'Dunia Islam', '', 'dunia-islam', 'N'),
(44, 'Wisata', '', 'wisata', 'N'),
(46, 'Daerah', '', 'daerah', 'N'),
(47, 'Gaya Hidup', '', 'gaya-hidup', 'N'),
(48, 'Hukum', '', 'hukum', 'N'),
(52, 'Sejarah Indonesia', 'admin', 'sejarah-indonesia', 'N'),
(53, 'Tokoh', 'admin', 'tokoh', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL auto_increment,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_komentar` text collate latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_komentar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=138 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 622, 'asyiqah', '', ' 	nice  story	   ', '2012-01-05', '00:15:45', 'Y', ''),
(88, 633, 'belajarkonseling', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', ''),
(90, 597, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', ''),
(91, 623, 'ridha', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', ''),
(136, 643, 'belajarweb', '', ' cantik  euy   ', '2013-01-19', '18:51:58', 'Y', ''),
(137, 603, 'lukman', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL auto_increment,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_komentar` text collate latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`id_komentar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=107 ;

--
-- Dumping data for table `komentarvid`
--


-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL auto_increment,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_logo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'logo1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL auto_increment,
  `nama` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `member`
--


-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL auto_increment,
  `id_parent` int(5) NOT NULL default '0',
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL default 'Ya',
  PRIMARY KEY  (`id_menu`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`) VALUES
(9, 8, 'Hukum', 'kategori-48-hukum.html', 'Ya'),
(8, 0, 'Nasional', '#', 'Ya'),
(7, 0, 'Home', 'index.php', 'Ya'),
(11, 8, 'Politik', 'kategori-22-politik.html', 'Ya'),
(12, 8, 'Ekonomi', 'kategori-21-ekonomi.html', 'Ya'),
(13, 0, 'Internasional', 'kategori-39-internasional.html', 'Ya'),
(14, 0, 'Teknologi', 'kategori-19-teknologi.html', 'Ya'),
(18, 0, 'Olahraga', 'kategori-2-olahraga.html', 'Ya'),
(19, 0, 'Hiburan', 'kategori-23-hiburan.html', 'Ya'),
(20, 0, 'Metropolitan', 'kategori-41-metropolitan.html', 'Ya'),
(21, 0, 'Dunia Islam', 'kategori-42-dunia-islam.html', 'Ya'),
(22, 39, 'Kuliner', 'kategori-40-kuliner.html', 'Ya'),
(23, 0, 'Video', 'semua-playlist.html', 'Ya'),
(40, 39, 'Kesehatan', 'kategori-31-kesehatan.html', 'Ya'),
(39, 0, '+ Lainnya', '', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL auto_increment,
  `nama_modul` varchar(50) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `link` varchar(100) collate latin1_general_ci NOT NULL,
  `static_content` text collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `publish` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  `status` enum('user','admin') collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=71 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', '', '?module=user', '', '', 'Y', 'user', 'Y', 22, ''),
(18, ' Berita', '', '?module=berita', '', '', 'Y', 'user', 'Y', 5, 'semua-berita.html'),
(19, 'Iklan Utama', '', '?module=banner', '', '', 'N', 'user', 'N', 9, ''),
(10, 'Manajemen Modul', '', '?module=modul', '', '', 'Y', 'user', 'Y', 23, ''),
(31, 'Kategori Berita ', '', '?module=kategori', '', '', 'Y', 'user', 'Y', 6, ''),
(33, 'Jajak Pendapat', '', '?module=poling', '', '', 'Y', 'user', 'Y', 18, ''),
(34, 'Tag Berita', '', '?module=tag', '', '', 'Y', 'user', 'Y', 7, ''),
(35, 'Komentar Berita', '', '?module=komentar', '', '', 'Y', 'user', 'Y', 8, ''),
(41, 'Agenda Jakarta', '', '?module=agenda', '', '', 'Y', 'user', 'Y', 17, 'semua-agenda.html'),
(43, 'Berita Foto', '', '?module=album', '', '', 'Y', 'user', 'Y', 11, ''),
(44, 'Galeri Berita Foto', '', '?module=galerifoto', '', '', 'Y', 'user', 'Y', 12, ''),
(45, 'Template Web', '', '?module=templates', '', '', 'Y', 'user', 'Y', 16, ''),
(46, 'Sensor Kata', '', '?module=katajelek', '', '', 'Y', 'user', 'Y', 10, ''),
(61, 'Identitas Website', '', '?module=identitas', '', '', 'Y', 'user', 'Y', 1, ''),
(57, 'Menu Utama', '', '?module=menuutama', '', '', 'Y', 'user', 'Y', 2, ''),
(58, 'Sub Menu', '', '?module=submenu', '', '', 'Y', 'user', 'Y', 3, ''),
(59, 'Halaman Baru', '', '?module=halamanstatis', '', '', 'Y', 'user', 'Y', 4, ''),
(62, 'Video', '', '?module=video', '', '', 'Y', 'user', 'Y', 13, ''),
(63, 'Playlist Video', '', '?module=playlist', '', '', 'Y', 'user', 'Y', 14, ''),
(64, 'Tag Video', '', '?module=tagvid', '', '', 'Y', 'user', 'Y', 15, ''),
(65, 'Komentar Video', '', '?module=komentarvid', '', '', 'Y', 'user', 'Y', 15, ''),
(66, 'Logo Website', '', '?module=logo', '', '', 'Y', 'user', 'Y', 15, ''),
(67, 'Iklan Layanan', '', '?module=iklanatas', '', '', 'Y', 'user', 'Y', 19, ''),
(68, 'Iklan Depan', '', '?module=iklantengah', '', '', 'Y', 'user', 'Y', 20, ''),
(69, 'Iklan Kiri', '', '?module=pasangiklan', '', '', 'Y', 'user', 'Y', 21, ''),
(70, 'Hubungi Kami', '', '?module=hubungi', '', '', 'Y', 'user', 'Y', 24, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL auto_increment,
  `alamat` varchar(250) character set latin1 collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_alamat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p>\r\nJl. Kalibata Selatan II/2B\r\n</p>\r\n<p>\r\nJakarta 12740 \r\n</p>\r\n<p>\r\nIndonesia \r\n</p>\r\n<p>\r\nTelp. 021.32972759\r\n</p>\r\n<p>\r\nEmail: <a href="mailto:rizal_fzl@yahoo.com">rizal_fzl@yahoo.com</a> \r\n</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL auto_increment,
  `nama` varchar(255) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mod_ym`
--

INSERT INTO `mod_ym` (`id`, `nama`, `username`) VALUES
(1, 'Rizal Faizal', 'rizal_fzl');

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY  (`id_pasangiklan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(23, 'Griyaparfum', 'admin', 'http://griya-parfum.co.cc', '345872griyaparfum_logo.jpg', '2011-06-22'),
(26, 'PT. PELANGI SAMUDERA INTERNATIONAL', 'admin', 'http://www.psimt.net', 'psim.jpg', '2011-09-29'),
(28, 'Penerbit Lokomedia', 'admin', 'http://bukulokomedia.com', '58898lokomedia.jpg', '2012-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL auto_increment,
  `jdl_playlist` varchar(100) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`id_playlist`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=58 ;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(50, 'POP', '', 'pop', '299267pop.jpg', 'Y'),
(49, 'OLD SCHOOL', '', 'old-school', '89854oldschool.jpg', 'Y'),
(51, 'JAZZ', '', 'jazz', '935169jazz.jpg', 'Y'),
(52, 'ROCK', '', 'rock', '50347Rock.jpg', 'Y'),
(55, 'DANGDUT', '', 'dangdut', '689891dangdut.jpg', 'Y'),
(54, 'DANCE', '', 'dance', '986101dance.jpg', 'Y'),
(56, 'WISATA INDONESIA', 'admin', 'wisata-indonesia', '575958indonesiana.jpg', 'Y'),
(57, 'Serba Serbi', 'admin', 'serba-serbi', '733489serbaserbi.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL auto_increment,
  `pilihan` varchar(100) collate latin1_general_ci NOT NULL,
  `status` varchar(20) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL default '0',
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_poling`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Siapakah Calon Gubernur dan Wakil Gubernur DKI Favorit Anda?', 'Pertanyaan', 'admin', 0, 'Y'),
(26, 'Joko Widodo-Basuki Tjahaja Purnama', 'Jawaban', 'admin', 9, 'Y'),
(25, 'Fauzi Bowo-Nachrowi Ramli', 'Jawaban', 'admin', 3, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL auto_increment,
  `info` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'Y',
  PRIMARY KEY  (`id_sekilas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2010-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak-anak di dunia kecanduan menonton televisi dan bermain komputer.', '0000-00-00', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lebih lama.', '2010-04-11', '', 'Y'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di Indonesia adalah palsu.', '2010-04-11', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL default '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL default '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.2', '2009-09-11', 1, '1252681630'),
('127.0.0.1', '2013-01-22', 1, '1358865974'),
('127.0.0.1', '2013-01-23', 14, '1358913313'),
('127.0.0.1', '2013-01-24', 34, '1359046647'),
('127.0.0.1', '2013-01-25', 21, '1359051663');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL auto_increment,
  `nama_tag` varchar(100) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY  (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(30, 'Pendidikan', '', 'pendidikan', 7),
(29, 'Ekonomi', '', 'ekonomi', 7),
(22, 'Hiburan', '', 'hiburan', 16),
(28, 'Teknologi', '', 'teknologi', 8),
(27, 'Metropolitan', '', 'metropolitan', 29),
(26, 'Nasional', '', 'nasional', 38),
(25, 'Kesehatan', '', 'kesehatan', 14),
(24, 'Olahraga', '', 'olahraga', 10),
(23, 'Dunia Islam', '', 'dunia-islam', 40),
(21, 'Kuliner', '', 'kuliner', 17),
(20, 'Komunitas', '', 'komunitas', 2),
(31, 'Politik', '', 'politik', 15),
(32, 'Seni & Budaya', '', 'seni--budaya', 4),
(33, 'Sekitar Kita', '', 'sekitar-kita', 9),
(34, 'Wisata', '', 'wisata', 4),
(35, 'Gaya Hidup', '', 'gaya-hidup', 4),
(36, 'Hukum', '', 'hukum', 13),
(37, 'Film', '', 'film', 24),
(38, 'Musik', '', 'musik', 11),
(39, 'Daerah', '', 'daerah', 23),
(40, 'Internasional', '', 'internasional', 22),
(41, 'Bola', '', 'bola', 19),
(42, 'Televisi', '', 'televisi', 2),
(43, 'Selebritis', '', 'selebritis', 5),
(44, 'Tragedi Tugu Tani', '', 'tragedi-tugu-tani', 3),
(45, 'Pilkada DKI', '', 'pilkada-dki', 0),
(46, 'Tokoh', '', 'tokoh', 0),
(47, 'Piala Eropa', '', 'piala-eropa', 23),
(48, 'Sejarah Indonesia', 'admin', 'sejarah-indonesia', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL auto_increment,
  `nama_tag` varchar(100) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY  (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tagvid`
--


-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `pembuat` varchar(50) collate latin1_general_ci NOT NULL,
  `folder` varchar(50) collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`id_templates`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(12, 'Biru', 'admin', 'Rizal Faizal', 'layout/biru', 'N'),
(13, 'Merah', 'admin', 'Rizal Faizal', 'layout/merah', 'Y'),
(16, 'Hijau', 'admin', 'Rizal Faizal', 'layout/hijau', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `password` varchar(50) collate latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) collate latin1_general_ci NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `no_telp` varchar(20) collate latin1_general_ci NOT NULL,
  `foto` varchar(100) collate latin1_general_ci NOT NULL,
  `level` varchar(20) collate latin1_general_ci NOT NULL default 'user',
  `blokir` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  `id_session` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Rizal Faizal', 'rizal_fzl@yahoo.com', '', '15me_rzl.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('Niken', '08bdba24f01f56d1404fb0a0a66f144b', 'Niken Sulanjari', 'she_peck@yahoo.com', '', '52niken.jpg', 'user', 'N', '5bi6b98a7r02hvh15dsog2vfo2');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL auto_increment,
  `id_session` varchar(100) NOT NULL,
  `id_modul` int(11) NOT NULL,
  PRIMARY KEY  (`id_umod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(88, '5bi6b98a7r02hvh15dsog2vfo2', 44),
(87, '5bi6b98a7r02hvh15dsog2vfo2', 43),
(102, '5bi6b98a7r02hvh15dsog2vfo2', 34),
(80, '5bi6b98a7r02hvh15dsog2vfo2', 18),
(101, '5bi6b98a7r02hvh15dsog2vfo2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL auto_increment,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) collate latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) collate latin1_general_ci NOT NULL,
  `video_seo` varchar(100) collate latin1_general_ci NOT NULL,
  `keterangan` text collate latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) collate latin1_general_ci NOT NULL,
  `video` varchar(100) collate latin1_general_ci NOT NULL,
  `youtube` varchar(100) collate latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL default '1',
  `hari` varchar(20) collate latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_video`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=157 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(147, 49, 'admin', 'Taylor Dayne-Tell It To My Heart', 'taylor-daynetell-it-to-my-heart', 'I feel the night explode<br />\r\nWhen we&#39;re together<br />\r\nEmotion overload<br />\r\nIn the heat of pleasure<br />\r\n<br />\r\nTake me I&#39;m yours<br />\r\nInto your arms<br />\r\nNever let me go<br />\r\nTonight I really need to know<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart<br />\r\nI can feel my body rock<br />\r\nEvery time you call my name<br />\r\n<br />\r\nThe passion&#39;s so complete<br />\r\nIt&#39;s never ending<br />\r\nAs long as I receive<br />\r\nThe message you&#39;re sending<br />\r\n<br />\r\nBody to body<br />\r\nSoul to soul<br />\r\nAlways feel you near<br />\r\nSo say the words I long to hear<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart<br />\r\nI can feel my body rock<br />\r\nEvery time you call my name<br />\r\n<br />\r\nLove, love on the run<br />\r\nBreakin&#39; us down<br />\r\nThough we keep holdin&#39; on<br />\r\nI don&#39;t want to lose<br />\r\nNo, I can&#39;t let you go<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart<br />\r\nI can feel my body rock<br />\r\nEvery time you call my name<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me from the start<br />\r\nTell it to my heart<br />\r\nTell it to my heart<br />\r\nTell me from the start<br />\r\nTell it to my heart<br />\r\nNever make it stop<br />\r\nOh, take it to the heart<br />\r\n<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart<br />\r\nI can feel my body rock<br />\r\nEvery time you call my name<br />\r\nTell it to my heart<br />\r\nTell me I&#39;m the only one<br />\r\nIs this really love or just a game?<br />\r\nTell it to my heart\r\n', '831329taylor_dayne.jpg', '', 'http://www.youtube.com/embed/Ud6sU3AclT4', 15, 'Sabtu', '2012-02-04', '12:11:28', ''),
(148, 50, 'admin', 'Shania Twain-Youre Still The One ', 'shania-twainyoure-still-the-one-', 'When I first saw you, I saw love<br />\r\nAnd the first time you touched me, I felt love<br />\r\nAnd after all this time, you&#39;re still the one I love<br />\r\n<br />\r\nLooks like we made it<br />\r\nLook how far we&#39;ve come my baby<br />\r\nWe mighta took the long way<br />\r\nWe knew we&#39;d get there someday<br />\r\n<br />\r\nThey said, &quot;I bet they&#39;ll never make it&quot;<br />\r\nBut just look at us holding on<br />\r\nWe&#39;re still together still going strong<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one I run to<br />\r\nThe one that I belong to<br />\r\nYou&#39;re still the one I want for life<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one that I love<br />\r\nThe only one I dream of<br />\r\nYou&#39;re still the one I kiss good night<br />\r\n<br />\r\nAin&#39;t nothin&#39; better<br />\r\nWe beat the odds together<br />\r\nI&#39;m glad we didn&#39;t listen<br />\r\nLook at what we would be missin&#39;<br />\r\n<br />\r\nThey said, &quot;I bet they&#39;ll never make it&quot;<br />\r\nBut just look at us holding on<br />\r\nWe&#39;re still together still going strong<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one I run to<br />\r\nThe one that I belong to<br />\r\nYou&#39;re still the one I want for life<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one that I love<br />\r\nThe only one I dream of<br />\r\nYou&#39;re still the one I kiss good night<br />\r\nYou&#39;re still the one<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one I run to<br />\r\nThe one that I belong to<br />\r\nYou&#39;re still the one I want for life<br />\r\n<br />\r\n(You&#39;re still the one)<br />\r\nYou&#39;re still the one that I love<br />\r\nThe only one I dream of<br />\r\nYou&#39;re still the one I kiss good night<br />\r\n<br />\r\nI&#39;m so glad we made it<br />\r\nLook how far we&#39;ve come my baby\r\n', '854shania_twain.jpg', '', 'http://www.youtube.com/embed/KNZH-emehxA', 26, 'Sabtu', '2012-02-04', '12:31:16', ''),
(146, 49, 'admin', 'New Kids On The Block-Step by Step', 'new-kids-on-the-blockstep-by-step', 'Step by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, girl<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh baby<br />\r\nReally want you in my world<br />\r\n<br />\r\nStep, hey girl<br />\r\nIn your eyes, I see a picture of me all the time<br />\r\nStep and girl<br />\r\nWhen you smile, you&#39;ve got to know that you drive me wild<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nYou&#39;re always on my mind<br />\r\nStep by step, ooh girl<br />\r\nI really think it&#39;s just a matter of time<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh baby<br />\r\nReally want you in my world<br />\r\n<br />\r\nStep, hey girl<br />\r\nCan&#39;t you see, I&#39;ve got to have you all just for me<br />\r\nStep and girl<br />\r\nYes, it&#39;s true, no one else will ever do<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nYou&#39;re always on my mind<br />\r\nStep by step, ooh girl<br />\r\nI really think it&#39;s just a matter of time<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nReally want you in my world<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\n<br />\r\nStep, step, step, step by step<br />\r\nStep one<br />\r\nWe can have lots of fun<br />\r\nStep two<br />\r\nThere&#39;s so much we can do<br />\r\nStep three<br />\r\nIt&#39;s just you and me<br />\r\nStep four<br />\r\nI can give you more<br />\r\nStep five<br />\r\nDon&#39;t you know that the time is right<br />\r\n<br />\r\nStep by step<br />\r\nDon&#39;t you know I need you<br />\r\nStep by step<br />\r\nYes, I do, girl<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nYou&#39;re always on my mind<br />\r\nStep by step, ooh girl<br />\r\nI really think it&#39;s just a matter of time<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh baby<br />\r\nReally want you in my world<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh girl<br />\r\nReally want you in my world<br />\r\n<br />\r\nStep by step, ooh baby<br />\r\nGonna get to you girl<br />\r\nStep by step, ooh baby<br />\r\n', '532379nkotb.jpg', '', 'http://www.youtube.com/embed/ES_kxPkgm9U', 12, 'Sabtu', '2012-02-04', '11:39:50', ''),
(145, 49, 'admin', 'Debbie Gibson - Electric Youth ', 'debbie-gibson--electric-youth-', 'Zappin&#39; it to you, the pressure&#39;s everywhere<br />\r\nGoin&#39; right through you<br />\r\nThe fever&#39;s in the air, oh, yeah, it&#39;s there<br />\r\nDon&#39;t underestimate the power of a lifetime ahead<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs to the future itself<br />\r\nAnd the future is electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation, it&#39;s electric<br />\r\n<br />\r\nWe&#39;ve got the most time to make the world go round<br />\r\nOh, can you spare a dime?<br />\r\nPlace your bet on our sound, come back to town<br />\r\nDon&#39;t lose sight of potential mastermind<br />\r\nRemember when you were young<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs in the hands of itself<br />\r\nAnd the future is electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation, it&#39;s electric<br />\r\n<br />\r\nWe do what comes naturally<br />\r\nYou see now, wait for the possibility<br />\r\nDon&#39;t you see a strong resemblance to yourself?<br />\r\nDon&#39;t you think what we say is important?<br />\r\nWhatever it may be, the fun is gonna start with me<br />\r\nI&#39;m bringing it back<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs to the future itself<br />\r\nAnd the future is, electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation, it&#39;s electrifying<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs in the hands of itself<br />\r\nAnd the future is electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation, it&#39;s electric<br />\r\nIt&#39;s electric, it&#39;s electric<br />\r\n<br />\r\nElectric youth, feel the power<br />\r\nYou see the energy comin&#39; up, coming on strong<br />\r\nThe future only belongs to the future itself<br />\r\nAnd the future is electric youth<br />\r\nIt&#39;s true you can&#39;t fight it, live by it<br />\r\nThe next generation<br />\r\n<br />\r\nInflation, flirtation<br />\r\nRelaxation, elation<br />\r\nGeneration of<br />\r\nAn electric youth\r\n', '952941debbie-gibson.jpg', '', 'http://www.youtube.com/embed/QW9-VGcNZ5M', 23, 'Sabtu', '2012-02-04', '11:03:09', ''),
(143, 49, 'admin', 'A Shoulder To Cry On-Tommy Page', 'a-shoulder-to-cry-ontommy-page', 'Life is full of lots of up and downs,<br />\r\nAnd the distance feels further when you&#39;re headed for the ground,<br />\r\nAnd there is nothing more painful than to let you&#39;re feelings take<br />\r\nyou down,<br />\r\nIt&#39;s so hard to know the way you feel inside,<br />\r\nWhen there&#39;s many thoughts and feelings that you hide,<br />\r\nBut you might feel better if you let me walk with you<br />\r\nby your side,<br />\r\n<br />\r\nAnd when you need a shoulder to cry on,<br />\r\nWhen you need a friend to rely on,<br />\r\nWhen the whole world is gone,<br />\r\nYou won&#39;t be alone, cause I&#39;ll be there,<br />\r\nI&#39;ll be your shoulder to cry on,<br />\r\nI&#39;ll be there,<br />\r\nI&#39;ll be a friend to rely on,<br />\r\nWhen the whole world is gone,<br />\r\nyou won&#39;t be alone, cause I&#39;ll be there.<br />\r\n<br />\r\nAll of the times when everything is wrong<br />\r\nAnd you&#39;re feeling like<br />\r\nThere&#39;s no use going on<br />\r\nYou can&#39;t give it up<br />\r\nI hope you work it out and carry on<br />\r\nSide by side,<br />\r\nWith you till the end<br />\r\nI&#39;ll always be the one to firmly hold your hand<br />\r\nno matter what is said or done<br />\r\nour love will always continue on<br />\r\n<br />\r\nEveryone needs a shoulder to cry on<br />\r\neveryone needs a friend to rely on<br />\r\nWhen the whole world is gone<br />\r\nyou won&#39;t be alone cause I&#39;ll be there<br />\r\nI&#39;ll be your shoulder to cry on<br />\r\nI&#39;ll be there<br />\r\nI&#39;ll be the one you rely on<br />\r\nwhen the whole world&#39;s gone<br />\r\nyou won&#39;t be alone<br />\r\ncause I&#39;ll be there!<br />\r\n<br />\r\nAnd when the whole world is gone<br />\r\nYou&#39;ll always have my shoulder to cry on.... \r\n', '437103tommy_page.jpg', '', 'http://www.youtube.com/embed/UgpQ0H7xwkI', 44, 'Sabtu', '2012-02-04', '10:34:29', ''),
(142, 49, 'admin', 'Like A Prayer - Madonna', 'like-a-prayer--madonna', 'Life is a mystery<br />\r\nEveryone must stand alone<br />\r\nI hear you call my name<br />\r\nAnd it feels like home<br />\r\n<br />\r\nWhen you call my name it&#39;s like a little prayer<br />\r\nI&#39;m down on my knees, I wanna take you there<br />\r\nIn the midnight hour I can feel your power<br />\r\nJust like a prayer you know I&#39;ll take you there<br />\r\n<br />\r\nI hear your voice<br />\r\nIt&#39;s like an angel sighing<br />\r\nI have no choice, I hear your voice<br />\r\nFeels like flying<br />\r\n<br />\r\nI close my eyes<br />\r\nOh God I think I&#39;m falling<br />\r\nOut of the sky, I close my eyes<br />\r\nHeaven help me<br />\r\n<br />\r\nWhen you call my name it&#39;s like a little prayer<br />\r\nI&#39;m down on my knees, I wanna take you there<br />\r\nIn the midnight hour I can feel your power<br />\r\nJust like a prayer you know I&#39;ll take you there<br />\r\n<br />\r\nLike a child<br />\r\nYou whisper softly to me<br />\r\nYou&#39;re in control just like a child<br />\r\nNow I&#39;m dancing<br />\r\n<br />\r\nIt&#39;s like a dream<br />\r\nNo end and no beginning<br />\r\nYou&#39;re here with me it&#39;s like a dream<br />\r\nLet the choir sing<br />\r\n<br />\r\nWhen you call my name it&#39;s like a little prayer<br />\r\nI&#39;m down on my knees, I wanna take you there<br />\r\nIn the midnight hour I can feel your power<br />\r\nJust like a prayer you know I&#39;ll take you there<br />\r\n<br />\r\nWhen you call my name it&#39;s like a little prayer<br />\r\nI&#39;m down on my knees, I wanna take you there<br />\r\nIn the midnight hour I can feel your power<br />\r\nJust like a prayer you know I&#39;ll take you there<br />\r\n<br />\r\nLife is a mystery<br />\r\nEveryone must stand alone<br />\r\nI hear you call my name<br />\r\nAnd it feels like home<br />\r\n<br />\r\nJust like a prayer, your voice can take me there<br />\r\nJust like a muse to me, you are a mystery<br />\r\nJust like a dream, you are not what you seem<br />\r\nJust like a prayer, no choice your voice can take me there<br />\r\n<br />\r\nJust like a prayer, I&#39;ll take you there<br />\r\nIt&#39;s like a dream to me<br />\r\nJust like a prayer, I&#39;ll take you there<br />\r\nIt&#39;s like a dream to me<br />\r\n<br />\r\nJust like a prayer, I&#39;ll take you there<br />\r\nIt&#39;s like a dream to me<br />\r\nJust like a prayer, I&#39;ll take you there<br />\r\nIt&#39;s like a dream to me<br />\r\n<br />\r\nJust like a prayer, your voice can take me there<br />\r\nJust like a muse to me, you are a mystery<br />\r\nJust like a dream, you are not what you seem<br />\r\nJust like a prayer, no choice your voice can take me there<br />\r\n<br />\r\nJust like a prayer, your voice can take me there<br />\r\nJust like a muse to me, you are a mystery<br />\r\nJust like a dream, you are not what you seem<br />\r\nJust like a prayer, no choice your voice can take me there<br />\r\nYour voice can take me there<br />\r\nLike a prayer<br />\r\n<br />\r\nJust like a prayer<br />\r\nJust like a prayer, your voice can take me there<br />\r\nJust like a prayer<br />\r\nJust like a prayer, your voice can take me there\r\n', '581115madonna-like-a-prayer.jpg', '', 'http://www.youtube.com/embed/cSVbwwsLPqw', 11, 'Sabtu', '2012-02-04', '10:23:49', ''),
(144, 49, 'admin', 'Milli Vanilli-Baby Dont Forget My Number', 'milli-vanillibaby-dont-forget-my-number', 'Babe, don&#39;t be shy<br />\r\nWhen you&#39;re holding my hand<br />\r\n&#39;Cause this time goes back<br />\r\nYou got to understand it&#39;s you<br />\r\n<br />\r\nBa, ba, ba, baby in your eyes<br />\r\nI see it so clearly that our love, it&#39;s so strong<br />\r\nAnd you never go wrong<br />\r\nI got the best for you so I&#39;m waiting down<br />\r\n<br />\r\nIf you need someone<br />\r\nBaby, call my line<br />\r\nCall me anytime<br />\r\nI&#39;ll be there for you, you, you<br />\r\n<br />\r\nI&#39;ve been searching high, high, high<br />\r\nI&#39;ve been searching low<br />\r\n<br />\r\nBa, ba, ba, ba, baby<br />\r\nDon&#39;t forget my number<br />\r\nBaby, don&#39;t be stronger than a thunder<br />\r\nBa, ba, ba, ba, baby<br />\r\nDon&#39;t forget my number<br />\r\nLove will see you through<br />\r\n<br />\r\nI&#39;ve been searching high<br />\r\nI&#39;ve been searching low<br />\r\n<br />\r\nI want to spend spend my life with you<br />\r\nBa, ba, ba, ba, ba, ba, ba, ba<br />\r\nMy desper youth<br />\r\nBa, ba, ba, ba, ba, ba, ba, ba<br />\r\nLove will see you through<br />\r\n<br />\r\nBa, ba, baby in your eyes<br />\r\nI see it so clearly\r\n', '447998milli-vanilli.jpg', '', 'http://www.youtube.com/embed/saPp0jr7Go0', 28, 'Sabtu', '2012-02-04', '10:44:56', ''),
(140, 49, 'admin', 'Forever Young - Alphaville', 'forever-young--alphaville', 'Lets dance in style, lets dance for a while.<br />\r\nHeaven can wait were only watching the skies.<br />\r\nHoping for the best but expecting the worst.<br />\r\nAre you gonna drop the bomb or not?<br />\r\n<br />\r\nLet us die young or let us live forever.<br />\r\nWe dont have the power but we never say never.<br />\r\nSitting in a sandpit, life is a short trip.<br />\r\nThe music&#39;s for the sad men.<br />\r\n<br />\r\nCan you imagine when this race is won.<br />\r\nTurn our golden faces into the sun.<br />\r\nPraising our leaders were getting in tune.<br />\r\nThe musics played by the madmen.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? forever and ever.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? for ever young.<br />\r\n<br />\r\nSome are like water, some are like the heat.<br />\r\nSome are a melody and some are the beat.<br />\r\nSooner or later they all will be gone.<br />\r\nWhy dont they stay young?<br />\r\n<br />\r\nIts so hard to get old without a cause.<br />\r\nI dont want to perish like a fading horse.<br />\r\nYouth is like diamonds in the sun.<br />\r\nAnd diamonds are forever.<br />\r\n<br />\r\nSo many adventures couldnt happen today.<br />\r\nSo many songs we forgot to play.<br />\r\nSo many dreams are swinging out of the blue.<br />\r\nWe let them come true.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? forever and ever.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? forever and ever.<br />\r\n<br />\r\nForever young, I want to be forever young.<br />\r\nDo you really want to live forever? forever.\r\n', '976013alphaville-forever-young.jpg', '', 'http://www.youtube.com/embed/t1TcDHrkQYg', 27, 'Sabtu', '2012-02-04', '09:03:23', ''),
(149, 50, 'admin', 'Meja - All About The Money', 'meja--all-about-the-money', 'Some times I find another world inside my mind\r\nWhen I realize all the crazy things we do\r\nIt makes me feel ashamed to be alive\r\nI wanna run away and hide\r\nIt&#39;s all about the money, it&#39;s all about the dum dum\r\nAnd I don&#39;t think it&#39;s funny to see us fade away\r\nIt&#39;s all about the money, it&#39;s all about the\r\nI think we got it all wrong anyway\r\nStrange ways of showing how much we really care\r\nWhen in face we don&#39;t seem to care at all\r\nThis pretty world is getting out of hand\r\nSo how come we fail to understand?\r\nIt&#39;s all about the money, it&#39;s all about the dum dum\r\nAnd I don&#39;t think it&#39;s funny to see us fade away\r\nIt&#39;s all about the money, it&#39;s all about the\r\nI think we got it all wrong anyway\r\n', '793426meja.jpg', '', 'http://www.youtube.com/embed/YcXMhwF4EtQ', 100, 'Sabtu', '2012-02-04', '13:04:19', ''),
(156, 56, 'admin', 'Borobudur', 'borobudur', 'Borobudur adalah nama sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Lokasi candi adalah kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta. Candi berbentuk stupa ini didirikan oleh para penganut agama Buddha Mahayana sekitar tahun 800-an Masehi pada masa pemerintahan wangsa Syailendra. Monumen ini terdiri atas enam teras berbentuk bujur sangkar yang diatasnya terdapat tiga pelataran melingkar, pada dindingnya dihiasi dengan 2.672 panel relief dan aslinya terdapat 504 arca Buddha.[1] Stupa utama terbesar teletak di tengah sekaligus memahkotai bangunan ini, dikelilingi oleh tiga barisan melingkar 72 stupa berlubang yang didalamnya terdapat arca buddha tengah duduk bersila dalam posisi teratai sempurna dengan mudra (sikap tangan) Dharmachakra mudra (memutar roda dharma).<br />\r\n', '523559borobudur-temple.jpg', '', 'http://www.youtube.com/embed/ldHd8Z5ZV-c', 6, 'Kamis', '2012-11-22', '23:33:29', '');
