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
	<div class="d-flex align-items-center justify-content-between">
	<div class="pagetitle">
			<h1>Quản lý Vaccine</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Pages</li>
					<li class="breadcrumb-item active">Vaccines</li>
				</ol>
			</nav>
		</div>
	<a class="btn btn-sm btn-success" href="vaccines/create"><i class="bi bi-plus"></i></a>
	</div>
		

		<section class="section">
			<div class="row">

				<div class="card">
					<div class="card-body">

						<table class="table table-striped ">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Hình ảnh</th>
									<th scope="col">Tên</th>
									<th scope="col">Giá</th>
									<th scope="col">Bệnh</th>
									<th scope="col">Sản xuất</th>
									<th scope="col">Mô tả</th>
									<th scope="col">Action</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="vaccine" items="${danhsachVaccine}">
									<tr>
										<td>${vaccine.id}</td>
										<td><img src="${vaccine.image}" width="150px" /></td>
										<td>${vaccine.name}</td>
										<td>${vaccine.price}</td>
										<td>${vaccine.disease}</td>
										<td>${vaccine.country}</td>
										<td class="shorten-text">${vaccine.description}</td>
										<td>
											<button type="button" class="btn btn-sm btn-danger"
												data-bs-toggle="modal" data-bs-target="#deleteVaccine">
												<i class="bi bi-trash"></i>
											</button>
										</td>
									</tr>

									

									<div class="modal fade" id="deleteVaccine" tabindex="-1"
										aria-hidden="true" style="display: none;">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title">
														Delete Vaccine : <span style="color: red">${vaccine.name}</span>
													</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">Close</button>
													<a href="vaccines/delete/${ vaccine.id }"
														class="btn btn-primary">Delete</a>
												</div>
											</div>
										</div>
									</div>

								</c:forEach>
							</tbody>
						</table>

					</div>
				</div>
			</div>

		</section>

	</main>
	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>

</html>