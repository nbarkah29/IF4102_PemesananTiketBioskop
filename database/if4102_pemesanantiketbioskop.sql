-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2019 at 06:20 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if4102_pemesanantiketbioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE `cinema` (
  `idCinema` int(11) NOT NULL,
  `namaCinema` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `idStudio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`idCinema`, `namaCinema`, `lokasi`, `idStudio`) VALUES
(1, 'CIWALK XXI', 'Jl. Cihampelas No 16 Cipaganti Bandung', 0),
(2, 'EMPIRE XXI', 'Jl Merdeka No 56 Citarum Bandung', 0),
(3, 'TIKO XXI', 'Jl Kopo Cirangrang No 599', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `saldo_account` int(11) NOT NULL,
  `no_hp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `email`, `username`, `password`, `saldo_account`, `no_hp`) VALUES
(1, 'Clarisa Hasya', 'clarisa.hasya@gmail.com', 'clarisahasya', 'kepodeh', 25000, 818075261),
(2, 'Nurhai Bakah', 'barkah@gmail.com', 'bucinterozz', 'burhan33', 0, 897579981),
(3, 'Miftah Falah', 'miftah@gmail.com', 'amif123', 'lovebird12', 100000, 896362838),
(4, 'tazari Orma', 'taza@gmail.com', 'tazaor', 'taza123', 25000, 857263818),
(5, 'testing0', 'testing0@gmail.com', 'testing0', '123456', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jadwaltayang`
--

CREATE TABLE `jadwaltayang` (
  `idJadwalTayang` int(11) NOT NULL,
  `tanggalTayang` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `idMovie` int(11) NOT NULL,
  `idCinema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwaltayang`
--

INSERT INTO `jadwaltayang` (`idJadwalTayang`, `tanggalTayang`, `startTime`, `endTime`, `idMovie`, `idCinema`) VALUES
(3, '2019-09-04', '14:45:00', '16:47:00', 1, 1),
(4, '2019-10-16', '11:00:00', '14:01:00', 2, 3),
(5, '2019-11-19', '18:45:00', '20:28:00', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `idMovie` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tanggal_rilis` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `rating` float NOT NULL,
  `pemain` varchar(500) NOT NULL,
  `sutradara` varchar(500) NOT NULL,
  `language` varchar(100) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `sinopsis` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`idMovie`, `judul`, `tanggal_rilis`, `durasi`, `genre`, `kategori`, `rating`, `pemain`, `sutradara`, `language`, `subtitle`, `sinopsis`, `image`) VALUES
