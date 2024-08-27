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
<style>
/* Đảm bảo bảng nằm giữa và có chiều rộng bằng với banner */
.div_detail_post.tbcnangs {
	display: flex;
	justify-content: center; /* Canh giữa bảng */
	align-items: center;
	margin: 0 auto; /* Đảm bảo bảng nằm ở giữa */
	/* Đảm bảo bảng không vượt quá kích thước của phần chứa */
}

/* Điều chỉnh kích thước bảng */
.table-container {
	max-width: 80%;
	/* Giảm kích thước bảng lại so với chiều rộng của banner */
	margin: 0 auto; /* Căn giữa bảng */
}

table {
	width: 100%; /* Chiều rộng bảng chiếm toàn bộ container */
	border-collapse: collapse; /* Gộp các đường viền thành một */
}

/* Hiển thị rõ viền trong bảng */
table, th, td {
	border: 2px solid #ff4500; /* Đặt viền dày và màu nổi bật */
}

th, td {
	padding: 8px; /* Thêm khoảng cách bên trong ô */
	text-align: left;
}
/* Container bao quanh */

/* Căn giữa nội dung bên trong */
.title {
	text-align: center; /* Căn giữa văn bản bên trong */
}

.centered-text {
	display: flex;
	justify-content: center; /* Căn giữa theo chiều ngang */
	align-items: center;
	/* Căn giữa theo chiều dọc nếu có chiều cao lớn hơn nội dung */
	text-align: center; /* Căn giữa văn bản trong phần tử */
	font-size: 24px;
	/* Điều chỉnh kích thước chữ (thay đổi theo nhu cầu) */
	font-weight: bold; /* Đậm hơn chữ */
	margin: 20px 0; /* Khoảng cách trên và dưới (tuỳ chỉnh theo nhu cầu) */
}
</style>


