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
</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="layout/header.jsp" />
		<jsp:include page="layout/mega-menu.jsp" />
	</div>

	<section class="mt-8">
		<div class="container">
			<div class="hero-slider ">
				<div
					style="background: url(<c:url value="/resources/assets/images/banner/banner1.png" />)no-repeat; background-size: cover; border-radius: .5rem; background-position: center;">
					<div
						class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
						<span class="badge text-bg-warning">Opening Sale Discount
							50%</span>

						<h2 class="text-dark display-5 fw-bold mt-4">
							SuperMarket Daily <br> Fresh Grocery
						</h2>
						<p class="lead">Introduced a new model for online grocery
							shopping and convenient home delivery.</p>
						<a href="#!" class="btn btn-dark mt-3">Shop Now <i
							class="feather-icon icon-arrow-right ms-1"></i></a>
					</div>

				</div>
				<div
					style="background: url(<c:url value="/resources/assets/images/banner/banner2.png" />)no-repeat; background-size: cover; border-radius: .5rem; background-position: center;">
					<div
						class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
						<span class="badge text-bg-warning">Free Shipping - orders
							over $100</span>
						<h2 class="text-dark display-5 fw-bold mt-4">
							Free Shipping on <br> orders over <span class="text-primary">$100</span>
						</h2>
						<p class="lead">Free Shipping to First-Time Customers Only,
							After promotions and discounts are applied.</p>
						<a href="#!" class="btn btn-dark mt-3">Shop Now <i
							class="feather-icon icon-arrow-right ms-1"></i></a>
					</div>

				</div>

			</div>
		</div>
	</section>

	<!-- Category Section Start-->
	<section class="mb-lg-10 mt-lg-14 my-8">
		<div class="container">
			<div class="row">
				<div class="col-12 mb-6">

					<h3 class="mb-0">Featured Categories</h3>

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