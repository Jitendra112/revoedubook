-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2018 at 09:35 AM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_boards`
--

CREATE TABLE `tbl_boards` (
  `id` int(11) NOT NULL,
  `board_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_boards`
--

INSERT INTO `tbl_boards` (`id`, `board_name`, `created_at`, `updated_at`) VALUES
(8, 'CBSE', '2018-10-16 10:00:13', '2018-10-16 04:30:13'),
(9, 'PSEB', '2018-10-16 10:00:55', '2018-10-16 04:30:55'),
(10, 'ICSE', '2018-10-16 10:22:00', '2018-10-16 04:52:00'),
(11, 'UK', '2018-10-23 14:35:26', '2018-10-23 09:05:26'),
(13, 'Maharashtra', '2018-10-24 12:06:14', '2018-10-24 06:36:14'),
(14, 'Kolkata Board', '2018-10-24 16:52:48', '2018-10-24 11:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(23, 'Subjectwise', 'Subject_wise', '', '2018-11-03 04:56:57', '0000-00-00 00:00:00'),
(24, 'class-wise', 'Class_wise', '', '2018-11-03 05:21:56', '0000-00-00 00:00:00'),
(25, 'Study Material by Board', 'Study_Material_by_Board', '', '2018-10-31 12:25:23', '0000-00-00 00:00:00'),
(26, 'Entrance Exam Wise', 'Entrance_Exam_Wise', '', '2018-10-31 12:26:38', '0000-00-00 00:00:00'),
(27, 'Govt. Exam Wise', 'Govt._Exam_Wise', '', '2018-10-31 12:26:52', '0000-00-00 00:00:00'),
(28, 'Your Interest Wise', 'Your_Interest_Wise', '', '2018-10-31 12:27:20', '0000-00-00 00:00:00'),
(29, 'Engineering Study Material', 'Engineering_Study_Material', '', '2018-10-31 12:27:46', '0000-00-00 00:00:00'),
(30, 'Medical Study Material', 'Medical_Study_Material', '', '2018-10-31 12:28:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id` int(11) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `class_type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`id`, `class_name`, `class_type`, `created_at`, `updated_at`) VALUES
(3, 'IX', '', '2018-10-25 11:22:03', '2018-10-25 05:52:03'),
(4, 'X', '', '2018-10-25 11:22:19', '2018-10-25 05:52:19'),
(5, 'XI', '', '2018-10-25 11:22:37', '2018-10-25 05:52:37'),
(6, 'XII', '', '2018-10-25 11:22:45', '2018-10-25 05:52:45'),
(7, 'IIT', 'exam', '2018-11-14 14:43:14', '2018-11-14 09:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contents`
--

