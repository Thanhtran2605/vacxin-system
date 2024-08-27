<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>Vacxin System</title>

<!-- ======= JS ======= -->
<jsp:include page="../layout/cssLink.jsp" />

<link rel="icon" href="<c:url value="/resources/images/logo.png" />" />
<link rel="apple-touch-icon"
	href="<c:url value="/resources/images/logo.png" />" />

<style>
h1, h6 {
	position: relative;
	text-transform: uppercase;
	color: #004085;
	font-weight: bold;
	font-size: 23px;
	margin: 20px 0;
}

h2 {
	color: #004085;
	font-size: 23px;
	margin: 20px 0;
}

h6::after {
	content: '';
	position: absolute;
	left: 0;
	bottom: -10px;
	width: 100%;
	height: 2px;
	background-color: #004085;
}

.aligncenter {
	display: block;
	margin-left: auto;
	margin-right: auto;
	transition: transform 0.3s ease;
}

.aligncenter:hover {
	transform: scale(1.05);
}

.table {
	width: 100%;
	border-collapse: collapse;
}

.table th, .table td {
	font-size: 16px;
	border: 1px solid white;
}

.table tbody tr td:nth-child(1) {
	background-color: #f0f0f0;
	color: #808080;
	text-align: center;
}

.table tbody tr td:nth-child(2), .table tbody tr td:nth-child(3), .table tbody tr td:nth-child(4)
	{
	background-color: #d6eaf8;
}

.table tbody tr td:nth-child(3), .table tbody tr td:nth-child(4) {
	text-align: center;
}

.table tbody tr td:nth-child(5) {
	background-color: #85c1e9;
	color: white;
	text-align: center;
}

.table thead th {
	background-color: #004085;
	color: #ffffff;
	text-align: center;
	border: 1px solid #ccc;
}

.price {
	color: #d9534f;
}

img {
	max-width: 100%;
	height: auto;
	margin: 0 auto;
}

p {
	text-align: justify;
	margin-bottom: 15px;
	font-size: 16px;
}

.list {
	text-align: justify;
	margin-left: 20px;
	font-size: 16px;
	list-style: none;
	padding-left: 0;
	margin-left: 20px;
}

.list-item {
	font-size: 16px;
}

ul {
	text-align: justify;
	list-style-type: disc;
	margin-left: 20px;
	font-size: 16px;
	list-style: none;
	padding-left: 0;
	margin-left: 0;
}

ul li {
	
	font-size: 16px;
}

ul li strong {
	color: #337ab7;
	font-weight: normal;
	font-style: italic;
	list-style: none;
}

/* Button Styling */
.button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 10px 0;
	cursor: pointer;
	border-radius: 5px;
}

.button:hover {
	background-color: #0056b3;
}

.slider-container {
	width: 100%;
	overflow: hidden;
	position: relative;
}

.slider {
	display: flex;
	transition: transform 0.5s ease-in-out;
}

.slide {
	min-width: 100%;
	box-sizing: border-box;
	text-align: center;
	padding: 50px;
	background-color: #f0f0f0;
	border: 1px solid #ddd;
	font-size: 24px;
	color: #333;
}
</style>

<style>
.content__wrapper {
	margin: auto;
	padding: 20px;
	max-width: 1200px;
}

.slider {
	position: relative;
	font-family: "Robot", sans-serif;
	width: 100%;
}

.slider__wrapper {
	margin: auto;
	width: 90%;
	overflow: hidden;
	white-space: nowrap;
	font-size: 0;
}

@media ( max-width : 480px) {
	.slider__wrapper {
		width: 75%;
	}
}

.slider__item {
	padding: 30px 0;
	display: inline-block;
	width: 50%;
	height: 100%;
	font-size: 12px;
	vertical-align: top;
	transition: all 0.3s ease-out;
}