(1, 'Letter to Juliet', '2010-05-14', 140, 'Romantic Comedy', '13+', 9, 'Amanda Syfried, Christopher Egan', 'Gary Winick', 'English', 'Bahasa Indonesia', 'Megkisahkan seorang wanita bertemu dengan seorang pria yang tidak percaya akan cinta sejati', 'letter.jpg'),
(2, 'Doraemon :Great Adventure in the Antartic Kachi Kochi', '2018-10-20', 190, 'Fiction', 'SU', 8.9, 'wasabi mizuta, megumi oohara, yo oizumi', 'tsutomu shibayama', 'Japan', 'Bahasa Indonesia', 'petualangan doraemon dan teman-temannya kali ini akan menuju antartika setelah menemukan sebuah cinc', 'doraemon.jpg'),
(3, 'Ada Apa Dengan Cinta?', '2002-02-08', 150, 'Drama Romance', '17+', 8.8, 'nicholas saputra, dian sastrowardoyo', 'rudy soedjarwo', 'Bahasa Indonesia', 'Bahasa Indonesia', 'seorang gadis SMA populer harus memilih apakah ia ingin menjadi bagian dari gengnya atau jatuh cinta', 'aadc.jpg'),
(5, 'The Curse Of The Weeping Woman', '2019-04-17', 93, 'Supernatural horror/Misteri', '13+', 8.1, 'Linda Cardellini, Patricia Velásquez, Marisol Ramirez, Sean Patrick Thomas, Jaynee?Lynne Kinchen', 'Michael Chaves', 'English, Spanyol', 'Bahasa Indonesia', 'Tak lama setelah mengabaikan peringatan mengenai seorang ibu yang dicurigai punya kecenderungan menyakiti anak-anak, seorang pekerja sosial dan anak-anaknya yang masih kecil terjebak dalam alam supranatural yang mengerikan. Untuk lolos dari murka sang La Llorona, satu-satunya harapan mereka adalah', 'default.jpg'),
(6, 'Avengers Endgame', '2019-04-24', 185, 'Fantasi/Fiksi Ilmiah', '13+', 9.6, 'Scarlett Johansson, Chris Evans, Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', 'Russo Bersaudara, Joe Russo', 'English', 'Bahasa Indonesia', 'Setelah peristiwa yang memusnahkan setengah dari populasi Bumi di Avengers: Infinity War (2018) kisah akan berlanjut saat Avengers yang tersisa berkumpul sekali lagi untuk melawan Thanos dan memulihkan tatanan alam semesta.', 'endgame.jpg'),
(8, 'Sunyi', '2019-04-11', 91, 'Horror', '13+', 8.9, 'Amanda Rawles, Angga Yunanda', 'Awi Suryadi', 'Bahasa Indonesia', 'Bahasa Indonesia', 'Diterima di SMA ungggulan \"Abdi Bangsa\" merupakan impian setiap siswa. Namun bagi ALEX (Angga Aldi), diterima masuk SMA tersebut bukanlah sebuah karunia, melainkan petaka. Budaya senioritas, tindakan kekerasan pada fisik dan mental – Bullying, telah menjadi \"menu\" harian Alex di sekolah ternama itu.', 'sunyi.jpg'),
(9, 'Rumput Tetangga', '2019-04-18', 104, 'Drama/Komedi', '13+', 9.2, 'Titi Kamal, Donita, Tora Sudiro, Raffi Ahmad, Gading Marten', 'Guntur Soehardjanto', 'Bahasa Indonesia', 'Bahasa Indonesia', 'Menjelang reuni SMA, Kirana (Titi Kamal) yang dulu adalah murid paling populer dan berprestasi di sekolah khawatir akan pendapat teman-temannya terhadap kehidupannya yang anti-klimaks dan hanya menjadi Ibu Rumah Tangga dengan 2 anak (Aqila dan Daffa). Bagaimana kehidupannya bila semua yang diidamkan', 'tetangga.jpg'),
(10, 'Joker', '2019-10-02', 122, 'Crime', '17+', 9.1, 'Joaquin Phoenix, Robert De Niro, Zazie Beetz', 'Todd Philips', 'English', 'Bahasa Indonesia', 'Cerita Original dari penjahat ikonik (Joker) yang tidak terlihat sebelumnya di layar lebar, Arthur Fleck, seorang pria yang diabaikan oleh masyarakat, dan sebuah cerita yang lebih luas.', 'joker.jpg'),
(11, 'Bebas', '2019-10-03', 120, 'Drama', '13+', 8.6, 'Agatha Pricilla, Amanda Rawles, Baskara Mahendra, Brandon Salim', 'Riri Riza', 'Bahasa Indonesia', 'None', 'Vina (Maizura), seorang remaja SMA yang berasal dari sebuah kota kecil di Jawa Barat, baru saja pindah ke SMA Negeri bergengsi di ibu kota Jakarta. Pada hari pertama di sekolah, Vina ditertawakan karena logat bicaranya dan juga diintimidasi oleh seorang siswa cowok. Beruntung, Vina ditolong dan dibantu beradaptasi oleh empat cewek dan seorang cowok yang disegani di sekolah. Ada Kris (Sheryl Sheinafia) sang pemimpin, Jessica (Agatha Pricilla) yang lucu dan terobsesi pada kecantikan, Gina (Zulfa Maharani) yang pemberani dan anak terkaya di grup, Suci (Lutesha) yang cantik dan misterius, serta Jojo (Baskara Mahendra) satu-satunya cowok dalam pertemanan mereka. Vina dengan cepat menjadi bagian dari geng mereka, yang lalu dikenal dengan nama GENG BEBAS. Kebersamaan mereka terusik saat terjadi peristiwa tragis yang menyebabkan keenam sahabat ini harus dipisahkan.\r\n\r\nSemua kejadian di masa remaja ini terungkap ketika Vina dewasa (Marsha Timothy) bertemu kembali tanpa disengaja dengan Kris dewasa (Susan Bachtiar) di rumah sakit. Kris yang hidupnya divonis tidak akan lama lagi meminta Vina untuk mengumpulkan kembali Geng Bebas agar ia bisa bertemu semuanya untuk terakhir kali. Perjalanan Vina mencari kembali satu persatu sahabatnya, Jessica (Indy Barends), Jojo (Baim Wong), Gina (Widi Mulia), dan Suci yang misterius, mengantar kita ke kisah masa remaja Geng Bebas yang membuat mereka menyadari betapa kehidupan di masa dewasa telah membuat mereka lupa siapa mereka sebenarnya.\r\nSebuah kisah unik, lucu, dan mengharukan yang menggambarkan dua masa dalam satu film. Film BEBAS akan membawa kita pada nostalgia kisah cinta, patah hati, dan pertemanan yang abadi.', 'bebas.jpg'),
(12, 'IT Chapter Two', '2019-09-04', 170, 'Horror', '17+', 9.7, 'James McAvoy, Jessica Chastain, Bill Hader, James Ransone', 'Andy Muschietti', 'English', 'Bahasa Indonesia', 'Dua puluh tujuh tahun setelah pertemuan pertama mereka dengan Pennywise yang menakutkan, Losers Club kini telah dewasa dan pindah dari kota Derry sampai sebuah panggilan membawa mereka kembal ke kota tersebut.', 'it2.jpg'),
(13, 'Ad Astra', '2019-09-20', 123, 'Adventure', '13+', 7.1, 'Brad Pitt, Liv Tyler, Tommy Lee Jones', 'James Gray', 'English', 'Bahasa Indonesia', 'Seorang astronot melakukan perjalanan ke tepi luar tata surya untuk menemukan ayahnya dan mengungkap misteri yang mengancam kelangsungan hidup planet kita. Dia mengungkap rahasia yang mengancam keberadaan manusia dan tempat kita.', 'adastra.jpg'),
(14, 'Gundala', '2019-08-29', 123, 'Action', '13+', 9.3, 'Abimana Aryasatya, Bront Palarae, Muzakki Ramdhan, Tara Basro', 'Joko Anwar', 'Bahasa Indonesia', 'None', 'Sancaka hidup di jalanan sejak ditinggal ayah dan ibunya. Menghadapi hidup yang keras, Sancaka belajar untuk bertahan hidup dengan tidak peduli dengan orang lain dan hanya mencoba untuk mendapatkan tempat yang aman bagi dirinya sendiri. Ketika situasi kota semakin tidak aman dan ketidakadilan merajalela di seluruh negeri, Sancaka harus buat keputusan yang berat, tetap hidup di zona amannya, atau keluar sebagai Gundala untuk membela orang-orang yang ditindas.', 'gundala.jpg'),
(15, 'Gemini Man', '2019-10-03', 117, 'Action', '17+', 8.7, 'Will Smith, Mary Elizabeth Winstead, Clive Owen, Benedict Wong,', 'Ang Lee', 'English', 'Bahasa Indonesia', 'Seorang pembunuh bayaran berhadapan dengan klon dirinya sendiri dengan tampilan yang lebih muda.', 'geminiman.jpg'),
(16, 'Danur 3', '2019-09-26', 90, 'Horror', '13+', 8.7, 'Prilly Latuconsina, Rizky Nazar, Syifa Hadju, Sandrinna Michelle Skornicki,', 'Awi Suryadi', 'Bahasa Indonesia', 'None', 'Setelah bersahabat dengan hantu-hantu kecilnya selama bertahun-tahun, Risa (Prilly Latuconsina) yang semakin dewasa mulai merasa bahwa dirinya harus memiliki kehidupan normal seperti perempuan lainnya. Apalagi sekarang Risa sudah memiliki pacar bernama Dimas (Rizky Nazar), yang bekerja sebagai penyiar radio. Risa bahkan tidak menceritakan kepada Dimas tentang kemampuannya melihat hantu, dan kenyataan bahwa dia memiliki 5 sahabat kecil yang bukan manusia. Persahabatan Risa dan Peter CS menjadi goyah, setelah Risa merasa Peter CS mulai mengusili Dimas.', 'danur3.jpg'),
(17, 'Pretty Boys', '2019-09-19', 100, 'Comedy', '13+', 9.7, 'Vincent Rompies, Deddy Mahendra Desta, Onadio Leonardo, Danilla Riyadi', 'Tompi', 'Bahasa Indonesia', 'None', 'SAAT PERTELEVISIAN HANCUR MATI KARENA \"BERBEDA\", kita yang menodai TV apa TV yang\r\nmenodai kita. Ini kisah Anugerah (Vincent Rompies) dan Rahmat (Deddy Mahendra Desta) yang pengen ngetop malah ngedrop! Asty (Danilla Riyadi), Roni (Onadio Leonardo), dan Mas Bayu (Imam Darto) mewarnai perjalanan hidup mereka.', 'prettyboys.jpg'),
(18, 'Weathering With You', '2019-08-21', 112, 'Animation', '13+', 9.6, 'Kotaro Daigo, Nana Mori, Chieko Baishô', 'Makoto Shinkai', 'Japan', 'Bahasa Indonesia', 'Seorang anak muda dari desa terpencil di Shikoku, yang meninggalkan rumah dan memutuskan untuk tinggal di Tokyo. Dalam perjalanannya, dia bertemu dengan Keisuke, seorang pria aneh yang menawarkan bantuan kepadanya. Merasa aneh dengan orang tersebut, Hodoka memutuskan untuk mencoba mencari peruntungan yang lain. Namun dia menghadapi kesulitan yang datang silih berganti dalam perjalannya. Setelah beberapa kali tidur di jalanan karena tidak ada orang lain yang bias dihubungi, Hodoka memutuskan untuk menghubungi Keisuke. Hodoka mendapatkan tawaran bekerja sebagai penulis majalah lokal milik Keisuke yang membahas supernatural dan hal hal aneh. Selama di Tokyo, Hodoka selalu diikuti cuaca aneh dimana hujan turun tiada henti. Saat menulis sebuah cerita, dia mendengar kisah pengendalian cuaca. Dia berusaha mencari kebenaran dari legenda urban di mana ada seorang gadis muda yang memiliki kekuatan\r\nuntuk menghentikan hujan dan membuat langit menjadi cerah kembali. Pencariannya ini membuatnya bertemu dengan Hina Amano, seorang gadis yang memiliki kekuatan luar biasa yang dapat mengendalikan cuaca.', 'weathering.jpg'),
(19, 'Midsommar', '2019-09-07', 138, 'Thriller', '21+', 6.6, 'Florence Pugh, Jack Reynor, Vilhelm Blomgren', 'Ari Aster', 'English', 'Bahasa Indonesia', 'Saat hubungan keduanya tengah bermasalah, sepasang kekasih muda dari Amerika Serikat melancong ke sebuah festival tengah musim panas Swedia, di mana tempat yang tampak seperti surga permai berubah menjadi mimpi buruk yang mengerikan, seiring warga setempat mulai menunjukkan niat bengis mereka.', 'midsommar.jpg'),
(20, 'Good Boys', '2019-09-21', 90, 'Comedy', '17+', 8.7, 'Jacob Tremblay, Keith L. Williams, Brady Noon, Molly Gordon', 'Gene Stupnitsky', 'English', 'Bahasa Indonesia', 'Tiga anak laki-laki kelas 6 Pergi dari sekolah dan memulai petualangan seru mereka membawa obat-obatan yang dicuri secara tidak sengaja, diburu oleh gadis-gadis remaja, dan mereka mencoba pulang ke rumah tepat waktu untuk pesta yang sudah lama dinanti-nantikan.\r\n', 'goodboys.jpg'),
(21, 'Boboiboy 2', '2019-08-08', 110, 'Animation', 'SU', 9.6, 'Nur Fathiah Diaz, Fadzli Mohd Rawi, Dzubir Mohammed Zakaria', 'Nizam Abdul Razak', 'Malaysian', 'Bahasa Indonesia', 'BoBoiBoy dan teman-temannya diserang oleh penjahat kuno bernama Retak\'ka, pemilik asli kekuatan Elemental BoBoiBoy. Retak\'ka berupaya memulihkan kekuatan lamanya dan menjadi makhluk paling menakutkan untuk menguasai seluruh galaksi. BoboiBoy harus mencari cara menghentikan Retak\'ka dan menyelamatkan galaksi.', 'boboiboy2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idPemesanan` int(11) NOT NULL,
  `transactionCode` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `numberOfTickets` int(11) NOT NULL,
  `tanggalPemesanan` date NOT NULL,
  `totalHarga` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idJadwalTayang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`idPemesanan`, `transactionCode`, `status`, `numberOfTickets`, `tanggalPemesanan`, `totalHarga`, `idCustomer`, `idJadwalTayang`) VALUES