CREATE TABLE `tbl_contents` (
  `id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `content_title` varchar(100) NOT NULL,
  `content_desc` varchar(2000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exams`
--

CREATE TABLE `tbl_exams` (
  `id` int(11) NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `exam_type_id` varchar(500) NOT NULL,
  `exam_decription` varchar(2000) NOT NULL,
  `eligibility` varchar(1000) NOT NULL,
  `how_to_apply` varchar(1000) NOT NULL,
  `exam_preparation` varchar(2000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exams`
--

INSERT INTO `tbl_exams` (`id`, `exam_name`, `exam_type_id`, `exam_decription`, `eligibility`, `how_to_apply`, `exam_preparation`, `created_at`) VALUES
(91, 'IIT-JEE(Mains)', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#x27;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &amp;#x27;Content here, content here&amp;#x27;, making it look like readable English.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &amp;#x27;Content here, content here&amp;#x27;, making it look like readable English.', '2018-11-05 11:12:20'),
(92, 'IIT-JEE(Advance)', '1', 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ', 'Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '2018-11-05 04:44:49'),
(93, 'BITSAT', '1', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2018-11-05 04:45:22'),
(95, 'Wbjee', '1', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet', 'It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. ', ' The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2018-11-05 04:47:05'),
(96, 'VITEEE', '1', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. ', 'Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.', 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', '2018-11-05 04:48:49'),
(97, 'NEET', '2', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire', 'that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.', 'These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. ', '2018-11-05 04:49:52'),
(98, 'AFMC', '2', 'But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. ', 'The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"', 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content', ' It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout', '2018-11-05 04:51:16'),
(99, 'AIIMS', '2', 'Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, so to deliberately render its content nonsensical;', 'it\'s not genuine, correct, or comprehensible Latin anymore. While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, ', ' these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', 'In a professional context it often happens that private or corporate clients corder a publication to be made and presented with the actual content still not being ready. ', '2018-11-05 04:53:26'),
(100, 'AIPMT', '2', 'Think of a news blog that\'s filled with content hourly on the day of going live. However, reviewers tend to be distracted by comprehensible content, say, a random text copied from a newspaper or the internet.', 'The are likely to focus on the text, disregarding the layout and its elements. Besides, random text risks to be unintendedly humorous or offensive, an unacceptable risk in corporate environments.', 'Lorem ipsum and its many variants have been employed since the early 1960ies, and quite likely since the sixteenth century.', 'Most of its text is made up from sections 1.10.32–3 of Cicero\'s De finibus bonorum et malorum (On the Boundaries of Goods and Evils; finibus may also be translated as purposes).', '2018-11-05 04:54:43'),
(101, 'AIPVT', '2', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit is the first known version (\"Neither is there anyone who loves grief itself since it is grief and thus wants to obtain it\"). It was found by Richard McClintock, a philologist, director of publications at Hampden-Sydney College in Virginia; ', 'Cicero famously orated against his political opponent Lucius Sergius Catilina', 'Occasionally the first Oration against Catiline is taken for type specimens: Quo usque tandem abutere, Catilina, patientia nostra? Quam diu etiam furor iste tuus nos eludet? (How long, O Catiline, will you abuse our patience? And for how long will that madness of yours mock us?)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '2018-11-05 04:56:02'),
(102, 'KCET', '2', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".', 'Even though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning.', 'Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation.', '\"Lorem ipsum\" also approximates a typical distribution of letters in English', '2018-11-05 04:57:02'),
(103, 'Ap Eamcet', '1', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin mattis lacinia justo.', 'Etiam commodo dui eget wisi. Fusce dui leo, imperdiet in, aliquam sit amet, feugiat eu, orci. Curabitur vitae diam non enim vestibulum interdum.', 'Aliquam erat volutpat. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 'Mauris dolor felis, sagittis at, luctus sed, aliquam non, tellus. Donec vitae arcu. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede.', '2018-11-05 04:59:06'),
(104, 'NSO', '3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Etiam egestas wisi a erat. Duis risus. Mauris tincidunt sem sed arcu.', 'Duis bibendum, lectus ut viverra rhoncus, dolor nunc faucibus libero, eget facilisis enim ipsum id lacus. Quisque tincidunt scelerisque libero.', 'Ut tempus purus at lorem. Aenean id metus id velit ullamcorper pulvinar. Integer in sapien. Pellentesque ipsum. ', 'Nullam at arcu a est sollicitudin euismod. Praesent id justo in neque elementum ultrices. Fusce wisi. In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Etiam quis quam. Etiam bibendum elit eget erat. Maecenas lorem. Etiam neque.', '2018-11-05 04:59:49'),
(105, 'IEO', '3', 'Pellentesque arcu. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Mauris dictum facilisis augue. Integer imperdiet lectus quis justo. Integer rutrum, orci vestibulum ullamcorper ultricies, lacus quam ultricies odio, vitae placerat pede sem sit amet enim.', 'Mauris elementum mauris vitae tortor. Mauris metus. Integer in sapien. Nullam sit amet magna in magna gravida vehicula. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Aenean fermentum risus id tortor. Proin mattis lacinia justo. Etiam dictum tincidunt diam. Aenean vel massa quis mauris vehicula lacinia. ', ' Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Duis risus. Fusce aliquam vestibulum ipsum. Integer rutrum, orci vestibulum ullamcorper ultricies, lacus quam ultricies odio, vitae placerat pede sem sit amet enim. Nunc auctor.', '2018-11-05 05:01:03'),
(107, 'MIO', '3', 'Vivamus luctus egestas leo. Phasellus et lorem id felis nonummy placerat. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Fusce tellus odio, dapibus id fermentum quis, suscipit id erat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Etiam neque. Cras elementum. Pellentesque sapien. Nulla pulvinar eleifend sem. Donec vitae arcu. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. ', 'Curabitur bibendum justo non orci. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Fusce tellus odio, dapibus id fermentum quis, suscipit id erat.', '2018-11-05 05:02:20'),
(108, 'ISKO', '3', 'Fusce dui leo, imperdiet in, aliquam sit amet, feugiat eu, orci. Curabitur sagittis hendrerit ante. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Integer in sapien.', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Duis risus. Duis sapien nunc, commodo et, interdum suscipit, sollicitudin et, dolor. Nullam sapien sem, ornare ac, nonummy non, lobortis a enim.', 'Sed elit dui, pellentesque a, faucibus vel, interdum nec, diam. Nunc dapibus tortor vel mi dapibus sollicitudin. Nulla est. Donec quis nibh at felis congue commodo. Etiam quis quam. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Nunc auctor.', '2018-11-05 05:03:06'),
(109, 'UIEO', '3', 'Aliquam erat volutpat. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'Maecenas ipsum velit, consectetuer eu lobortis ut, dictum at dui. Duis viverra diam non justo. Integer in sapien. Phasellus rhoncus.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam sapien elit, consequat eget, tristique non, venenatis quis, ante. Suspendisse sagittis ultrices augue. Aliquam id dolor.', ' Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Duis viverra diam non justo. Morbi scelerisque luctus velit. Nullam eget nisl. Etiam posuere lacus quis dolor. Fusce suscipit libero eget elit.', '2018-11-05 05:03:48'),
(110, 'UCO(CYBER)', '3', 'Fusce tellus odio, dapibus id fermentum quis, suscipit id erat. Morbi imperdiet, mauris ac auctor dictum, nisl ligula egestas nulla, et sollicitudin sem purus in lacus. Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Nullam sapien sem, ornare ac, nonummy non, lobortis a enim.', 'Curabitur ligula sapien, pulvinar a vestibulum quis, facilisis vel sapien. Phasellus faucibus molestie nisl. Praesent vitae arcu tempor neque lacinia pretium.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Cras elementum. Morbi leo mi, nonummy eget tristique non, rhoncus non leo.', 'Nulla non arcu lacinia neque faucibus fringilla. Aliquam erat volutpat. Nulla pulvinar eleifend sem. Integer tempor. Nullam eget nisl. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Proin in tellus sit amet nibh dignissim sagittis. Fusce wisi. Duis viverra diam non justo', '2018-11-05 05:06:01'),
(111, 'ISO', '3', 'Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero.', 'Aliquam ornare wisi eu metus. Phasellus enim erat, vestibulum vel, aliquam a, posuere eu, velit. Nullam lectus justo, vulputate eget mollis sed, tempor sed magna.', 'Fusce tellus. Aenean vel massa quis mauris vehicula lacinia. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Fusce nibh. ', 'Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Integer vulputate sem a nibh rutrum consequat. Fusce aliquam vestibulum ipsum.', '2018-11-05 05:07:00'),
(112, 'TETt', '4', 'Fusce wisi. Donec quis nibh at felis congue commodo. Aenean id metus id velit ullamcorper pulvinar. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit.', 'Phasellus rhoncus. Morbi leo mi, nonummy eget tristique non, rhoncus non leo. Nullam eget nisl. Etiam dictum tincidunt diam. Integer vulputate sem a nibh rutrum consequat.', 'Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. In dapibus augue non sapien. Phasellus et lorem id felis nonummy placerat.', 'Curabitur vitae diam non enim vestibulum interdum. Nullam sapien sem, ornare ac, nonummy non, lobortis a enim. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus et lorem id felis nonummy placerat. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Nunc auctor. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam neque.', '2018-11-05 11:13:11'),
(113, 'UGC', '4', 'Pellentesque arcu. Duis pulvinar. Nullam dapibus fermentum ipsum. Integer in sapien. Aliquam erat volutpat. Maecenas sollicitudin. ', 'Nullam sapien sem, ornare ac, nonummy non, lobortis a enim. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus.', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Nulla est. Donec iaculis gravida nulla. ', 'Curabitur bibendum justo non orci. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Donec vitae arcu. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Etiam egestas wisi a erat. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Aliquam in lorem sit amet leo accumsan lacinia', '2018-11-05 05:09:02'),
(114, 'CTET', '4', 'Etiam neque. Nam sed tellus id magna elementum tincidunt. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Donec ipsum massa, ullamcorper in, auctor et, scelerisque sed, est. Pellentesque pretium lectus id turpis', ' Nulla non arcu lacinia neque faucibus fringilla. Aliquam ornare wisi eu metus. Integer rutrum, orci vestibulum ullamcorper ultricies, lacus quam ultricies odio, vitae placerat pede sem sit amet enim.', 'Etiam commodo dui eget wisi. Nullam dapibus fermentum ipsum. Integer imperdiet lectus quis justo. Etiam dictum tincidunt diam. Etiam commodo dui eget wisi. Nulla non arcu lacinia neque faucibus fringilla.', 'Nullam eget nisl. Maecenas libero. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Curabitur sagittis hendrerit ante. Curabitur vitae diam non enim vestibulum interdum. Etiam quis quam. Nullam lectus justo, vulputate eget mollis sed, tempor sed magna. Mauris tincidunt sem sed arcu.', '2018-11-05 05:09:59'),
(115, 'NDA', '4', 'Fusce tellus. Maecenas lorem. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus enim erat, vestibulum vel, aliquam a, posuere eu, velit. Aliquam erat volutpat. Mauris dictum facilisis augue.', 'Fusce tellus odio, dapibus id fermentum quis, suscipit id erat. Praesent in mauris eu tortor porttitor accumsan. Aenean fermentum risus id tortor.', 'Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus. ', 'Aliquam in lorem sit amet leo accumsan lacinia. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Integer imperdiet lectus quis justo. Fusce aliquam vestibulum ipsum. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Duis bibendum,', '2018-11-05 05:10:56'),
(116, 'ONGC', '4', 'lectus ut viverra rhoncus, dolor nunc faucibus libero, eget facilisis enim ipsum id lacus. Maecenas libero. In laoreet, magna id viverra tincidunt,', 'sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Integer pellentesque quam vel velit. Maecenas aliquet accumsan leo. Quisque tincidunt scelerisque libero. Fusce tellus. Mauris tincidunt sem sed arcu.', ' Vivamus porttitor turpis ac leo. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante.', 'Cras pede libero, dapibus nec, pretium sit amet, tempor quis. In enim a arcu imperdiet malesuada. Nullam dapibus fermentum ipsum. Phasellus faucibus molestie nisl. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Integer rutrum, orci vestibulum ullamcorper ultricies, lacus quam ultricies odio, vitae placerat pede sem sit amet enim.', '2018-11-05 05:11:40'),
(117, 'BSNL', '4', 'Nullam eget nisl. Donec ipsum massa, ullamcorper in, auctor et, scelerisque sed, est. Ut enim ad minima veniam, ', 'Etiam egestas wisi a erat. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo.', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Fusce wisi. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero.', 'Maecenas aliquet accumsan leo. Donec iaculis gravida nulla. Cras pede libero, dapibus nec, pretium sit amet, tempor quis. Morbi scelerisque luctus velit. Aliquam ornare wisi eu metus. Morbi imperdiet, mauris ac auctor dictum, nisl ligula egestas nulla, et sollicitudin sem purus in lacus.', '2018-11-05 05:12:29'),
(118, 'DRDO', '4', 'Duis pulvinar. Et harum quidem rerum facilis est et expedita distinctio. Morbi scelerisque luctus velit. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Morbi scelerisque luctus velit. Aenean fermentum risus id tortor. Proin pede metus, vulputate nec, fermentum fringilla, vehicula vitae, justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.', 'Pellentesque pretium lectus id turpis. In rutrum. Nulla est. Mauris dictum facilisis augue. Fusce dui leo, imperdiet in, aliquam sit amet, feugiat eu, orci.', 'Pellentesque ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque arcu. Morbi imperdiet, mauris ac auctor dictum, nisl ligula egestas nulla, et sollicitudin sem purus in lacus. Duis condimentum augue id magna semper rutrum. Duis pulvinar.', '2018-11-05 05:13:16'),
(119, 'IBPS PO', '5', 'Fusce suscipit libero eget elit. Fusce dui leo, imperdiet in, aliquam sit amet, feugiat eu, orci. Etiam bibendum elit eget erat. Mauris metus. Pellentesque pretium lectus id turpis. ', 'Curabitur bibendum justo non orci. Cras pede libero, dapibus nec, pretium sit amet, tempor quis. ', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 'Donec ipsum massa, ullamcorper in, auctor et, scelerisque sed, est. Quisque tincidunt scelerisque libero. Pellentesque pretium lectus id turpis. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede.', '2018-11-05 05:23:22'),
(120, 'SBI PO', '5', 'Nullam sapien sem, ornare ac, nonummy non, lobortis a enim. Duis condimentum augue id magna semper rutrum. In rutrum. Integer malesuada. ', ' Duis risus. Phasellus enim erat, vestibulum vel, aliquam a, posuere eu, velit. Proin mattis lacinia justo. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos', 'In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '2018-11-05 05:25:32'),
(121, 'CAT', '5', 'Quis condimentum augue id magna semper rutrum. Morbi scelerisque luctus velit. Mauris tincidunt sem sed arcu. Praesent dapibus. ', ' Vestibulum fermentum tortor id mi. Nullam sit amet magna in magna gravida vehicula. Fusce consectetuer risus a nunc. Aliquam id dolor. Aliquam in lorem sit amet leo accumsan lacinia. Aliquam erat volutpat.', 'Etiam bibendum elit eget erat. Pellentesque ipsum. Fusce dui leo, imperdiet in, aliquam sit amet, feugiat eu, orci. Nunc dapibus tortor vel mi dapibus sollicitudin. ', 'Nunc dapibus tortor vel mi dapibus sollicitudin. Phasellus faucibus molestie nisl. Etiam dictum tincidunt diam. Etiam bibendum elit eget erat. Quisque porta. Aenean fermentum risus id tortor. Curabitur sagittis hendrerit ante.', '2018-11-05 05:27:31'),
(122, 'SBI Clerical', '5', 'Maecenas libero. Donec ipsum massa, ullamcorper in, auctor et, scelerisque sed, est. Vivamus ac leo pretium faucibus. Itaque earum rerum hic tenetur a sapiente delectus,', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Integer vulputate sem a nibh rutrum consequat.', 'Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Aenean placerat. Curabitur ligula sapien, pulvinar a vestibulum quis, facilisis vel sapien', 'Phasellus enim erat, vestibulum vel, aliquam a, posuere eu, velit. Praesent vitae arcu tempor neque lacinia pretium. Nulla non lectus sed nisl molestie malesuada. Duis viverra diam non justo. Curabitur sagittis hendrerit ante. Mauris dictum facilisis augue.', '2018-11-05 05:28:25'),
(123, 'MAT', '5', 'Nam sed tellus id magna elementum tincidunt. Integer malesuada. Nullam eget nisl. Fusce consectetuer risus a nunc. Donec vitae arcu. Maecenas lorem. Nunc auctor. Nunc dapibus tortor vel mi dapibus sollicitudin.', 'Vivamus luctus egestas leo. Et harum quidem rerum facilis est et expedita distinctio. Cras elementum. Duis pulvinar. Aliquam ante. Aliquam id dolor.', 'Phasellus rhoncus. Proin mattis lacinia justo. Nullam lectus justo, vulputate eget mollis sed, tempor sed magna. Nam sed tellus id magna elementum tincidunt', 'Curabitur vitae diam non enim vestibulum interdum. Donec vitae arcu. Integer imperdiet lectus quis justo. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Aliquam erat volutpat. Pellentesque pretium lectus id turpis.', '2018-11-05 05:29:13'),
(124, 'CPA', '5', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Etiam egestas wisi a erat.', 'Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Fusce suscipit libero eget elit. Fusce wisi. Aenean id metus id velit ullamcorper pulvinar.', 'Nunc tincidunt ante vitae massa. Morbi leo mi, nonummy eget tristique non, rhoncus non leo. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', 'Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Etiam dui sem, fermentum vitae, sagittis id, malesuada in, quam. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Donec quis nibh at felis congue commodo. Etiam quis quam. Nullam faucibus mi quis velit. Nullam rhoncus aliquam metus.', '2018-11-05 05:29:57'),
(125, 'CA', '5', 'Mauris tincidunt sem sed arcu. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.', 'Fusce aliquam vestibulum ipsum. Duis pulvinar. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.', 'Mauris metus. Donec quis nibh at felis congue commodo. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam quis quam.', 'Suspendisse nisl. Vivamus luctus egestas leo. Nullam sit amet magna in magna gravida vehicula. Nam sed tellus id magna elementum tincidunt. Quisque tincidunt scelerisque libero. Morbi leo mi, nonummy eget tristique non, rhoncus non leo. Mauris tincidunt sem sed arcu.', '2018-11-05 05:30:42'),
(126, 'Red Hat Linux', '6', 'In rutrum. Duis risus. Donec ipsum massa, ullamcorper in, auctor et, scelerisque sed, est. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.', 'Fusce tellus odio, dapibus id fermentum quis, suscipit id erat. Nullam faucibus mi quis velit. Nullam sit amet magna in magna gravida vehicula.', 'Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo.', 'Mauris metus. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Donec ipsum massa, ullamcorper in, auctor et, scelerisque sed, est.', '2018-11-05 11:06:20'),
(127, 'Sun Java', '6', 'Ut tempus purus at lorem. Praesent in mauris eu tortor porttitor accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. ', 'Nullam rhoncus aliquam metus. Etiam dui sem, fermentum vitae, sagittis id, malesuada in, quam. Curabitur bibendum justo non orci.', 'Phasellus faucibus molestie nisl. Mauris metus. In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Duis viverra diam non justo.', 'Donec ipsum massa, ullamcorper in, auctor et, scelerisque sed, est. Mauris dolor felis, sagittis at, luctus sed, aliquam non, tellus. Aliquam ornare wisi eu metus. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Integer malesuada.', '2018-11-05 05:33:20'),
(128, 'CISCO', '6', 'Mauris tincidunt sem sed arcu. Pellentesque sapien. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? ', ' Duis bibendum, lectus ut viverra rhoncus, dolor nunc faucibus libero, eget facilisis enim ipsum id lacus.', 'Vivamus porttitor turpis ac leo. Aliquam ornare wisi eu metus. Nullam rhoncus aliquam metus. Nullam sit amet magna in magna gravida vehicula.', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Donec iaculis gravida nulla. In enim a arcu imperdiet malesuada. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '2018-11-05 05:34:14'),
(129, 'SET', '6', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam dui sem, fermentum vitae, sagittis id, malesuada in, quam', 'Cras pede libero, dapibus nec, pretium sit amet, tempor quis. Suspendisse nisl. Curabitur ligula sapien, pulvinar a vestibulum quis, facilisis vel sapien. Nulla pulvinar eleifend sem.', 'Nullam dapibus fermentum ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec vitae arcu. Aenean vel massa quis mauris vehicula lacinia.', ' Etiam sapien elit, consequat eget, tristique non, venenatis quis, ante. Aliquam erat volutpat. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Aenean fermentum risus id tortor. Curabitur ligula sapien, pulvinar a vestibulum quis, facilisis vel sapien.', '2018-11-05 05:35:26'),
(130, 'GRE', '6', 'Cras pede libero, dapibus nec, pretium sit amet, tempor quis. Aliquam erat volutpat. Fusce aliquam vestibulum ipsum. Phasellus rhoncus.', 'In enim a arcu imperdiet malesuada. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer tempor. Aliquam erat volutpat.', 'Duis risus. Nullam faucibus mi quis velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.', 'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Suspendisse nisl. Duis pulvinar. In rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In enim a arcu imperdiet malesuada. Etiam neque.', '2018-11-05 05:36:21'),
(131, 'GMAT', '6', 'In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Donec ipsum massa, ullamcorper in, auctor et, scelerisque sed, est. Fusce aliquam vestibulum ipsum. Donec iaculis gravida nulla. Etiam dui sem, fermentum vitae, sagittis id, malesuada in, quam. ', ' Curabitur vitae diam non enim vestibulum interdum. Aliquam erat volutpat. Maecenas sollicitudin. ', 'Et harum quidem rerum facilis est et expedita distinctio. Quisque tincidunt scelerisque libero. Aliquam id dolor. ', 'Maecenas lorem. Pellentesque pretium lectus id turpis. Integer lacinia. Donec vitae arcu. Suspendisse sagittis ultrices augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '2018-11-05 05:37:44'),
(132, 'TOFEL', '6', 'Praesent id justo in neque elementum ultrices. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Integer in sapien. Praesent dapibus. Nunc auctor. Aliquam erat volutpat. Sed convallis magna eu sem.', 'Vivamus porttitor turpis ac leo. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Quisque porta.', 'Praesent dapibus. Nullam at arcu a est sollicitudin euismod. Nullam rhoncus aliquam metus. Etiam posuere lacus quis dolor.', ' Mauris dictum facilisis augue. Aliquam erat volutpat. Fusce wisi. Phasellus et lorem id felis nonummy placerat. Fusce dui leo, imperdiet in, aliquam sit amet, feugiat eu, orci. Mauris tincidunt sem sed arcu. Etiam quis quam. Etiam posuere lacus quis dolor. Vivamus luctus egestas leo. Aliquam erat volutpat. Fusce tellus. Vivamus ac leo pretium faucibus.', '2018-11-05 05:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam_type`
--

CREATE TABLE `tbl_exam_type` (
  `id` int(11) NOT NULL,
  `exam_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exam_type`
--

INSERT INTO `tbl_exam_type` (`id`, `exam_type`, `created_at`) VALUES
(1, 'Engineering Entrance Exam', '2018-11-03 11:40:32'),
(2, 'Medical Entrance Exam', '2018-11-03 11:41:52'),
(3, 'Olympiad/Kvpy/Scholarship Exams', '2018-11-04 05:43:34'),
(4, 'Civil Services/Teaching/State Level Administrative Defence', '2018-11-04 05:44:02'),
(5, 'Banking/Finance/Management/Law', '2018-11-04 05:44:27'),
(6, 'Software Certification/International Exams', '2018-11-04 05:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nano_category`
--

CREATE TABLE `tbl_nano_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nano_category`
--

INSERT INTO `tbl_nano_category` (`id`, `name`, `slug`, `sub_category_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 'FORCE', 'foce', 2, '', '2018-10-07 13:15:29', '0000-00-00 00:00:00'),
(4, 'GRAVITATION', 'gravitation', 2, '', '2018-10-07 13:16:08', '0000-00-00 00:00:00'),
(5, 'ATOMS', 'atoms', 3, '', '2018-10-07 13:16:08', '0000-00-00 00:00:00'),
(6, 'CHEMICAL', 'chemical', 3, '', '2018-10-07 13:16:26', '0000-00-00 00:00:00'),
(7, 'rtetertreterter', 'rtetertreterter', 14, '', '2018-10-22 16:35:57', '0000-00-00 00:00:00'),
(8, 'rrthyrthyt', 'rrthyrthyt', 11, '', '2018-10-22 16:37:59', '0000-00-00 00:00:00'),
(10, 'jitendra', 'jitendra', 1, '', '2018-10-22 16:39:34', '0000-00-00 00:00:00'),
(11, 'jgjgjghjghjhgjhg', 'jgjgjghjghjhgjhg', 14, '', '2018-10-22 16:42:42', '0000-00-00 00:00:00'),
(12, 'WORK', 'WORK', 2, '', '2018-10-23 05:19:15', '0000-00-00 00:00:00'),
(13, 'kuldeep Sharma', 'kuldeep_Sharma', 17, '', '2018-10-23 07:41:10', '0000-00-00 00:00:00'),
(14, 'trytryrty', 'trytryrty', 11, '', '2018-10-23 08:20:56', '0000-00-00 00:00:00'),
(15, 'trytrrt', 'trytrrt', 11, '', '2018-10-23 08:21:10', '0000-00-00 00:00:00'),
(17, 'mycate', 'mycate', 17, '', '2018-10-23 08:46:41', '0000-00-00 00:00:00'),
(20, 'guytytry', 'guytytry', 17, '', '2018-10-23 09:05:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES
(99, 'Mathematics', '2018-10-25 10:25:56', '0000-00-00 00:00:00'),
(100, 'Physics', '2018-10-25 10:25:59', '0000-00-00 00:00:00'),
(101, 'Chemistry', '2018-10-25 10:26:01', '0000-00-00 00:00:00'),
(103, 'Science', '2018-10-25 10:26:07', '0000-00-00 00:00:00'),
(104, 'Biology', '2018-10-25 10:26:10', '0000-00-00 00:00:00'),
(105, 'English', '2018-10-25 10:26:44', '0000-00-00 00:00:00'),
(106, 'Environment', '2018-10-25 10:26:56', '0000-00-00 00:00:00'),
(107, 'Hindi', '2018-10-25 10:27:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_categories`
--

CREATE TABLE `tbl_sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_categories`
--

INSERT INTO `tbl_sub_categories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '10th', '10th', 2, '2018-10-06 08:49:40', '0000-00-00 00:00:00'),
(2, 'PHYSICS', 'physics', 12, '2018-10-07 13:14:28', '0000-00-00 00:00:00'),
(3, 'CHEMISTRY', 'chemisetry', 12, '2018-10-07 13:14:28', '0000-00-00 00:00:00'),
(7, '9th', '9th', 2, '2018-10-08 16:51:58', '0000-00-00 00:00:00'),
(8, 'MATHS', 'MATHS', 12, '2018-10-08 16:53:00', '0000-00-00 00:00:00'),
(9, 'ENGLISH', 'ENGLISH', 12, '2018-10-08 16:53:35', '0000-00-00 00:00:00'),
(10, '8th', '8th', 2, '2018-10-08 16:54:16', '0000-00-00 00:00:00'),
(11, 'kuldeep Sharma', 'kuldeep_Sharma', 14, '2018-10-15 10:54:00', '0000-00-00 00:00:00'),
(12, 'dsdasda', 'dsdasda', 15, '2018-10-15 17:05:09', '0000-00-00 00:00:00'),
(17, 'jitendra', 'jitendra', 14, '2018-10-23 07:40:49', '0000-00-00 00:00:00'),
(18, 'gfgh', 'gfgh', 20, '2018-10-23 09:04:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topic`
--

CREATE TABLE `tbl_topic` (
  `id` int(11) NOT NULL,
  `topic_name` varchar(30) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_topic`
--

INSERT INTO `tbl_topic` (`id`, `topic_name`, `subject_id`, `class_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Height and Distance', 99, 6, 'The angle of elevation of the top of the lighthouse is observed from the ships are 30º and 45º respectively. If the lighthouse is 100 m high, the distance between the two ships is: A. 300 m', '2018-10-25 16:17:20', '2018-10-25 10:47:20'),
(2, 'Mechanics', 100, 6, 'Mechanics (Greek ????????) is that area of science concerned with the behaviour of physical bodies when subjected to forces or displacements, and the subsequent effects of the bodies on their environment.', '2018-10-25 16:18:27', '2018-10-25 10:48:27'),
(3, 'Topic Desc', 103, 3, 'Science (from Latin scientia, meaning &quot;knowledge&quot;)[1] is a systematic enterprise that builds and organizes knowledge in the form of testable explanations and predictions about the universe', '2018-10-25 16:21:56', '2018-10-25 10:51:56'),
(4, 'Biology', 104, 5, 'Biology is the natural science that studies life and living organisms, including their physical structure, chemical processes, molecular interactions, physiological mechanisms, development and evolution.', '2018-10-25 17:13:53', '2018-10-25 11:44:19'),
(5, 'Parts of Speech', 105, 3, 'a category to which a word is assigned in accordance with its syntactic functions. In English the main parts of speech are noun, pronoun, adjective, determiner, verb, adverb, preposition, conjunction, and interjection', '2018-10-25 17:15:31', '2018-10-25 11:45:31'),
(6, 'Environment Topic', 106, 5, 'The natural environment encompasses all living and non-living things occurring naturally, meaning in this case not artificial. The term is most often applied to the Earth or some parts of Earth', '2018-10-25 17:17:29', '2018-10-25 11:47:29'),
(9, 'er3wrer', 104, 5, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '2018-10-25 17:29:06', '2018-10-31 11:19:06'),
(10, 'my topic', 107, 4, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2018-10-26 11:07:54', '2018-10-31 11:19:23'),
(11, 'topicss', 103, 4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '2018-10-26 11:08:40', '2018-10-31 11:19:40'),
(12, 'Tense', 105, 6, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia', '2018-10-26 15:31:59', '2018-10-31 11:18:47'),
(13, 'Atomic Structure', 101, 4, 'Atoms are composed of protons, neutrons, and electrons. Protons and neutrons form the nucleus of the atom, with electrons moving around this core. The study of atomic structure involves understanding the composition of atoms, isotopes, and ions.', '2018-10-26 15:39:23', '2018-10-26 10:09:23'),
(14, 'Motion in a straight line', 100, 5, 'First, we will talk about one of the most basic concepts of physics, position. There are many ways to express the position of a point particle, one of the simplest and most well known way being the Cartesian Coordinate System. In a Cartesian Coordinate System, the position of a particle is expressed as an ordered pair, the x-coordinate, a y-coordinate in a two or three dimensional space, and a z-coordinate in a three dimensional space.', '2018-10-26 15:41:13', '2018-10-26 10:11:13'),
(15, 'Calculus', 99, 6, 'Calculus (from Latin calculus, literally &#x27;small pebble&#x27;, used for counting and calculations, as on an abacus) is the mathematical study of continuous change, in the same way that geometry is the study of shape and algebra is the study of generalizations of arithmetic operations.', '2018-10-31 12:47:16', '2018-10-31 07:17:16'),
(16, 'Number System', 99, 3, 'Review of representation of natural numbers\r\n\r\nIntegers\r\n\r\nRational numbers on the number line', '2018-10-31 14:14:39', '2018-10-31 08:44:39'),
(17, 'Trigonometry', 99, 4, 'Trigonometric ratios of an acute angle of a right-angled triangle', '2018-10-31 14:35:13', '2018-10-31 09:05:13'),
(18, 'Sets and Functions', 99, 5, 'In mathematics, a set function is a function whose input is a set. The output is usually a number. Often the input is a set of real numbers, a set of points in Euclidean space, or a set of points in some measure space.', '2018-10-31 14:37:15', '2018-10-31 09:07:15'),
(19, 'Motion', 100, 3, 'In physics, motion is a change in position of an object over time. Motion is mathematically described in terms of displacement, distance, velocity, acceleration, time, and speed.', '2018-10-31 14:39:31', '2018-10-31 09:09:31'),
(20, 'Human Eye', 100, 4, 'The Cornea: Imagine this to be like a window to a human eye. The cornea contributes to major refraction of light (bending of light rays) entering our eyes. It forms the clear front surface of a human eye. It also makes sure that foreign substances do not enter the eye.\r\n\r\nThe Iris: This lies right behind the cornea. It controls the circular opening called the pupil (aperture). It functions like an automatic camera shutter, controlling the amount of light entering a human eye.\r\n\r\nThe Crystalline Lens: The lens further focuses the light rays entering our eyes. Again, we can compare this to how an autofocus lens functions in a camera. This is called the accommodating power of the eye. Depending on where the object lies, the lens tries to focus that object.\r\n\r\nThe Vitreous Humor: This is a jelly like substance that fills most of the inner chamber of the eye. IT helps the eye maintain its spherical nature. The light rays after passing through the opening, travel through the vitreous humor before striking the retina.\r\n\r\nThe Retina: It is a light-sensitive inner lining of the human eye. Ideally, light rays should focus on the retina forming an image', '2018-10-31 14:41:30', '2018-10-31 09:12:45'),
(21, 'Chemical Equation', 101, 3, 'The representation of a chemical reaction in the form of symbols (substances) is known as a chemical equation.', '2018-10-31 14:45:15', '2018-10-31 09:15:15'),
(22, 'Chemical Bonding and Molecular', 101, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#x27;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2018-10-31 14:51:08', '2018-10-31 09:21:08'),
(23, 'Chemical Kinetics', 101, 6, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#x27;Content here, content here&#x27;, making it look like readable English.', '2018-10-31 14:54:19', '2018-10-31 09:24:19'),
(24, 'NUCLEUS', 104, 3, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2018-10-31 15:05:40', '2018-10-31 09:35:40'),
(25, 'Biogas fuel', 104, 4, 'Biogas refers to a mixture of different gases produced by the breakdown of organic matter in the absence of oxygen. Biogas can be produced from raw materials such as agricultural waste, manure, municipal waste, plant material, sewage, green waste or food waste.', '2018-10-31 15:07:03', '2018-10-31 09:37:03'),
(26, 'Molecular Basis of Inheritance', 104, 6, 'A nitrogenous base is linked to the pentose sugar through a N-glycosidic linkage to form a nucleoside, i.e. adenosine and guanosine, etc.', '2018-10-31 15:09:41', '2018-10-31 09:39:41'),
(27, 'Letter Writing', 105, 4, 'Writing letters to the editor is a great way to engage with a topic you are passionate about and to influence public opinion.', '2018-10-31 15:13:02', '2018-10-31 09:43:02'),
(28, 'Grammer', 105, 5, 'CBSE important concepts and questions for chapter - Grammar in CBSE Class XI English. Based on CBSE and CCE guidelines. The students should read these basic concepts and practice the assignments to gain perfection which will help them to get more marks in CBSE examination.', '2018-10-31 15:15:43', '2018-10-31 09:45:43'),
(29, 'Textiles', 106, 3, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#x27;t look even slightly believable.', '2018-10-31 15:25:00', '2018-10-31 09:55:00'),
(30, 'EcoSystem', 106, 4, 'All the Organism in an area Together with the non-living constituent', '2018-10-31 16:34:34', '2018-10-31 11:04:34'),
(31, 'Renewable resources', 106, 5, 'Renewable resources are those which can be used without the possibility of the resource becoming depleted or exhausted. That is, a continuous supply of resource remains available for e.g. tress in forest and the fish in the oceans.', '2018-10-31 16:37:03', '2018-10-31 11:07:03'),
(32, 'Global warming', 106, 6, 'Global warming is a gradual increase in the average temperature of the earth’s lower atmosphere.\r\nGlobal warming is caused by man-made increase in carbon dioxide (Co2) and other greenhouse gases through the burning of fossil fuels and deforestation.', '2018-10-31 16:38:15', '2018-10-31 11:08:15'),
(33, 'What is Lorem Ipsum?', 107, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-10-31 16:52:58', '2018-10-31 11:22:58'),
(34, 'Why do we use it?', 107, 4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#x27;Content here, content here&#x27;, making it look like readable English.', '2018-10-31 16:53:27', '2018-10-31 11:23:27'),
(35, 'Where does it come from?', 107, 5, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '2018-10-31 16:53:57', '2018-10-31 11:23:57'),
(36, 'Where can I get some?', 107, 6, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#x27;t look even slightly believable.', '2018-10-31 16:54:24', '2018-10-31 11:24:24'),
(37, 'What is Lorem Ipsum?', 103, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#x27;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2018-11-02 10:19:28', '2018-11-02 04:49:28'),
(38, 'Where can I get some?', 103, 6, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#x27;t look even slightly believable.', '2018-11-02 10:19:51', '2018-11-02 04:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `role`, `created_at`) VALUES
(5, 'jitendra', 'Kumar', 'jitendra.innox@gmail.com', '2147483647', '123', 'U', '2018-10-23 15:14:36'),
(11, 'jitendra', 'Kumar', 'jitendra.innox@gmail.com', '2147483647', '123', 'U', '2018-10-23 18:30:43'),
(12, 'jitendra', 'Kumar', 'kush@gamil.com', '2147483647', '123', 'U', '2018-11-02 06:13:05'),
(13, 'Kuldeep', 'Kumar', 'jitendra.innox@gmail.com', '8123458421', '1234', 'U', '2018-11-02 06:31:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_boards`
--
ALTER TABLE `tbl_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contents`
--
ALTER TABLE `tbl_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exams`
--
ALTER TABLE `tbl_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam_type`
--
ALTER TABLE `tbl_exam_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nano_category`
--
ALTER TABLE `tbl_nano_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_category_id` (`sub_category_id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_categories`
--
ALTER TABLE `tbl_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_boards`
--
ALTER TABLE `tbl_boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_contents`
--
ALTER TABLE `tbl_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_exams`
--
ALTER TABLE `tbl_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `tbl_exam_type`
--
ALTER TABLE `tbl_exam_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_nano_category`
--
ALTER TABLE `tbl_nano_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `tbl_sub_categories`
--
ALTER TABLE `tbl_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
