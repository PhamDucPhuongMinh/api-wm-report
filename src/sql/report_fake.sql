-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2023 at 10:33 AM
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
-- Database: `report_fake`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `CreateAt` bigint(255) NOT NULL,
  `CreateBy` int(255) NOT NULL,
  `UpdateAt` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`Id`, `Image`, `Url`, `CreateAt`, `CreateBy`, `UpdateAt`) VALUES
(1, 'https://shop.login.net.vn/assets/images/banthe_zaloapp.jpg', 'https://zalo.me/s/4088324249158205577/?utm_source=WEB_SHOP&utm_campaign=WEB_SHOP_2', 1689216707152, 2, 0),
(13, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCbIKG_cfFJt7HKL47Kx05R9UnCeSpwQZvwA&usqp=CAU', 'https://facebook.com\n', 1689236905000, 2, 1689838846745);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `Id` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` longtext NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`Id`, `Question`, `Answer`, `Category`) VALUES
(15, 'Đăng nhập sử dụng mạng', '<p>Bạn vui lòng thực hiện các bước sau:</p><ol><li>Kết nối mạng</li><li>Click vào trang đăng nhập mạng</li><li>Nhập mã thẻ</li></ol>', '0961986817300271C7C09C55676B77DE'),
(16, 'Mất kết nối mạng', '<p>Bạn vui lòng thử các cách sau:</p><ol><li>Cách số 1 bla bla bla bla</li><li>Cách thứ hai là ahihiahihiahihi</li><li><strong>Cách</strong> ba là hãy wow wow woww</li></ol>', '0961986817300271C7C09C55676B77DE'),
(17, 'Thanh toán Momo', '<h3><strong>Thông tin ứng dụng:</strong></h3><ul><li>Nền tảng:&nbsp;<a href=\"https://www.thegioididong.com/game-app/ios\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(47, 128, 237);\">iOS</a>&nbsp;9.0 trở lên,&nbsp;<a href=\"https://www.thegioididong.com/game-app/android\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(47, 128, 237);\">Android</a>&nbsp;4.1 trở lên</li><li>Dung lượng: iOS ~190MB, Android ~94MB</li><li>Loại ứng dụng:&nbsp;<a href=\"https://www.thegioididong.com/game-app/app-android-kinh-doanh-tai-chinh\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(47, 128, 237);\">kinh doanh tài chính</a></li><li>Nhà phát hành:&nbsp;<a href=\"https://momo.vn/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(47, 128, 237);\">M_Service JSC</a>&nbsp;</li></ul><p><a href=\"https://www.thegioididong.com/may-doi-tra/phu-kien?itm_source=gameapp_news&amp;itm_medium=banner&amp;itm_campaign=convert_traffic&amp;itm_content=spdsd_tong_hop_phu_kien\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(40, 138, 214);\"><img class=\"w-100\" src=\"https://cdn.tgdd.vn//GameApp/1458921//spdsdphukientonghop-800x200.png\" alt=\"Săn ngay phụ kiện công nghệ thanh lý giảm 50%++ chỉ có tại Thế Giới Di Động\" height=\"200\" width=\"800\"></a></p><p class=\"ql-align-center\"><a href=\"https://www.thegioididong.com/may-doi-tra/phu-kien?itm_source=gameapp_news&amp;itm_medium=banner&amp;itm_campaign=convert_traffic&amp;itm_content=spdsd_tong_hop_phu_kien\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(40, 138, 214);\"><strong>Săn ngay phụ kiện công nghệ thanh lý giảm 50%++ chỉ có tại Thế Giới Di Động</strong></a></p><h3><strong>4 tính năng chính của ứng dụng Ví MoMo: Nạp Tiền &amp; Thanh Toán</strong></h3><h4><strong>Hoàn tiền khi thanh toán</strong></h4><p>Ứng dụng MoMo thu hút nhiều người sử dụng nhờ vào tính năng hoàn tiền khi thanh toán, với MoMo mỗi lần thanh toán sẽ được chiết khấu một phần tiền tuỳ vào chương trình. Số tiền đó sẽ được đưa vào “Heo” để tích luỹ và có thể rút khi cần.</p>', '5AF6F804B298E977880FD07F29448F19');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_category`
--

CREATE TABLE `faqs_category` (
  `Id` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs_category`
--

INSERT INTO `faqs_category` (`Id`, `Title`) VALUES
('0961986817300271C7C09C55676B77DE', 'Kết nối mạng'),
('5AF6F804B298E977880FD07F29448F19', 'Thanh toán online');

-- --------------------------------------------------------

--
-- Table structure for table `manual`
--

CREATE TABLE `manual` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Text` longtext NOT NULL,
  `Images` longtext NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manual`
--

INSERT INTO `manual` (`Id`, `Title`, `Text`, `Images`, `Category`) VALUES
(1, 'Huong dan so 1', '[\"text 1\",\"text 2\",\"text 3\"]', '[\"https://noithatbinhminh.com.vn/wp-content/uploads/2022/08/anh-dep-40.jpg\",\"https://luv.vn/wp-content/uploads/2021/02/Hinh-anh-tinh-yeu-buon-dep-va-chat-nhat-44.jpg\",\"https://timanhdep.com/wp-content/uploads/2022/07/hinh-anh-con-gai-buon-khoc-co-don-01.jpg\"]', 'category01'),
(2, 'Huong dan so 2', '[\"text 4\",\"text 5\",\"text 6\"]', '[\"https://inkythuatso.com/uploads/thumbnails/800/2022/06/hinh-nen-hoat-hinh-3d-cho-dien-thoai-1-inkythuatso-02-13-02-07.jpg\",\"https://toanthaydinh.com/wp-content/uploads/2020/04/hinh-nen-hoat-hinh-5.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfrsGZJHCeQbkh6b6Aal4wOZ5ReB1VxeEHSVCXoCqj12I8J93vmPvQlHt0JciBv-u-Hq4&usqp=CAU\"]', 'category02'),
(3, 'Huong dan so 3', '[\"text 7\",\"text 8\",\"text 9\"]', '[\"https://noithatbinhminh.com.vn/wp-content/uploads/2022/08/anh-dep-44.jpg\",\"https://webqi.s3-ap-southeast-1.amazonaws.com/UploadImages/haiphong/thmyduc1/mienthmd/2022_5/hinh-nen-dep_185202221.jpg?wu003d600\",\"https://i0.wp.com/thatnhucuocsong.com.vn/wp-content/uploads/2022/04/Hinh-hoa-Cuc-trang-nen-xanh-cuc-thu-hut.jpg?sslu003d1\"]', 'category01');

-- --------------------------------------------------------

--
-- Table structure for table `manual_category`
--

CREATE TABLE `manual_category` (
  `Id` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manual_category`
--

INSERT INTO `manual_category` (`Id`, `Title`) VALUES
('category01', 'Danh mục số 1'),
('category02', 'Danh mục số 2');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `Id` int(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Highlight` varchar(255) NOT NULL,
  `Thumbnail` varchar(255) NOT NULL,
  `Content` longtext NOT NULL,
  `CreateAt` bigint(255) NOT NULL,
  `CreateBy` int(255) DEFAULT NULL,
  `UpdateAt` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`Id`, `Title`, `Highlight`, `Thumbnail`, `Content`, `CreateAt`, `CreateBy`, `UpdateAt`) VALUES
(1, 'Nếu đổi sang điện thoại mới, người dùng có thể hủy liên kết tài khoản VNeID tại máy cũ theo hướng dẫn sau', 'Tài khoản định danh điện tử trên VNeID chỉ có thể đăng nhập trên một thiết bị duy nhất tại một thời điểm. Vì vậy, mọi người không thể sử dụng tài khoản định danh điện tử trên nhiều thiết bị khác nhau cùng thời điểm.', 'https://genk.mediacdn.vn/zoom/700_430/139269124445442048/2023/6/23/avatar1687506171696-1687506171924994372280.jpg', '<p><strong>Có thể sử dụng tài khoản định danh điện tử trên nhiều thiết bị cùng lúc không?</strong></p><p>Theo quy định, tài khoản định danh điện tử của công dân chỉ có thể đăng nhập trên một thiết bị duy nhất tại một thời điểm. Vì vậy, công dân không thể sử dụng tài khoản định danh điện tử trên nhiều thiết bị khác nhau cùng thời điểm.</p><p><strong>Hướng dẫn cách kiểm tra các thiết bị từng đăng nhập VNeID và hủy thiết bị không muốn</strong></p><p><strong>Bước 1:</strong></p><p>Trước hết chúng ta đăng nhập vào ứng dụng VNeID bằng tài khoản của mình. Tiếp đến, trong giao diện chính của ứng dụng mọi người sẽ nhấn chọn vào<strong>&nbsp;mục Cá nhân</strong>&nbsp;ở bên dưới cùng như hình dưới đây.</p><p><strong>Bước 2:</strong></p><p>Chuyển sang giao diện mới với các mục quản lý và thiết lập cho tài khoản VNeID. Mọi người sẽ nhấn vào mục Quản lý thiết bị để xem những thiết bị đã từng đăng nhập vào ứng dụng.</p><p><strong>Bước 3:</strong></p><p>Kết quả mọi người sẽ nhìn thấy tất cả những thiết bị đã từng đăng nhập vào ứng dụng VNeID với cùng 1 tài khoản. Khi đó, mọi người có thể kiểm tra xem những thiết bị đăng nhập tài khoản VNeID nào đáng ngờ, hay không biết thiết bị đó của ai.</p><p>Hoặc với những ai đổi máy mới thì cũng có thể hủy liên kết tài khoản với thiết bị cũ, bạn nhấn vào Hủy liên kết. Lúc này, ứng dụng VNeID sẽ hỏi có chắc chắn muốn hủy liên kết với thiết bị không, nếu muốn chỉ cần ấn vào nút Xác nhận rồi kết thúc.</p><p><br></p><p>Theo các điều 8, 9, 12 Nghị định 59, tài khoản định danh điện tử của cá nhân đều có các thông tin cơ bản quan trọng để xác định danh tính. Trong đó, tài khoản định danh điện tử cá nhân được chia thành 2 mức độ với thông tin và giá trị sử dụng không giống nhau.</p><p><strong>Thông tin tài khoản định danh điện tử cá nhân mức độ 1</strong></p><p>Tài khoản định danh điện tử cá nhân mức độ 1 gồm các thông tin: Số định danh cá nhân; họ tên; ngày, tháng, năm sinh; giới tính. Trường hợp là người nước ngoài thì có thêm thông tin về số, ký hiệu, ngày, tháng, năm, loại giấy tờ và nơi cấp hộ chiếu hoặc giấy tờ có giá trị đi lại quốc tế.</p><p><strong>Thông tin tài khoản định danh điện tử cá nhân mức độ 2</strong></p><p>Tài khoản định danh điện tử cá nhân mức độ 2 có đầy đủ thông tin cá nhân như cấp độ 1, ngoài ra còn có thêm thông tin sinh trắc học là ảnh chân dung, vân tay, GPLX, đăng ký xe, thẻ BHYT…</p><p>Để đảm bảo an toàn cho tài khoản định danh điện tử, người dân cần chú ý điều gì?</p><p>Để đảm bảo an toàn cho tài khoản định danh điện tử của mình công dân cần chú ý:</p><p>- Không chia sẻ thông tin tài khoản cho người khác.</p><p>- Đăng xuất tài khoản khi cho người khác mượn thiết bị.</p><p>- Luôn cập nhật các thông tin về ứng dụng để nắm được các tin tức – thông báo mới nhất về các hướng dẫn an toàn thông tin.</p>', 1689058307056, 2, 1689309393430),
(2, 'Nửa nhiệm kỳ nhìn lại: Một Việt Nam bản lĩnh, chân thành, nhân ái, thủy chung [Edited]', 'Trước những biến chuyển nhanh và khó lường, đối ngoại Việt Nam đã uyển chuyển, linh hoạt, sáng tạo, cơ động trong sách lược để thích ứng, giữ vững tổng thể cục diện đối ngoại thuận lợi cho phát triển đất nước, xây dựng Tổ quốc.', 'https://banthe.app/files/1c43b2c3fbeb2f.jpeg', '<p>Từ sau Đại hội Đảng XIII đến nay, thế giới trải qua những biến động lớn, chưa có tiền lệ, đặt ra các thách thức phức tạp nhất đối với hòa bình, ổn định và phát triển kể từ sau Chiến tranh lạnh.Phát biểu bế mạc tại Hội nghị Trung ương giữa nhiệm kỳ (5/2023),&nbsp;<a href=\"https://vietnamnet.vn/ho-so/ong-nguyen-phu-trong-C000207.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">Tổng Bí thư Nguyễn Phú Trọng</a>&nbsp;nhấn mạnh: “Hoạt động đối ngoại và hội nhập quốc tế tiếp tục được mở rộng và đạt nhiều kết quả quan trọng; tiếp tục củng cố, nâng cao vị thế và uy tín của nước ta trên trường quốc tế\".&nbsp;<strong>Nửa nhiệm kỳ nhìn lại: Vận dụng sáng tạo \"ngoại giao cây tre Việt Nam\"</strong>Đánh giá về công tác đối ngoại từ đầu nhiệm kỳ đến nay, Bộ trưởng Ngoại giao Bùi Thanh Sơn cho biết, kết quả bao trùm là củng cố vững chắc hơn môi trường hòa bình, ổn định; bảo vệ độc lập, chủ quyền và toàn vẹn lãnh thổ; huy động được nhiều nguồn lực bên ngoài phục vụ phòng, chống dịch Covid-19, phục hồi và phát triển KTXH; tiếp tục nâng cao vị thế, uy tín đất nước.&nbsp;Đường lối đối ngoại Đại hội XIII được cụ thể hóa, triển khai đồng bộ và bài bản. Bộ Chính trị, Ban Bí thư đã ban hành Nghị quyết, Chỉ thị nhằm nâng cao hiệu quả đối ngoại trong tình hình mới.Lần đầu tiên,&nbsp;<a href=\"https://vietnamnet.vn/tong-bi-thu-chu-tri-hoi-nghi-doi-ngoai-toan-quoc-800959.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">Hội nghị đối ngoại toàn quốc</a>&nbsp;được tổ chức (12/2021) đánh giá toàn diện công tác đối ngoại trong 35 năm đổi mới, quán triệt đường lối đối ngoại Đại hội XIII đến toàn hệ thống chính trị và toàn dân.<em><img class=\"w-100\" src=\"https://static-images.vnncdn.net/files/publish/2023/7/11/main202211010034000041957778707-154-1232.jpg\">Chuyến thăm Trung Quốc của Tổng Bí thư Nguyễn Phú Trọng tháng 10/2022 là một trong những sự kiện đặc biệt quan trọng với hai nước. Ảnh: TTXVN</em>Việt Nam tiếp tục mở rộng, làm sâu sắc hơn quan hệ với đối tác, trọng tâm là các nước láng giềng, đối tác quan trọng và bạn bè truyền thống. Từ đầu nhiệm kỳ đến nay, có khoảng 170 hoạt động đối ngoại cấp cao, trong đó hơn 30 chuyến thăm của lãnh đạo chủ chốt, hơn 80 điện đàm/hội đàm trực tuyến; tham dự gần 30 hội nghị quốc tế trực tuyến.Việt Nam đã đón hơn 30 đoàn lãnh đạo cấp cao các nước và nhiều tổ chức quốc tế. Thiết lập thêm quan hệ ngoại giao với 3 nước, nâng tổng số quốc gia Việt Nam có quan hệ ngoại giao lên 192 nước.Vai trò, vị thế và uy tín của Việt Nam với tư cách là thành viên tích cực, tin cậy, có trách nhiệm tiếp tục được củng cố, nâng cao. Việt Nam đã đảm nhiệm thành công Ủy viên không thường trực Hội đồng Bảo an LHQ nhiệm kỳ 2020-2021, Phó Chủ tịch Đại hội đồng LHQ;&nbsp;<a href=\"https://vietnamnet.vn/viet-nam-trung-cu-hoi-dong-nhan-quyen-lien-hop-quoc-2069140.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">trúng cử Hội đồng Nhân quyền</a>&nbsp;nhiệm kỳ 2023-2025...Các nước đánh giá cao lực lượng&nbsp;<a href=\"https://vietnamnet.vn/gin-giu-hoa-binh-tag13204429837127952917.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">gìn giữ hòa bình</a>&nbsp;của Việt Nam ở Châu Phi và đội tham gia tìm kiếm, cứu nạn ở Thổ Nhĩ Kỳ. Trên cơ sở kiên định độc lập, tự chủ, bảo đảm cao nhất lợi ích quốc gia-dân tộc, tôn trọng nguyên tắc cơ bản của luật pháp quốc tế, nước ta đã xử lý đúng đắn nhiều vấn đề quốc tế phức tạp tại các cơ chế đa phương quan trọng...Ngoại giao kinh tế đóng góp trực tiếp và quan trọng vào phòng chống dịch Covid-19 và phục hồi, phát triển KTXH. Ngoại giao kinh tế đã nắm bắt cơ hội các nước mở cửa trở lại, xu hướng chuyển dịch đầu tư, chuyển đổi số, chuyển đổi xanh, các hiệp định thương mại tự do đã ký để mở rộng thị trường, thu hút đầu tư nước ngoài, du lịch, nối lại xuất khẩu lao động...Năm 2022, xuất nhập khẩu lần đầu tiên vượt mốc 700 tỷ USD, đưa Việt Nam vào nhóm 20 nước có quy mô thương mại lớn nhất thế giới; thu hút hơn 22 tỷ USD vốn FDI...&nbsp;<em><img class=\"w-100\" src=\"https://static-images.vnncdn.net/files/publish/2023/7/11/adfbde56208ef0d0a99f-1233.jpg\">Chiến sĩ gìn giữ hòa bình Việt Nam thuộc BV dã chiến 2.4 vừa trở về sau nhiệm kỳ thành công tại Nam Sudan. Ảnh: Cục GGHB Việt Nam</em>Bộ trưởng&nbsp;<a href=\"https://vietnamnet.vn/ho-so/ong-bui-thanh-son-C000428.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">Bùi Thanh Sơn</a>&nbsp;cho biết, đối ngoại còn góp phần bảo vệ Tổ quốc từ sớm, từ xa, độc lập, chủ quyền và toàn vẹn lãnh thổ. Xử lý kịp thời, đúng đắn với các vụ việc xâm phạm chủ quyền biển đảo, thúc đẩy đàm phán phân định biển với những nước liên quan. Kiên quyết đấu tranh, xử lý tốt vấn đề dân chủ, nhân quyền, tôn giáo, góp phần giữ vững ổn định, an ninh, trật tự, an toàn xã hội.&nbsp;Thông tin đối ngoại và ngoại giao văn hóa tiếp tục quảng bá mạnh mẽ hình ảnh đất nước, văn hóa, con người Việt Nam ra thế giới. Công tác người Việt Nam ở nước ngoài đã tập trung vận động, thu hút nguồn lực và kết nối kiều bào với quê hương; chăm lo, hỗ trợ kiều bào ta ổn định và phát triển ở sở tại.Công tác&nbsp;bảo</p><p>hộ c</p><p>ông </p><p>dân</p><p><br></p><p><br></p><p>&nbsp;được đẩy mạnh, bảo vệ quyền, lợi ích hợp pháp và bảo đảm an toàn cho công dân ta ở nước ngoài. Cụ thể, sơ tán 6.000 công dân tại Ukraine; đưa về nước hơn 1.644 trên 6 chuyến bay, đưa về nước 2.000 người bị dụ dỗ, lừa đi làm việc ở Campuchia, Philippines; bảo hộ, hỗ trợ thủ tục về nước cho trên 1.800 ngư dân bị các nước bắt giữ, xử lý.Bộ trưởng Ngoại giao lần nữa khẳng định, công tác đối ngoại từ sau Đại hội XIII đến nay đã được triển khai chủ động, đồng bộ, linh hoạt, sáng tạo, hiệu quả, phát huy mạnh mẽ vai trò tiên phong của đối ngoại; phối hợp chặt chẽ các trụ cột đối ngoại, giữa đối ngoại với quốc phòng, an ninh và các lĩnh vực khác, giữa đối ngoại cấp cao và đối ngoại các cấp, các ngành, giữa song phương và đa phương....</p><h2 class=\"ql-align-center\">Xây</h2><h2 class=\"ql-align-center\">dựn</h2><h2 class=\"ql-align-center\">g <strong>nền ngoại giao Việt Nam toàn diện, hiện đại&nbsp;</strong></h2><p><br></p><p><br></p><p>Tổng Bí thư Nguyễn Phú Trọng trong Hội nghị Trung ương giữa nhiệm kỳ cũng đã phân tích: \"nâng cao nhận thức, thống nhất hành động trong việc kế thừa, phát huy sức mạnh của trường phái đối ngoại và ngoại giao rất đặc sắc và độc đáo của thời đại Hồ Chí Minh, mang đậm bản sắc \"câ</p><p>y</p><p><a href=\"https://vietnamnet.vn/truong-phai-doi-ngoai-cay-tre-viet-nam-824817.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\"> tre Việt Nam</a></p><p>\", \"gốc vững, thân chắc, cành uyển chuyển\"; thấm đượm tâm hồn, cốt cách và khí phách của dân tộc Việt Nam: Mềm mại, khôn khéo, nhưng rất kiên cường\".&nbsp;<img class=\"w-100\" src=\"https://static-images.vnncdn.net/files/publish/2023/7/11/btng-tra-loi-phong-van-1234.jpg\"><em>Bộ trưởng Ngoại giao Bùi Thanh Sơn</em>Bộ trưởng Bùi Thanh Sơn chia sẻ, trước những biến chuyển nhanh và khó lường của tình hình quốc tế, đối ngoại đã uyển chuyển, linh hoạt, sáng tạo và cơ động trong sách lược để thích ứng theo phương châm “dĩ bất biến, ứng vạn biến”, “biết mình, biết người”, “biết thời, biết thế”, “biết cương, biết nhu”, “biết tiến, biết thoái”. Nhờ đó, Việt Nam vừa giữ vững được tổng thể cục diện&nbsp;<a href=\"https://vietnamnet.vn/doi-ngoai-tag13182423559357553361.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">đối ngoại</a>&nbsp;thuận lợi cho phát triển đất nước và xây dựng Tổ quốc, vừa khẳng định một Việt Nam bản lĩnh, chân thành, nhân ái, thủy chung, tin cậy và có trách nhiệm.Tình hình quốc tế trong thời gian tới tiếp tục biến động phức tạp, có cả mặt thuận và không thuận, cơ hội đan xen với thách thức, đặt ra những yêu cầu nặng nề, phức tạp hơn cho đối ngoại.Thấm nhuần bản sắc \"<a href=\"https://vietnamnet.vn/tong-bi-thu-doi-ngoai-viet-nam-goc-thi-vung-chac-canh-thi-uyen-chuyen-801044.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">ngoại giao cây tre Việt Nam</a>” đối ngoại tiếp tục phát huy mạnh mẽ hơn nữa vai trò tiên phong trong việc tạo lập và giữ vững môi trường hòa bình, ổn định, bảo vệ Tổ quốc từ sớm, từ xa; huy động nguồn lực bên ngoài cho phát triển KTXH, nâng cao vị thế, uy tín quốc tế của đất nước.Bộ trưởng Ngoại giao cho biết, thời gian tới trọng tâm là:&nbsp;Tăng cường nghiên cứu, dự báo, tham mưu chiến lược về đối ngoại; đẩy mạnh quan hệ với các đối tác đi vào chiều sâu, thực chất và bền vững hơn. Phát huy hơn nữa vai trò, đảm nhận tốt trọng trách tại diễn đàn đa phương. Triển khai đồng bộ, sáng tạo và hiệu quả ngoại giao kinh tế để góp phần thúc đẩy phục hồi, phát triển KTXH.Giải quyết tốt vấn đề biên giới bằng biện pháp hòa bình, tôn trọng độc lập, chủ quyền và phù hợp với luật pháp quốc tế. Đổi mới, đẩy mạnh ngoại giao văn hóa, thông tin đối ngoại; xây dựng, triển khai chính sách tổng thể, lâu dài về phát triển bền vững cộng đồng người Việt Nam ở nước ngoài, tích cực bảo hộ công dân.\"Điều cuối cùng rất quan trọng là đẩy mạnh xây dựng nền ngoại giao Việt Nam toàn diện, hiện đại với ba trụ cột là đối ngoại Đảng, ngoại giao Nhà nước và đối ngoại nhân dân. Tăng cường xây dựng, hoàn thiện thể chế, chính sách về đối ngoại tương xứng với thế và lực mới của đất nước.Không ngừng đẩy mạnh xây dựng, chỉnh đốn Đảng; nâng cao chất lượng đào tạo, bồi dưỡng cán bộ đối ngoại các cấp về bản lĩnh chính trị, đạo đức, năng lực, trình độ đáp ứng yêu cầu nhiệm vụ đối ngoại trong tình hình mới\", Bộ trưởng chia sẻ.&nbsp;</p>', 1689125512816, 2, 1689147621402),
(3, 'Ông Trump hứng thất bại pháp lý bất ngờ', 'Cựu Tổng thống Donald Trump vừa bất ngờ hứng chịu thất bại pháp lý, khi Bộ Tư pháp Mỹ đột ngột thay đổi quan điểm về khả năng miễn trừ cho ông trong vụ kiện phỉ báng của cựu nhà báo E. Jean Carroll.\n', 'https://banthe.app/files/1c55f298088112.jpeg', '<p>Trong một bức thư gửi cho các luật sư của&nbsp;<a href=\"https://vietnamnet.vn/donald-trump-tag15521954741097180799.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">ông Trump</a>&nbsp;và bà Carroll hôm 11/7, Bộ Tư pháp Mỹ thông báo, cơ quan này hiện không còn tin cựu Tổng thống “đã hành động trong phạm vi chức trách” hồi còn lãnh đạo chính phủ vào tháng 6/2019, khi ông phủ nhận cưỡng hiếp bà Carroll trong phòng thay đồ của một trung tâm thương mại ở Manhattan, New York giữa những năm 1990.</p><p><em><img class=\"w-100\" src=\"https://static-images.vnncdn.net/files/publish/2023/7/12/donald-trump-422.jpg\">Cựu Tổng thống Mỹ Donald Trump. Ảnh: AP</em></p><p>Bộ Tư Pháp Mỹ cuối nhiệm kỳ tổng thống của ông Trump từng đưa ra kết luận ngược lại. Một số nhà quan sát tỏ ra ngạc nhiên khi chính quyền của đương kim Tổng thống&nbsp;<a href=\"https://vietnamnet.vn/joe-biden-tag3404374133223984633.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">Joe Biden</a>&nbsp;mãi tới gần đây vẫn giữ quan điểm này, vì điều đó đồng nghĩa Bộ Tư pháp sẽ trở thành bị đơn và vụ kiện của bà Carroll chắc chắn bị bác bỏ do Chính phủ Mỹ không thể bị kiện tội phỉ báng.</p><p>Bình luận về sự thay đổi quan điểm của Bộ Tư pháp, Steven Cheung, phát ngôn viên của ông Trump cáo buộc chính quyền Biden đang \"vũ khí hóa hệ thống tư pháp về mặt chính trị\" nhằm chống lại cựu lãnh đạo Nhà Trắng. Ngược lại, luật sư Roberta Kaplan đại diện cho bà Carroll tin động thái sẽ loại bỏ một trở ngại tiềm ẩn với phiên xét xử dự kiến diễn ra tại tòa án liên bang Manhattan vào ngày 15/1/2024.</p><p>Bà Carroll lần đầu tiên kiện ông Trump tội phỉ báng là vào năm 2019, sau khi ông đáp trả cáo buộc hiếp dâm của bà bằng phát biểu bản thân không quen biết cựu phụ trách chuyên mục của tạp chí Elle và rằng, bà không phải là \"mẫu người\" ông yêu thích. Ông Trump cũng tố ngược bà Carroll nói dối để tăng doanh số bán ra cho cuốn hồi ký của mình.</p><p>Bà Carroll gửi đơn kiện lần 2 vào tháng 10/2022, dẫn đến phán quyết của bồi thẩm đoàn ngày 9/5/2023 khẳng định ông Trump đã lạm dụng tình dục và phỉ báng, nhưng không cưỡng hiếp cựu nữ nhà báo trong sự cố cách đây gần 30 năm. Tòa yêu cầu ông Trump&nbsp;<a href=\"https://vietnamnet.vn/donald-trump-bi-yeu-cau-boi-thuong-5-trieu-usd-vi-lam-dung-tinh-duc-va-phi-bang-2141380.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(45, 103, 173);\">bồi thường 5 triệu USD</a>&nbsp;cho bà Carroll.</p><p>Tuy nhiên, bà Carroll đã sửa đổi đơn kiện, yêu cầu khoản bồi thường thiệt hại bổ sung lên tới 10 triệu USD.</p>', 1689145573558, 2, 1689838917312);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Email`, `Password`, `Phone`) VALUES
(1, 'admin', 'admin@wi-mesh.vn', 'admin', '0987654321'),
(2, 'Phạm Đức Phương Minh', 'minhpdp@wi-mesh.vn', 'Minh1234', '0968969392');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CreateBy` (`CreateBy`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Category` (`Category`);

--
-- Indexes for table `faqs_category`
--
ALTER TABLE `faqs_category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `manual`
--
ALTER TABLE `manual`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Category` (`Category`);

--
-- Indexes for table `manual_category`
--
ALTER TABLE `manual_category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CreateBy` (`CreateBy`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `manual`
--
ALTER TABLE `manual`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`CreateBy`) REFERENCES `users` (`Id`);

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_ibfk_1` FOREIGN KEY (`Category`) REFERENCES `faqs_category` (`Id`);

--
-- Constraints for table `manual`
--
ALTER TABLE `manual`
  ADD CONSTRAINT `manual_ibfk_1` FOREIGN KEY (`Category`) REFERENCES `manual_category` (`Id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`CreateBy`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
