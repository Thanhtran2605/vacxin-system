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
			<h1>Quản lý cơ sở y tế</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Pages</li>
					<li class="breadcrumb-item active">Vaccine Locations</li>
				</ol>
			</nav>
		</div>

		<section class="section">
			<div class="row">
				<div class="card">
					<div class="card-body">
						<br>
						<!-- Form tìm kiếm chỉ theo Name Location -->
						<form action="/vacxin-system/admin/qlvaccinelocation" method="get"
							class="row mb-3">
							<div class="col-9 col-sm-10">
								<input type="text" class="form-control" name="nameLocation"
									placeholder="Tìm theo tên cơ sở y tế"
									value="${param.nameLocation}">
							</div>
							<div class="col-3 col-sm-2 text-end">
								<button type="submit" class="btn btn-primary w-100">Tìm
									kiếm</button>
							</div>
						</form>

						<table class="table table-striped ">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Name</th>
									<th scope="col">Address</th>
									<th scope="col">Phone</th>
									<th scope="col">Email</th>
									<th scope="col">Website</th>
									<th scope="col">Fanpage</th>
									<th scope="col">Image</th>
									<th scope="col">Opening Hours</th>
									<th scope="col">Closing Hours</th>
									<th scope="col">Edit</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="location" items="${listVaccineLocation}">
									<tr>
										<th scope="row">${location.id}</th>
										<td>${location.nameLocation}</td>
										<td>${location.address}</td>
										<td>${location.phone}</td>
										<td>${location.email}</td>
										<td>${location.website}</td>
										<td>${location.fanpage}</td>
										<td><img src="${location.imageLink}" width="150px" /></td>
										<td>${location.openingHours}</td>
										<td>${location.closingHours}</td>

										<td class="text-center"><a
											href="/vacxin-system/admin/qlvaccinelocation/edit/${location.id}"
											class="btn btn-success btn-sm"> <i
												class="bi bi-pencil-square"></i>
										</a></td>

										<td class="text-center">
											<!-- Form to delete location -->
											<form action="/vacxin-system/admin/qlvaccinelocation/delete"
												method="post" style="display: inline;">
												<input type="hidden" name="locationId"
													value="${location.id}" />
												<button type="submit" class="btn btn-danger btn-sm"
													onclick="return confirm('Are you sure you want to delete this location?');">
													<i class="bi bi-trash"></i>
												</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<a href="/vacxin-system/admin/qlvaccinelocation/add"
				class="btn btn-primary">Thêm Cơ Sở Y Tế</a>

		</section>

	</main>
	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>

</html>
