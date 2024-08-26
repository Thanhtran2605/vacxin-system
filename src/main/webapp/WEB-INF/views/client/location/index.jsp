<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<title>Vacxin System - Đà Nẵng</title>
<!-- ======= CSS và Bootstrap ======= -->
<jsp:include page="../layout/cssLink.jsp" />
<style>
.container1 {
	display: flex; /* Sử dụng flexbox để hiển thị ngang hàng */
	justify-content: space-between;
	padding: 100px;
}

.location-info {
	width: 48%;
}

.location-info h4 {
	color: #007bff;
	margin-bottom: 15px;
}

.location-info p {
	margin-bottom: 15px; /* Tạo khoảng cách giữa các địa điểm */
}

.location-info p strong {
	display: block; /* Hiển thị địa chỉ trên dòng mới */
	margin-bottom: 5px; /* Khoảng cách giữa tên địa điểm và địa chỉ */
}

.location-info a {
	display: flex;
	align-items: center;
	color: #007bff;
	text-decoration: none;
	cursor: pointer;
}

.location-info a img {
	margin-left: 5px; /* Tạo khoảng cách giữa text và icon */
}

.map {
	width: 48%;
	height: 500px;
	border: 1px solid #e0e0e0;
	border-radius: 10px;
	overflow: hidden;
	padding: 0; /* Đảm bảo không có khoảng cách bên trong */
	margin: 0; /* Đảm bảo không có khoảng cách bên ngoài */
}

.map iframe {
	width: 100%;
	height: 100%; /* Đảm bảo iframe chiếm hết chiều cao của phần tử chứa */
	border: 0;
}

.info-section {
	padding: 50px 0;
	text-align: justify;
	background-color: #f8f9fa;
}

.info-section h3 {
	color: #007bff;
	margin-bottom: 20px;
	font-size: 2em; /* Tăng kích thước chữ của tiêu đề */
}

.info-section p {
	font-size: 1.2em; /* Tăng kích thước chữ của đoạn văn */
	line-height: 1.6;
	margin: 0 auto; /* Căn giữa đoạn văn */
	/*max-width: 1500px; /* Căn lề 2 bên */
}
</style>
<script>
	function updateMap(url) {
		document.getElementById("mapIframe").src = url;
	}
</script>
<!-- Slick Carousel CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

