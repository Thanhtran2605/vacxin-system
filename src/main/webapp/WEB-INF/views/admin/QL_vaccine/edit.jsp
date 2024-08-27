<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Sửa vaccine</title>
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
				<h1>Sửa Vaccine</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Home</a></li>
						<li class="breadcrumb-item">Pages</li>
						<li class="breadcrumb-item">Vaccines</li>
						<li class="breadcrumb-item active">Sửa</li>
					</ol>
				</nav>
			</div>
			<a class="btn btn-sm btn-danger" href="/vacxin-system/admin/vaccines/"><i
				class="bi bi-backspace"></i> Trở lại</a>
		</div>

		<section class="section dashboard">
			<div class="row">

				<div class="card">
					<div class="card-body">
						<form:form class="row g-3 mt-3" modelAttribute="editVaccine"
							action="/vacxin-system/admin/vaccines/edit" method="post">
							<form:input path="id" type="hidden" />
							<div class="col-md-6">
								<form:label path="name" class="form-label">Tên vaccine</form:label>
								<form:input type="text" path="name" class="form-control" />
								<form:errors path="name" cssClass="text-danger" />
							</div>
							
							<div class="col-md-3">
								<form:label path="quantity" class="form-label">Số lượng</form:label>
								<form:input type="number" path="quantity" class="form-control" />
								<form:errors path="quantity" cssClass="text-danger" />
							</div>

							<div class="col-md-3">
								<form:label path="price" class="form-label">Giá</form:label>
								<form:input type="number" path="price" class="form-control" />
								<form:errors path="price" cssClass="text-danger" />
							</div>

							<div class="col-md-6">
								<form:label path="country" class="form-label">Nơi sản xuất</form:label>
								<form:input type="text" path="country" class="form-control" />
								<form:errors path="country" cssClass="text-danger" />
							</div>

							<div class="col-md-6">
								<form:label path="disease" class="form-label">Bệnh</form:label>
								<form:input type="text" path="disease" class="form-control" />
								<form:errors path="disease" cssClass="text-danger" />
							</div>

							<div class="col-md-6">
								<form:label path="description" class="form-label">Mô tả</form:label>
								<form:input type="text" path="description" class="form-control" />
								<form:errors path="description" cssClass="text-danger" />
							</div>

							<div class="col-md-6">
								<form:label path="image" class="form-label">URL Hình ảnh</form:label>
								<form:input type="text" path="image" class="form-control" />
								<form:errors path="image" cssClass="text-danger" />
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-sm btn-primary">Submit</button>
								<button type="reset" class="btn btn-sm btn-secondary">Reset</button>
							</div>

						</form:form>
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