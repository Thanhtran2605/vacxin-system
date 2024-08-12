<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Vacxin System - Thêm Mới Địa Điểm Tiêm</title>
<!-- ======= CSS ======= -->
<jsp:include page="../layout/cssLink.jsp" />
</head>

<body>
	<!-- ======= Header ======= -->
	<jsp:include page="../layout/header.jsp" />

	<!-- ======= SideBar ======= -->
	<jsp:include page="../layout/sidebar.jsp" />

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Thêm Mới Địa Điểm Tiêm</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Quản lý cơ sở y tế</li>
					<li class="breadcrumb-item active">Thêm mới</li>
				</ol>
			</nav>
		</div>

		<section class="section">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Nhập thông tin địa điểm tiêm</h5>

					<!-- General Form Elements -->
					<form method="post" action="/vacxin-system/admin/VL/add">
						<div class="row mb-3">
							<label for="nameLocation" class="col-sm-2 col-form-label">Tên
								Địa Điểm</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="nameLocation"
									name="nameLocation" required>
							</div>
						</div>
						<div class="row mb-3">
							<label for="address" class="col-sm-2 col-form-label">Địa
								Chỉ</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="address"
									name="address" required>
							</div>
						</div>
						<div class="row mb-3">
							<label for="phone" class="col-sm-2 col-form-label">Số
								Điện Thoại</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="phone" name="phone"
									required>
							</div>
						</div>
						<div class="row mb-3">
							<label for="email" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="email" name="email">
							</div>
						</div>
						<div class="row mb-3">
							<label for="website" class="col-sm-2 col-form-label">Website</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="website"
									name="website">
							</div>
						</div>
						<div class="row mb-3">
							<label for="fanpage" class="col-sm-2 col-form-label">Fanpage</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="fanpage"
									name="fanpage">
							</div>
						</div>
						<div class="row mb-3">
							<label for="imageLink" class="col-sm-2 col-form-label">Link
								Hình Ảnh</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="imageLink"
									name="imageLink">
							</div>
						</div>
						<div class="row mb-3">
							<label for="openingHours" class="col-sm-2 col-form-label">Giờ
								Mở Cửa</label>
							<div class="col-sm-10">
								<input type="time" class="form-control" id="openingHours"
									name="openingHours">
							</div>
						</div>
						<div class="row mb-3">
							<label for="closingHours" class="col-sm-2 col-form-label">Giờ
								Đóng Cửa</label>
							<div class="col-sm-10">
								<input type="time" class="form-control" id="closingHours"
									name="closingHours">
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary">Thêm Mới</button>
						</div>
					</form>
					<!-- End General Form Elements -->

				</div>
			</div>
		</section>

	</main>
	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>

</html>