<!-- Slick Carousel JS -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</head>
<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="../layout/header.jsp" />
		<jsp:include page="../layout/mega-menu.jsp" />
	</div>

	<section class="mt-8">
		<div class="container">
			<div class="hero-slider ">
				<div
					style="background: url(<c:url value="/resources/assets/images/banner/banner1.png" />)no-repeat; background-size: cover; border-radius: .5rem; background-position: center;">
					<div
						class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
						<span class="badge text-bg-warning">Opening Sale Discount
							50%</span>

						<h2 class="text-dark display-5 fw-bold mt-4">
							SuperMarket Daily <br> Fresh Grocery
						</h2>
						<p class="lead">Introduced a new model for online grocery
							shopping and convenient home delivery.</p>
						<a href="#!" class="btn btn-dark mt-3">Shop Now <i
							class="feather-icon icon-arrow-right ms-1"></i></a>
					</div>

				</div>
				<div
					style="background: url(<c:url value="/resources/assets/images/banner/banner2.png" />)no-repeat; background-size: cover; border-radius: .5rem; background-position: center;">
					<div
						class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
						<span class="badge text-bg-warning">Free Shipping - orders
							over $100</span>
						<h2 class="text-dark display-5 fw-bold mt-4">
							Free Shipping on <br> orders over <span class="text-primary">$100</span>
						</h2>
						<p class="lead">Free Shipping to First-Time Customers Only,
							After promotions and discounts are applied.</p>
						<a href="#!" class="btn btn-dark mt-3">Shop Now <i
							class="feather-icon icon-arrow-right ms-1"></i></a>
					</div>

				</div>

			</div>
		</div>
	</section>

	<!-- Section giới thiệu -->
	<!-- Section giới thiệu -->
	<section class="info-section">
		<div class="container">
			<h3>Trung tâm tiêm chủng VNVC</h3>
			<p>Trung tâm tiêm chủng cho trẻ em và người lớn chất lượng hàng
				đầu, VNVC đang mở rộng hệ thống các trung tâm giúp mang chất lượng
				dịch vụ tốt nhất với giá cực kỳ ưu đãi đến người dân trên khắp cả
				nước. Tại hệ thống tiêm chủng VNVC, chúng tôi luôn mong muốn đem lại
				sự thuận tiện, thoải mái và yên tâm cho khách hàng.</p>
			<p>Khách hàng sẽ được Bác sĩ chuyên khoa kiểm tra sức khỏe và tư
				vấn các mũi tiêm phù hợp với lứa tuổi. Đội ngũ điều dưỡng được đào
				tạo chuyên biệt về tiêm chủng cùng với sự chu đáo và nhiệt tình chăm
				sóc trẻ. Phòng tiêm với đầy đủ các trang thiết bị y tế đạt chuẩn cao
				cấp. Không gian phòng chờ trước tiêm và sau tiêm rộng rãi, thoáng
				mát, đầy màu sắc cuốn hút, tạo sự thân thiện với trẻ.</p>
			<p>Ngoài ra mẹ và bé còn có khu vực riêng cho con bú, phòng thay
				tã, phòng pantry… để con được thoải mái như đang ở nhà. Với cơ sở
				vật chất và chất lượng dịch vụ 5 sao, giá vắc xin tại VNVC cực kỳ
				cạnh tranh và đặc biệt, chỉ tính phí vắc xin, các tiện ích kèm theo
				đều được miễn phí như: khám sàng lọc trước tiêm, gửi xe, khu vui
				chơi, nước uống, wifi, các phòng riêng cho mẹ và bé....</p>
		</div>
	</section>



	<section class="container1">
		<!-- Section bên trái: Thông tin địa điểm Đà Nẵng -->
		<div class="location-info">
			<h4>Địa điểm tiêm chủng tại Đà Nẵng</h4>
			<p>
				<strong>Trung tâm Tiêm chủng VNVC:</strong> Lô 02-A4.3, Lô 03-A4.3,
				Khu đất Công viên Bắc Tượng Đài, Q. Hải Châu, Đà Nẵng<br> <a
					onclick="updateMap('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.323122808932!2d108.22279291144518!3d16.04871363992117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142199928e8fd55%3A0x5c3459a8aac018d6!2zVHJ1bmcgdMOibSBUacOqbSBjaOG7p25nIFZOVkMgxJDDoCBO4bq1bmc!5e0!3m2!1svi!2s!4v1724440811225!5m2!1svi!2s')">
					Tìm trên bản đồ <img
					src="https://img.icons8.com/ios-glyphs/30/000000/map-marker.png"
					alt="icon" />
				</a>
			</p>
			<p>
				<strong>Trung Tâm Y Tế Dự Phòng Đà Nẵng:</strong> 315 Phan Chu
				Trinh, Q. Hải Châu, Đà Nẵng<br> <a
					onclick="updateMap('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1355.573726964011!2d108.21904991998551!3d16.058145437691778!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219cbe2a3db61%3A0xc9c9d2544563ae60!2zVHJ1bmcgdMOibSBZIHThur8gROG7sSBwaMOybmcgVHAuIMSQw6AgTuG6tW5n!5e0!3m2!1svi!2s!4v1724441019354!5m2!1svi!2s')">
					Tìm trên bản đồ <img
					src="https://img.icons8.com/ios-glyphs/30/000000/map-marker.png"
					alt="icon" />
				</a>
			</p>
			<p>
				<strong>Phòng tiêm chủng SAFPO:</strong> 43 Đường Cao Thắng, Q. Hải
				Châu, Đà Nẵng<br> <a
					onclick="updateMap('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.792003928154!2d108.21131691144555!3d16.076279689183426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219466899afd9%3A0xe41915b29ae00766!2zUGjDsm5nIFRpw6ptIENo4bunbmcgU2FmcG8gNS4xIMSQw6AgTuG6tW5n!5e0!3m2!1svi!2s!4v1724441122611!5m2!1svi!2s')">
					Tìm trên bản đồ <img
					src="https://img.icons8.com/ios-glyphs/30/000000/map-marker.png"
					alt="icon" />
				</a>
			</p>
			<p>
				<strong>Bệnh viện Đa khoa Quốc tế Vinmec Đà Nẵng:</strong> Đường 30
				Tháng 4, Khu dân cư số 4 đường Nguyễn Tri Phương, Q. Hải Châu, Đà
				Nẵng<br> <a
					onclick="updateMap('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.5130756035574!2d108.20870481144506!3d16.038843540185084!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142199455733b71%3A0xe1bad94144e68728!2zQuG7h25oIHZp4buHbiDEkGEga2hvYSBRdeG7kWMgdOG6vyBWaW5tZWMgxJDDoCBO4bq1bmc!5e0!3m2!1svi!2s!4v1724441185897!5m2!1svi!2s')">
					Tìm trên bản đồ <img
					src="https://img.icons8.com/ios-glyphs/30/000000/map-marker.png"
					alt="icon" />
				</a>
			</p>
			<p>
				<strong>Đơn vị tiêm chủng - Bệnh viện Phụ sản - Nhi Đà
					Nẵng:</strong> 402 Lê Văn Hiến, Q. Ngũ Hành Sơn, Đà Nẵng<br> <a
					onclick="updateMap('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.817502244123!2d108.24717651144489!3d16.023012940607998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421751fcd1e613%3A0x32a785c729778d11!2zQuG7h25oIFZp4buHbiBQaOG7pSBT4bqjbiAtIE5oaSDEkMOgIE7hurVuZw!5e0!3m2!1svi!2s!4v1724441239665!5m2!1svi!2s')">
					Tìm trên bản đồ <img
					src="https://img.icons8.com/ios-glyphs/30/000000/map-marker.png"
					alt="icon" />
				</a>
			</p>
			<p>
				<strong>Bệnh viện 199:</strong> 216 Nguyễn Công Trứ, Q. Sơn Trà, Đà
				Nẵng<br> <a
					onclick="updateMap('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.987952856135!2d108.23362491144536!3d16.06611493945554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142182a592ea333%3A0x4b9afc99cc59a06c!2zQuG7h25oIHZp4buHbiAxOTkgLSBC4buZIEPDtG5nIEFu!5e0!3m2!1svi!2s!4v1724441279982!5m2!1svi!2s')">
					Tìm trên bản đồ <img
					src="https://img.icons8.com/ios-glyphs/30/000000/map-marker.png"
					alt="icon" />
				</a>
			</p>

			<p>
				<strong>Bệnh viện Đa khoa Gia đình Đà Nẵng:</strong> 73 Nguyễn Hữu
				Thọ, Q. Hải Châu, Đà Nẵng<br> <a
					onclick="updateMap('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.224942721647!2d108.20641601144533!3d16.053812839784786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219beb8af586d%3A0xc2732f3d09cd14bb!2zQuG7h25oIHZp4buHbiDEkGEga2hvYSBHaWEgxJDDrG5oIMSQw6AgTuG6tW5n!5e0!3m2!1svi!2s!4v1724441425832!5m2!1svi!2s')">
					Tìm trên bản đồ <img
					src="https://img.icons8.com/ios-glyphs/30/000000/map-marker.png"
					alt="icon" />
				</a>
			</p>

		</div>

		<!-- Section bên phải: Bản đồ -->
		<div class="map">
			<iframe id="mapIframe"
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.787760021374!2d108.21995731433609!3d16.07585744353109!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142184e99999999%3A0x9999999999999999!2sDaNang%20Vietnam!5e0!3m2!1sen!2s!4v1597852455971!5m2!1sen!2s"
				width="600" height="450" style="border: 0;" allowfullscreen=""
				loading="lazy"></iframe>
		</div>
	</section>

	<!-- ======= Footer ======= -->
	<jsp:include page="../layout/footer.jsp" />
	<!-- ======= JavaScript ======= -->
	<jsp:include page="../layout/jsLink.jsp" />


</body>
</html>
