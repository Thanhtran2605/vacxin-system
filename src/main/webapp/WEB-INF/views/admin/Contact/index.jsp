<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Vacxin System - Dashboard</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- ======= CSS ======= -->
<jsp:include page="../layout/cssLink.jsp" />
<style>
.row {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.card {
	margin: 10px;
	padding: 15px;
	flex: 1;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.card .card-icon {
	width: 50px;
	height: 50px;
	background-color: #f1f1f1;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.card-body {
	display: flex;
	flex-direction: column;
	align-items: flex-start;
}

.card-body h6 {
	margin: 5px 0;
}

.card-title {
	font-size: 1.5rem; /* Tăng kích thước font */
	font-weight: bold; /* Đặt font in đậm */
}

.card-title h5 {
	font-size: 1.5rem; /* Tăng kích thước font */
	font-weight: bold; /* Đặt font in đậm */
}

.divider {
	width: 100%;
	background-color: gray;
	height: 2px;
	margin: 20px 0;
}

.doctor-title {
	font-size: 3rem; /* Kích thước chữ lớn hơn */
	font-weight: bold; /* In đậm */
	color: blue; /* Màu đỏ */
}

.receptionist-title {
	font-size: 3rem; /* Kích thước chữ lớn hơn */
	font-weight: bold; /* In đậm */
	color: blue; /* Màu đỏ */
}
</style>
</head>

<body>
	<!-- ======= Header ======= -->
	<jsp:include page="../layout/header.jsp" />

	<!-- ======= SideBar ======= -->
	<jsp:include page="../layout/sidebar.jsp" />

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Liên Hệ</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Liên Hệ</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<!-- Bác sĩ Section -->
			<div class="row">
				<h1 class="card-title doctor-title">Bác sĩ</h1>

				<!-- Doctor Cards -->
				<div class="row">
					<!-- Doctor Card 1 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Nguyễn Thị Trà My</h5>
								<h6>Số điện thoại: 1946694575</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 2 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Nguyễn Văn Phong</h5>
								<h6>Số điện thoại: 8399134538</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 3 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Nguyễn Thị Vân Anh</h5>
								<h6>Số điện thoại: 4256321485</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 4 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Hồ Đức Anh</h5>
								<h6>Số điện thoại: 9003261552</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 5 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Nguyễn Thị Thương</h5>
								<h6>Số điện thoại: 9127673690</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 6 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Lê Văn Huy</h5>
								<h6>Số điện thoại: 6187602849</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 7 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Trần Thị Phương</h5>
								<h6>Số điện thoại: 4280226118</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 8 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Lê Văn Quang</h5>
								<h6>Số điện thoại: 5361553548</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 9 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Lê Huy Sơn</h5>
								<h6>Số điện thoại: 5223593430</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Doctor Card 10 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Uông Ngọc Thành</h5>
								<h6>Số điện thoại: 4360695811</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Add the remaining doctor cards here (total 20) -->
				</div>

				<div class="divider"></div>

				<!-- Lễ Tân Section -->
				<h1 class="card-title receptionist-title">Lễ Tân</h1>

				<!-- Receptionist Cards -->
				<div class="row">
					<!-- Receptionist Card 1 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Trần Thị Thu Hiền</h5>
								<h6>Số điện thoại: 5556381535</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 2 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Nguyễn Thị Hạnh</h5>
								<h6>Số điện thoại: 7593184702</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 3 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Lê Thị Bích</h5>
								<h6>Số điện thoại: 9435152487</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 4 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Nguyễn Văn Tiến</h5>
								<h6>Số điện thoại: 3154601715</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 5 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Trần Thị Thùy</h5>
								<h6>Số điện thoại: 5869456794</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 6 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Vũ Minh Đức</h5>
								<h6>Số điện thoại: 3140769043</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 7 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Phạm Thị Bích</h5>
								<h6>Số điện thoại: 6660123499</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 8 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Nguyễn Văn Minh</h5>
								<h6>Số điện thoại: 3219654702</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 9 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Trần Văn Nam</h5>
								<h6>Số điện thoại: 5352157460</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Receptionist Card 10 -->
					<div class="col-xxl-4 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="card-icon">
									<i class="bi bi-person-fill"></i>
								</div>
								<h5 class="card-title">Ngô Minh Tiến</h5>
								<h6>Số điện thoại: 2733545520</h6>
								<h6>Địa chỉ: Hà Nội</h6>
							</div>
						</div>
					</div>

					<!-- Add the remaining receptionist cards here (total 20) -->
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->
	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>

</html>
