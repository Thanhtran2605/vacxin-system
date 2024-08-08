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
			<h1>Quản lý người dùng</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Pages</li>
					<li class="breadcrumb-item active">Users</li>
				</ol>
			</nav>
		</div>

		<section class="section">
			<div class="row">

				<div class="card">
					<div class="card-body">

						<table class="table table-striped ">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Username</th>
									<th scope="col">Phone</th>
									<th scope="col">Email</th>
									<th scope="col">birthday</th>									
									<th scope="col">Address</th>
									<th scope="col">ROLE</th>
									<th scope="col">Edit</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>
							<tbody>
						<c:forEach var="user" items="${listUser}">
								<tr>
									<th scope="row">${user.id}</th>
									<td >${user.username}</td>
									<td >${user.phone}</td>
						                <td>${user.email}</td>
						                <td>${user.birthday}</td>
						                <td>${user.address}</td>
						                <td>${user.role.value}</td>
									
									<td class="text-center">
									  <a href="#" class="btn btn-success btn-sm">
									    <i class="bi bi-pencil-square"></i>
									  </a>
									</td>
									<td class="text-center">
									  <a href="#" class="btn btn-danger btn-sm">
									    <i class="bi bi-trash"></i>
									  </a>
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