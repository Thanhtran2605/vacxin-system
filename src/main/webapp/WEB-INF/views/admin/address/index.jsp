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
			<h1>Quản lý chi nhánh</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Pages</li>
					<li class="breadcrumb-item active">Users</li>
				</ol>
			</nav>
			<a class="btn btn-sm btn-success" href="/vacxin-system/admin/QLchinhanh/add"><i
					class="bi bi-plus"></i> Thêm mới</a>
		</div>

		<section class="section">
			<div class="row">

				<div class="card">
					<div class="card-body table-responsive">
						<br>
						<!-- Form tìm kiếm chỉ theo Username -->
						<form action="/vacxin-system/admin/QLchinhanh" method="get"
							class="row mb-3">
							<div class="col-9 col-sm-10">
								<input type="text" class="form-control" name="username"
									placeholder="Tìm theo Username" value="${param.username}">
							</div>
							<div class="col-3 col-sm-2 text-end">
								<button type="submit" class="btn btn-primary w-100">Tìm
									kiếm</button>
							</div>
						</form>

						<table class="table table-striped ">
							<thead>
								<tr>
									<th scope="col">STT</th>
									<th scope="col">ID</th>
									<th scope="col">Tỉnh/Thành</th>
									<th scope="col">Quận/Huyện</th>
								
									<th scope="col">Edit</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="address" items="${listAddress}" varStatus="status">
									<tr>
										<th scope="row">${status.index + 1}</th>
										<td>${address.id}</td>
										<td>${address.address}</td>
										<td>${address.district}</td>									

										<td class=""><a
											href="/vacxin-system/admin/QLchinhanh/edit/${address.id}"
											class="btn btn-success btn-sm"> <i
												class="bi bi-pencil-square"></i>
										</a></td>

										<td class="">
											<!-- Form to delete user -->
											<form action="#"
												method="post" style="display: inline;">
												<input type="hidden" name="userId" value="${user.id}" />
												<button type="submit" class="btn btn-danger btn-sm"
													onclick="return confirm('Are you sure you want to delete this user?');">
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

		</section>

	</main>
	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>

</html>