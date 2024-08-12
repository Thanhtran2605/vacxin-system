<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Vacxin System - Chỉnh sửa địa điểm tiêm</title>
<meta content="" name="description">
<meta content="" name="keywords">
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
			<h1>Chỉnh sửa địa điểm tiêm</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/vacxin-system/admin/vacloc">Danh sách địa điểm tiêm</a></li>
					<li class="breadcrumb-item active">Chỉnh sửa</li>
				</ol>
			</nav>
		</div>

		<section class="section">
			<div class="card">
				<div class="card-body">
					<form method="post" action="/vacxin-system/admin/vacloc/edit/${editLocation.id}">
						<div class="row mb-3">
							<label for="inputName" class="col-sm-2 col-form-label">Tên địa điểm</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="nameLocation" value="${editLocation.nameLocation}" required>
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputAddress" class="col-sm-2 col-form-label">Địa chỉ</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="address" value="${editLocation.address}" required>
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputPhone" class="col-sm-2 col-form-label">Điện thoại</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="phone" value="${editLocation.phone}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" name="email" value="${editLocation.email}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputWebsite" class="col-sm-2 col-form-label">Website</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="website" value="${editLocation.website}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputFanpage" class="col-sm-2 col-form-label">Fanpage</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="fanpage" value="${editLocation.fanpage}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputImageLink" class="col-sm-2 col-form-label">Link hình ảnh</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="imageLink" value="${editLocation.imageLink}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputOpeningHours" class="col-sm-2 col-form-label">Giờ mở cửa</label>
							<div class="col-sm-10">
								<input type="time" class="form-control" name="openingHours" value="${editLocation.openingHours}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputClosingHours" class="col-sm-2 col-form-label">Giờ đóng cửa</label>
							<div class="col-sm-10">
								<input type="time" class="form-control" name="closingHours" value="${editLocation.closingHours}">
							</div>
						</div>
						<div class="col-sm-10 text-center">
							<button type="submit" class="btn btn-success">Cập nhật</button>
						</div>
					</form>
				</div>
			</div>
		</section>
	</main>
	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />
	<jsp:include page="../layout/footer.jsp" />
</body>

</html>
