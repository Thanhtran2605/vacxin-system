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
			<h1>Chỉnh sửa người dùng</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Pages</li>
					<li class="breadcrumb-item active">Users</li>
				</ol>
			</nav>
		</div>

		<section class="section">
			<div class="card">
				<div class="card-body">	
					<h5 class="card-title"></h5>
						
						<!-- Hiển thị thông báo lỗi -->
					<c:if test="${not empty error}">
						<div class="alert alert-danger">
							<c:out value="${error}" />
						</div>
					</c:if>

					<!-- Hiển thị thông báo thành công -->
					<c:if test="${not empty message}">
						<div class="alert alert-success">
							<c:out value="${message}" />
						</div>
					</c:if>
					
					<!-- General Form Elements -->
					<form method="post"
						action="/vacxin-system/admin/qluser/edit/${editUser.id}">
						<div class="row mb-3">
							<label for="inputText" class="col-sm-2 col-form-label">Username</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="username" required = "required"
									value="${editUser.username}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputEmail" class="col-sm-2 col-form-label">Phone</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="phone" required = "required"
									value="${editUser.phone}">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputPassword" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" name="email" required = "required"
									value="${editUser.email}">
							</div>
						</div>

						<div class="row mb-3">
							<label for="inputDate" class="col-sm-2 col-form-label">Birthday</label>
							<div class="col-sm-10">
								<input type="date" class="form-control" name="birthday" required = "required"
									value="${editUser.birthday}">
							</div>
						</div>

					<%-- 	<div class="row mb-3">
							<label for="inputNumber" class="col-sm-2 col-form-label">Address</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="address" required = "required"
									value="${editUser.address.district}">
							</div>
						</div>
						 --%>
						<div class="row mb-3">
						    <label for="address" class="col-sm-2 col-form-label">Address</label>
						    <div class="col-sm-10">
						        <select class="form-select" name="address" id="address" aria-label="Default select example">
						            <c:forEach items="${addresses}" var="address">
						                <option value="${address.id}" ${address.id == editUser.address.id ? 'selected' : ''}>
						                    ${address.district}
						                </option>
						            </c:forEach>
						        </select>
						    </div>
						</div>
						

						<div class="row mb-3">
						    <label for="role" class="col-sm-2 col-form-label">ROLE</label>
						    <div class="col-sm-10">
						    
						       <select class="form-select" name="role" id="role" aria-label="Default select example">                      
							    <c:forEach items="${roles}" var="role">
							        <option value="${role.id}" ${role.id == editUser.role.id ? 'selected' : ''}>
							            ${role.value}
							        </option>
							    </c:forEach>
							</select>

								
						    </div>
						</div>

						<div class="col-sm-10 text-center">
							<button type="submit" class="btn btn-success">Chỉnh sửa</button>
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