(1, 'A1001', 'Lunas', 2, '2019-09-06', 140000, 1, 4),
(2, 'A1002', 'Lunas', 1, '2019-08-09', 40000, 3, 4),
(3, 'A1003', 'Lunas', 2, '2019-02-08', 200000, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `idSeat` int(11) NOT NULL,
  `nomorSeat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`idSeat`, `nomorSeat`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'A4'),
(5, 'A5'),
(6, 'A6'),
(7, 'A7'),
(8, 'A8'),
(9, 'A9'),
(10, 'A10'),
(11, 'A11'),
(12, 'A12'),
(13, 'A13'),
(14, 'A14'),
(15, 'A15'),
(16, 'A16'),
(17, 'A17'),
(18, 'A18'),
(19, 'A19'),
(20, 'A20'),
(21, 'A21'),
(22, 'A22'),
(23, 'B1'),
(24, 'B2'),
(25, 'B3'),
(26, 'B4'),
(27, 'B5'),
(28, 'B6'),
(29, 'B7'),
(30, 'B8'),
(31, 'B9'),
(32, 'B10'),
(33, 'B11'),
(34, 'B12'),
(35, 'B13'),
(36, 'B14'),
(37, 'B15'),
(38, 'B16'),
(39, 'B17'),
(40, 'B18'),
(41, 'B19'),
(42, 'B20'),
(43, 'B21'),
(44, 'B22');

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE `studio` (
  `idStudio` int(11) NOT NULL,
  `nomorStudio` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `idSeat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`idStudio`, `nomorStudio`, `kelas`, `harga`, `idSeat`) VALUES
