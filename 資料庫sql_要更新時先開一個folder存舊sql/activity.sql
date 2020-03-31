-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `tandem`
--

-- --------------------------------------------------------

--
-- 資料表結構 `activity`
--

CREATE TABLE `activity` (
  `Id` int(10) NOT NULL COMMENT '流水號',
  `aId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活動編號',
  `MbId` char(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '會員ID',
  `aName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活動名稱',
  `aDate` date NOT NULL COMMENT '活動日期',
  `aLocation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活動地點',
  `aContent` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活動內容',
  `aKV` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活動文宣',
  `aCategoryId` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '類別編號',
  `aBookingTime` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '報名起迄時間',
  `aLimit` char(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人數限制',
  `aBudget` int(10) NOT NULL COMMENT '預算',
  `aCostTime` int(4) NOT NULL COMMENT '預計用時(分鐘)',
  `aLike` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '按讚狀態',
  `aFollowing` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '追蹤狀態',
  `aBook` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '報名狀態',
  `aImg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活動文宣',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `activity`
--

INSERT INTO `activity` (`Id`, `aId`, `MbId`, `aName`, `aDate`, `aLocation`, `aContent`, `aKV`, `aCategoryId`, `aBookingTime`, `aLimit`, `aBudget`, `aCostTime`, `aLike`, `aFollowing`, `aBook`, `aImg`, `created_at`, `update_at`) VALUES
(1, '1', '7', '程式創客實作專題', '2020-01-03', '臺北市中正區羅斯福路三段244巷2號B1', '108年開始實施十二年國教科技領域課程包含資訊科技與生活科技兩門科目。放眼國際，諸多先進國家亦設有科技領域，強調(STEM教育)科學、科技、工程、數學及設計等學科知識的整合運用，藉由強化術科與學科間知', 'ACT0001.jpg', 'ACG01', '2019/12/25-2019/12/31', '50', 100, 2, '[3, 8, 17, 22]', '[3, 8, 17, 22]', '[3, 8, 17, 22]', '[]', '2020-01-01 14:07:00', '2020-01-01 14:07:00'),
(2, '2', '15', '教育下一波：程式設計開啟孩子的未來', '2020-01-10', '臺北市中正區羅斯福路三段244巷2號B1', '美國非營利組織Code.org發起「一小時學寫程式」（Hour of Code）活動，利用動畫《星際大戰》、《冰雪奇緣》、遊戲《當個創世神》，吸引4歲到104歲的人上線學寫程式。這項全球超過兩億人參與', 'ACT0002.jpg', 'ACG03', '2020/01/01-2020/01/10', '20', 450, 3, '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[]', '2020-01-02 14:07:00', '2020-03-31 19:57:11'),
(3, '3', '9', '第七十四次ITSA 線上程式競賽', '2020-01-15', '臺北市中正區羅斯福路三段244巷2號B1', '欲申請ITSA&PTC線上競賽參賽證明的同學，可使用e-tutor帳號登入系統查詢個人參賽紀錄，並下載參賽證明檔案(PDF)。', 'ACT0003.jpg', 'ACG02', '2020/01/10-2020/01/13', '30', 400, 2, '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[]', '2020-01-03 14:07:00', '2020-01-03 14:07:00'),
(4, '4', '11', '學程式者，能成麒麟之才？', '2020-01-22', '臺北市中正區羅斯福路三段244巷2號B1', '許多人認為學程式，未來便可找到好工作。對即將投入職場的大人來說，這理由或說得通。但對孩子而言，這不該是理由。回想兩千年科技泡沫化，軟體業也曾有寒冬。十年河東，十年河西。誰能保證 10 年、20 年後，', 'ACT0004.jpg', 'ACG01', '2020/01/05-2020/01/20', '40', 350, 3, '[8, 9, 14]', '[8, 9, 14]', '[8, 9, 14]', '[]', '2020-01-04 14:07:00', '2020-03-31 19:57:27'),
(5, '5', '2', '你會說程式語言嗎？', '2020-01-31', '臺北市中正區羅斯福路三段244巷2號B1', '學寫程式，背後的教育思考，影響如此全面。這個嶄新的科技領域，讓《親子天下》編輯部以文組女性為主的工作團隊，一開始十分擔心。\n去年底，所有參與這個專案的記者、美編、研究員和編輯都加入了一個「邁向未來」的', 'ACT0005.jpg', 'ACG01', '2020/01/10-2020/01/28', '70', 200, 2, '[3, 8, 17, 22]', '[3, 8, 17, 22]', '[3, 8, 17, 22]', '[]', '2020-01-05 14:07:00', '2020-01-05 14:07:00'),
(6, '6', '4', '大學程式設計教學交流會－Web程式教學工作坊', '2020-02-07', '臺北市中正區羅斯福路三段244巷2號B1', '現今大學生是典型的「網路原住民」，在其成長環境具備完善的網際網路基礎架構，使用電腦或手機的Web瀏覽器透過網際網路獲取資訊已成為日常生活的一部份。「推動大學程式設計教學計畫」中分項三團隊以Web相關應', 'ACT0006.jpg', 'ACG04', '2020/01/25-2020/02/05', '30', 400, 2, '[11, 16, 21, 26]', '[11, 16, 21, 26]', '[11, 16, 21, 26]', '[]', '2020-01-06 14:07:00', '2020-03-31 19:57:14'),
(7, '7', '17', 'T108016 國立勤益科技大學 全國高中職機器人創客程式設計活動', '2020-02-12', '臺北市中正區羅斯福路三段244巷2號B1', 'T108016 國立勤益科技大學 全國高中職機器人創客程式設計活動', 'ACT0007.jpg', 'ACG02', '2020/02/01-2020/02/12', '10', 300, 3, '[8, 9, 14]', '[8, 9, 14]', '[8, 9, 14]', '[]', '2020-01-07 14:07:00', '2020-03-31 19:57:17'),
(8, '8', '10', 'MATLAB基礎程式設計(II)研討會', '2020-02-16', '臺北市中正區羅斯福路三段244巷2號B1', '大綱：MATLAB是一高階科技運算語言、可分析資料與發展演算法和應用之互動式環境。MATLAB能夠協助解決科學運算的問題,比起傳統的程式語言，如..C、C++、Fortran要快的多。此課程專門為 M', 'ACT0008.jpg', 'ACG01', '2020/01/15-2020/02/15', '20', 550, 3, '[1, 2, 3, 4, 5, 6, 8, 9, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 30]', '[1, 2, 3, 4, 5, 6, 8, 9, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 30]', '[1, 2, 3, 4, 5, 6, 8, 9, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 30]', '[]', '2020-01-08 14:07:00', '2020-01-08 14:07:00'),
(9, '9', '9', '2020台灣APH Only．W集團徵才博覽會', '2020-02-25', '臺北市中正區羅斯福路三段244巷2號B1', '活動內容：APH ONLY', 'ACT0009.jpg', 'ACG04', '2020/02/13-2020/02/14', '50', 350, 3, '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[]', '2020-01-09 14:07:00', '2020-03-31 19:57:22'),
(10, '10', '4', '程式設計入課綱，教育轉機或危機？', '2020-02-28', '臺北市中正區羅斯福路三段244巷2號B1', '成大資工系教授蘇文鈺，推動「兒童與少年程式設計教學計劃」，親自帶著大學生，到嘉義東石、台南左鎮免費教當地孩子寫程式，希望孩子能接軌工程師賴以維生的C語言，具備開發app的能力，可以留在家鄉自行創業。', 'ACT0010.jpg', 'ACG02', '2020/01/01-2020/02/25', '60', 200, 3, '[1, 4, 23, 28]', '[1, 4, 23, 28]', '[1, 4, 23, 28]', '[]', '2020-01-10 14:07:00', '2020-01-10 14:07:00'),
(11, '11', '18', 'A3!ONLY《滿開大冒險》', '2020-03-05', '臺北市中正區羅斯福路三段244巷2號B1', '2020-02-29\n18:03 報名開始日期變更為 2020-03-01\n18:03 報名結束日期變更為 2020-03-21\n18:03 一般入場費用由 未定 變更為 150\n18:03 社團入場', 'ACT0011.jpg', 'ACG01', '2020/02/20-2020/02/21', '30', 400, 3, '[2, 5]', '[2, 5]', '[2, 5]', '[]', '2020-01-11 14:07:00', '2020-03-29 01:31:00'),
(12, '12', '27', '生生寫程式- 千人程式設計活動', '2020-03-12', '臺北市中正區羅斯福路三段244巷2號B1', '親子天下 創新100 票選活動:『用程式翻轉城市』 ( 票選活動 到 5/30 截止 )\n在夥伴的支持下， 我們今年報名參加親子天下創新100的 徵件活動，目前已經入選， 接下來就是票選， 希望你們支', 'ACT0012.jpg', 'ACG01', '2020/02/21-2020/02/27', '50', 550, 4, '[3, 6, 11, 25]', '[3, 6, 11, 25]', '[3, 6, 11, 25]', '[]', '2020-01-12 14:07:00', '2020-01-12 14:07:00'),
(13, '13', '6', '免費的程式設計活動 ：Hour of Code 一小時學電腦程式', '2020-03-16', '臺北市中正區羅斯福路三段244巷2號B1', '關於 Hour of Code\nHour of Code 一小時學寫電腦程式，不論你有沒有寫過程式，任何人都可以學。全球已經有超過3100萬人參加過，由 EDUx 教育基金會引入台灣舉辦。你有聽說過，', 'ACT0013.jpg', 'ACG04', '2020/02/25-2020/02/26', '70', 350, 3, '[1, 5, 20]', '[1, 5, 20]', '[1, 5, 20]', '[]', '2020-01-13 14:07:00', '2020-01-13 14:07:00'),
(14, '14', '11', '【圖書館讀書會】創客設備教育訓練', '2020-03-19', '臺北市中正區羅斯福路三段244巷2號B1', '講座姓名：謝清佑先生\n講座現職：力新國際科技', 'ACT0014.jpg', 'ACG01', '2020/03/02-2020/03/19', '20', 250, 3, '[11, 13, 14, 30]', '[11, 13, 14, 30]', '[11, 13, 14, 30]', '[]', '2020-01-14 14:07:00', '2020-03-31 19:57:32'),
(15, '15', '23', '職場必備的Excel關鍵技能', '2020-03-21', '臺北市中正區羅斯福路三段244巷2號B1', '需要具備的背景知識\n1. 瞭解 Windows/Mac 的電腦基本操作，並知道怎麼將 Word、Excel 及 PowerPoint 檔案打開即可\n2. 若對 Excel 有基礎認識可以更快上手，若沒', 'ACT0015.jpg', 'ACG03', '2020/03/04-2020/03/18', '20', 400, 3, '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[]', '2020-01-15 14:07:00', '2020-03-31 19:57:40'),
(16, '16', '29', '孩子留鄉創業，也能與世界接軌', '2020-03-22', '臺北市中正區羅斯福路三段244巷2號B1', '這樣的起心動念很簡單，我所學、所教都與軟硬體系統設計有關係，教程式設計是我最容易貢獻的方式之一；而且我相信，對偏鄉的孩子來說，學程式設計不僅可以培養邏輯觀念，更是很好的謀生或創業技能—成本低、不受限區', 'ACT0016.jpg', 'ACG02', '2020/03/05-2020/03/06', '60', 450, 4, '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30]', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30]', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30]', '[]', '2020-01-16 14:07:00', '2020-01-16 14:07:00'),
(17, '17', '17', '現在開始學coding必須知道的程式學習六大趨勢', '2020-03-25', '臺北市中正區羅斯福路三段244巷2號B1', '法國新型態學校「School 42」專收30歲以下的年輕人，不限背景、學歷，以解決問題為教學導向，每年有8萬人申請，錄取率不到1%。其共同創辦人尼可拉斯．薩迪拉克（Nicolas Sadirac）今年', 'ACT0017.jpg', 'ACG03', '2020/03/12-2020/03/13', '10', 350, 3, '[11, 16, 21, 26]', '[11, 16, 21, 26]', '[11, 16, 21, 26]', '[]', '2020-01-17 14:07:00', '2020-03-31 19:57:43'),
(18, '18', '15', '未來教育：孩子不用變機器人，要做有「人性」思考的人', '2020-03-28', '臺北市中正區羅斯福路三段244巷2號B1', '南韓棋王與google開發的人工智慧圍棋AlphaGo纏鬥五戰，最終獲得一勝四負的成績。引發各界討論：機器會取代人類嗎？Ptt共同創辦人戴志洋認為，這場人機大戰對未來教育深具啟示，人類不該和電腦比運算', 'ACT0018.jpg', 'ACG01', '2020/03/12-2020/03/13', '20', 100, 2, '[16, 19, 29]', '[16, 19, 29]', '[16, 19, 29]', '[]', '2020-01-18 14:07:00', '2020-01-18 14:07:00'),
(19, '19', '9', '《AI未來賽局》：2069年「數位殲滅」美國與民主，中國人工智能王朝降臨', '2020-04-07', '臺北市中正區羅斯福路三段244巷2號B1', 'G–MAFIA現在只剩GAA這三家公司：谷歌、蘋果和亞馬遜。臉書是第一個宣布破產的巨頭，而微軟和IBM遺留下的資產被谷歌收購。\n這一年是中國共產革命和毛澤東宣布中華人民共和國成立的百年紀念。中國所有附', 'ACT0019.jpg', 'ACG04', '2020/03/16-2020/04/05', '30', 450, 3, '[9, 11, 25, 28]', '[9, 11, 25, 28]', '[9, 11, 25, 28]', '[]', '2020-01-19 14:07:00', '2020-01-19 14:07:00'),
(20, '20', '11', '青少年程式設計', '2020-04-09', '臺北市中正區羅斯福路三段244巷2號B1', '適合學齡：國小六年級 ~ 高中\n發展重點：\n程式設計、多媒體應用、軟體應用\n以程式語言C++及Python為主軸，由淺入深學習程式語法及電腦概念。課程內容將帶領孩子認識並熟悉電腦、多媒體的各類應用、系', 'ACT0020.jpg', 'ACG01', '2020/03/16-2020/03/24', '40', 400, 2, '[3, 6, 7, 8, 9, 10, 13, 14, 15, 16, 19, 21, 23, 24, 26, 27, 29]', '[3, 6, 7, 8, 9, 10, 13, 14, 15, 16, 19, 21, 23, 24, 26, 27, 29]', '[3, 6, 7, 8, 9, 10, 13, 14, 15, 16, 19, 21, 23, 24, 26, 27, 29]', '[]', '2020-01-20 14:07:00', '2020-01-20 14:07:00'),
(21, '21', '2', 'Scratch 兒童程式設計', '2020-04-11', '臺北市中正區羅斯福路三段244巷2號B1', '適合學齡：國小三年級以上\n發展重點：\n程式概念、程式邏輯、基礎應用、創客創作\n課程期間：\n課程分為初階、進階班。老師會記錄孩子的學習狀況，經檢定評估後晉升更高一階的課程。\nScratch由美國麻省理工', 'ACT0021.jpg', 'ACG03', '2020/03/17-2020/03/18', '50', 350, 3, '[2, 5, 9, 10, 11, 17, 27]', '[2, 5, 9, 10, 11, 17, 27]', '[2, 5, 9, 10, 11, 17, 27]', '[]', '2020-01-21 14:07:00', '2020-01-21 14:07:00'),
(22, '22', '4', '樂高動力機械', '2020-04-12', '臺北市中正區羅斯福路三段244巷2號B1', '課程期間：\n每週不同學習主題，共有96個主題，學程約二年。 \n課程分為初階、中階、高階班。\n老師會依孩子學習狀況經檢定後晉升更高一階的課程。', 'ACT0022.jpg', 'ACG01', '2020/03/17-2020/03/18', '10', 100, 2, '[10, 12]', '[10, 12]', '[10, 12]', '[]', '2020-01-22 14:07:00', '2020-01-22 14:07:00'),
(23, '23', '17', '『與大師對話~APP程式設計』', '2020-04-14', '臺北市中正區羅斯福路三段244巷2號B1', '美國非營利組織Code.org發起「一小時學寫程式」（Hour of Code）活動，利用動畫《星際大戰》、《冰雪奇緣》、遊戲《當個創世神》，吸引4歲到104歲的人上線學寫程式。這項全球超過兩億人參與', 'ACT0023.jpg', 'ACG02', '2020/03/17-2020/03/31', '30', 450, 2, '[1, 7, 16, 17, 20, 22, 23, 25, 26, 28]', '[1, 7, 16, 17, 20, 22, 23, 25, 26, 28]', '[1, 7, 16, 17, 20, 22, 23, 25, 26, 28]', '[]', '2020-01-23 14:07:00', '2020-03-31 19:57:49'),
(24, '24', '10', 'Scratch 解題活動', '2020-04-17', '臺北市中正區羅斯福路三段244巷2號B1', '欲申請ITSA&PTC線上競賽參賽證明的同學，可使用e-tutor帳號登入系統查詢個人參賽紀錄，並下載參賽證明檔案(PDF)。', 'ACT0024.jpg', 'ACG03', '2020/03/19-2020/03/20', '40', 400, 3, '[1, 5, 20]', '[1, 5, 20]', '[1, 5, 20]', '[]', '2020-01-24 14:07:00', '2020-01-24 14:07:00'),
(25, '25', '9', '2020年程式設計跨域創意競賽', '2020-04-18', '臺北市中正區羅斯福路三段244巷2號B1', '許多人認為學程式，未來便可找到好工作。對即將投入職場的大人來說，這理由或說得通。但對孩子而言，這不該是理由。回想兩千年科技泡沫化，軟體業也曾有寒冬。十年河東，十年河西。誰能保證 10 年、20 年後，', 'ACT0025.jpg', 'ACG04', '2020/03/19-2020/03/20', '60', 350, 3, '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[]', '2020-01-25 14:07:00', '2020-03-29 00:46:00'),
(26, '26', '4', '2020「 CSF 全國青年程式設計競賽活動辦法」', '2020-04-19', '臺北市中正區羅斯福路三段244巷2號B1', '學寫程式，背後的教育思考，影響如此全面。這個嶄新的科技領域，讓《親子天下》編輯部以文組女性為主的工作團隊，一開始十分擔心。\n去年底，所有參與這個專案的記者、美編、研究員和編輯都加入了一個「邁向未來」的', 'ACT0026.jpg', 'ACG02', '2020/03/19-2020/03/20', '50', 200, 3, '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[]', '2020-01-26 14:07:00', '2020-03-31 19:58:11'),
(27, '27', '18', '程式員求生指南：關於寫程式的二三事', '2020-04-21', '臺北市中正區羅斯福路三段244巷2號B1', '現今大學生是典型的「網路原住民」，在其成長環境具備完善的網際網路基礎架構，使用電腦或手機的Web瀏覽器透過網際網路獲取資訊已成為日常生活的一部份。「推動大學程式設計教學計畫」中分項三團隊以Web相關應', 'ACT0027.jpg', 'ACG01', '2020/03/21-2020/03/22', '30', 400, 3, '[1, 8, 26, 27]', '[1, 8, 26, 27]', '[1, 8, 26, 27]', '[]', '2020-01-27 14:07:00', '2020-01-27 14:07:00'),
(28, '28', '27', '時事議題 - 一小時玩程式', '2020-04-23', '臺北市中正區羅斯福路三段244巷2號B1', 'T108016 國立勤益科技大學 全國高中職機器人創客程式設計活動', 'ACT0028.jpg', 'ACG03', '2020/03/22-2020/03/29', '50', 300, 3, '[1, 2, 4, 5, 10, 16, 24, 25, 29]', '[1, 2, 4, 5, 10, 16, 24, 25, 29]', '[1, 2, 4, 5, 10, 16, 24, 25, 29]', '[]', '2020-01-28 14:07:00', '2020-01-28 14:07:00'),
(29, '29', '6', '程式教育納入課綱，中學生該學 Python 還是 Java？其實科技思維才是重點', '2020-04-26', '臺北市中正區羅斯福路三段244巷2號B1', '大綱：MATLAB是一高階科技運算語言、可分析資料與發展演算法和應用之互動式環境。MATLAB能夠協助解決科學運算的問題,比起傳統的程式語言，如..C、C++、Fortran要快的多。此課程專門為 M', 'ACT0029.jpg', 'ACG02', '2020/03/24-2020/03/25', '20', 550, 4, '[3, 8, 17, 22]', '[3, 8, 17, 22]', '[3, 8, 17, 22]', '[]', '2020-01-29 14:07:00', '2020-01-29 14:07:00'),
(30, '30', '11', 'UI / UX 傻傻分不清楚？圖解帶你快速搞懂差別', '2020-04-28', '臺北市中正區羅斯福路三段244巷2號B1', '活動內容：APH ONLY', 'ACT0030.jpg', 'ACG04', '2020/03/24-2020/03/25', '40', 350, 3, '[11, 16, 21, 26]', '[11, 16, 21, 26]', '[11, 16, 21, 26]', '[]', '2020-01-30 14:07:00', '2020-01-30 14:07:00'),
(31, '31', '23', '我該如何開始準備作品集？', '2020-04-29', '臺北市中正區羅斯福路三段244巷2號B1', '成大資工系教授蘇文鈺，推動「兒童與少年程式設計教學計劃」，親自帶著大學生，到嘉義東石、台南左鎮免費教當地孩子寫程式，希望孩子能接軌工程師賴以維生的C語言，具備開發app的能力，可以留在家鄉自行創業。', 'ACT0027.jpg', 'ACG01', '2020/03/24-2020/03/25', '80', 200, 3, '[4, 12]', '[4, 12]', '[4, 12]', '[]', '2020-01-31 14:07:00', '2020-01-31 14:07:00'),
(32, '32', '29', '寫給非資訊業的你－必備的程式技能，為你的本業加分！', '2020-05-04', '臺北市中正區羅斯福路三段244巷2號B1', '2020-02-29\n18:03 報名開始日期變更為 2020-03-01\n18:03 報名結束日期變更為 2020-03-21\n18:03 一般入場費用由 未定 變更為 150\n18:03 社團入場', 'ACT0028.jpg', 'ACG03', '2020/03/25-2020/03/26', '70', 400, 3, '[3, 4, 13, 30]', '[3, 4, 13, 30]', '[3, 4, 13, 30]', '[]', '2020-02-01 14:07:00', '2020-03-29 01:31:00'),
(33, '33', '17', '好用前端資源包－HTML、CSS、JS一網打盡', '2020-05-05', '臺北市中正區羅斯福路三段244巷2號B1', '親子天下 創新100 票選活動:『用程式翻轉城市』 ( 票選活動 到 5/30 截止 )\n在夥伴的支持下， 我們今年報名參加親子天下創新100的 徵件活動，目前已經入選， 接下來就是票選， 希望你們支', 'ACT0029.jpg', 'ACG02', '2020/03/26-2020/03/27', '30', 550, 4, '[3, 6, 7, 8, 9, 10, 13, 14, 15, 16, 19, 21, 23, 24, 26, 27, 29]', '[3, 6, 7, 8, 9, 10, 13, 14, 15, 16, 19, 21, 23, 24, 26, 27, 29]', '[3, 6, 7, 8, 9, 10, 13, 14, 15, 16, 19, 21, 23, 24, 26, 27, 29]', '[]', '2020-02-02 14:07:00', '2020-03-31 19:58:14'),
(34, '34', '15', '快速蒐集大量資料，你該掌握的三大工具！', '2020-05-07', '臺北市中正區羅斯福路三段244巷2號B1', '關於 Hour of Code\nHour of Code 一小時學寫電腦程式，不論你有沒有寫過程式，任何人都可以學。全球已經有超過3100萬人參加過，由 EDUx 教育基金會引入台灣舉辦。你有聽說過，', 'ACT0030.jpg', 'ACG01', '2020/03/28-2020/04/18', '10', 350, 3, '[3, 18]', '[3, 18]', '[3, 18]', '[]', '2020-02-03 14:07:00', '2020-03-31 19:58:17'),
(35, '35', '9', '接案真心話－四個問題檢視自己適合當自由工作者嗎？', '2020-05-12', '臺北市中正區羅斯福路三段244巷2號B1', '講座姓名：謝清佑先生\n講座現職：力新國際科技', 'ACT0001.jpg', 'ACG01', '2020/03/29-2020/04/19', '20', 250, 2, '[3, 14]', '[3, 14]', '[3, 14]', '[]', '2020-02-04 14:07:00', '2020-02-04 14:07:00'),
(36, '36', '11', '跨領域學程式最常遇到的三個難關', '2020-05-14', '臺北市中正區羅斯福路三段244巷2號B1', '需要具備的背景知識\n1. 瞭解 Windows/Mac 的電腦基本操作，並知道怎麼將 Word、Excel 及 PowerPoint 檔案打開即可\n2. 若對 Excel 有基礎認識可以更快上手，若沒', 'ACT0002.jpg', 'ACG04', '2020/04/07-2020/04/09', '10', 400, 3, '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[]', '2020-02-05 14:07:00', '2020-03-31 19:58:20'),
(37, '37', '2', '工程師面試攻略－教你快速破解常見的 4 個問題', '2020-05-16', '臺北市中正區羅斯福路三段244巷2號B1', '這樣的起心動念很簡單，我所學、所教都與軟硬體系統設計有關係，教程式設計是我最容易貢獻的方式之一；而且我相信，對偏鄉的孩子來說，學程式設計不僅可以培養邏輯觀念，更是很好的謀生或創業技能—成本低、不受限區', 'ACT0003.jpg', 'ACG01', '2020/04/08-2020/04/09', '60', 400, 2, '[1, 4, 23, 28]', '[1, 4, 23, 28]', '[1, 4, 23, 28]', '[]', '2020-02-06 14:07:00', '2020-02-06 14:07:00'),
(38, '38', '4', '新手學程式－我該學哪種語言？新手常見毛病我中招了嗎？', '2020-05-17', '臺北市中正區羅斯福路三段244巷2號B1', '法國新型態學校「School 42」專收30歲以下的年輕人，不限背景、學歷，以解決問題為教學導向，每年有8萬人申請，錄取率不到1%。其共同創辦人尼可拉斯．薩迪拉克（Nicolas Sadirac）今年', 'ACT0004.jpg', 'ACG03', '2020/04/09-2020/04/10', '30', 350, 3, '[9, 11, 25, 28]', '[9, 11, 25, 28]', '[9, 11, 25, 28]', '[]', '2020-02-07 14:07:00', '2020-02-07 14:07:00'),
(39, '39', '17', '【HiSKIO 實習分享】認真學習是實習的一部分', '2020-05-20', '臺北市中正區羅斯福路三段244巷2號B1', '南韓棋王與google開發的人工智慧圍棋AlphaGo纏鬥五戰，最終獲得一勝四負的成績。引發各界討論：機器會取代人類嗎？Ptt共同創辦人戴志洋認為，這場人機大戰對未來教育深具啟示，人類不該和電腦比運算', 'ACT0005.jpg', 'ACG01', '2020/04/09-2020/04/10', '50', 300, 2, '[1, 3, 9, 15]', '[1, 3, 9, 15]', '[1, 3, 9, 15]', '[]', '2020-02-08 14:07:00', '2020-02-08 14:07:00'),
(40, '40', '10', '滲透在生活中的四大 AI 技術', '2020-05-22', '臺北市中正區羅斯福路三段244巷2號B1', 'G–MAFIA現在只剩GAA這三家公司：谷歌、蘋果和亞馬遜。臉書是第一個宣布破產的巨頭，而微軟和IBM遺留下的資產被谷歌收購。\n這一年是中國共產革命和毛澤東宣布中華人民共和國成立的百年紀念。中國所有附', 'ACT0006.jpg', 'ACG02', '2020/04/09-2020/04/10', '70', 550, 2, '[11, 13, 14, 30]', '[11, 13, 14, 30]', '[11, 13, 14, 30]', '[]', '2020-02-09 14:07:00', '2020-02-09 14:07:00'),
(41, '41', '9', '程式創客實作專題', '2020-05-23', '臺北市中正區羅斯福路三段244巷2號B1', '適合學齡：國小六年級 ~ 高中\n發展重點：\n程式設計、多媒體應用、軟體應用\n以程式語言C++及Python為主軸，由淺入深學習程式語法及電腦概念。課程內容將帶領孩子認識並熟悉電腦、多媒體的各類應用、系', 'ACT0007.jpg', 'ACG03', '2020/04/11-2020/04/12', '40', 350, 3, '[4, 16, 19, 26, 27, 30]', '[4, 16, 19, 26, 27, 30]', '[4, 16, 19, 26, 27, 30]', '[]', '2020-02-10 14:07:00', '2020-02-10 14:07:00'),
(42, '42', '4', '教育下一波：程式設計開啟孩子的未來', '2020-05-25', '臺北市中正區羅斯福路三段244巷2號B1', '適合學齡：國小三年級以上\n發展重點：\n程式概念、程式邏輯、基礎應用、創客創作\n課程期間：\n課程分為初階、進階班。老師會記錄孩子的學習狀況，經檢定評估後晉升更高一階的課程。\nScratch由美國麻省理工', 'ACT0008.jpg', 'ACG04', '2020/04/12-2020/06/21', '50', 200, 3, '[5, 8, 21]', '[5, 8, 21]', '[5, 8, 21]', '[]', '2020-02-11 14:07:00', '2020-02-11 14:07:00'),
(43, '43', '18', '第七十四次ITSA 線上程式競賽', '2020-05-27', '臺北市中正區羅斯福路三段244巷2號B1', '課程期間：\n每週不同學習主題，共有96個主題，學程約二年。 \n課程分為初階、中階、高階班。\n老師會依孩子學習狀況經檢定後晉升更高一階的課程。', 'ACT0009.jpg', 'ACG02', '2020/04/13-2020/04/14', '10', 400, 3, '[11, 13, 14, 30]', '[11, 13, 14, 30]', '[11, 13, 14, 30]', '[]', '2020-02-12 14:07:00', '2020-03-29 01:32:00'),
(44, '44', '27', '學程式者，能成麒麟之才？', '2020-05-29', '臺北市中正區羅斯福路三段244巷2號B1', '美國非營利組織Code.org發起「一小時學寫程式」（Hour of Code）活動，利用動畫《星際大戰》、《冰雪奇緣》、遊戲《當個創世神》，吸引4歲到104歲的人上線學寫程式。這項全球超過兩億人參與', 'ACT0010.jpg', 'ACG01', '2020/04/14-2020/04/15', '80', 550, 3, '[10, 18, 27, 28]', '[10, 18, 27, 28]', '[10, 18, 27, 28]', '[]', '2020-02-13 14:07:00', '2020-02-13 14:07:00'),
(45, '45', '6', '你會說程式語言嗎？', '2020-05-31', '臺北市中正區羅斯福路三段244巷2號B1', '欲申請ITSA&PTC線上競賽參賽證明的同學，可使用e-tutor帳號登入系統查詢個人參賽紀錄，並下載參賽證明檔案(PDF)。', 'ACT0011.jpg', 'ACG03', '2020/04/14-2020/04/15', '40', 350, 3, '[12, 13, 17, 25]', '[12, 13, 17, 25]', '[12, 13, 17, 25]', '[]', '2020-02-14 14:07:00', '2020-02-14 14:07:00'),
(46, '46', '11', '大學程式設計教學交流會－Web程式教學工作坊', '2020-06-01', '臺北市中正區羅斯福路三段244巷2號B1', '許多人認為學程式，未來便可找到好工作。對即將投入職場的大人來說，這理由或說得通。但對孩子而言，這不該是理由。回想兩千年科技泡沫化，軟體業也曾有寒冬。十年河東，十年河西。誰能保證 10 年、20 年後，', 'ACT0012.jpg', 'ACG02', '2020/04/16-2020/04/17', '60', 550, 4, '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[]', '2020-02-15 14:07:00', '2020-02-15 14:07:00'),
(47, '47', '23', 'T108016 國立勤益科技大學 全國高中職機器人創客程式設計活動', '2020-06-03', '臺北市中正區羅斯福路三段244巷2號B1', '學寫程式，背後的教育思考，影響如此全面。這個嶄新的科技領域，讓《親子天下》編輯部以文組女性為主的工作團隊，一開始十分擔心。\n去年底，所有參與這個專案的記者、美編、研究員和編輯都加入了一個「邁向未來」的', 'ACT0013.jpg', 'ACG04', '2020/04/16-2020/04/17', '70', 350, 3, '[1, 3, 9, 15]', '[1, 3, 9, 15]', '[1, 3, 9, 15]', '[]', '2020-02-16 14:07:00', '2020-02-16 14:07:00'),
(48, '48', '29', 'MATLAB基礎程式設計(II)研討會', '2020-06-04', '臺北市中正區羅斯福路三段244巷2號B1', '現今大學生是典型的「網路原住民」，在其成長環境具備完善的網際網路基礎架構，使用電腦或手機的Web瀏覽器透過網際網路獲取資訊已成為日常生活的一部份。「推動大學程式設計教學計畫」中分項三團隊以Web相關應', 'ACT0014.jpg', 'ACG01', '2020/04/17-2020/05/08', '30', 250, 3, '[12, 13, 17, 25]', '[12, 13, 17, 25]', '[12, 13, 17, 25]', '[]', '2020-02-17 14:07:00', '2020-02-17 14:07:00'),
(49, '49', '17', '2020台灣APH Only．W集團徵才博覽會', '2020-06-06', '臺北市中正區羅斯福路三段244巷2號B1', 'T108016 國立勤益科技大學 全國高中職機器人創客程式設計活動', 'ACT0015.jpg', 'ACG05', '2020/04/17-2020/04/24', '50', 400, 3, '[4, 12]', '[4, 12]', '[4, 12]', '[]', '2020-02-18 14:07:00', '2020-02-18 14:07:00'),
(50, '50', '15', '程式設計入課綱，教育轉機或危機？', '2020-06-09', '臺北市中正區羅斯福路三段244巷2號B1', '大綱：MATLAB是一高階科技運算語言、可分析資料與發展演算法和應用之互動式環境。MATLAB能夠協助解決科學運算的問題,比起傳統的程式語言，如..C、C++、Fortran要快的多。此課程專門為 M', 'ACT0016.jpg', 'ACG02', '2020/04/18-2020/04/19', '20', 450, 4, '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[]', '2020-02-19 14:07:00', '2020-02-19 14:07:00'),
(51, '51', '9', 'A3!ONLY《滿開大冒險》', '2020-06-10', '臺北市中正區羅斯福路三段244巷2號B1', '活動內容：APH ONLY', 'ACT0017.jpg', 'ACG04', '2020/04/19-2020/06/14', '40', 350, 3, '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[]', '2020-02-20 14:07:00', '2020-03-29 01:32:00'),
(52, '52', '11', '生生寫程式- 千人程式設計活動', '2020-06-11', '臺北市中正區羅斯福路三段244巷2號B1', '成大資工系教授蘇文鈺，推動「兒童與少年程式設計教學計劃」，親自帶著大學生，到嘉義東石、台南左鎮免費教當地孩子寫程式，希望孩子能接軌工程師賴以維生的C語言，具備開發app的能力，可以留在家鄉自行創業。', 'ACT0018.jpg', 'ACG01', '2020/04/20-2020/04/21', '80', 100, 2, '[5, 12, 18, 26]', '[5, 12, 18, 26]', '[5, 12, 18, 26]', '[]', '2020-02-21 14:07:00', '2020-02-21 14:07:00'),
(53, '53', '2', '免費的程式設計活動 ：Hour of Code 一小時學電腦程式', '2020-06-14', '臺北市中正區羅斯福路三段244巷2號B1', '2020-02-29\n18:03 報名開始日期變更為 2020-03-01\n18:03 報名結束日期變更為 2020-03-21\n18:03 一般入場費用由 未定 變更為 150\n18:03 社團入場', 'ACT0019.jpg', 'ACG04', '2020/04/20-2020/04/21', '70', 450, 3, '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[1, 2, 4, 5, 6, 7, 8, 10, 11, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 28, 29, 30]', '[]', '2020-02-22 14:07:00', '2020-02-22 14:07:00'),
(54, '54', '4', '【圖書館讀書會】創客設備教育訓練', '2020-06-16', '臺北市中正區羅斯福路三段244巷2號B1', '親子天下 創新100 票選活動:『用程式翻轉城市』 ( 票選活動 到 5/30 截止 )\n在夥伴的支持下， 我們今年報名參加親子天下創新100的 徵件活動，目前已經入選， 接下來就是票選， 希望你們支', 'ACT0020.jpg', 'ACG01', '2020/04/21-2020/04/22', '30', 400, 2, '[1, 3, 5, 6, 7, 8, 10, 13, 14, 15, 17, 18, 20, 21, 22, 23, 24, 26, 27, 28, 30]', '[1, 3, 5, 6, 7, 8, 10, 13, 14, 15, 17, 18, 20, 21, 22, 23, 24, 26, 27, 28, 30]', '[1, 3, 5, 6, 7, 8, 10, 13, 14, 15, 17, 18, 20, 21, 22, 23, 24, 26, 27, 28, 30]', '[]', '2020-02-23 14:07:00', '2020-02-23 14:07:00'),
(55, '55', '17', '職場必備的Excel關鍵技能', '2020-06-18', '臺北市中正區羅斯福路三段244巷2號B1', '關於 Hour of Code\nHour of Code 一小時學寫電腦程式，不論你有沒有寫過程式，任何人都可以學。全球已經有超過3100萬人參加過，由 EDUx 教育基金會引入台灣舉辦。你有聽說過，', 'ACT0021.jpg', 'ACG03', '2020/04/21-2020/04/22', '50', 400, 3, '[3, 7, 26, 29]', '[3, 7, 26, 29]', '[3, 7, 26, 29]', '[]', '2020-02-24 14:07:00', '2020-02-24 14:07:00'),
(56, '56', '10', '孩子留鄉創業，也能與世界接軌', '2020-06-20', '臺北市中正區羅斯福路三段244巷2號B1', '講座姓名：謝清佑先生\n講座現職：力新國際科技', 'ACT0022.jpg', 'ACG01', '2020/04/21-2020/04/22', '20', 450, 2, '[6, 14, 16, 26]', '[6, 14, 16, 26]', '[6, 14, 16, 26]', '[]', '2020-02-25 14:07:00', '2020-02-25 14:07:00'),
(57, '57', '9', '【競賽報名】2019年ITSA極客挑戰賽_報名時間延期競賽訊息', '2020-07-02', '臺北市中正區羅斯福路三段244巷2號B1', '需要具備的背景知識\n1. 瞭解 Windows/Mac 的電腦基本操作，並知道怎麼將 Word、Excel 及 PowerPoint 檔案打開即可\n2. 若對 Excel 有基礎認識可以更快上手，若沒', 'ACT0023.jpg', 'ACG02', '2020/04/21-2020/04/22', '40', 350, 2, '[5, 12, 18, 26]', '[5, 12, 18, 26]', '[5, 12, 18, 26]', '[]', '2020-02-26 14:07:00', '2020-02-26 14:07:00'),
(58, '58', '4', '未來教育：孩子不用變機器人，要做有「人性」思考的人', '2020-07-06', '臺北市中正區羅斯福路三段244巷2號B1', '這樣的起心動念很簡單，我所學、所教都與軟硬體系統設計有關係，教程式設計是我最容易貢獻的方式之一；而且我相信，對偏鄉的孩子來說，學程式設計不僅可以培養邏輯觀念，更是很好的謀生或創業技能—成本低、不受限區', 'ACT0024.jpg', 'ACG03', '2020/04/21-2020/04/28', '80', 100, 3, '[3, 4, 13, 30]', '[3, 4, 13, 30]', '[3, 4, 13, 30]', '[]', '2020-02-27 14:07:00', '2020-02-27 14:07:00'),
(59, '59', '18', '【比賽訊息】第74次ITSA 線上程式設計競賽競賽訊息', '2020-07-29', '臺北市中正區羅斯福路三段244巷2號B1', '法國新型態學校「School 42」專收30歲以下的年輕人，不限背景、學歷，以解決問題為教學導向，每年有8萬人申請，錄取率不到1%。其共同創辦人尼可拉斯．薩迪拉克（Nicolas Sadirac）今年', 'ACT0025.jpg', 'ACG04', '2020/04/21-2020/04/22', '70', 450, 3, '[2, 5, 9, 10, 11, 17, 27]', '[2, 5, 9, 10, 11, 17, 27]', '[2, 5, 9, 10, 11, 17, 27]', '[]', '2020-02-28 14:07:00', '2020-02-28 14:07:00'),
(60, '60', '27', '青少年程式設計', '2020-07-30', '臺北市中正區羅斯福路三段244巷2號B1', '南韓棋王與google開發的人工智慧圍棋AlphaGo纏鬥五戰，最終獲得一勝四負的成績。引發各界討論：機器會取代人類嗎？Ptt共同創辦人戴志洋認為，這場人機大戰對未來教育深具啟示，人類不該和電腦比運算', 'ACT0026.jpg', 'ACG03', '2020/04/22-2020/04/23', '30', 350, 3, '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[]', '2020-02-29 14:07:00', '2020-03-31 19:59:03'),
(61, '61', '6', 'Scratch 兒童程式設計', '2020-08-01', '臺北市中正區羅斯福路三段244巷2號B1', 'G–MAFIA現在只剩GAA這三家公司：谷歌、蘋果和亞馬遜。臉書是第一個宣布破產的巨頭，而微軟和IBM遺留下的資產被谷歌收購。\n這一年是中國共產革命和毛澤東宣布中華人民共和國成立的百年紀念。中國所有附', 'ACT0027.jpg', 'ACG01', '2020/04/23-2020/04/24', '40', 200, 3, '[12, 13, 17, 25]', '[12, 13, 17, 25]', '[12, 13, 17, 25]', '[]', '2020-03-01 14:07:00', '2020-03-01 14:07:00'),
(62, '62', '11', '樂高Boost幼兒簡易程式', '2020-08-15', '臺北市中正區羅斯福路三段244巷2號B1', '適合學齡：國小六年級 ~ 高中\n發展重點：\n程式設計、多媒體應用、軟體應用\n以程式語言C++及Python為主軸，由淺入深學習程式語法及電腦概念。課程內容將帶領孩子認識並熟悉電腦、多媒體的各類應用、系', 'ACT0028.jpg', 'ACG03', '2020/04/23-2020/05/29', '50', 400, 3, '[3, 7, 26, 29]', '[3, 7, 26, 29]', '[3, 7, 26, 29]', '[]', '2020-03-02 14:07:00', '2020-03-02 14:07:00'),
(63, '63', '23', '『與大師對話~APP程式設計』', '2020-08-20', '臺北市中正區羅斯福路三段244巷2號B1', '適合學齡：國小三年級以上\n發展重點：\n程式概念、程式邏輯、基礎應用、創客創作\n課程期間：\n課程分為初階、進階班。老師會記錄孩子的學習狀況，經檢定評估後晉升更高一階的課程。\nScratch由美國麻省理工', 'ACT0029.jpg', 'ACG02', '2020/04/23-2020/04/24', '10', 550, 4, '[9, 11, 25, 28]', '[9, 11, 25, 28]', '[9, 11, 25, 28]', '[]', '2020-03-03 14:07:00', '2020-03-03 14:07:00'),
(64, '64', '29', 'Scratch 解題活動', '2020-08-29', '臺北市中正區羅斯福路三段244巷2號B1', '課程期間：\n每週不同學習主題，共有96個主題，學程約二年。 \n課程分為初階、中階、高階班。\n老師會依孩子學習狀況經檢定後晉升更高一階的課程。', 'ACT0030.jpg', 'ACG04', '2020/04/24-2020/04/25', '20', 350, 3, '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[]', '2020-03-04 14:07:00', '2020-03-31 19:59:07'),
(65, '65', '17', '2020年程式設計跨域創意競賽', '2020-09-01', '臺北市中正區羅斯福路三段244巷2號B1', '美國非營利組織Code.org發起「一小時學寫程式」（Hour of Code）活動，利用動畫《星際大戰》、《冰雪奇緣》、遊戲《當個創世神》，吸引4歲到104歲的人上線學寫程式。這項全球超過兩億人參與', 'ACT0001.jpg', 'ACG01', '2020/04/25-2020/04/26', '40', 250, 3, '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[]', '2020-03-05 14:07:00', '2020-03-05 14:07:00'),
(66, '66', '15', '2020「 CSF 全國青年程式設計競賽活動辦法」', '2020-09-03', '臺北市中正區羅斯福路三段244巷2號B1', '欲申請ITSA&PTC線上競賽參賽證明的同學，可使用e-tutor帳號登入系統查詢個人參賽紀錄，並下載參賽證明檔案(PDF)。', 'ACT0002.jpg', 'ACG04', '2020/04/26-2020/05/10', '60', 400, 3, '[4, 16, 19, 26, 27, 30]', '[4, 16, 19, 26, 27, 30]', '[4, 16, 19, 26, 27, 30]', '[]', '2020-03-06 14:07:00', '2020-03-29 01:32:00'),
(67, '67', '9', '程式員求生指南：關於寫程式的二三事', '2020-09-04', '臺北市中正區羅斯福路三段244巷2號B1', '許多人認為學程式，未來便可找到好工作。對即將投入職場的大人來說，這理由或說得通。但對孩子而言，這不該是理由。回想兩千年科技泡沫化，軟體業也曾有寒冬。十年河東，十年河西。誰能保證 10 年、20 年後，', 'ACT0003.jpg', 'ACG02', '2020/04/26-2020/05/10', '30', 450, 4, '[8, 9, 14]', '[8, 9, 14]', '[8, 9, 14]', '[]', '2020-03-07 14:07:00', '2020-03-31 19:59:11'),
(68, '68', '11', '時事議題 - 一小時玩程式', '2020-09-06', '臺北市中正區羅斯福路三段244巷2號B1', '學寫程式，背後的教育思考，影響如此全面。這個嶄新的科技領域，讓《親子天下》編輯部以文組女性為主的工作團隊，一開始十分擔心。\n去年底，所有參與這個專案的記者、美編、研究員和編輯都加入了一個「邁向未來」的', 'ACT0004.jpg', 'ACG03', '2020/04/28-2020/04/29', '30', 350, 3, '[6, 14, 16, 26]', '[6, 14, 16, 26]', '[6, 14, 16, 26]', '[]', '2020-03-08 14:07:00', '2020-03-29 01:32:00'),
(69, '69', '2', '程式教育納入課綱，中學生該學 Python 還是 Java？其實科技思維才是重點', '2020-09-08', '臺北市中正區羅斯福路三段244巷2號B1', '現今大學生是典型的「網路原住民」，在其成長環境具備完善的網際網路基礎架構，使用電腦或手機的Web瀏覽器透過網際網路獲取資訊已成為日常生活的一部份。「推動大學程式設計教學計畫」中分項三團隊以Web相關應', 'ACT0005.jpg', 'ACG01', '2020/04/28-2020/04/29', '50', 100, 2, '[1, 7]', '[1, 7]', '[1, 7]', '[]', '2020-03-09 14:07:00', '2020-03-09 14:07:00'),
(70, '70', '4', 'UI / UX 傻傻分不清楚？圖解帶你快速搞懂差別', '2020-09-10', '臺北市中正區羅斯福路三段244巷2號B1', 'T108016 國立勤益科技大學 全國高中職機器人創客程式設計活動', 'ACT0006.jpg', 'ACG04', '2020/04/28-2020/04/29', '20', 450, 3, '[3, 7, 26, 29]', '[3, 7, 26, 29]', '[3, 7, 26, 29]', '[]', '2020-03-10 14:07:00', '2020-03-10 14:07:00'),
(71, '71', '17', '我該如何開始準備作品集？', '2020-09-11', '臺北市中正區羅斯福路三段244巷2號B1', '大綱：MATLAB是一高階科技運算語言、可分析資料與發展演算法和應用之互動式環境。MATLAB能夠協助解決科學運算的問題,比起傳統的程式語言，如..C、C++、Fortran要快的多。此課程專門為 M', 'ACT0007.jpg', 'ACG01', '2020/04/29-2020/04/30', '40', 400, 2, '[10, 12]', '[10, 12]', '[10, 12]', '[]', '2020-03-11 14:07:00', '2020-03-11 14:07:00'),
(72, '72', '10', '寫給非資訊業的你－必備的程式技能，為你的本業加分！', '2020-09-15', '臺北市中正區羅斯福路三段244巷2號B1', '活動內容：APH ONLY', 'ACT0008.jpg', 'ACG03', '2020/04/29-2020/04/30', '80', 250, 3, '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[2, 4, 11, 20, 23, 27]', '[]', '2020-03-12 14:07:00', '2020-03-12 14:07:00'),
(73, '73', '9', '好用前端資源包－HTML、CSS、JS一網打盡', '2020-09-21', '臺北市中正區羅斯福路三段244巷2號B1', '成大資工系教授蘇文鈺，推動「兒童與少年程式設計教學計劃」，親自帶著大學生，到嘉義東石、台南左鎮免費教當地孩子寫程式，希望孩子能接軌工程師賴以維生的C語言，具備開發app的能力，可以留在家鄉自行創業。', 'ACT0009.jpg', 'ACG01', '2020/05/04-2020/06/04', '70', 400, 2, '[11, 16, 21, 26]', '[11, 16, 21, 26]', '[11, 16, 21, 26]', '[]', '2020-03-13 14:07:00', '2020-03-13 14:07:00'),
(74, '74', '4', '快速蒐集大量資料，你該掌握的三大工具！', '2020-09-22', '臺北市中正區羅斯福路三段244巷2號B1', '2020-02-29\n18:03 報名開始日期變更為 2020-03-01\n18:03 報名結束日期變更為 2020-03-21\n18:03 一般入場費用由 未定 變更為 150\n18:03 社團入場', 'ACT0010.jpg', 'ACG02', '2020/05/05-2020/05/06', '30', 450, 2, '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]', '[]', '2020-03-14 14:07:00', '2020-03-31 19:59:15'),
(75, '75', '18', '接案真心話－四個問題檢視自己適合當自由工作者嗎？', '2020-09-23', '臺北市中正區羅斯福路三段244巷2號B1', '親子天下 創新100 票選活動:『用程式翻轉城市』 ( 票選活動 到 5/30 截止 )\n在夥伴的支持下， 我們今年報名參加親子天下創新100的 徵件活動，目前已經入選， 接下來就是票選， 希望你們支', 'ACT0011.jpg', 'ACG03', '2020/05/05-2020/06/17', '40', 350, 3, '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[4, 7, 9, 13, 15, 21, 24]', '[]', '2020-03-15 14:07:00', '2020-03-15 14:07:00'),
(76, '76', '27', '跨領域學程式最常遇到的三個難關', '2020-09-26', '臺北市中正區羅斯福路三段244巷2號B1', '關於 Hour of Code\nHour of Code 一小時學寫電腦程式，不論你有沒有寫過程式，任何人都可以學。全球已經有超過3100萬人參加過，由 EDUx 教育基金會引入台灣舉辦。你有聽說過，', 'ACT0012.jpg', 'ACG04', '2020/05/05-2020/06/30', '50', 550, 3, '[1, 2, 3, 4, 5, 8, 9, 10, 11, 13, 17, 25, 27]', '[1, 2, 3, 4, 5, 8, 9, 10, 11, 13, 17, 25, 27]', '[1, 2, 3, 4, 5, 8, 9, 10, 11, 13, 17, 25, 27]', '[]', '2020-03-16 14:07:00', '2020-03-16 14:07:00'),
(77, '77', '6', '工程師面試攻略－教你快速破解常見的 4 個問題', '2020-10-02', '臺北市中正區羅斯福路三段244巷2號B1', '講座姓名：謝清佑先生\n講座現職：力新國際科技', 'ACT0013.jpg', 'ACG05', '2020/05/06-2020/06/25', '10', 350, 3, '[5, 12, 18, 26]', '[5, 12, 18, 26]', '[5, 12, 18, 26]', '[]', '2020-03-17 14:07:00', '2020-03-17 14:07:00'),
(78, '78', '11', '新手學程式－我該學哪種語言？新手常見毛病我中招了嗎？', '2020-10-03', '臺北市中正區羅斯福路三段244巷2號B1', '需要具備的背景知識\n1. 瞭解 Windows/Mac 的電腦基本操作，並知道怎麼將 Word、Excel 及 PowerPoint 檔案打開即可\n2. 若對 Excel 有基礎認識可以更快上手，若沒', 'ACT0014.jpg', 'ACG01', '2020/05/06-2020/05/13', '80', 200, 3, '[1, 7, 16, 17, 20, 22, 23, 25, 26, 28]', '[1, 7, 16, 17, 20, 22, 23, 25, 26, 28]', '[1, 7, 16, 17, 20, 22, 23, 25, 26, 28]', '[]', '2020-03-18 14:07:00', '2020-03-18 14:07:00'),
(79, '79', '23', '【HiSKIO 實習分享】認真學習是實習的一部分', '2020-10-05', '臺北市中正區羅斯福路三段244巷2號B1', '這樣的起心動念很簡單，我所學、所教都與軟硬體系統設計有關係，教程式設計是我最容易貢獻的方式之一；而且我相信，對偏鄉的孩子來說，學程式設計不僅可以培養邏輯觀念，更是很好的謀生或創業技能—成本低、不受限區', 'ACT0015.jpg', 'ACG03', '2020/05/07-2020/05/08', '30', 400, 3, '[1, 2, 4, 5, 10, 16, 24, 25, 29]', '[1, 2, 4, 5, 10, 16, 24, 25, 29]', '[1, 2, 4, 5, 10, 16, 24, 25, 29]', '[]', '2020-03-19 14:07:00', '2020-03-19 14:07:00'),
(80, '80', '29', '滲透在生活中的四大 AI 技術', '2020-10-08', '臺北市中正區羅斯福路三段244巷2號B1', '法國新型態學校「School 42」專收30歲以下的年輕人，不限背景、學歷，以解決問題為教學導向，每年有8萬人申請，錄取率不到1%。其共同創辦人尼可拉斯．薩迪拉克（Nicolas Sadirac）今年', 'ACT0016.jpg', 'ACG02', '2020/05/07-2020/05/08', '50', 550, 4, '[3, 4, 13, 30]', '[3, 4, 13, 30]', '[3, 4, 13, 30]', '[]', '2020-03-20 14:07:00', '2020-03-20 14:07:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`Id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `activity`
--
ALTER TABLE `activity`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
