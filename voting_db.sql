-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 08:44 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_tb`
--

CREATE TABLE `candidate_tb` (
  `Cid` int(11) NOT NULL,
  `CName` varchar(20) NOT NULL,
  `CAge` int(11) NOT NULL,
  `CGen` varchar(10) NOT NULL,
  `Cphoto` blob NOT NULL,
  `CElect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate_tb`
--

INSERT INTO `candidate_tb` (`Cid`, `CName`, `CAge`, `CGen`, `Cphoto`, `CElect`) VALUES
(1, 'ABC', 26, 'Male', 0xffd8ffe000104a46494600010100000100010000ffe202284943435f50524f46494c450001010000021800000000043000006d6e74725247422058595a2000000000000000000000000061637370000000000000000000000000000000000000000000000000000000010000f6d6000100000000d32d0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000964657363000000f0000000747258595a00000164000000146758595a00000178000000146258595a0000018c0000001472545243000001a00000002867545243000001a00000002862545243000001a00000002877747074000001c80000001463707274000001dc0000003c6d6c756300000000000000010000000c656e5553000000580000001c0073005200470042000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf706172610000000000040000000266660000f2a700000d59000013d000000a5b000000000000000058595a20000000000000f6d6000100000000d32d6d6c756300000000000000010000000c656e5553000000200000001c0047006f006f0067006c006500200049006e0063002e00200032003000310036ffdb004300281c1e231e19282321232d2b28303c64413c37373c7b585d4964918099968f808c8aa0b4e6c3a0aadaad8a8cc8ffcbdaeef5ffffff9bc1fffffffaffe6fdfff8ffdb0043012b2d2d3c353c76414176f8a58ca5f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8ffc000110800ca00a803012200021101031101ffc4001a000101000301010000000000000000000000050103060402ffc40033100002010301050606010403000000000000010203040511122131347113323341516114222343729152155381822442b1ffc40014010100000000000000000000000000000000ffc40014110100000000000000000000000000000000ffda000c03010002110311003f00b20000000000006ba95e9527a4ea462fdd9b0f2dcd8d1b9929544f55ee06cf8bb7fef43f667e2a83fbb0fd9e29e1e8b5f2c9a647bbb79dad5d8937a79303a6f88a2fee47f63b7a5fdc8fece4b6a5fc9fec6d4bf93fd81d67c4d05f761fb31f176ffde87ece628d39d7a8a116f7fb9669e1a924bb4936c0a34ead3aab5a7352e8cfb345b5a53b64fb3d779bc00000000000000068ad77468cb49cb4606f0793fa95b7f332b216cfee203d40f3abeb77f71077d6ebee203d00f33bfb75f711f3fd46dbf981eb2567609d08cfcd3d0f653bea1566a3096acf366f92ff0064073e0002961229dcb6d70474042c1afad2e85d00000000000000000069a96b46acb6a704d9b801e2a98cb79c5a50d190ef6d5dad6717dd7c0ea4919d8274e12f34c08801803ea31727a456afd0deacabcb85367bb074e3294e4d6ad32de8808161695e9ddc6538348f7e6f91ff006451d09d9be45fe480e781832056c17892e86ecbdc54a1520e9cb434e0bc4974339defc00d74331561e22da452b7c950acd2dad97e8ce686ba3d40ec534d6a99939ab4c955b76949ed43d0bf6f734ee29a941ff8f403700000000000012f38be847a950999be5d0100c193005ac070a9d4b246c0776a752c802766f917f922893b37c8bfc901ce993000af82f12654bab4a7750d26b7ae0c9782f1265c0398bcb1a96d3deb587933c875f56946ac1c66b54ce732164ed6aeeee3e0c0f19bed6ea76d514a0f779a34003abb5b88dc52538bea6f398c7de3b6acb57f23e28e9a12538a92e0d6a06400000000999be5d14c999be590100c193005ac0776a752c91b01dda9d4b2009d9be45fe48a24ecdf22ff0024073a0002be0bc499708782f1265c0068baa11b8a32849747e86f007215a9ba556507e4cf82b672dd4671aa96e7b9f524802fe1ae3b4a0e9c9fcd1201edc556ecaee2bc9ee03a503880000004ccdf2cba94c999be59750201832600b580eed4ea5923603bb53a964013b37c8bfc91449d9be45fe480e7400057c178932e10f05e24cb80000078f294954b29fac56a8e64ebeb476e94a3ea8e467ba725ee060fba32d9ad07ee7c04f4680ec294b6a9c5fb03559bd6da0fd801bc0000999be59752993337cb2ea0403064c016b01dda9d4b246c0776a752c802766f917f922893b37c8bfc901ce9930640ad82f165d0b842c1f8d2e85d0000030f83391aeb4af35ee75ef81c8577ad69bf703e003305acd2f703aab2e529f407d5b47668417b0036800013337cb22993337cba0200000b380eed4ea5923603854ea59004fcdf22ff0024502766f917f92039d3260c815307e3cba1788383f1e5d0bc000007cd596cd393f447213efcba9d3e46a7676555ebbf4dc72ef78036da43b4b9847dcd452c2d0dbafb6d6e8817e2b4825e88190000000999be5d752992f38fe847a810403005ac0f0a9d4b245c0bdf51168013739c97fb22913338ff00e2a5ee04000015b04bea4d97093828694e72f52b0000f8a95153a6e527a2404bce564a10a49f1dec886fbbaeee2e2537ebb8d0012d5e88e9f1b6df0f6c93ef4b7b25e26c9d5a9db4d7c91e1eecbeb8000000000024e75fd282f72b1173d34dd38ebbf8811cc1930055c1cb4af28faa2f1ca595c7c35c46a69aaf33a5a1734ebc14a9c93f50371273b2fa305eacac44cf4f59d387a2024006db5a4eb578412e2c0e83154f62ca3af17bcf69ad6c50a4936a318ad0f15c65e853dd4fe77eab801ef9d48c22e537a2441c8e41d76e9d37f21e6babdab72ded3d23e88f3a5abddc40c1edb0b195d544dad20b8b36d8e2e759a9d54e30ff00d2ed2a71a5051824920334e9c6941422b448fa00000001f156ac28c76a6f447d9f156946ac7666b540796794b68add34fa10af6e7e2abb9f9791d02c7dbaff00a232ac682fb680e581d5ab3a0beda30eca83fb680e54fa8549d37ac24d743a5963addf181f1fd2adb5d5440fac6baaed94aac9b6fd48d95abdade4b4e0b716eeaac6d6d5e9a2dda23989c9ce6e4fcd818e3b8bd88b3eca1db4d7ccf87b1e4c5d83ad3556a2f9170f72f6ca51d95c38010f3377b735460f747893614aa54ee41be874b1b0a0a4e5b1ab6f5de6f8d2843bb14bfc01028626b54df3f95156db1b46868f4da97ab3da0025a20000000000000000000000003e6738d38394de891aae6ea95bc759bdfe849ad52e7253d9a716a981e7c85dcaeeab51d765703d1618b94daa959691e291edb3c653a1a4a5f34ca0901f308a845462b448fa00000000000000000000000000000000000f3d5b2a35aaaa95136d7bee37421184748c525ec7d0000000000000000000000000000003ffd9, 1),
(2, 'XYZ', 60, 'Male', 0x89504e470d0a1a0a0000000d49484452000000580000005a0802000000b33f066800001b5c49444154789cd55c597324c771aebbfa981b37b00777299aa62ecb0f8ef0abc32ffed17e73841d3ec211162d4b148f15f7c23598c11c7dd6e5af7a96346d4b72d06860a5e22e16003183eeecaccc2fbffcb2445555e46ecb071208a194b0f8153ec577828f1f290f5ed04098f4841a4b8c0b8c06cd1927c4e02be604652c501a687c3dde27e045f894517cf9b04bdcfd2de23507820fb008bec27fb8b5f81ddc0ebe61db602a621aded6ae695df0562722cba5cc181194704b83a781e16df0524fa35dba3779e0d587210296f79e7ac276aed1dd0a1c84323846715b5cbea9976f59b3a6ae359e6c390c311a9f7c989efcc0311f986fe10ac40bc235e7cce1ddee7e51df7bf56088ee2e3c7c1afe8fc709b767719b44a76065615ebf5e7efef3d59bcf54bb4e44b094975e34444e9fcecf7e2a93bd4932c9b13f1aef9d27f8c3e119f1a50fbdfa3004ae9ce1dea31f204c087c89fbb02df5c65fbe5affe2d3d58b5f6e2fbe94edaa15c173d152e9b8be298c6ddde1b367a3a78fd570cca5b6143b853ac2e37bf57059df6ff5640858a28b153044b482a968b5626db17ef9d9d567ff562e2e9ad56ddd6cb7d432c15596251965cda27cf9e9dbc5d7cb174783d3c793271f26478f4292349ed840740f97f5fd561f864098ec6e1f8688f1df595a6fc8eada6c169b8baf5637afb6dbedaa28eba6e62ca4191b93c069abec2d5b6db6177e41b2ece029d9b4477a408e328770f91e1ca20f43c004aefb88988f60c1ebd26f96edcdb9595db7eb796b8a65b1bab85d6e9a26cdd2fd2ca1ded5e596adaea4b19ca68c0f7d10b72fbe509359ae333f99c61df6e001b3074320c619425bc2382703d7facbafcdeb5f55d7af09b3c13665515e5f5d5d2e574128267559ba94d27c98372ef9eafc7abd3a4f93cb1ffc890b578ebf08e9d951323a6c80423a4cf290ab0743200322083ace1465dcbad5c56bfbfa6b5addf241dab66dd12208ca54250630ab6a824eb2fdfcf4e4747870929e5efdd33ffc5deb0bcedb72f9eaf6e7e5e4a39f1d3efd69808345277bd0d5078e2054f980acc991f6dab6bc5e34d70b452a5b571bc0d6411e36dbbaba29b75b3119ed3d7ff2fc93678f9e3e9a9c9e0e7f701af8f6eacb5fbb6d21f2f46675592de7d4d5de52221fda257a0996316d084409e7685bb8b6aceab27625cd92743a799c6593fdc3a3fd135fd4fbb3f1079f3c3ffde8919ea4754e8607c77f39fceb7ffb5bf6e29fff69980e27c389941aef0268dec7557dbfd547b00498024a16a82a6c088626bc8555183b7df674f8e824b4463641568ed506b19464d40f98d3042944e683c9e4e8e365b3b9dc34d6aad191cc674426883508ba77bfb0efb5ee6e08ea513e20bc615f78ab244b0f26f4325badebbdf1707a70509f5f6c36b7765561fb28219d2575695a61ab2c21053d1aec25874f8f7ff817afbffc323f7c2a47078de386b87eb2faf75977ff8d01b11058aa09c11aa395cca613391a5f5f9e5ffec7af4eaeafc3f5fcf2d5c56651a4524f4663ae55e5aa358046aa8e9e7d60f61f6f17e5175ffca6adcdb3c71f647b3084f3b16479e8d583e9511d104f512c8818e27855b421089d8d5edd1689d01f4da64d6916ebeaede5957b7b0950996548a064e6dc61ebd2b2fef58bdf7cf5eae5703cf48a8b44203e983fd6a2cb2359049418a94afd66fef2f32fc3a6fcd1c73f7e9466197187b66c6d98df6e16db8a13391ecf52a1b7abd544a41f4e2636953ffdd3e73ff8930f16eb55b9bdd92ece07e9a0759c28d9c3857d9f755743e0d9d696b48eea94707353befaf7eda7fffad1c79f9cfdf8cf7fbe59cdaf5e9f24d9d3a353ec87acb19ba666aa11c23efbd1e9d3c7cfe8f159c87d3b7ff9d1c1be9feb2f7ef9b2f8eaf3c1e161d04342d48ee379b0755743000a23c8a35e041de17c6d6d2b84d23aa55a4ba7f168179bb59ddf168bc588f3d32767345737cb795d2fe7abb11d4e82240db52eb4b912d37cc802b38024423c389eea636b480029121a6fac48c90c30e927460f6c591e4c06f636db9cbf095505f83d9a8ca6fb7b2c57d69b7ab30567d51637448883f18c88cc2ab2f7c1384c102c85087087875ebd10339e3a13a8f32a17fb1f1cfd9406d459d6265c1f4e87667f5fe42337286e97cbba2a896f329d3c3e3c9e4d6625488b540cc67b01ec652af3e97e93ed59aa05883b049e875d3de088e0dbe06bcac1d06a36dc1b7f9816972f5bb2516d33ca527e725c9e5faf16b755b96d895321555a6929d25448292bc15194e3e6493a26d313e45eaab3078e0ebbd50b31034ccc14972e8053e1221f8afdbd50016d960ebcb56ddba636582db00202abb346ad29cb344b66080a1cf5281b8ef8f8d80f663c1d20de00a93e3c23d103a0025bcff007840a829e0149cd780a066a485a1a00214c4339cdf3ac4892a229daba5602ecadc0cfc3288ce3b559323ad2b313c793c860db001ffba32cba1c0a71bc5120b2236750280438bc4f19b8f9a40e59ead8dae17b82255aa93c198d46c33c974a581883a9349fa8e19e533968081e82f60eb47847fa3de8ba338ef886a1c2f31508128283cd46e1e1508ef28c0601860ea598500a49951688aae86c78743cc0e9d516a51a4993a1670a8c3e8aef587902b3f348fc3df0ba338e00c4ee085bb0b731d8c70789db045ae6c0dec1d5521d54ca6c68bde5aaa5438a764fc31ad314952ab3e383a30ff9fe612de1045612ec13a4a08737425cbd1033b8fd2ebc7ddba7c3736522e0633266d353660c6d1bb2da7a87a0510b45544dc150a6d3b3640a1c99586b41ce29c6d001a43c321b0fbfeeaddec53e47592e53b777aab957c4b0f56d411b10738829adca07b3c9f4f0182102b81240a4b3618c0d5de7efbe2eeaf7acfb2dfc0d133e1d67a112c55ce4dae4081b49be3f9a1cefa7fbfb2c1b07a6902c3963809e1145a171085b609b3df8ba4743c4381a9ba26808c61098703acb927196e7c747c9c1cce6c386698e86392332de7aec105964e0784da85d1e7addaf474004601d7ae0c6d960446a27475a6772328113d406e5964a9844a66521c6d9a809c076eafa860f4f5adeaf21a25680f0154dea64524e9f387934d059ae58bdbadeba2a9dda3d992411a49b8ed5e89c288a27dec3eaa7d3f5eddac18ab8cfbb2fe1e81b2696c9e886b2a5dcf30d1ba33e2f6e176f97f5edea6c38578fa44a2507f270e8fec658815d0478f647e91100115db88f9fef8c823bc1fde0efd6920b1f16445f6a71c5263e5563cf64c36e4c5e809578fd6634c806622651aba0f8621cd9e3b71211bbb7ffe697dccbeaa50c77e0560cf4411d9fe26207d057446c02bfa8ea1b5319a1ea26b82d0aafb240790676f6f8acc9d417d2254d29cdf071aa4750030474893c07d8409400750973c6d01982646d67dca839b83767e9055005cf88a1141b1d575cb40d88dc92d1a5652b743cd0bfa03243939c31cbad06c3ab933c3b14436dd106506a41c163d99577890f09653ac64a6a8945551f7b7ff0376c9c4e85c440834589d5bdc4b53e6204a3b04243424958e1ecba696bef6b8406c78ce3294f406269851f930e623286ee0634646aa4946c9c4e5250125f93860733f4e480ea3d2ac5ee8e21b1c27e895d34107a519c06978930fe7eb6470f45171e5b03528af83561dbe0b78c344414815dd5ceb57602010c9817ce7163d0d5400682bd23344f29481b42b5848ca646dee0b1e3899b851113c2521ef1450ead59173be3ff7827d6ba2facd54b194e6b42cae00bea2bceac4e9132eb9add94852d0d4b1298424212a090110015e016a83aa5551cba462d98421020ca471845568c2c5cc869380e0c88021122e90a51ec0df0baf8c9bb5fedef5afda44f4b68136280300872323e7d5f99ed7a5b95a02532dc2d3432685fa11c05e50d4e0662a956863ad6583eb5248db506af245d3272235c43dc9e71758b9fe710da311ef126dc050e84887af70bfeadab1743ec8485c87cf824e64d34675470cab69b96dc1a9a23d2213a18af85837ba888abf1907d9014e112b85aa00e6312824b949f905120c2246d2d6a0ba3b2908b4cefca5a98ed9b34daffeac723b075a3a42ef6fe1ca0004a88891227836c53b50b343319dc1ef9c3e2b9671c942dac66519bcb40d13535dcb791b18b85272b032fda24ac06ec0aaa2aee857053c9474ca828604580608ad07b6982f561888ea28ab9bf8b67f81a617fa4f9d9def86d595e81aceb8498cc1a1d55013487aec69bd034a27444ca902595902d5e0d56aba906f3d5d05d2bfdd66d2a1224826f20632ff152845ac69249480e62adde77bce845828cad4f2c6495300a8f4160a72d1b4e7872c3c27573c8fd2776734ae73352a5c88b15f6bca7562f6ffc55930c7ef8b3e590ac4848f96626de9efa8bc3763bf616b803018785a25d6ec0f982e94d532da7cf9ddc97c02678879d86a2f3457be79be90559767f3b8e0dd91fe523f826788748f819afc5e6e2479efd24a9cfe4ad3605a9bd13a07505820281a068ab89f90846e38055ded0baeeec899d233de3f82998d999d6d7c8cb881e80a28b90de3299208c46f4d95183f8dd00751dccffff27d77e0c21900f7167516b0bbe1a3980a17ec2876783e659f2ead8348f24cd2470780ded9d1043a8aea46f467e01f9694de68c2433c253a7059d3623b581ec28acc16fc10e1ad4674094d5d84cda00a8acbd7ac5b3194840227208b93b69277e26a2f1bb70dfbde823c0ac2053c4ba097c7c14dbc74784e81826039fcc0a7e336fd02ef7009aad23420266837b280ab3ae7da25b867bb49ab0c427627060c78795dbf0ed05414c218e530f9d0dd4367863811c5357747b0157a02a8bb548974d3a92f39b4fdfa321228f82981eb9daf8278af223998bdb8bc994075914eda2809484b7b6768c2670f3d6424e744ec79ba7c78e4dcb86790b6ce921432c813a22c0b60c744e6819300a70288025a26d5b618384b6f4aee5218685f86bbb4d117b42771b6ee8a780d9e5f74e9b0ecc13c74e62c5145086e6b53c2da413c170c11c2d3d24a86b53cf6f5e5c8717a3637a7224ebd1b62268a6b7d4a06fb8112196986a22b86d103283b5805a40983481facad9128103a5193ca80b0e88a6dd98470764ee720bfd0cae808217b12a8c50029272902cb84244bb229f56cf3f36b3a3b88735aeb5766d61568b321d7ee5abcffd70d0c8f4aa8190dfa7d408a76b1a370f63c89f8a82e6c42887ab44aa642ef4102ee1da2a561c6a04c02dbdc53b025ac0eec8bcdfb241efcd10b130ec680224b2d6fb621be70f28baa189805430399acaa319f2c802fb9821e319576edde9829fadc5b5839717afcf3d9899a351257d6aa03d5486b3f3cc2682a5d0e8716030964834d031f1e3a0af529632b44f519479a7834533241085fd03f7b88baca28fa20b45262570fd16c45cd1ce6f36c5a6429f06ece46cc4460396a90c96a96c6815ca0cd826c9f666c77bc614ebc557cb9b5737e5ca065639ea739ac07982e4db914935faa432511489239114849e04e72f440614c142125c1a2a40f45dca8c99fb6e77d18321d0ee94ded99694ad809cf2b24e6f96a5ab5739a2e4346b8f46e31151099e5d1cef0a4dcc768da72d13b3e1e8e0c7d3cbe9cdbfffe2b3cfffe317887993c1f436bdd159aaaa0caf49a05d4f78493d6a90518abd211b49ccc03f26240b6c189258acc52d016a67578ebcdfde275a9de86a633778d2966eb5dc5e5ccecd7633d632b809b2df26d6e21ad11dbe037a560ac1b1a341f53b0120a0d3d1f1c9e3a624d717d7d757cb4d820032489b41c1c566850e712e4689ceb46902d4cd06f54660075a617a10b119db31dab5eb39deb141d68b043936c0359c1ebc5c5398e57531bf84225d0fb2aa529bb242fd6d2c3ae060980039915a507dc5cac4b4b6aa6a30127be313fa3829d6eef2fc2b6b6e6932e7399f619621811b0cf2e3fd6c364e12978b44533b58157e30a0690e980dcc16ebd83e48ab7e9ac0405390860ca8cb4c49cb45737bb55e6f9aadf6985f483370981af40c47a88c9d2ff845d7da8b0d5fbc769031ae93f118b30b07ebdbe5eb976fc683fc871f3ee1265cbe3d7ffde6eb64b13f3a3b1e8cc77be3d97e26d250270ed49f479b10550e30c78e337fff86c01da93896462782ec29b2afe848864d68b7db5aae867cb8bdbdddee4618f143520a0db988d209c4ca0389e79d2652709f0f549e3f994cd42f46729ab0bff9b38fa649fef237fbbffcea379715269ebeae97093d793c797c7834927b88a3920180c7b2f61d8ae90a8e3bd8a317e52d3c1ecf874e347f7e3423f4c3d174f8ea76b50534140360ebb22c316f0c2f005f2bd568381c4f27b3c1406449c832259108b94361a9447674984df71377f9f6d0177ff1ece95f3d3b7af5a7cf7ff5e6e58beb8bc298d3bdf474968f47ea50eb1cec16b4251d011009fe68e83bf53d7ae123a2c347d20d92d271928fcff69f9c5cd46669edcdcaceafeaa2289aa6c645424e3718c0c727a31124d960b4b14d505f9b4c4357122906d09d4f9fecab093f706dc0dc9717473aec7dfcc15ffef839a85d844908933ca72348f822f1d16d896fd34544daefd51091a18e9b1dda275c2732081f240042bab03c35729263968bb51a43be1c5b025b4322ddb540857150b881c44e58192b363095c0a44ca9540df2b6b22d2790e3a6498eea25ce07c5f141084a90774057451bec6e3c22cb7815b60312efb5faec403e1c027ed109a4b8f0c03e489120e0120cb662f02daacdf0f4292621c168c7be8dc06c349e30d09552b009287eb4ba34da9f2021600b70784ea3ec261cf54953459e1b62b4ce20a87163a28afcfeb76b57eedd0952f5c359a2eaa13eaaa640d96f297452207223258b6b2b05699534b1b3c30d6e4609039a5b129790dcd371d3d8416d0419d4039daa2527ba35c3ba41672c52b6c069364a8d1045901cc0e576d5663784df75feb09fded9031cc01d2225560f86808cdc45d88f270c2d31e238360aba5a4c1892b57ed218dd4692294eb83887bd0d823b09a2e51c780a8ec423c3cde1373c1a0fb76428ca549e76e727e0ad62b5d9f1e33b0b7c73bbfffbdff76b884ee90344056bece236ee85a760590269d0cd05d24a300a89cde0c0df06500e98fc8a8d0d1409901b829a42482188b251cc1f4812058aa4c6502ce6ebe3c5511139ff4eb287cd15b9d1efdc7bafab07880dae1eb8199e100908cc2a74dc21405f4d6c15cb00e5c1b446fe04c5321c0056e0b1f3d535356b28b82d6633e2fcacb106a00bde5162aa0b556c4041816e6177140318fc8e20dfe969ee63f59135d0d90cdc49c47dda38846f8966173cbee5b245b8ab026b039cbd33506c19130445cb35e21f23352004a827404f8cc563fa0d9e8f618d20359837d421118fc730dc9dc980fd716f9dcf1e0cd17581a10840388bda4a5cb2031fc530fc883b43918cdadca05a66206b768506b60ea85e357126df16b70052a9027de56017b4ce4bd340a71b6a0def70520d266084ad8daf841d230d736f96e8056277f91b4f0ed5e1edbc5d6eeb361421ac7c5d6f1ddbe2a14330810e0e9e7d2431c14cfa7c14708ac2f662717276f2e14f5c631bd464ab79f9e672d53628dd7468443a211ffd88a05489b112590352c5182c7ba82b7edbea85b3446f8bb4cc54c57c7bfe85f9e28d996f80aad70ef3f1abf46213073a0228381cb7835b611eb291648840b095d5f59ffdecc9f11166c2c0c9f2f3afcb7ffcf4fc1a43e52441e3e2e0d4ec1df09333035fa3b15f0ef22f4285fbd1bfddf95d63b444eb137b03ec481baaadb95dd4e7737bbb26cd262ce766b104836502a4e9c68091c0cfc93424a36d305be5e9d9d1c89796a3435cf27683fa7dfbea928f7431ce46f0086826004e70eecc8eb08e7bab877bfeadab9f060fc8f71c20d08edeb6e32fb3a72fb49ea3d632c2005a05888c1b6731f30c30092c218020799b229562c71fccd5afffe53314a1d087541bf62639b91a609a6154ed3d491f9d4197895bcf48c02be3eebbcf73467af1b328cc07d6c3b845a567cb54bc4decb5f4e83d941aaab2144cbd6bd114877e02fd6fc5a3cc540369024c2ccf8bcbbfff142d2d8bf1179d3568f5a8e9249b6cd251930e8c5231c97c2378efce79ba2f695d1fc872d7d501f5ae84cf278d806e66b0e5654deb15073b83e63e983508a870dc06453a612aa14ae3a8a1c49ab50917f3a2326030f56caab274a0734dd304d549ec804136138f20eaeefc8ee4ecffb57a3a63061348f8085db94e506f6f03db5259611ac16bc0ef68aa88046239006158d7afd0f0820ae3be20db224d03619116e998a19147814718ce126822a5876aad2b2ebfadb0ef4d6bd94bcb0f0e11e12f9e9fa41053561863c3242cdc9c399bc0dd1daa67c00804caa80682ae141d4d60d05680aa817e86c63605c0a8415aa9e3495452a282b748bb515ad3c90ddf39c45dd997dfb3fa3004a0738017a3be0658460b7f1d7018405b325b23593852431f03c8057419512230749484c47d8fd631c03569e2d40a301635b51a8c55920282779478141776a73a7d6757dcdb90534f49b913cd445606b48bc5797c98736e19fcc23705471911871ca37c344a056265824f503d0c311b898acc7a840d14e6f8b6d02c1e18809e1fa8bf88a0600fd427a0f0e3ee8b9363f7a642ee257d4631000a2ad44b385f0ce13fb227a80df0a4638f3bc65210161116ee0e99ea6e05d52a681c3c74a41481f25326300bceeb6a20243126723b98858c65faaed9bdb376acddfe700d11c982481ae0f611f97068408a962cec01c11cb77c6871401dbc218acde3f98c284230e628a8437080320ad51af4237801cc271504dd98adc6d3df794144e41d25f76ef5af9cfaafd5478c880d7adc6e480328064026286fdbc637c085e89283aaa96de3207f01791719eb381989ad1fe50dad49312cda3a2b1a286e70fe44dd3630a6ce14c65d50af22cfe064a7a8c546d8ec5ceebf2620fa5e7de9233a8948f70cbb732d77477b823f80ce16d239e885103d245ab871ab77e2dbb6859f0082a14a891293a6da201eb4d0a50b4d35f4e951658254d4ed847b9d4f78b77aac60ba96d37f13db41771d1d1f0f99a3851d3d02cf370ec7b61880c49f80cc4a711a093e546be821b043802cf06f9cfc03fd072a185dc477f4dc3d9be29e8ff78959328ad1b1ebbb7631809344351df3a5ad199a1d284670d6000e5328d0efc2490103a19338f7001c6a610fd07731f8c406e18e94fc430654bf6b21b009040660ef0e3880a1c34d62e159439febaa95a936a1b020b89071112d61a2248530246e349ce714ed60c1d2742d8dddba4fa7b8578f00871f1bbd917302159fa438c9120a648f23ba0464c81ee75db62bd02ec0d21810c591028378c2190044dc1738a0c4c229b047f01ef79533bfb37a34c477e2c3bb05ce2a3ed9286a40c25012281cb787488a274f06431cbb0302238ed4ef4643e3f987602d05be034c8e11497cec60c44eeedd696cfbbbdcffb1faf6881814baeb7d27a4c76e87721079103227e4534b5d18a8f4707ae07366165f13e8e4c06a82ac05060380220c9c257c289ea18bbf284fde21a87b3f3fa027757ef7a862128dadfa9d24b8d3ecc79d01dd57a7efe93ee0c730d9f7c9c7cf7c395ebefa65b944fbc20504d06e20ba6da28a4ee77168c9387410e3c8ca37068e3d9ed863bd9fd58faa2eb6e3100ac0d60132c6e354a00745dddd76e741c7d60570430a425a676d5d66caffecd998bac13fffc3fecabec673cf390e238a9d3d2829319fd14d80897541d68db0149f5b744251cde3b77ca7d5d5f3fa4fae05b060840188760000000049454e44ae426082, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voters_tbl`
--