(1, 2, 'Reguler', 40000, 1),
(3, 3, 'Premium', 100000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`idCinema`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `jadwaltayang`
--
ALTER TABLE `jadwaltayang`
  ADD PRIMARY KEY (`idJadwalTayang`),
  ADD KEY `jadwaltayang_fk1` (`idMovie`),
  ADD KEY `jadwaltayang_fk2` (`idCinema`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`idMovie`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idPemesanan`),
  ADD KEY `pemesanan_fk2` (`idCustomer`),
  ADD KEY `pemesanan_fk3` (`idJadwalTayang`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`idSeat`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`idStudio`),
  ADD KEY `studio_fk` (`idSeat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cinema`
--
ALTER TABLE `cinema`
  MODIFY `idCinema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jadwaltayang`
--
ALTER TABLE `jadwaltayang`
  MODIFY `idJadwalTayang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `idMovie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `idPemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `idSeat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `studio`
--
ALTER TABLE `studio`
  MODIFY `idStudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwaltayang`
--
ALTER TABLE `jadwaltayang`
  ADD CONSTRAINT `jadwaltayang_fk1` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwaltayang_fk2` FOREIGN KEY (`idCinema`) REFERENCES `cinema` (`idCinema`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studio`
--
ALTER TABLE `studio`
  ADD CONSTRAINT `studio_fk` FOREIGN KEY (`idSeat`) REFERENCES `seat` (`idSeat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