.slider__content {
	margin: 20px;
	padding: 5%;
	color: rgb(255, 137, 95);
	border: 1.5px dotted rgb(255, 137, 95);
	background-color: black;
	box-shadow: rgba(255, 254, 254, 0.1) 0px 0px 5px 0px,
		rgba(255, 255, 255, 0.1) 0px 0px 1px 0px;
	filter: grayscale(100%);
	transform: scale(0.95);
	transition: all 0.5s ease-in;
	border-radius: 15px;
	overflow: hidden;
}

.slider__content p {
	font-size: 15px;
	line-height: 20px;
	white-space: normal;
}

.slider__content.active {
	box-shadow: rgba(255, 137, 95, 0.15) 0px 1px 2px,
		rgba(255, 137, 95, 0.15) 0px 2px 4px, rgba(255, 137, 95, 0.15) 0px 4px
		8px, rgba(255, 137, 95, 0.15) 0px 8px 16px, rgba(255, 137, 95, 0.15)
		0px 16px 32px, rgba(255, 137, 95, 0.15) 0px 32px 64px;
	filter: grayscale(0);
	transform: scale(1);
	transition: all 0.5s ease-in;
	animation: shadow 5s ease 0s infinite;
}

.slider__content img {
	-o-object-fit: cover;
	object-fit: cover;
	width: 100%;
}

.slider__image {
	margin: -30px;
}

.slider__over {
	position: relative;
}

.slider__text {
	left: 0;
	bottom: 0;
	position: absolute;
	width: 100%;
}

.slider__title {
	white-space: normal;
	font-size: 20px;
	line-height: 22px;
	color: white;
}

.slider__controls {
	top: calc(50% - 13px);
	left: 0;
	position: absolute;
	display: flex;
	width: 100%;
	justify-content: space-between;
}

.slider__controls button {
	background-color: transparent;
	border: none;
}

.slider__controls button span {
	color: rgb(255, 137, 95);
	font-size: 15px;
	text-transform: uppercase;
	transition: all 0.7s ease;
}

@media ( max-width : 480px) {
	.slider__controls button span {
		font-size: 10px;
	}
}

.slider__controls button path {
	fill: rgb(255, 137, 95);
	transition: all 0.7s ease;
}

.slider__controls button:hover {
	color: white;
	transition: all 0.7s ease;
}

.slider__controls button:hover path, .slider__controls button:hover span
	{
	color: white;
	fill: white;
	transition: all 0.7s ease;
}

.slider__left {
	padding-right: 15px;
	border: none;
	cursor: pointer;
}

.slider__right {
	margin-left: auto;
	padding-left: 15px;
	border: none;
	cursor: pointer;
}

.selection {
	padding-top: -50px;
	font-family: "Roboto", sans-serif;
	color: rgb(255, 137, 95);
}

.selection input {
	background-color: transparent;
	color: rgb(255, 137, 95);
	border: none;
	outline: none;
}