</head>
<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="../layout/header.jsp" />
		<jsp:include page="../layout/mega-menu.jsp" />
	</div>

	<div class="container my-5">
		<div class="title">
			<h1 class="gt-title my-5">Lịch Tiêm Chủng</h1>
		</div>

		<div class="panel-body">
			<div class=" div_detail_post tbcnangs">
				<table class="tb90 vmid">
					<tbody>
						<tr>
							<td style="color: #ffffff; text-align: center; width: 411px;"
								colspan="16" bgcolor="#304095"><strong>LỊCH TIÊM
									CHỦNG CHO TRẺ TỪ 0-8 TUỔI&nbsp;</strong></td>
						</tr>
						<tr>
							<td style="color: #ffffff; text-align: left; width: 91px;"
								rowspan="2" bgcolor="#525aa3">Tuổi/Vaccine</td>
							<td style="color: #ffffff; width: 29px;" bgcolor="#525aa3"></td>
							<td style="color: #ffffff; text-align: center; width: 202px;"
								colspan="10" bgcolor="#525aa3">Tháng</td>
							<td style="color: #ffffff; text-align: center; width: 89px;"
								colspan="4" bgcolor="#525aa3">Tuổi</td>
						</tr>
						<tr>
							<td style="color: #ffffff; width: 29px;" bgcolor="#525aa3">Sơ
								sinh</td>
							<td style="color: #ffffff; width: 20px;" bgcolor="#525aa3">2</td>
							<td style="color: #ffffff; width: 20px;" bgcolor="#525aa3">3</td>
							<td style="color: #ffffff; width: 20px;" bgcolor="#525aa3">4</td>
							<td style="color: #ffffff; width: 20px;" bgcolor="#525aa3">6</td>
							<td style="color: #ffffff; width: 20px;" bgcolor="#525aa3">7</td>
							<td style="color: #ffffff; width: 20.2px;" bgcolor="#525aa3">8</td>
							<td style="color: #ffffff; width: 19.8px;" bgcolor="#525aa3">9</td>
							<td style="color: #ffffff; width: 22px;" bgcolor="#525aa3">10
								-11</td>
							<td style="color: #ffffff; width: 20px;" bgcolor="#525aa3">12</td>
							<td style="color: #ffffff; width: 20px;" bgcolor="#525aa3">18</td>
							<td style="color: #ffffff; width: 20px;" bgcolor="#525aa3">2</td>
							<td style="color: #ffffff; width: 23px;" bgcolor="#525aa3">3-4</td>
							<td style="color: #ffffff; width: 23px;" bgcolor="#525aa3">5-6</td>
							<td style="color: #ffffff; width: 23px;" bgcolor="#525aa3">7-8</td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Lao</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm gan B</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Bạch hầu, ho gà,
									uốn ván</span></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Bại liệt</span></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm phổi, viêm
									màng não mủ do Hib</span></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Tiêu chảy do Rota
									Virus</span></td>
							<td></td>
							<td colspan="4"><span style="font-weight: 400;">Phác
									đồ 2 hoặc 3 liều, mỗi liều cách nhau tối thiểu 1 tháng</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm phổi, viêm
									màng não, viêm tai giữa do phế cầu khuẩn</span></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm màng não,
									nhiễm khuẩn huyết, viêm phổi do não mô cầu khuẩn B,C</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Cúm</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="11"><span style="font-weight: 400;">Phác
									đồ tiêm 2 liều cách nhau tối thiểu 1 tháng cho lần tiêm đầu
									tiên.</span>
								<p></p>
								<p>
									<span style="font-weight: 400;">Tiêm nhắc lại 1 liều/
										năm.</span>
								</p></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Sởi</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm màng não,
									nhiễm khuẩn huyết, viêm phổi do não mô cầu khuẩn A,C,W,Y</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Vắc xin phòng
									viêm não Nhật Bản sống giảm độc lực tái tổ hợp</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="5"><span style="font-weight: 400;">Phác
									đồ 2 liều cách nhau 1 năm</span></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Vắc xin phòng
									viêm não Nhật Bản bất hoạt</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="6"><span style="font-weight: 400;">Phác
									đồ 3 liều tiêm và các liều nhắc lại</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Sởi, Quai bị,
									Rubella</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td></td>
							<td><span style="font-weight: 400;">x</span></td>
							<td colspan="2"></td>
							<td colspan="2"><span style="font-weight: 400;">x
									(khuyến cáo)</span></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Thủy đậu</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="8"><span style="font-weight: 400;">Phác
									đồ 2 liều tiêm cách nhau tối thiểu 3 tháng</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm gan A</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="2"><span style="font-weight: 400;">Phác
									đồ 2 liều tiêm cách nhau tối thiểu 6 tháng</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm gan A + B</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="2"><span style="font-weight: 400;">Phác
									đồ 2 liều tiêm cách nhau tối thiểu 6 tháng</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Thương hàn</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="4"><span style="font-weight: 400;">1
									liều, tiêm nhắc mỗi 3 năm</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Bệnh tả</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="4"><span style="font-weight: 400;">Uống
									2 liều cách nhau tối thiểu 2 tuần</span></td>
						</tr>
					</tbody>
				</table>
			</div>
			<p>
			<div class="centered-text">
				<strong>Lịch tiêm chủng vắc xin cho tuổi vị thành niên và
					người lớn</strong>
			</div>

			</p>

			<div class=" div_detail_post tbcnangs">
				<table class="tb90 vmid">
					<tbody>
						<tr>
							<td style="color: #ffffff; text-align: center;" colspan="9"
								bgcolor="#304095"><strong>LỊCH TIÊM CHỦNG CHO TUỔI
									VỊ THÀNH NIÊN VÀ NGƯỜI LỚN</strong></td>
						</tr>
						<tr>
							<td style="color: #ffffff; text-align: left; width: 91px;"
								bgcolor="#525aa3">Tuổi/Vaccine</td>
							<td style="color: #ffffff; width: 30px;" bgcolor="#525aa3">9-11
								tuổi</td>
							<td style="color: #ffffff; width: 41px;" bgcolor="#525aa3">12-15
								tuổi</td>
							<td style="color: #ffffff; width: 41px;" bgcolor="#525aa3">16-18
								tuổi</td>
							<td style="color: #ffffff; width: 41px;" bgcolor="#525aa3">19-26
								tuổi</td>
							<td style="color: #ffffff; width: 41px;" bgcolor="#525aa3">27-45
								tuổi</td>
							<td style="color: #ffffff; width: 41px;" bgcolor="#525aa3">46-55
								tuổi</td>
							<td style="color: #ffffff; width: 41px;" bgcolor="#525aa3">56-64
								tuổi</td>
							<td style="color: #ffffff; width: 41px;" bgcolor="#525aa3">&gt;=
								65 tuổi</td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Cúm</span></td>
							<td colspan="8"><span style="font-weight: 400;">Tiêm
									1 liều và tiêm nhắc lại mỗi năm 1 lần.</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm phổi do phế
									cầu khuẩn</span></td>
							<td colspan="8"><span style="font-weight: 400;">Tiêm
									1 liều duy nhất.</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Sởi – Quai bị –
									Rubella</span></td>
							<td colspan="8"><span style="font-weight: 400;">Tiêm
									2 liều cách nhau tối thiểu 1 tháng. Phụ nữ nên hoàn tất lịch
									tiêm trước khi mang thai tối thiểu 3 tháng.</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Thuỷ đậu</span></td>
							<td colspan="8"><span style="font-weight: 400;">Tiêm
									2 liều cách nhau tối thiểu 1 tháng. Phụ nữ nên hoàn tất lịch
									tiêm trước khi mang thai tối thiểu 3 tháng.</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Uốn ván</span></td>
							<td colspan="5"><span style="font-weight: 400;">Phụ
									nữ trong độ tuổi sinh đẻ:</span>
								<p></p>
								<p>
									<span style="font-weight: 400;">– Liều 1: Tiêm càng sớm
										càng tốt khi có thai lần đầu</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 2: cách liều đầu
										tiên 1 tháng</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 3: cách liều 2
										tối thiểu 6 tháng hoặc trong thời kỳ có thai sau</span>
								</p></td>
							<td colspan="3"><span style="font-weight: 400;">Tiêm
									3 liều.</span>
								<p></p>
								<p>
									<span style="font-weight: 400;">– Liều 1: Lần tiêm đầu
										tiên</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 2: cách liều 1
										tối thiểu 1 tháng</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 3: Cách liều 2 từ
										6 tháng</span>
								</p></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Bạch hầu – Uốn
									ván – Ho gà</span></td>
							<td colspan="8"><span style="font-weight: 400;">Tiêm
									1 liều và nhắc lại mỗi 10 năm (đã hoàn thành lịch cơ bản)</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm não Nhật Bản</span></td>
							<td colspan="3"><span style="font-weight: 400;">Chưa
									từng tiêm vắc xin VNNB trước đó: Tiêm 2 liều cách nhau 1 năm.</span></td>
							<td colspan="5"><span style="font-weight: 400;">Tiêm
									1 liều duy nhất.</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm màng não,
									nhiễm khuẩn huyết, viêm phổi do não mô cầu khuẩn A,C,Y,W-135</span></td>
							<td colspan="8"><span style="font-weight: 400;">Tiêm
									1 liều duy nhất</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm màng não,
									nhiễm khuẩn huyết, viêm phổi do não mô cầu khuẩn B, C</span></td>
							<td colspan="5"><span style="font-weight: 400;">Tiêm
									2 liều:</span>
								<p></p>
								<p>
									<span style="font-weight: 400;">– Liều 1: Lần tiêm đầu
										tiên</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 2: Cách liều đầu
										tiên 6-8 tuần</span>
								</p></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm gan A</span></td>
							<td colspan="3"><span style="font-weight: 400;">Tiêm
									2 liều, cách nhau từ 6-12 tháng</span></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm gan B</span></td>
							<td colspan="8"><span style="font-weight: 400;">Lịch
									tiêm 3 liều:</span>
								<p></p>
								<p>
									<span style="font-weight: 400;">– Liều 1: Lần đầu tiên
										tiêm</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 2: 1 tháng sau
										liều 1</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 3: 5 tháng sau
										liều 2</span>
								</p></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Viêm gan A + B</span></td>
							<td colspan="2"><span style="font-weight: 400;">Tiêm
									2 liều, cách nhau từ 6-12 tháng</span></td>
							<td colspan="6"><span style="font-weight: 400;">Tiêm
									3 liều:</span>
								<p></p>
								<p>
									<span style="font-weight: 400;">– Liều 1: Lần đầu tiên
										tiêm</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 2: 1 tháng sau
										liều 1</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 3: 5 tháng sau
										liều 2</span>
								</p></td>
						</tr>
						<tr>
							<td rowspan="4"><span style="font-weight: 400;">Bệnh
									lây lan qua đường tình dục và ung thư cổ tử cung do HPV</span></td>
							<td colspan="8"><span style="font-weight: 400;">Đối
									với nhóm tuổi từ 9 đến dưới 15 tuổi</span></td>
						</tr>
						<tr>
							<td colspan="2"><span style="font-weight: 400;">Phác
									đồ 2 liều, mỗi liều cách nhau 6 tháng</span></td>
							<td></td>
							<td></td>
							<td><i><span style="font-weight: 400;">Khuyến cáo
										nếu có nguy cơ cao</span></i></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="8"><span style="font-weight: 400;">Đối
									với nhóm tuổi từ tròn 15 đến 26 tuổi</span></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td colspan="2"><span style="font-weight: 400;">Phác
									đồ 3 liều</span>
								<p></p>
								<p>
									<span style="font-weight: 400;">– Liều 1: lần đầu tiên</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 2: cách liều 1 là
										2 tháng</span>
								</p>
								<p>
									<span style="font-weight: 400;">– Liều 3: cách liều 2 là
										4 tháng</span>
								</p></td>
							<td><i><span style="font-weight: 400;">Khuyến cáo
										nếu có nguy cơ cao</span></i></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Tả</span></td>
							<td colspan="8"><span style="font-weight: 400;">Uống
									2 liều cách nhau tối thiểu 2 tuần. Uống nhắc lại khi có dịch.</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Thương hàn</span></td>
							<td colspan="8"><span style="font-weight: 400;">Tiêm
									1 liều và nhắc lại mỗi 3 năm khi có nguy cơ</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Dại</span></td>
							<td colspan="8"><span style="font-weight: 400;">Phác
									đồ dự phòng trước phơi nhiễm gồm 3 liều (nếu người có nguy cơ,
									có thể tiêm các liều nhắc). Phác đồ dự phòng sau phơi nhiễm là
									4-5 liều (nếu trước đó chưa tiêm)</span></td>
						</tr>
						<tr>
							<td><span style="font-weight: 400;">Sốt vàng</span></td>
							<td colspan="7"><span style="font-weight: 400;">Tiêm
									1 liều khi đi du lịch đến những vùng có nguy cơ cao</span></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<br>

		<div class="box_camnang">
			<div class="box_camnang_title" role="tab" id="heading2">
				<h4 class="panel-title">
					<a role="button" data-toggle="collapse" data-parent="#accordion"
						href="#collapse2" aria-expanded="true" aria-controls="collapse2"
						class=""> QUY TRÌNH TIÊM VẮC XIN TẠI TRUNG TÂM TIÊM CHỦNG VNVC
					</a>
				</h4>
			</div>
			<div id="collapse2" class="panel-collapse collapse show"
				role="tabpanel" aria-labelledby="heading2" style="">
				<div class="panel-body">
					<p style="text-align: justify;">
						<strong>Bước 1</strong>: Đăng ký thông tin Khách hàng tại quầy lễ
						tân
					</p>
					<ul>
						<li style="text-align: justify;">Đối với Khách hàng mới chưa
							có thông tin tại VNVC: Lấy số thứ tự hoặc theo hướng dẫn tới quầy
							đăng ký thông tin để lập hồ sơ tiêm chủng, mã số Khách hàng.</li>
						<li style="text-align: justify;">Đối với Khách hàng đã có
							thông tin tiêm chủng tại VNVC: Lấy số thứ tự hoặc theo hướng dẫn
							để tới quầy đăng ký khám trước tiêm.</li>
						<li style="text-align: justify;">Đối với Khách hàng mua Gói
							vắc xin: Được ưu tiên phục vụ tại các khu vực/ vị trí riêng,
							Khách hàng vui lòng thông báo với nhân viên Lễ tân để được ưu
							tiên phục vụ.</li>
					</ul>
					<p style="text-align: justify;">
						<strong>Bước 2</strong>: Khám sàng lọc tại phòng khám, theo thứ tự
						trên màn hình hiển thị.
					</p>
					<p style="text-align: justify;">
						<strong>Bước 3</strong>: Bác sĩ khám, tư vấn và chỉ định tiêm vắc
						xin.
					</p>
					<p style="text-align: justify;">
						<strong>Bước 4</strong>: Khách hàng nộp tiền tại quầy thu ngân
						(đối với Khách hàng chưa nộp tiền). Khách hàng mua Gói vắc xin
						không cần thực hiện bước này, được ưu tiên mời đến phòng tiêm.
					</p>
					<p style="text-align: justify;">
						<strong>Bước 5</strong>: Tiêm vắc xin tại Phòng tiêm, theo thứ tự
						trên màn hình hiển thị.
					</p>
					<p style="text-align: justify;">
						<strong>Bước 6</strong>: Nghỉ ngơi tại khu vực Theo dõi sau tiêm
						trong khoảng 30 phút.
					</p>
					<p style="text-align: justify;">
						<strong>Bước 7</strong>: Nhân viên y tế kiểm tra sức khỏe cho
						người được tiêm và hướng dẫn theo dõi sau tiêm tại nhà trước khi
						về.
					</p>
					<p style="text-align: justify;">
						<strong>Bước 8</strong>: Hỗ trợ, tư vấn Khách hàng về các phản ứng
						sau tiêm hoặc các nhu cầu khác về tiêm chủng vắc xin tại trung tâm
						hoặc qua Tổng đài điện thoại.
					</p>
				</div>
			</div>
		</div>

	</div>
	<!-- ======= Footer ======= -->
	<jsp:include page="../layout/footer.jsp" />
	<!-- ======= JavaScript ======= -->
	<jsp:include page="../layout/jsLink.jsp" />


</body>
</html>