CREATE TABLE `voters_tbl` (
  `Vid` int(11) NOT NULL,
  `VName` varchar(20) NOT NULL,
  `VAge` int(11) NOT NULL,
  `VPass` varchar(20) NOT NULL,
  `VGen` varchar(10) NOT NULL,
  `VElect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voters_tbl`
--

INSERT INTO `voters_tbl` (`Vid`, `VName`, `VAge`, `VPass`, `VGen`, `VElect`) VALUES
(1, 'P', 22, 'abc', 'Male', 1),
(2, 'q', 24, 'pqr', 'Female', 1),
(3, 's', 58, 'xyz', 'Male', 1);

-- --------------------------------------------------------

--
-- Table structure for table `votes_tbl`
--

CREATE TABLE `votes_tbl` (
  `Voteid` int(11) NOT NULL,
  `VoterId` int(11) NOT NULL,
  `ElecId` int(11) NOT NULL,
  `CandidateId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votes_tbl`
--

INSERT INTO `votes_tbl` (`Voteid`, `VoterId`, `ElecId`, `CandidateId`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voting_tb`
--

CREATE TABLE `voting_tb` (
  `Eid` int(11) NOT NULL,
  `EName` varchar(80) NOT NULL,
  `EDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_tb`
--

INSERT INTO `voting_tb` (`Eid`, `EName`, `EDate`) VALUES
(1, 'Test_Elec', '0/10/122');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_tb`
--
ALTER TABLE `candidate_tb`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `voters_tbl`
--
ALTER TABLE `voters_tbl`
  ADD PRIMARY KEY (`Vid`);

--
-- Indexes for table `votes_tbl`
--
ALTER TABLE `votes_tbl`
  ADD PRIMARY KEY (`Voteid`);

--
-- Indexes for table `voting_tb`
--
ALTER TABLE `voting_tb`
  ADD PRIMARY KEY (`Eid`,`EName`,`EDate`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
