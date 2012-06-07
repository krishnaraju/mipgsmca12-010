/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - image
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `image`;

USE `image`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `filestore` */

DROP TABLE IF EXISTS `filestore`;

CREATE TABLE `filestore` (
  `name` varchar(40) NOT NULL,
  `key` varchar(50) NOT NULL,
  `limit` varchar(20) NOT NULL,
  `des` varchar(255) NOT NULL,
  `resumename` longblob NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY  (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filestore` */

insert  into `filestore`(`name`,`key`,`limit`,`des`,`resumename`,`status`) values ('hai','Â­@Ã¯â€“/â‚¬Ã´aLÃ¿Ã¼wÃƒoÂ»Â´','5','good','public class client1 implements ActionListener {\r\n	public Font f1 = new Font(\"Times new roman\", Font.BOLD , 28);\r\n	public JButton b1= new JButton(\"Browse\");\r\n	public JButton b2= new JButton(\"Split\");\r\n	public JButton b3= new JButton(\"Send\");\r\n	public JLabel la1= new JLabel(\"Select the file        :\");\r\n	public JLabel la2= new JLabel(\"File path               :\");\r\n	public JLabel la3= new JLabel(\"File Size (Bits)       :\");\r\n	public JLabel la4= new JLabel(\"CLIENT 1\");\r\n	public JLabel c1= new JLabel();\r\n	public JTextField c2= new JTextField(\"\");\r\n	public JTextArea t2= new JTextArea(\"\");\r\n	public JScrollPane sc=new JScrollPane();\r\n	public JScrollPane sc1=new JScrollPane();\r\n	public JTextArea t1= new JTextArea(\"\");\r\npublic JLabel T1= new JLabel(\"Always Acyclic Distributed Path Computation\");\r\n	\r\n	public JLabel T2= new JLabel(\"\");\r\n	public JLabel imageLl = new JLabel();\r\n	public Font l = new Font(\"Times New roman\" , Font.BOLD , 18);\r\n	public Font l2 = new Font(\"Times New roman\" , Font.BOLD , 16);\r\n	public Font l1 = new Font(\"Times New roman\" , Font.BOLD, 20);\r\n	public JFrame jf;\r\n	public Container c;\r\n	client1()\r\n	{\r\n//		ImageIcon v1 = new ImageIcon(this.getClass().getResource(\"bgc.jpg\"));\r\n//		imageLl.setIcon(v1);\r\n//		imageLl.setBounds(0,0,1024,768);\r\n		jf = new JFrame(\"Client1\");\r\n		c = jf.getContentPane();\r\n		c.setLayout(null);\r\n		jf.setSize(700,500);','offline'),('hello','Â°\"rÃŒâ€˜Â£ÃŠâ€š\"Ã¶Ã1Ã·','5','good','import java.awt.BorderLayout;\r\nimport java.awt.Color;\r\nimport java.awt.Container;\r\nimport java.awt.Font;\r\nimport java.awt.event.ActionEvent;\r\nimport java.awt.event.ActionListener;\r\nimport java.awt.event.WindowAdapter;\r\nimport java.awt.event.WindowEvent;\r\nimport java.io.BufferedInputStream;\r\nimport java.io.BufferedOutputStream;\r\nimport java.io.BufferedReader;\r\nimport java.io.DataInputStream;\r\nimport java.io.File;\r\nimport java.io.FileInputStream;\r\nimport java.io.IOException;\r\nimport java.io.InputStreamReader;\r\nimport java.net.ServerSocket;\r\nimport java.net.Socket;\r\nimport java.net.UnknownHostException;\r\nimport java.util.Random;\r\n\r\n','offline');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `name` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `des` varchar(50) NOT NULL,
  `image` blob NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY  (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image` */

insert  into `image`(`name`,`key`,`des`,`image`,`status`) values ('image1','Ã¡dÃ»uÃ„JÃ¤Ã¬aFÃ„|ÂµH4','ok','GIF89a+\0#\0÷\0\0çw8âïôÚìòë‘YÊd)òöùóøúóÔÃÎêòŞíôèğôÛóöÑéñØåçßèëõîéôëä±İéöùûòµ‹ò÷ùüôtìó÷äğôıÿ“ùôóşÿÌáğöùÖ`şÿ¥üêl‰ÒìååæÓåëàïôı½Sî—Fşş}Şìóì£nış³ÖêñÊäëäh\'öåÜ«ÛêÍçğóÉ²íèæÙn2ë‹D×íòåæèùÒ¨óÉ¬ÜìñlÇäıúwÙÎÏòööèêêãèëÄäìòµ•Äæñíüş¼c1æŞâö·mÙëòœÕäøùù¸áìüÜfõõöéöùèîñşÿÈåğ¾ãîçòöñÀ¥şşşüÿÿÿÅTîô÷ÿÿãèòõàîóßíóÂãïåíòâíóúüıêòöçğõùûüûııøûüïõø÷úüäîóôøúãîóğöùîõø÷úûäîôñöùõùûäïôîôøíô÷åïôæğôëó÷æïôéñöûüıæğõãîòåîòüııèñõèòöğöøãíñúüüùüüâîóıışñ¡DõøûòÌ·‹Òß‚ÅĞÀİ­çîñŸÖéöóñ¯èõËèîêğóæxqêùøíúúğ³ğïîÆãë»âìõ¸XøúüæáåıÁn¿°Š÷øøõ÷øÏäñõøúãzš×ğŞzFäÿÿì wëóõğ©yø»t|ÌÛÒ¬³Çéòîø÷üÿÒíòÒìôÔëöe¾Öï÷üäîñóÒ½æíòòÆŸåïõér1êó÷Åf4Şk*Ó×ÊãëğÙèí…»¿ïÀYíôøÿÑ_í÷û¿æğâôùöÌ‡ïöùöÑı´IåÚËëò÷áíôëòöóñïyÓìòÇ²öÀ½pÅçñË^úÌTğÄ®à‚MìƒDæîòÿııÛùüÿÿÁ÷áhüãhøĞéEô`W÷ÃhõùúúÏaÆ±„ìÿÿÎ_-¢×â¤×é•ØîÅåëäpe‰ºÄğhfhÀÙŞªfèèìØïôÂåîııûàãäñ÷ùí^íŠLÕâ›ï­Lî²]ÏŞä¦U¿àëİîôö¼Vüúxşşş!ù\0\0ÿ\0,\0\0\0\0+\0#\0@ÿ\0ÿ	H° Áƒ*$H€@Œ\0ª\r8qbÂÂ‹	ïiËÑ¤	†&%<xV#F$KzÈ“G#Ã’|ùØ5CåÍ[:ã€¸pa²§ÏŸ@ƒ^\\±bP…\Z4XÑĞ¡D	¥„&D€à\\/MíÚ!N:Pï¤\n4g®ÒŒ\Z4€c‘*UÂ`Å$Ò“3Dˆx\"¶¯_¡¨WÑâßƒ¸ÈÈ•Ë\0$HĞ£ux ÑJ¬Jº´i‰$ô*4Õo[…\n9*x\0,“èT;xğ€ÁC†N}X°\0R°wğúF`ĞÀA &]6¬¿)ãÆ‰Z€` DkßÎ½»÷ï\nÀ–HÑ0w!B\Z:î6`€$ÜWøÆ1cŸDZ2˜¨Q¤J1åTÚA„/`€\nÙ €?ş$Aw¤™†šj¬¹Ö>ÇPAE8ÀP>ÈhÇŠJ„ğ4‡b\"8|ğA*8ql²Ñfnºñæp~µrƒ< €Ğ’>øğ\n#Ï¬³Î#:`³AE–Yh©Å–[pÉE—]xéÅ×OFA#Nh¡‚\n¼ğ\"À›è¼Ã+® Ğ‚•PUx|\0;','offline');

/*Table structure for table `server` */

DROP TABLE IF EXISTS `server`;

CREATE TABLE `server` (
  `user` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `sport` varchar(100) NOT NULL,
  `age` varchar(20) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `password2` varchar(50) NOT NULL,
  `email2` varchar(50) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `agree` varchar(20) NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `server` */

insert  into `server`(`user`,`firstname`,`lastname`,`date`,`sport`,`age`,`telephone`,`password2`,`email2`,`comments`,`agree`) values ('suresh','sur','esh','1988-12-10','Image','25','9949254254','suresh','suresh@gmail.com',' hai i am suresh','on'),('ventech','ven','tech','1988-12-10','File','30','9949245245','kscreddy','ksc@gmail.com',' hello ventech','on');

/*Table structure for table `text` */

DROP TABLE IF EXISTS `text`;

CREATE TABLE `text` (
  `query` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `publish` varchar(30) NOT NULL,
  `author` varchar(60) NOT NULL,
  `cost` varchar(70) NOT NULL,
  `mess` longtext NOT NULL,
  `cdate` varchar(20) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `text` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
