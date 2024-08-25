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
</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="layout/header.jsp" />
		<jsp:include page="layout/mega-menu.jsp" />

	<nav class="navbar navbar-light py-lg-5 pt-3 px-0 pb-0">
		<div class="container">
			<div class="row w-100 align-items-center g-3">
				<div class="col-xxl-2 col-lg-3">
					<a class="navbar-brand d-none d-lg-block"
						href="/vacxin-system/home"> <img
						src="<c:url value='/resources/images/logo.png' />" width="60"
						alt="eCommerce HTML Template"> <span style="color: #003399;">
						Vacxin</span>
					</a>
					<div class="d-flex justify-content-between w-100 d-lg-none">
						<a class="navbar-brand" href="#"> <img
							src="<c:url value='/resources/images/logo.png' />"
							alt="eCommerce HTML Template">

						</a>

						<div class="d-flex align-items-center lh-1">

							<div class="list-inline me-2">
								<div class="list-inline-item">

									<a href="#!" class="text-muted" data-bs-toggle="modal"
										data-bs-target="#userModal"> <svg
											xmlns="http://www.w3.org/2000/svg" width="20" height="20"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-user">
                      <path
												d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                      <circle cx="12" cy="7" r="4"></circle>
                    </svg>
									</a>
								</div>
								<div class="list-inline-item">

									<a class="text-muted" data-bs-toggle="offcanvas"
										data-bs-target="#offcanvasRight" href="#offcanvasExample"
										role="button" aria-controls="offcanvasRight"> <svg
											xmlns="http://www.w3.org/2000/svg" width="20" height="20"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-shopping-bag">
                      <path
												d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                      <line x1="3" y1="6" x2="21" y2="6"></line>
                      <path d="M16 10a4 4 0 0 1-8 0"></path>
                    </svg>
									</a>
								</div>

							</div>
							<!-- Button -->
							<button class="navbar-toggler collapsed" type="button"
								data-bs-toggle="offcanvas" data-bs-target="#navbar-default"
								aria-controls="navbar-default" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="icon-bar top-bar mt-0"></span> <span
									class="icon-bar middle-bar"></span> <span
									class="icon-bar bottom-bar"></span>
							</button>

						</div>
					</div>

				</div>
				<div class="col-xxl-6 col-lg-5 d-none d-lg-block">

					<form action="#" class="search-header">


						<div class="input-group">
							<input type="text" class="form-control border-end-0"
								placeholder="Search for products.."
								aria-label="Search for products.."
								aria-describedby="basic-addon2"> <span
								class="input-group-text bg-transparent" id="basic-addon2">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-search">
                  <circle cx="11" cy="11" r="8"></circle>
                  <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                </svg>
							</span>
						</div>
					</form>
				</div>
				<div class="col-md-2 col-xxl-3 d-none d-lg-block">
					<!-- Button trigger modal -->
					<button type="button" class="btn  btn-outline-gray-400 text-muted"
						data-bs-toggle="modal" data-bs-target="#locationModal">
						<i class="feather-icon icon-map-pin me-2"></i>Location
					</button>


				</div>
				<div class="col-md-2 col-xxl-1 text-end d-none d-lg-block">

					<div class="list-inline">
						<div class="list-inline-item">

							<a href="/vacxin-system/logout"
								class="text-muted position-relative"> <svg
									xmlns="http://www.w3.org/2000/svg" width="20" height="20"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-log-out">
        <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
        <polyline points="16 17 21 12 16 7"></polyline>
        <line x1="21" y1="12" x2="9" y2="12"></line>
    </svg>
							</a>
						</div>

						<div class="list-inline-item">
							<a href="/vacxin-system/login"
								class="text-muted position-relative"> <svg
									xmlns="http://www.w3.org/2000/svg" width="20" height="20"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-user">
                  <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                  <circle cx="12" cy="7" r="4"></circle>
                </svg>
							</a>
						</div>
						<div class="list-inline-item">

							<a class="text-muted position-relative "
								data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
								href="#offcanvasExample" role="button"
								aria-controls="offcanvasRight"> <svg
									xmlns="http://www.w3.org/2000/svg" width="20" height="20"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-shopping-bag">
                  <path
										d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                  <line x1="3" y1="6" x2="21" y2="6"></line>
                  <path d="M16 10a4 4 0 0 1-8 0"></path>
                </svg> <span
								class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-success">
									1 <span class="visually-hidden">unread messages</span>
							</span>
							</a>

						</div>





					</div>
				</div>
			</div>
		</div>
	</nav>
	<nav
		class="navbar navbar-expand-lg navbar-light navbar-default pt-0 pb-0">
		<div class="container px-0 px-md-3">

			<div class="dropdown me-3 d-none d-lg-block">
				<button class="btn btn-primary px-6" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false">
					<span class="me-1"> <svg xmlns="http://www.w3.org/2000/svg"
							width="16" height="16" viewBox="0 0 24 24" fill="none"
							stroke="currentColor" stroke-width="1.2" stroke-linecap="round"
							stroke-linejoin="round" class="feather feather-grid">
              <rect x="3" y="3" width="7" height="7"></rect>
              <rect x="14" y="3" width="7" height="7"></rect>
              <rect x="14" y="14" width="7" height="7"></rect>
              <rect x="3" y="14" width="7" height="7"></rect>
            </svg></span> Giới thiệu
				</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="pages/shop-grid.html">Về
							Vacxin Việt Nam</a></li>
					<li><a class="dropdown-item" href="pages/shop-grid.html">Chuyên
							gia</a></li>
					<li><a class="dropdown-item" href="pages/shop-grid.html">Tuyển
							dụng</a></li>

				</ul>
			</div>



			<div class="offcanvas offcanvas-start p-4 p-lg-0" id="navbar-default">

				<div
					class="d-flex justify-content-between align-items-center mb-2 d-block d-lg-none">
					<div>
						<img
							src="<c:url value='/resources/assets/images/logo/freshcart-logo.svg' />"
							alt="eCommerce HTML Template">
					</div>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>

				<div class="d-block d-lg-none mb-2 pt-2">
					<a
						class="btn btn-primary w-100 d-flex justify-content-center align-items-center"
						data-bs-toggle="collapse" href="#collapseExample" role="button"
						aria-expanded="false" aria-controls="collapseExample"> <span
						class="me-2"><svg xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" viewBox="0 0 24 24" fill="none"
								stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
								stroke-linejoin="round" class="feather feather-grid">
                <rect x="3" y="3" width="7" height="7"></rect>
                <rect x="14" y="3" width="7" height="7"></rect>
                <rect x="14" y="14" width="7" height="7"></rect>
                <rect x="3" y="14" width="7" height="7"></rect>
              </svg></span> All Departments
					</a>
					<div class="collapse mt-2" id="collapseExample">
						<div class="card card-body">
							<ul class="mb-0 list-unstyled">
								<li><a class="dropdown-item" href="pages/shop-grid.html">Dairy,
										Bread & Eggs</a></li>
								<li><a class="dropdown-item" href="pages/shop-grid.html">Snacks
										& Munchies</a></li>
								<li><a class="dropdown-item" href="pages/shop-grid.html">Fruits
										& Vegetables</a></li>
								<li><a class="dropdown-item" href="pages/shop-grid.html">Cold
										Drinks & Juices</a></li>
								<li><a class="dropdown-item" href="pages/shop-grid.html">Breakfast
										& Instant Food</a></li>
								<li><a class="dropdown-item" href="pages/shop-grid.html">Bakery
										& Biscuits</a></li>

								<li><a class="dropdown-item" href="pages/shop-grid.html">Chicken,
										Meat & Fish</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="d-lg-none d-block mb-3">
					<button type="button"
						class="btn  btn-outline-gray-400 text-muted w-100 "
						data-bs-toggle="modal" data-bs-target="#locationModal">
						<i class="feather-icon icon-map-pin me-2"></i>Pick Location
					</button>
				</div>
				<div class="d-none d-lg-block">
					<ul class="navbar-nav ">
						<li class="nav-item"><a class="nav-link"
							href="/vacxin-system/home" role="button"> Trang chủ </a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Vacxin Trẻ
								em </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="pages/shop-grid.html">Lịch
										tiêm chủng cho trẻ em</a></li>
								<li><a class="dropdown-item"
									href="pages/shop-grid-3-column.html">Những điều cần biết</a></li>
								<li><a class="dropdown-item" href="pages/shop-list.html">Quy
										trình</a></li>
								<li><a class="dropdown-item" href="pages/shop-filter.html">Bảng
										Giá</a></li>

							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Vacxin người
								lớn </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="pages/store-list.html">Vì
										sao cần tiêm</a></li>
								<li><a class="dropdown-item" href="pages/store-grid.html">Gói
										vacxin</a></li>
								<li><a class="dropdown-item" href="pages/store-single.html">Quy
										trình</a></li>

							</ul></li>


						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Bảng giá </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="pages/blog.html">1
										củ</a></li>
								<li><a class="dropdown-item" href="pages/blog-single.html">2
										củ</a></li>

							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown"> Bệnh học </a></li>
						<li class="nav-item "><a class="nav-link"
							href="/vacxin-system/news"> Tin tức </a></li>
						<li class="nav-item "><a class="nav-link"
							href="docs/index.html"> Đặt ký lịch tiêm </a>
						<li class="nav-item "><a class="nav-link"
							href="docs/index.html"> Tìm trung tâm VNVC </a></li>
						</li>
					</ul>
				</div>
				<div class="d-block d-lg-none">
					<ul class="navbar-nav ">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Home </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="index.html">Home 1</a></li>
								<li><a class="dropdown-item" href="pages/index-2.html">Home
										2</a></li>
								<li><a class="dropdown-item" href="pages/index-3.html">Home
										3</a></li>

							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Shop </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="pages/shop-grid.html">Shop
										Grid - Filter</a></li>
								<li><a class="dropdown-item"
									href="pages/shop-grid-3-column.html">Shop Grid - 3 column</a></li>
								<li><a class="dropdown-item" href="pages/shop-list.html">Shop
										List - Filter</a></li>
								<li><a class="dropdown-item" href="pages/shop-filter.html">Shop
										- Filter</a></li>
								<li><a class="dropdown-item"
									href="pages/shop-fullwidth.html">Shop Wide</a></li>
								<li><a class="dropdown-item" href="pages/shop-single.html">Shop
										Single</a></li>
								<li><a class="dropdown-item"
									href="pages/shop-wishlist.html">Shop Wishlist</a></li>
								<li><a class="dropdown-item" href="pages/shop-cart.html">Shop
										Cart</a></li>
								<li><a class="dropdown-item"
									href="pages/shop-checkout.html">Shop Checkout</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Stores </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="pages/store-list.html">Store
										List</a></li>
								<li><a class="dropdown-item" href="pages/store-grid.html">Store
										Grid</a></li>
								<li><a class="dropdown-item" href="pages/store-single.html">Store
										Single</a></li>

							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Mega Menu </a>
							<ul class="dropdown-menu">

								<li class="dropdown-submenu "><a
									class="dropdown-item dropdown-list-group-item dropdown-toggle"
									href="#"> Dairy, Bread & Eggs </a>
									<ul class="dropdown-menu">


										<li><a class="dropdown-item" href="pages/shop-grid.html">Milk
												Drinks</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Curd
												& Yogurt</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Eggs</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Buns
												& Bakery</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Cheese</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Condensed
												Milk</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Dairy
												Products</a></li>


									</ul></li>
								<li class="dropdown-submenu "><a
									class="dropdown-item dropdown-list-group-item dropdown-toggle"
									href="#"> Vegetables & Fruits </a>
									<ul class="dropdown-menu">


										<li><a class="dropdown-item" href="pages/shop-grid.html">Vegetables</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Fruits</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Exotics
												& Premium</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Fresh
												Sprouts</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Frozen
												Veg</a></li>



									</ul></li>
								<li class="dropdown-submenu "><a
									class="dropdown-item dropdown-list-group-item dropdown-toggle"
									href="#"> Cold Drinks & Juices </a>
									<ul class="dropdown-menu">


										<li><a class="dropdown-item" href="pages/shop-grid.html">Soft
												Drinks</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Fruit
												Juices</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Coldpress</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Soda
												& Mixers</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Milk
												Drinks</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Health
												Drinks</a></li>
										<li><a class="dropdown-item" href="pages/shop-grid.html">Herbal
												Drinks</a></li>



									</ul></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Pages </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="pages/blog.html">Blog</a></li>
								<li><a class="dropdown-item" href="pages/blog-single.html">Blog
										Single</a></li>
								<li><a class="dropdown-item"
									href="pages/blog-category.html">Blog Category</a></li>
								<li><a class="dropdown-item" href="pages/about.html">About
										us</a></li>
								<li><a class="dropdown-item" href="pages/404error.html">404
										Error</a></li>
								<li><a class="dropdown-item" href="pages/contact.html">Contact</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Account </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="pages/signin.html">Sign
										in</a></li>
								<li><a class="dropdown-item" href="pages/signup.html">Signup</a></li>
								<li><a class="dropdown-item"
									href="pages/forgot-password.html">Forgot Password</a></li>
								<li class="dropdown-submenu dropend"><a
									class="dropdown-item dropdown-list-group-item dropdown-toggle"
									href="#"> My Account </a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item"
											href="pages/account-orders.html">Orders</a></li>
										<li><a class="dropdown-item"
											href="pages/account-settings.html">Settings</a></li>
										<li><a class="dropdown-item"
											href="pages/account-address.html">Address</a></li>
										<li><a class="dropdown-item"
											href="pages/account-payment-method.html">Payment Method</a></li>
										<li><a class="dropdown-item"
											href="pages/account-notification.html">Notification</a></li>


									</ul></li>
							</ul></li>
						<li class="nav-item "><a class="nav-link"
							href="docs/index.html"> Docs </a></li>
					</ul>
				</div>


			</div>
		</div>

	</nav>
>>>>>>> Stashed changes
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
	<!--Start of Fchat.vn--><script type="text/javascript" src="https://cdn.fchat.vn/assets/embed/webchat.js?id=66c8ada9f388e47b452b4a72" async="async"></script><!--End of Fchat.vn-->
	
</body>
</html>