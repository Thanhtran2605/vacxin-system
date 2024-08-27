<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>Vacxin System</title>
<!-- ======= JS ======= -->
<jsp:include page="layout/cssLink.jsp" />
<link rel="icon" href="<c:url value="/resources/images/logo.png" />" />
<link rel="apple-touch-icon"
	href="<c:url value="/resources/images/logo.png" />" />
<!--Start of Fchat.vn-->
<script type="text/javascript"
	src="https://cdn.fchat.vn/assets/embed/webchat.js?id=66c8f44615807c149a6e7945"
	async="async"></script>
<!--End of Fchat.vn-->
</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="layout/header.jsp" />
		<jsp:include page="layout/mega-menu.jsp" />
	</div>

	<div id="carouselExampleIndicators" class="container carousel slide">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="<c:url value="/resources/assets/images/banner/banner2.png" />" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="<c:url value="/resources/assets/images/banner/banner1.png" />" class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	

	<!-- Category Section Start-->
	<section class="mb-lg-10 mt-lg-14 my-8">
		<div class="container">
			<div class="row">
				<div class="col-12 mb-6">

					<h3 class="mb-0">Danh Mục</h3>

				</div>
			</div>
			<div class="category-slider">
				<c:forEach var="item" items="${listVacxin}">
					<div class="item">
						<a href="#" class="text-decoration-none text-inherit">
							<div class="card card-product mb-4">
								<div class="card-body text-center py-8">
									<img src="${item.image}" class="mb-3" width="150">
									<div class="shorten-text">${item.name}</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>

	<!-- ======= FOOTER ======= -->
	<jsp:include page="layout/footer.jsp" />

	<!-- ======= JS ======= -->
	<jsp:include page="layout/jsLink.jsp" />
	
</body>
</html>