@
keyframes shadow { 0% {
	box-shadow: -1px 12px 35px 6px rgba(255, 137, 95, 0.2);
}
50
%
{
box-shadow
:
-7px
-8px
38px
11px
rgba(
255
,
137
,
95
,
0.25
);
}
100
%
{
box-shadow
:
-1px
11px
33px
3px
rgba(
255
,
137
,
95
,
0.1
);
}
}
</style>
</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="../layout/header.jsp" />
		<jsp:include page="../layout/mega-menu.jsp" />
	</div>

	<div class="container">
		<h6>Bảng giá tiêm chủng</h6>
		<!-- ======= IMAGE ======= -->
		<img decoding="async" class="aligncenter size-full wp-image-78943"
			src="https://vnvc.vn/wp-content/uploads/2022/09/bang-gia-tiem-chung-vnvc.jpg"
			alt="bảng giá tiêm chủng vnvc" width="1200" height="356">

		<h1>Bảng Giá Vaccine</h1>
		<table border="1" class="table table-striped">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên Bệnh</th>
					<th>Tên Vaccine</th>
					<th>Nơi Sản Xuất</th>
					<th>Giá (VNĐ)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vacxin" items="${listVacxin}" varStatus="status">
					<tr>
						<td>${status.index + 1}</td>
						<td>${vacxin.disease}</td>
						<td>${vacxin.name}</td>
						<td>${vacxin.country}</td>
						<td class="price">${vacxin.price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<h2>Các dịch vụ tiêm chủng</h2>
		<p>Mang đến cho quý Khách hàng nhiều dịch vụ tiêm chủng linh hoạt:</p>
		<ul class="list" style="list-style: disc;">
			<li class="list-item" style="margin-left: 19px;">Tiêm lẻ tất cả
				các loại vắc xin.</li>
			<li class="list-item" style="margin-left: 19px;">Gói vắc xin
				theo độ tuổi: Gói vắc xin cho trẻ dưới 24 tháng, trẻ tiền học đường,
				trẻ vị thành niên và thanh niên, phụ nữ chuẩn bị mang thai, người
				trưởng thành…</li>
			<li class="list-item" style="margin-left: 19px;">Gói vắc xin cá
				thể hóa: Khách hàng có thể linh động lựa chọn vắc xin thiết kế thành
				các gói riêng biệt tùy theo nhu cầu, độ tuổi và khả năng chi trả.</li>
			<li class="list-item" style="margin-left: 19px;">Đặt giữ vắc xin
				theo yêu cầu với nhiều ưu đãi.</li>
			<li class="list-item" style="margin-left: 19px;">Tiêm chủng lưu
				động, theo yêu cầu đối với các nhóm Khách hàng, cơ quan, doanh
				nghiệp.</li>
		</ul>

		<h2>Tiêm chủng vắc xin trọn gói</h2>
		<p>Các Gói vắc xin tại Hệ thống Trung tâm tiêm chủng được thiết kế
			cho nhiều nhóm đối tượng khác nhau cùng với bảng giá tiêm chủng trọn
			gói:</p>
		<ul>
			<li><strong>Gói vắc xin cho trẻ em:</strong>
				<ul class="list" style="list-style: disc;">
					<li style="margin-left: 19px;">Gói vắc xin cho trẻ từ 0 – 6
						tháng gồm: 9 – 12 mũi tiêm, phòng hơn 12 bệnh truyền nhiễm nguy
						hiểm;</li>
					<li style="margin-left: 19px;">Gói vắc xin cho trẻ từ 0 – 9
						tháng gồm: 14 – 17 mũi tiêm, phòng hơn 16 bệnh truyền nhiễm nguy
						hiểm;</li>
					<li style="margin-left: 19px;">Gói vắc xin cho trẻ từ 0 – 12
						tháng gồm: 19 – 23 mũi tiêm, phòng hơn 20 bệnh truyền nhiễm nguy
						hiểm;</li>
					<li style="margin-left: 19px;">Gói vắc xin cho trẻ từ 0 – 24
						tháng gồm: 29 – 30 mũi tiêm, phòng hơn 22 bệnh truyền nhiễm nguy
						hiểm.</li>
				</ul></li>
			<li><strong>Gói vắc xin cho trẻ tiền học đường:</strong> Để
				chuẩn bị hành trang cho trẻ sẵn sàng đến trường, tiêm vắc xin đầy đủ
				là bước không thể thiếu. Gói tiêm chủng cho trẻ tiền học đường với
				tổng 10 loại vắc xin, 14 liều cơ bản bảo vệ trẻ trước hơn 20 căn
				bệnh truyền nhiễm nguy hiểm, tạo lớp “lá chắn” miễn dịch vững chắc
				cho trẻ bước đến tương lai.</li>
			<li><strong>Gói vắc xin cho tuổi vị thành niên và thanh
					niên (Từ 9 – 18 tuổi):</strong> Nhóm tuổi vị thành niên là đối tượng dễ bỏ
				sót chủng ngừa. Mặt khác, môi trường học đường, sinh hoạt tập thể
				tạo cơ hội cho nhiều loại vi khuẩn, virus tấn công, gây bệnh. Gói
				tiêm chủng cho tuổi vị thành niên và thanh niên có 2 Gói nhỏ cho
				Khách hàng lựa chọn vắc xin Gardasil và Gardasil 9. Gói tiêm bao gồm
				15 mũi tiêm, cho gần 20 bệnh truyền nhiễm nguy hiểm.</li>
			<li><strong>Gói vắc xin cho người trưởng thành:</strong> Vắc xin
				không chỉ quan trọng với trẻ em mà còn cả người lớn. Tiêm chủng đầy
				đủ, đúng lịch, giúp người cao tuổi, người có bệnh nền, người có hệ
				đề kháng yếu tăng cường hệ miễn dịch, chống lại các tác nhân gây
				bệnh từ môi trường bên ngoài. Gói vắc xin cho người trưởng thành gồm
				11 mũi tiêm, bảo vệ người trưởng thành trước 17 căn bệnh truyền
				nhiễm.</li>
			<li><strong>Gói vắc xin cho phụ nữ chuẩn bị mang thai:</strong>
				Hệ thống miễn dịch của cơ thể người phụ nữ khi mang thai hoạt động
				kém hơn bình thường, nguy cơ mắc bệnh cao, đe dọa sức khỏe của bản
				thân và thai nhi. Gói vắc xin cho phụ nữ chuẩn bị mang thai gồm 11
				mũi tiêm, bảo vệ trước 17 căn bệnh truyền nhiễm.</li>
		</ul>
		<p>
			<strong>Lưu ý:</strong> Tổng Giá trị Gói vắc xin = Tổng giá trị các
			mũi tiêm lẻ (hoặc giá ưu đãi nếu có) + Khoảng 10% phí đặt giữ theo
			yêu cầu (bao gồm phí vận chuyển, phí luân chuyển, phí bảo quản vắc
			xin kho lạnh đạt chuẩn GSP, phí chống trượt giá…).
		</p>
		<p>Giá vắc xin tại đã bao gồm các chi phí như phí khám sàng lọc
			trước tiêm với bác sĩ, phí tư vấn và tài liệu bệnh học, sổ tiêm
			chủng, tin nhắn nhắc lịch tiêm, phí chăm sóc các phản ứng sau tiêm
			qua hệ thống tổng đài và rất nhiều tiện ích khác như giữ xe, khu vui
			chơi trong nhà, nước uống sạch, wifi tốc độ cao, bỉm tã miễn phí…</p>

		<h2>Các hình thức thanh toán khi tiêm vắc xin</h2>
		<p>Để quý Khách hàng an tâm tận hưởng dịch vụ tiêm chủng cao cấp
			tại mà không cần lo lắng vấn đề thanh toán, linh hoạt áp dụng đa dạng
			hình thức thanh toán:</p>
		<ul class="list" style="list-style: disc;">
			<li style="margin-left: 19px;">Thanh toán tiền mặt tại quầy thu
				ngân;</li>
			<li style="margin-left: 19px;">Thanh toán qua thẻ tín dụng;</li>
			<li style="margin-left: 19px;">Thanh toán quẹt thẻ thông qua máy
				POS tại trung tâm (chấp nhận các loại thẻ thanh toán nội địa ATM,
				thẻ Visa Debit, Visa Credit);</li>
			<li style="margin-left: 19px;">Thanh toán qua các ứng dụng
				thương mại điện tử, dịch vụ thanh toán di động, ví điện tử VNPAY-QR,
				Momo, Apple Pay…;</li>
			<li style="margin-left: 19px;">Thanh toán sau không lãi suất qua
				ứng dụng tài chính MCredit.</li>
		</ul>
		<p>
			Tìm Trung tâm tiêm chủng gần nhất tại đây: <a
				href="https://vnvc.vn/he-thong-trung-tam-tiem-chung/">https://vnvc.vn/he-thong-trung-tam-tiem-chung/</a>
		</p>
		<h2>Liên hệ hotline để được hướng dẫn thanh toán</h2>
		<p>
			Không ngừng nâng cao chất lượng dịch vụ để phục vụ Khách hàng tốt
			nhất, mở cửa sớm, đóng cửa muộn từ 7h30 đến 17h tất cả các ngày trong
			tuần, kể cả thứ 7, chủ nhật và các ngày lễ lớn, xuyên trưa không
			nghỉ… sẽ hỗ trợ quý Khách chi tiết các bước thanh toán cho bảng giá
			vắc xin, đăng ký tiêm chủng tiện lợi và nhanh chóng qua Hotline <strong>028.7102.6595</strong>.
		</p>
		<h2>Inbox fanpage để được hướng dẫn chuyển khoản</h2>
		<p>Tiếp đón hàng trăm ngàn lượt Khách mỗi ngày, hàng trăm trung
			tâm trải dài từ Bắc chí Nam, số lượng Khách hàng cần hỗ trợ mỗi ngày
			qua Hotline là rất lớn. Do đó, đôi khi các nhân viên Tổng đài chưa
			thể hỗ trợ ngay cho quý Khách. Để có thể được trợ giúp nhanh hơn vì
			lịch tiêm cũng như bảng giá tiêm chủng, Quý Khách có thể inbox qua
			fanpage – Trung tâm Vaccine niềm tin cho mọi nhà.</p>
	</div>

	<div class="container">
		<h6>Bài viết cùng chủ đề</h6>
		<div class="content__wrapper">
			<div class="selection">
				<label for="itemNumber"></label> <input type="number" value=""
					min="1" max="6" id="itemNumber">
				<p id="itemNumberMess"></p>
			</div>
			<div class="slider">
				<div class="slider__wrapper" id="list">
					<div class="slider__item">
						<div class="slider__content">
							<div class="slider__image">
								<img
									src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-benh-cho-be.jpg"
									alt="...">
							</div>
							<div class="slider__over">
								<div class="slider__text">
									<h2 class="slider__title">Bạch hầu vẫn diễn biến phức tạp</h2>
									<p>Nhiều ca bạch hầu xuất hiện tại các địa phương miền Bắc
										và miền Trung.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="slider__item">
						<div class="slider__content active">
							<div class="slider__image">
								<img
									src="https://vnvc.vn/wp-content/uploads/2024/08/ben-trong-kho-lanh-cua-vnvc.jpg"
									alt="...">
							</div>
							<div class="slider__over">
								<div class="slider__text">
									<h2 class="slider__title">Trẻ chưa đến tuổi tiêm vắc xin
										sởi làm gì phòng bệnh?</h2>
									<p>TP.HCM đang nguy cơ dịch sởi bùng phát số ca bệnh gia
										tăng nhanh chóng.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="slider__item">
						<div class="slider__content">
							<div class="slider__image">
								<img
									src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-soi-cho-tre-nho.jpg"
									alt="...">
							</div>
							<div class="slider__over">
								<div class="slider__text">
									<h2 class="slider__title">Trẻ sơ sinh, trẻ nhỏ có nên tiêm
										vắc xin phế cầu không?</h2>
									<p>Nhiễm phế cầu khuẩn là mối đe dọa đối với sức khỏe của
										cộng đồng.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="slider__controls">
					<button class="slider__left" type="button" id="arrowLeft">
						<span> Trở lại </span>
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 25 25">
							<path
								d="M24 12.001H2.914l5.294-5.295-.707-.707L1 12.501l6.5 6.5.707-.707-5.293-5.293H24v-1z"
								data-name="Left" /></svg>
					</button>
					<button class="slider__right" type="button" id="arrowRight">
						<span> Tiếp </span>
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 25 25">
							<path
								d="m17.5 5.999-.707.707 5.293 5.293H1v1h21.086l-5.294 5.295.707.707L24 12.499l-6.5-6.5z"
								data-name="Right" /></svg>
					</button>
				</div>
			</div>
		</div>
	</div>
	<script>
    document.querySelectorAll('.price').forEach(element => {
        let number = parseFloat(element.textContent.replace(/[^0-9.]/g, ''));
        if (!isNaN(number)) {
            let formattedNumber = (number * 1000).toLocaleString('vi-VN');
            element.textContent = formattedNumber;
        }
    });
</script>

	<script>
	// Element references
	const arrowRight = document.getElementById("arrowRight");
	const arrowLeft = document.getElementById("arrowLeft");
	const list = document.getElementById("list");
	const valueItemNumber = document.getElementById("itemNumber");
	const valueItemNumberMax = valueItemNumber.ariaValueMax;
	const defaultItemNumber = 3;
	const initialNumberItems = list.children.length;
	const itemNumberMess = document.getElementById("itemNumberMess");
	const wrapper = document.querySelector(".slider__wrapper");
	const wrapperWidth = wrapper.offsetWidth;
	const numVisibleItems = 3;
	let centralItem = 2;
	let itemNumberValue = parseInt(valueItemNumber.value);

	// Initialize item number and set width of items
	const initialItemNumberValue = itemNumberValue || defaultItemNumber;
	let itemNumber = calculatePercentItemNumber(initialItemNumberValue);
	resetItems(itemNumber);

	// Utility functions
	function calculatePercentItemNumber(num) {
	  return num ? 100 / num : 100 / defaultItemNumber;
	}

	function listNumber(inputNumber) {
	  const message =
	    inputNumber >= 6
	      ? "You reached the maximum number of items"
	      : `Changed to ${inputNumber}`;
	  itemNumberMess.textContent = message;
	}

	function resetItems(number) {
	  const sliderItems = document.querySelectorAll(".slider__item");
	  sliderItems.forEach((item) => (item.style.width = `${number}%`));
	  itemNumber = number;
	}

	function calculateCentralItem(numVisibleItems) {
	  const centralItem = Math.ceil(numVisibleItems / 2);
	  return centralItem;
	}

	function addActiveElement(centralItem, totalVisibleItems) {
	  // Clear active class
	  const sliderItems = document.querySelectorAll(".slider__item");
	  sliderItems.forEach((item) =>
	    item.querySelector(".slider__content").classList.remove("active")
	  );

	  // Set active class to central element(s)
	  const central = sliderItems[Math.floor(centralItem)];
	  central.querySelector(".slider__content").classList.add("active");

	  if (totalVisibleItems % 2 === 0) {
	    const central2 = sliderItems[Math.floor(centralItem) + 1];
	    central2.querySelector(".slider__content").classList.add("active");

	    if (totalVisibleItems == 2) {
	      const central3 = sliderItems[Math.floor(centralItem) - 1];
	      central3.querySelector(".slider__content").classList.add("active");
	    }
	  }
	}

	// Event listeners
	valueItemNumber.addEventListener("input", function () {
	  itemNumberValue = parseInt(valueItemNumber.value);
	  listNumber(itemNumberValue);
	  const newPercentage = calculatePercentItemNumber(itemNumberValue);
	  resetItems(newPercentage);
	  centralItem = calculateCentralItem(itemNumberValue);
	  addActiveElement(centralItem - 1, itemNumberValue);
	});

	arrowRight.addEventListener("click", moveFirstToEnd);
	arrowLeft.addEventListener("click", moveLastToStart);

	function moveFirstToEnd() {
	  const firstItem = list.firstElementChild;
	  firstItem.style.marginLeft = `calc(-${itemNumber}%)`;

	  if (firstItem) {
	    setTimeout(() => {
	      firstItem.style.marginLeft = "";
	      list.appendChild(firstItem);
	    }, 300);
	  }
	  addActiveElement(centralItem, itemNumberValue);
	}

	function moveLastToStart() {
	  const lastItem = list.lastElementChild;
	  list.removeChild(lastItem);
	  list.insertBefore(lastItem, list.firstElementChild);
	  const newFirstItem = list.firstElementChild;

	  if (newFirstItem) {
	    newFirstItem.style.marginLeft = `calc(-${itemNumber}%)`;
	    setTimeout(() => {
	      newFirstItem.style.marginLeft = "";
	    }, 1);
	  }

	  addActiveElement(centralItem - 1, itemNumberValue);
	}


</script>

	<!-- ======= FOOTER ======= -->
	<jsp:include page="../layout/footer.jsp" />

	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

</body>
</html>
