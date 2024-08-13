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
</head>

<body>
	<!-- ======= Header ======= -->
	<jsp:include page="../layout/header.jsp" />

	<!-- ======= SideBar ======= -->
	<jsp:include page="../layout/sidebar.jsp" />

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Chỉnh sửa cơ sở y tế</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Pages</li>
					<li class="breadcrumb-item active">Vaccine Locations</li>
				</ol>
			</nav>
		</div>

		<section class="section">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title"></h5>

					<!-- General Form Elements -->
					<form method="post"
						action="/vacxin-system/admin/qlvaccinelocation/edit/${editLocation.id}">
						<div class="row mb-3">
							<label for="nameLocation" class="col-sm-2 col-form-label">Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="nameLocation"
									value="${editLocation.nameLocation}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="address" class="col-sm-2 col-form-label">Address</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="address"
									value="${editLocation.address}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="phone" class="col-sm-2 col-form-label">Phone</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="phone"
									value="${editLocation.phone}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="email" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" name="email"
									value="${editLocation.email}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="website" class="col-sm-2 col-form-label">Website</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="website"
									value="${editLocation.website}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="fanpage" class="col-sm-2 col-form-label">Fanpage</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="fanpage"
									value="${editLocation.fanpage}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="imageLink" class="col-sm-2 col-form-label">Image
								Link</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="imageLink"
									value="${editLocation.imageLink}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="openingHours" class="col-sm-2 col-form-label">Opening
								Hours</label>
							<div class="col-sm-10">
								<input type="time" class="form-control" name="openingHours"
									value="${editLocation.openingHours}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="closingHours" class="col-sm-2 col-form-label">Closing
								Hours</label>
							<div class="col-sm-10">
								<input type="time" class="form-control" name="closingHours"
									value="${editLocation.closingHours}">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-sm-10 offset-sm-2">
								<button type="submit" class="btn btn-primary">Update
									Location</button>
							</div>
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
