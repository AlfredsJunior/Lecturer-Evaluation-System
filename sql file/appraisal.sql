-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2020 at 04:04 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appraisal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `c_id` int(11) NOT NULL,
  `category` varchar(30) DEFAULT NULL,
  `level` varchar(15) DEFAULT NULL,
  `proof` text,
  `lecturer` varchar(50) DEFAULT NULL,
  `complaint` text,
  `date` varchar(30) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `photo` text,
  `user` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`c_id`, `category`, `level`, `proof`, `lecturer`, `complaint`, `date`, `mode`, `photo`, `user`) VALUES
(1, 'Harrassment', 'High', 'IMG_20181219_201212.jpg', 'Mrs Adebayo Mistura', 'Briefly Expalin What Happened Briefly Expalin What Happened  Briefly Expalin What Happened  Briefly Expalin What Happened  Briefly Expalin What Happened Briefly Expalin What Happened Briefly Expalin What Happened Briefly Expalin What Happened  Briefly Expalin What Happened ', '18 June 2019, 01:24 PM', 'Anonymos', 'avatar.png', 'ishoshot@gmail.com'),
(2, 'Embarrassment', 'Intermediate', '', 'Mrs Adebayo Mistura', 'Briefly Expalin What Happened', '18 June 2019, 01:26 PM', '16/85/0049', 'IMG_20181205_093037.jpg', 'ishoshot@gmail.com'),
(3, 'Improper Conduct', 'Critical', '1_A4ovQ5AoCbbs1SXuGUD6tw.jpeg', 'Mr  Evans Ogutu', 'jilhukgyftddfghj', '15 March 2020, 02:12 PM', 'Anonymos', 'avatar.png', 'alfredmwangangi87@gmail.com'),
(4, 'Bribery and Corruption', 'Critical', 'afritech fyer1.jpg', 'Mr. Matende Samuel', 'Ask for a bribe to add marks', '18 March 2020, 03:25 PM', 'Anonymos', 'avatar.png', 'awuor@gmail.com'),
(5, 'Harrassment', 'High', 'kaka musa 3.jpg', 'Eng Mwangangi Mutua', 'awsetrfbgyuhnijmk,lzsxrdctfvgbhnjkml,', '18 March 2020, 03:35 PM', '16/06000', 'avatar.png', 'awuor@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard  user', ''),
(2, 'Administrator ', '{\r\n\"admin\": 1\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `praise`
--

CREATE TABLE `praise` (
  `a_id` int(11) NOT NULL,
  `mode` varchar(40) DEFAULT NULL,
  `photo` text,
  `lecturer` varchar(50) DEFAULT NULL,
  `reason` text,
  `rate` varchar(30) DEFAULT NULL,
  `praise` text,
  `improve` text,
  `date` varchar(30) DEFAULT NULL,
  `user` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `praise`
--

INSERT INTO `praise` (`a_id`, `mode`, `photo`, `lecturer`, `reason`, `rate`, `praise`, `improve`, `date`, `user`) VALUES
(1, '16/85/0049', 'avatar.png', 'Mrs Adebayo Mistura', 'Fantastic Relationship with Students', '80%', 'Write something cool about the lecturer, because It goes a long way in Career Development Write something cool about the lecturer, because It goes a long way in Career Development Write something cool about the lecturer, because It goes a long way in Career Development Write something cool about the lecturer, because It goes a long way in Career Development Write something cool about the lecturer, because It goes a long way in Career Development', 'Outline out my weaknesses inorder to help me Improve', '18 June 2019, 01:28 PM', 'ishoshot@gmail.com'),
(2, 'Anonymos', 'avatar.png', 'Mr  Evans Ogutu', 'Good Job', '90%', 'fhdgsdgfhbjn', 'zsxdcfhbjnkmxdcfgvbhjn', '15 March 2020, 02:19 PM', 'alfredmwangangi87@gmail.com'),
(3, 'knjbkhvgcfxgcv', 'avatar.png', 'Mrs Adebayo Mistura', 'Good Teaching', '90%', 'zxedrtfyguhijo', 'zesxdcfgvbhjn', '15 March 2020, 02:28 PM', 'alfredmwangangi87@gmail.com'),
(4, '16/06000', 'avatar.png', 'Dr. Omondi Fred', 'Good Teaching', '90%', 'He is Perfect. We love him', 'awesdrctfvbghnjmkl', '18 March 2020, 03:27 PM', 'awuor@gmail.com'),
(5, '16/06000', 'avatar.png', 'Eng Mwangangi Mutua', 'Good Notes', '80%', 'Awesome Notes', 'Content Delivery', '18 March 2020, 03:37 PM', 'awuor@gmail.com'),
(6, '16/06000', 'avatar.png', 'Eng Mwangangi Mutua', 'Good Teaching', '90%', 'kjghfdzs', ';lklhkugdthrse', '18 March 2020, 03:52 PM', 'awuor@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(64) NOT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `matric` varchar(35) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `department` varchar(40) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `photo` text,
  `salt` varchar(32) NOT NULL,
  `joined` varchar(25) NOT NULL,
  `group` int(11) NOT NULL,
  `opt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `title`, `username`, `password`, `surname`, `firstname`, `matric`, `email`, `phone`, `department`, `level`, `photo`, `salt`, `joined`, `group`, `opt`) VALUES
(2, 'Mr', 'admin@gmail.com', 'f88890906e8e222155ec2d59ab2c7c42bc02d2c343dbe93885dda9ccb4a1078f', 'Super Admin', 'Admin', '00110011', 'admin@gmail.com', '0742667215', 'Computer Science', 'MSC', 'avatar.png', 'TZž-¼Y°~(•-„Öå?ð×HTdn_Š:•…%¦Ü', '18 June 2019, 12:54 PM', 2, NULL),
(6, 'Mrs', 'mistu@gmail.com', 'f065a73783ee71e6d4b60949ffd11fd4947f3068de21d7b1bfc6302527d6d739', 'Adebayo', 'Mistura', '1234567890', 'mistu@gmail.com', '09012345678', 'Computer Science', 'BsC', 'IMG_20180502_135549.jpg', 'GoQÆº®ío<céÂãX¡÷œ9úWQÔêÐËõ)%', '18 June 2019, 01:38 PM', 3, 'lecturer'),
(7, NULL, 'ishoshot@gmail.com', '1b587bade3ddf22a0fb7c9006b71d886d3cd2294153fbf65946e4eb710ce2628', 'Ishola', 'Oluwatobi', '16/85/0049', 'ishoshot@gmail.com', '08105575363', 'Computer Science', 'ND II', 'avatar.png', '<ušAôã![$4K³éA–p9Xò´ñªù', '01 July 2019, 03:42 PM', 1, 'student'),
(8, NULL, 'alfredmwangangi87@gmail.com', '62ea4628a1d68e8d21ca0fab09d57c51ee159bc707613067ff28f7ea0cbb48c2', 'Mwangangi', 'Mutua', 'knjbkhvgcfxgcv', 'alfredmwangangi87@gmail.com', '+254718787588', 'Computer Science', 'HND II', 'avatar.png', 'eÓoŸÑŒÚVØ.p§Š‡®õ¨±‘ñ;‚„­ÅtÅQ’U', '13 March 2020, 10:40 PM', 1, 'student'),
(9, 'Mr ', 'ogutu@gmail.com', 'fe4ab165eb212f39e7eefd7de165c992c98ac4b2376e6fac56da1522642afd05', 'Evans', 'Ogutu', '10289381', 'ogutu@gmail.com', '0720212981', 'School of Business', 'BSC', 'avatar.png', 'Ä”(Tß¸—Uº¿\"ÎkŒ«Ë=CBlA6šßoÖŒ=Å', '15 March 2020, 01:48 PM', 3, 'lecturer'),
(10, 'Dr', 'sporta@gmail.com', 'aee34df8c40435941778a36772f492375b492517f81ca3ba4116756d933f610d', 'Sporta', 'Sporta', '12345678', 'sporta@gmail.com', '0742667215', 'School of Business', 'MSC', 'avatar.png', 'BKhŸ.HÉt:ð\nzõâü¥_×F{(±›b1–ûÑšÚ', '15 March 2020, 03:01 PM', 3, 'lecturer'),
(11, 'Mr.', 'wamaiyo@gmail.com', '1313720a754edeefb943ab2566a078a140ebc132e7203f085357e271ccfa5d19', 'Wamaiyo', 'Wamaiyo', '1234567', 'wamaiyo@gmail.com', '0742667215', 'School of Business', 'BSC', 'avatar.png', 'T84äD\0èX\0¯Àt¡–™ØX¯Ê¯j’ŽJE£qo¬', '15 March 2020, 03:02 PM', 3, 'lecturer'),
(12, 'Dr.', 'gladys@gmail.com', '49811fbe7b4148ec1f0bce793907af4f467671c11a421609fc09767cf55e6fd1', 'Bunyasi', 'Gladys', '123456', 'gladys@gmail.com', '0742667215', 'School of Professional Studies', 'PHD', 'avatar.png', '‹„\rü¹µìjáÊ¨K,h\ZZ´!ËAøÒ.Ô\'\nZ', '15 March 2020, 03:04 PM', 3, 'lecturer'),
(13, 'Mr.', 'kuria@gmail.com', '404dd382c582004797fec4899a7b34a2e12ad74c94f0db7250767a7cc86228f5', 'Kuria', 'Ezekiel', '1234', 'kuria@gmail.com', '0742667215', 'FOCIM', 'BSC', 'avatar.png', '¹¡Zš õCm…dYlÛ±‘4;#—úŠü^hi,oSlO¶', '15 March 2020, 03:08 PM', 3, 'lecturer'),
(14, 'Prof', 'joseph@gmail.com', 'a7ab5c54e96df5188e4a7a21d75902dcdc7f12a7197a0baa93adc2a52009a0a1', 'Kuria', 'Joseph', '234567890', 'joseph@gmail.com', '0742667215', 'FOCIM', 'PHD', 'avatar.png', '8kw‡è3ûô¬Z‹àà(ØÅÂ3¡rs›˜FBÒiÔ+', '15 March 2020, 03:11 PM', 3, 'lecturer'),
(15, 'Dr.', 'omondi@gmail.com', '611c1540db7be33a16db8bdd3c2c196216a5bb80ad7483001c58f97c265254be', 'Omondi', 'Fred', '2345678', 'omondi@gmail.com', '0742667215', 'FOCIM', 'MSC', 'avatar.png', '\Z©‡S$ÓöeS9¯›\Z¢úú‹MIÍÙë#kf…´¾', '15 March 2020, 03:13 PM', 3, 'lecturer'),
(16, 'Dr.', 'mwendia@gmail.com', 'a0e17aacc6dd8738d179e5a2e6ccf7e7c37a52cb0a81d807a1f3ccde1c10477c', 'Mwendia', 'Samuel', '987654321', 'mwendia@gmail.com', '0742667215', 'FOCIM', 'PHD', 'avatar.png', '¹V/×.\rÈ\n±{º*ZÀrœ9IÏüÅš^ÂNÈÄdv', '15 March 2020, 03:14 PM', 3, 'lecturer'),
(17, 'Mr.', 'onsomu@gmail.com', '8fc8d80cc9c2ef15a8dbfd1384e692563faba0d21accbdceba095136de605581', 'Onsomu', 'Clive', '98765432', 'onsomu@gmail.com', '0742667215', 'FOCIM', 'BSC', 'avatar.png', 'l¤æå-ÖðëÊEù’;hÕ„L©5ß\'‰½s3\\', '15 March 2020, 03:15 PM', 3, 'lecturer'),
(18, 'Mr.', 'madara@gmail.com', '4d959e51d158273f51863b5f473e89fc219aa3b0e2f364c6713bd1e61941d3cf', 'Madara', 'Ernest', '9876543', 'madara@gmail.com', '0742667215', 'FOCIM', 'BSC', 'avatar.png', '2:íO”ŸÅŒÿ##+Œ«&Ç€_¶Ÿ~Y!:ÒÐ', '15 March 2020, 03:17 PM', 3, 'lecturer'),
(19, 'Mr.', 'matende@gmail.com', '20650c075f4861e51e04c10dc209b883cb205b9bb9d70a3da7522719769338a9', 'Matende', 'Samuel', '987654', 'matende@gmail.com', '0742667215', 'FOCIM', 'BSC', 'avatar.png', 'DàÌÉÀñ;F¥Ò+÷³2V8®‰¿É’ŒX¡ŒºË\"T', '15 March 2020, 03:19 PM', 3, 'lecturer'),
(20, NULL, 'kamau@gmail.com', 'e304a76e3a48f248786fc65c528b087916628885c674e1d3a08d40cee8e5700b', 'Kamau', 'Kamau', 'C027/01/1254/2016', 'kamau@gmail.com', '+254718787588', 'School of Business', 'HND I', 'avatar.png', '¬ÖpW&¸½Rˆ\nª€ðY·›0°ÈÖÂgA}ƒ=', '15 March 2020, 03:47 PM', 1, 'student'),
(21, NULL, 'njoroge@gmail.com', 'd2a0bf8c1a4239c7c9637081166a9acc30798d279bf0504c3cc517d50b3be2b8', 'Njoroge', 'Njoroge', 'C027/01/1255/2016', 'njoroge@gmail.com', '0742667215', 'FOCIM', 'Year III', 'alphie1.jpg', 'á	ÞY<N¶“ùç;I›êB™>S©ýMß7Ûš5´l', '15 March 2020, 03:52 PM', 1, 'student'),
(22, NULL, 'awuor@gmail.com', '334a1b5809f9ca11c81797dbb309c13d2572347cd1147dbc649fcb925a158145', 'Awuor', 'Steve', '16/06000', 'awuor@gmail.com', '0742667215', 'FOCIM', 'Year IV', 'avatar.png', '}™C+1>.—›zÆ®{q¶t_Íä9(´v¬€·å W', '18 March 2020, 03:22 PM', 1, 'student'),
(23, 'Eng', 'mwangangi@gmail.com', 'ee4968343d9100c8038e9893cc6da03884f42160702094b18163aed0c9c06459', 'Mwangangi', 'Mutua', '5858', 'mwangangi@gmail.com', '0718787588', 'FOCIM', 'PHD', 'avatar.png', 'Ê‹‚2\\on€ïe> V¢!Ø53Ù÷v6©îŒãw‘À', '18 March 2020, 03:33 PM', 3, 'lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `praise`
--
ALTER TABLE `praise`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `praise`
--
ALTER TABLE `praise`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
