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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	
<!-- Bootstrap CSS -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	 -->
<style type="text/css">

body {
  overflow-x: hidden;
}

.backgroud {
    display: flex;
    flex-direction: column;
    padding: 35px;
    background-color: #f8f9fa;
}

.backgroud .text-wrapper-6 {
    width: 100%;
    text-align: center;
    line-height: 55px;
    font-weight: 700;
    color: #228B22;;
    font-size: 30px;
    letter-spacing: 0;

}

section{
	margin: 50px;
}

.card{
	display: flex;
    flex-direction: column;
    height: 100%;
	border-radius: 10px;
  	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.card-title{
	height: 50px;
}

.card-text.content {
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 4; /* Giới hạn số dòng là 4 */
    -webkit-box-orient: vertical;
    transition: max-height 0.3s ease-in-out;
    max-height: 6em; /* Điều chỉnh chiều cao tương ứng với 4 dòng */
}

.card-text.content.expanded {
    -webkit-line-clamp: unset; /* Hiển thị toàn bộ nội dung */
    max-height: none; /* Không giới hạn chiều cao */
}

 .content {
     text-align: justify;
     margin: 20px;
 }

 .image-container {
     text-align: center; /* Căn giữa ảnh */
 }

 .image-container img {
     max-width: 100%; /* Đảm bảo ảnh không vượt quá kích thước của phần tử chứa */
     height: auto; /* Giữ tỷ lệ khung hình của ảnh */
 }

 .wp-caption {
     text-align: center;
     margin-top: 10px;
 }

 .wp-caption figcaption {
     font-size: 0.9em;
     color: #666;
 }
 
 figure {
    margin: 0 auto;
    text-align: center; /* Căn giữa nội dung bên trong thẻ figure */
}

img {
    display: block;
    margin: 0 auto;
}



</style>

</head>

<body>
	<!-- ======= Header ======= -->
	<nav class="navbar navbar-light py-lg-5 pt-3 px-0 pb-0">
		<div class="container">
			<div class="row w-100 align-items-center g-3">
				<div class="col-xxl-2 col-lg-3">
					<a class="navbar-brand d-none d-lg-block" href="/vacxin-system/home"> 
						<img 
							src="<c:url value='/resources/images/logo.png' />" width="60"
							alt="eCommerce HTML Template"> 
							<span style="color: #003399;"> Vacxin</span>
					</a>
					<div class="d-flex justify-content-between w-100 d-lg-none">
						<a class="navbar-brand" href="#"> 
							<img
								src="<c:url value='/resources/images/logo.png' />"
								alt="eCommerce HTML Template">

						</a>

						<div class="d-flex align-items-center lh-1">

							<div class="list-inline me-2">
								<div class="list-inline-item">

									<a href="#!" class="text-muted" data-bs-toggle="modal"
										data-bs-target="#userModal"> 
										<svg
											xmlns="http://www.w3.org/2000/svg" width="20" height="20"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-user">
                      						<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
					                      	<circle cx="12" cy="7" r="4"></circle>
					                    </svg>
									</a>
								</div>
								<div class="list-inline-item">

									<a class="text-muted" data-bs-toggle="offcanvas"
										data-bs-target="#offcanvasRight" href="#offcanvasExample"
										role="button" aria-controls="offcanvasRight"> 
										<svg
											xmlns="http://www.w3.org/2000/svg" width="20" height="20"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-shopping-bag">
					                      <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
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
								aria-describedby="basic-addon2"> 
							<span
								class="input-group-text bg-transparent" id="basic-addon2">
								<svg 
									xmlns="http://www.w3.org/2000/svg" width="20" height="20"
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
								class="text-muted position-relative"> 
								<svg
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
								class="text-muted position-relative"> 
								<svg
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
								aria-controls="offcanvasRight"> 
								<svg
									xmlns="http://www.w3.org/2000/svg" width="20" height="20"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-shopping-bag">
				                  <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
				                  <line x1="3" y1="6" x2="21" y2="6"></line>
				                  <path d="M16 10a4 4 0 0 1-8 0"></path>
				                </svg> 
				                <span
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
	
	<!-- navbar -->
	<nav
		class="navbar navbar-expand-lg navbar-light navbar-default pt-0 pb-0">
		<div class="container px-0 px-md-3">

			<div class="dropdown me-3 d-none d-lg-block">
				<button class="btn btn-primary px-6" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false">
					<span class="me-1"> 
						<svg xmlns="http://www.w3.org/2000/svg"
							width="16" height="16" viewBox="0 0 24 24" fill="none"
							stroke="currentColor" stroke-width="1.2" stroke-linecap="round"
							stroke-linejoin="round" class="feather feather-grid">
			              <rect x="3" y="3" width="7" height="7"></rect>
			              <rect x="14" y="3" width="7" height="7"></rect>
			              <rect x="14" y="14" width="7" height="7"></rect>
			              <rect x="3" y="14" width="7" height="7"></rect>
			            </svg>
	            </span> Giới thiệu
				</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="pages/shop-grid.html">Về
							Vacxin Việt Nam</a>
					</li>
					<li><a class="dropdown-item" href="pages/shop-grid.html">Chuyên
							gia</a>
					</li>
					<li><a class="dropdown-item" href="pages/shop-grid.html">Tuyển
							dụng</a>
					</li>

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
						aria-label="Close">
					</button>
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
	
	<div class="backgroud" style="padding: 35px;">
        <div class="overlap">
          <div class="text-wrapper-6">Sởi tăng nhanh, diễn biến nguy hiểm, chủ động phòng ngừa sớm!</div>
          
        </div>
    </div>


	<div class="container">
		<section>
		    <div style="width: 100%;" class="gt-info div_detail_post div_idcat_13">
	                                    	                                     
			<p style="text-align: justify;">Tình hình dịch sởi đang diễn biến phức tạp và trở nên ngày càng nghiêm trọng tại nhiều địa phương. Theo Cục Y tế dự phòng, số ca mắc sởi đã tăng hơn 8 lần so với cùng kỳ năm trước. HCDC ghi nhận chỉ từ cuối tháng 5 cho đến nay, cả thành phố xuất hiện nhiều ca sốt phát ban nghi sởi, hàng trăm ca dương tính và đã có 3 trẻ không qua khỏi, hầu hết đều chưa tiêm vắc xin phòng sởi hoặc đã tiêm vắc xin nhưng chưa đầy đủ. Khảo sát mới nhất cho thấy chỉ có 86% trẻ em từ 9 tháng đến dưới 5 tuổi tại TP.HCM có kháng thể phòng sởi, thấp hơn nhiều so với ngưỡng 95% cần thiết để đạt miễn dịch cộng đồng.</p>
			<p style="text-align: justify;">Trước tình hình này, các cơ quan y tế đã khẩn trương triển khai các biện pháp ứng phó mạnh mẽ, tăng cường tiêm chủng bổ sung và tiêm bù vắc xin sởi để tạo “lá chắn” bảo vệ cộng đồng trước sự lây lan “chóng mặt” của virus. Về phía người dân, bên cạnh việc tuân thủ các hướng dẫn, khuyến cáo của tổ chức y tế, chính quyền địa phương, thì cần thực hiện những gì để phòng ngừa bệnh tật hiệu quả trong giai đoạn hiện nay?</p>
			<p style="text-align: justify;"><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-84946" src="https://vnvc.vn/wp-content/uploads/2024/08/talkshow-benh-soi.jpg" alt="talkshow bệnh sởi" width="800" height="419"></p>
			<p style="text-align: justify;">Nhằm mang đến cho cộng đồng những thông tin y khoa chính xác và hữu ích về <a href="https://vnvc.vn/benh-soi-nguyen-nhan-trieu-chung-cach-phong-ngua-va-dieu-tri-hieu-qua/"><strong>bệnh sởi</strong></a> cũng như cách phòng ngừa khoa học, các loại vắc xin phòng bệnh hiệu quả, cách nhận biết, xử trí và điều trị bệnh kịp thời, vào 14 giờ thứ tư ngày 21/08/2024 vừa qua, Hệ thống Trung tâm tiêm chủng VNVC đã phối hợp cùng Báo Tuổi Trẻ tổ chức chương trình Tư vấn trực tuyến &amp; Tọa đàm với chủ đề: “BỆNH SỞI: HIỂU ĐỂ PHÒNG VÀ ĐIỀU TRỊ KỊP THỜI”.</p>
			<p style="text-align: justify;">Chương trình có sự tham gia của các chuyên gia y tế, y tế dự phòng, tiêm chủng vắc xin, bệnh truyền nhiễm và giáo dục sức khỏe hàng đầu tại Việt Nam:</p>
			<ul style="text-align: justify;">
			<li>BS.CKI Bạch Thị Chính – Giám đốc Y khoa, Hệ thống Trung tâm Tiêm chủng VNVC;</li>
			<li>BS.CKII Dư Tuấn Quy – Trưởng khoa Nhiễm – Thần kinh, Bệnh viện Nhi Đồng I;</li>
			<li>ThS.BS Đinh Thị Hải Yến – Trưởng khoa Truyền thông – Giáo dục sức khỏe, Trung tâm Kiểm soát bệnh tật TP.HCM;</li>
			<li>BS Vũ Quỳnh Hoa – Phó Trưởng phòng Nghiệp vụ Y, Sở Y tế TP.HCM.</li>
			</ul>
			<p style="text-align: justify;">Để xem lại chương trình tư vấn trực tuyến, mời Quý khách theo dõi <a href="https://www.facebook.com/share/v/Hqdt9sQ2LLjSquYj/" target="_blank" rel="nofollow noreferrer noopener">TẠI ĐÂY</a></p>
			<p style="text-align: justify;">Mở đầu chương trình, ThS.BS Đinh Thị Hải Yến – Trưởng khoa Truyền thông – Giáo dục sức khỏe, Trung tâm Kiểm soát Bệnh tật TP.HCM cho biết, sởi là một bệnh truyền nhiễm cấp tính do virus thuộc họ Paramyxovirus gây ra. Nhiều người thường nghĩ rằng, sởi chỉ gây ra các vấn đề cho sức khỏe ít nghiêm trọng như phát ban hoặc sốt nhẹ, nhưng thực tế sởi có thể biến chứng trầm trọng, gây tổn thương, rối loạn chức năng đa cơ quan, có thể đe dọa tính mạng người bệnh, đặc biệt nguy hiểm ở trẻ nhỏ dưới 5 tuổi.</p>
			<p style="text-align: justify;">Đối với phụ nữ mang thai, mắc virus sởi cũng như các virus khác như Rubella, thủy đậu… đặc biệt là mắc vào tam cá nguyệt thứ nhất sẽ có nguy cơ gây dị tật bẩm sinh, dị dạng thai, thai chết lưu, sinh non cho bé cùng các biến chứng thai kỳ nghiêm trọng khác.</p>
			<p style="text-align: justify;">Hiện nay, tình hình bệnh sởi tại TP.HCM đang diễn biến phức tạp, số ca mắc bệnh ngày càng gia tăng nhanh chóng và đã có 3 ca tử vong. Có 57 phường, xã và 16 quận, huyện ở TPHCM đã ghi nhận ca mắc sởi, 9 quận, huyện có từ 2 ca bệnh trở lên. Trong khi đó, trong giai đoạn 2021 – 2023, TP.HCM chỉ ghi nhận một trường hợp bệnh sởi. Nguyên nhân do có hơn 78% ca mắc bệnh sởi ở trẻ dưới 5 tuổi, 66% trẻ chưa tiêm chủng đầy đủ 2 mũi vắc xin phòng bệnh sởi và 30% trẻ không rõ tiền sử tiêm chủng, cùng với mật độ dân số cao, di dân, biến động dân cư cao khiến TP.HCM có nguy cơ rất cao bùng phát dịch sởi.</p>
			<p style="text-align: justify;">Sở y tế đã tham mưu ủy ban nhân dân thành phố công bố dịch sởi tại thành phố. Trước nguy cơ dịch sởi tiếp tục lây lan, ngành y tế thành phố đã triển khai nhiều biện pháp phòng bệnh. Trong đó, quan trọng nhất là tiêm ngừa vắc xin sởi.</p>
			<p style="text-align: justify;">Được biết, hiện nay HCDC đang triển khai các giải pháp để tăng miễn dịch cộng đồng – triển khai chiến dịch tiêm vắc xin sởi cho trẻ từ 1 – 5 tuổi bất kể tiền sử tiêm chủng. Các trung tâm y tế đang rà soát lập danh sách trẻ cần tiêm chủng vắc xin sởi để mời trẻ đi tiêm. Chiến dịch tiêm vắc xin sởi này dự kiến sẽ bắt đầu từ ngày 24/8/2024 tập trung tại các quận huyện đang có số ca mắc bệnh sởi cao hoặc có nguy cơ lây lan dịch cao. Sau đợt tập trung này, sẽ triển khai chiến dịch cho toàn thành phố.</p>
			<figure id="attachment_84943" aria-describedby="caption-attachment-84943" style="width: 800px" class="wp-caption aligncenter"><img loading="lazy" decoding="async" class="size-full wp-image-84943" src="https://vnvc.vn/wp-content/uploads/2024/08/bac-si-dinh-thi-hai-yen-phat-bieu.jpg" alt="bác sĩ đinh thị hải yến" width="800" height="534"><figcaption id="caption-attachment-84943" class="wp-caption-text">ThS.BS Đinh Thị Hải Yến cho biết tình hình bệnh sởi tại TP.HCM đang diễn biến phức tạp, số ca mắc bệnh ngày càng gia tăng nhanh chóng và đã có 3 ca tử vong.</figcaption></figure>
			<p style="text-align: justify;">Thông tin thêm về tình hình bệnh sởi, BS.CKII Dư Tuấn Quy – Trưởng khoa Nhiễm – Thần kinh, Bệnh viện Nhi đồng 1 cho biết, sởi là bệnh truyền nhiễm nguy hiểm, 1 ca sởi có thể lây cho 12 – 18 người, tốc độ và phạm vi lây lan mạnh hơn cúm và thủy đậu rất nhiều. Bệnh lây trực tiếp qua đường hô hấp giữa người bệnh với người lành hoặc giữa người lành mang trung và người khỏe mạnh, thậm chí có thể lây gián tiếp qua các tiếp xúc với đồ vật, vật dụng có chứa dịch tiết mang virus, sau đó đưa tay lên mắt, mũi miệng…</p>
			<p style="text-align: justify;">Sởi không chỉ gây sốt, phát ban mà còn có thể&nbsp; biến chứng nguy hiểm như viêm phổi, viêm tai giữa, viêm não, màng não, tiêu chảy, viêm loét giác mạc dẫn đến mù lòa, thậm chí tử vong.</p>
			<p style="text-align: justify;">Tại Bệnh viện Nhi Đồng 1, số lượng trẻ em đến khám sởi đã tăng đáng kể, mỗi ngày ghi nhận từ 20 – 30 trường hợp đến khám. Các phòng khám ngoại trú liên tục tiếp nhận và khám từ 10 – 20 ca nghi mắc sởi hàng ngày, trong khi khoa nội trú tiếp nhận hơn 30 ca mỗi ngày, chủ yếu là những trường hợp đến khám ở giai đoạn muộn, bệnh đã biến chứng rất nguy hiểm, đòi hỏi nhập viện điều trị kéo dài, hỗ trợ thở oxy, thở máy… Đặc biệt, hầu hết các ca bệnh sởi ở Bệnh viện Nhi Đồng 1 đều biến chứng viêm phổi nặng và xác định chưa từng viêm vắc xin sởi trước đây.</p>
			<p style="text-align: justify;">Lý giải về nguyên nhân khiến tỷ lệ tiêm chủng vắc xin sởi trong cộng đồng thấp, bác sĩ Tuấn Quy cho biết: “<i>Gồm 3 nguyên nhân chính. Nguyên nhân chủ yếu là do phụ huynh quên việc tiêm vắc xin cho con. Thứ 2 là phụ huynh còn nghi ngờ về sự an toàn của vắc xin, sợ con phản ứng xấu với vắc xin và nhóm thứ 3 là trẻ chưa đến tuổi tiêm ngừa.”</i></p>
			<figure id="attachment_84944" aria-describedby="caption-attachment-84944" style="width: 800px" class="wp-caption aligncenter"><img loading="lazy" decoding="async" class="size-full wp-image-84944" src="https://vnvc.vn/wp-content/uploads/2024/08/bac-si-du-tuan-quy-phat-bieu.jpg" alt="bác sĩ dư tuấn quy" width="800" height="534"><figcaption id="caption-attachment-84944" class="wp-caption-text">Bác sĩ Dư Tuấn Quy cho biết, số lượng trẻ em đến tiêm sởi tại Bệnh viện Nhi Đồng 1 đang tăng nhanh chóng.</figcaption></figure>
			<p style="text-align: justify;">Theo Tổ chức Y tế Thế giới (WHO), năm 1980, trước khi vắc xin sởi được sử dụng rộng rãi đã có gần 2,6 triệu người tử vong mỗi năm. Chỉ tính riêng năm 2012 đã có 122.000 trường hợp tử vong toàn cầu do sởi, mỗi ngày có 330 ca tử vong, mỗi giờ trôi qua có 14 ca tử vong. Từ khi vắc xin sởi ra đời, trong giai đoạn 2000 – 2012, đã giúp giảm 78% số ca tử vong do sởi trên toàn thế giới. Vắc xin sởi đã được chứng minh an toàn, hiệu quả và ít tốn kém.</p>
			<p style="text-align: justify;">Mặc dù vắc xin đã được sử dụng trong suốt 50 năm qua, nhiều quốc gia trong đó có Việt Nam đã kiểm soát tốt được bệnh sởi, nhưng với sự suy giảm của độ bao phủ vắc xin do tâm lý chủ quan, thờ ơ và nhiều người dân vẫn chưa nhận thức rõ được mức độ nghiêm trọng của bệnh, dẫn đến tình hình bệnh sởi vẫn xuất hiện tràn lan, cộng với các yếu tố dịch tễ, môi trường thuận thời, giúp dịch bệnh diễn biến ngày càng phức tạp.</p>
			<p style="text-align: justify;">Theo BS CK1 Bạch Thị Chính – Giám đốc Y khoa Hệ thống tiêm chủng VNVC, đại dịch COVID-19 đi qua đã để lại nhiều hệ lụy, khiến nhiều phụ huynh lơ là việc tiêm chủng định kỳ cho trẻ. Hậu quả là hệ miễn dịch của trẻ trở nên yếu kém, không đủ khả năng nhận diện, tiêu diệt các tác nhân gây bệnh và bảo vệ trẻ khỏi sự tấn công của chúng, khiến các em dễ bị mắc các bệnh truyền nhiễm nguy hiểm như sởi, nhiều trường hợp biến chứng nặng, tử vong.</p>
			<p style="text-align: justify;">“Sởi có tốc độ lây lan rất nhanh và nếu tỷ lệ tiêm chủng trong cộng đồng không đạt mức cần thiết, khả năng lây nhiễm sẽ rất cao. Chỉ cần một ca mắc sởi cũng có thể gây ra nguy cơ lây nhiễm rộng trong cộng đồng, làm tăng khả năng bùng phát dịch bệnh. Sởi có chu kỳ bùng phát khoảng 4 – 5 năm một lần và để ngăn ngừa bệnh hiệu quả, cộng đồng cần đạt tỷ lệ miễn dịch ít nhất 95%. Nếu tỷ lệ miễn dịch chỉ tăng lên 5% mỗi năm, sau 4 – 5 năm, con số này sẽ trở nên đáng kể.”, bác sĩ Chính chia sẻ.</p>
			<p style="text-align: justify;">Chia sẻ thêm về tình hình tiêm chủng vắc xin sởi tại hệ thống hàng trăm trung tâm tiêm chủng VNVC trên toàn quốc trong thời gian gần đây, bác sĩ Chính cho biết, bắt đầu từ tháng 5/2024, khi sởi có dấu hiệu gia tăng, Hệ thống Trung tâm tiêm chủng VNVC đã tăng cường truyền thông để phụ huynh đưa trẻ đến tiêm ngừa đầy đủ. Là đối tác chiến lược toàn diện của nhiều hãng vắc xin lớn, VNVC có đầy đủ vắc xin sởi phòng ngừa sởi như vắc xin phối hợp gồm vắc xin Sởi – Rubella (MR) và 3 loại vắc xin 3 trong 1 Sởi – Quai bị – Rubella là MMR II (Mỹ), MMR (Ấn Độ) và Priorix (Bỉ) cùng vắc xin sởi đơn MVVac (Việt Nam).</p>
			<p style="text-align: justify;">Thời điểm tiêm vắc xin sởi tốt nhất đối với trẻ em Việt Nam là từ 9 tháng tuổi trở lên. Tuy nhiên, các cơ quan y tế địa phương có thể khuyến cáo tiêm chủng vắc xin sởi MVVAC (Việt Nam) và MMR II (Mỹ) cho trẻ dưới 9 tháng tuổi trong các trường hợp có dịch, khi 9 hoặc 12 tháng tuổi, trẻ vẫn cần hoàn thành lịch tiêm cơ bản theo khuyến cáo của Bộ Y tế..</p>
			<figure id="attachment_84942" aria-describedby="caption-attachment-84942" style="width: 800px" class="wp-caption aligncenter"><img loading="lazy" decoding="async" class="size-full wp-image-84942" src="https://vnvc.vn/wp-content/uploads/2024/08/bac-si-bach-thi-chinh-phat-bieu.jpg" alt="bác sĩ bạch thị chính" width="800" height="534"><figcaption id="caption-attachment-84942" class="wp-caption-text">Bác sĩ Bạch Thị Chính chia sẻ thời điểm tiêm vắc xin sởi tốt nhất đối với trẻ em Việt Nam là từ 9 tháng tuổi.</figcaption></figure>
			<p style="text-align: justify;">Chia sẻ về cách điều trị bệnh sởi, bác sĩ Dư Tuấn Quy cho biết, ở Bệnh viện Nhi Đồng 1, nếu trẻ có triệu chứng nghi ngờ sốt phát ban sẽ được phân luồng, cách ly ngay từ ban đầu. Nếu trẻ có dấu hiệu sởi, không biến chứng thì sẽ cho trẻ uống thuốc và điều trị tại nhà. Với những trẻ trong độ tuổi bú mẹ cần tăng cường cho bé bú sữa mẹ nhiều hơn. Với những trẻ lớn ăn uống kém cần chia thành nhiều bữa ăn, tránh để trẻ mất nước. Nếu trẻ có dấu hiệu sốt, cần cho trẻ uống thuốc, uống nhiều nước, sữa và tăng cường chế độ dinh dưỡng. Vitamin A sẽ ngăn ngừa được viêm loét giác mạc và suy dinh dưỡng do sởi gây ra. Những trường hợp gặp biến chứng, sẽ được chỉ định cách ly, nhập viện tại khoa riêng để tránh lây nhiễm cho bệnh viện và cộng đồng.</p>
			<p style="text-align: justify;">Kết thúc chương trình, bác sĩ Vũ Quỳnh Hoa, phó trưởng phòng Nghiệp vụ Y, Sở Y tế TP.HCM nhấn mạnh, tiêm vắc xin là phương pháp an toàn, hiệu quả và tiết kiệm nhất để phòng ngừa bệnh sởi. Sở Y tế không chỉ có các văn bản chỉ đạo về công tác tiêm chủng mà còn tăng cường truyền thông đến người dân về lợi ích của việc tiêm chủng và vận động cộng đồng tiêm phòng ngừa vắc xin theo đúng quy định của Bộ Y tế. Đối với các trường hợp tuyên truyền “anti vắc xin” và những trường hợp đưa thông tin sai lệch gây hoang mang cho cộng đồng làm ảnh hưởng đến sức khỏe người dân, Thanh tra Sở Y tế sẽ sớm phát hiện và xử lý theo quy định.</p>
			<p style="text-align: justify;">Chính vì thế, ở thời điểm hiện tại, phụ huynh yên tâm và lưu ý đưa trẻ đi tiêm đủ mũi, đúng lịch, kể cả các mũi nhắc để đảm bảo trẻ đủ miễn dịch chống lại virus gây bệnh. Bên cạnh việc tiêm vắc xin, bác sĩ Hoa cũng khuyến cáo người dân cũng cần lưu ý phòng bệnh bằng các biện pháp sau:</p>
			<ul style="text-align: justify;">
			<li>Rửa tay thường xuyên trước khi ăn, sau khi đi vệ sinh và sau khi tiếp xúc với người bệnh.</li>
			<li>Đeo khẩu trang khi đến nơi đông người hoặc khi chăm sóc người bệnh.</li>
			<li>Vệ sinh nhà cửa, đồ dùng thông thoáng, sạch sẽ, thường xuyên lau chùi các bề mặt tiếp xúc.</li>
			<li>Che miệng và mũi khi ho hoặc hắt hơi bằng khăn giấy hoặc khuỷu tay.</li>
			<li>Cách ly người bệnh để tránh lây nhiễm cho người khác.</li>
			<li>Ăn uống đầy đủ, cân đối, đặc biệt là các loại thực phẩm giàu vitamin A như cà rốt, bí đỏ, gan… để tăng cường sức đề kháng.</li>
			</ul>
			<figure id="attachment_84945" aria-describedby="caption-attachment-84945" style="width: 800px" class="wp-caption aligncenter"><img loading="lazy" decoding="async" class="size-full wp-image-84945" src="https://vnvc.vn/wp-content/uploads/2024/08/bac-si-vu-quynh-hoa-phat-bieu.jpg" alt="bác sĩ vũ quỳnh hoa" width="800" height="534"><figcaption id="caption-attachment-84945" class="wp-caption-text">Bác sĩ Vũ Quỳnh Hoa nhấn mạnh, tiêm vắc xin là phương pháp an toàn, hiệu quả và tiết kiệm nhất để phòng ngừa bệnh sởi.</figcaption></figure>
			<p style="text-align: justify;">Tiêm ngừa không bao giờ muộn, nếu bé chưa tiêm ngừa hãy đưa bé đến trung tâm tiêm chủng VNVC gần nhất để được tiêm chủng sớm nhất, mang lại hiệu quả phòng bệnh tốt nhất.</p>
			<p style="text-align: justify;">Hệ thống Trung tâm Tiêm chủng cho trẻ em và người lớn VNVC hiện có gần 50 loại vắc xin phòng gần 50 bệnh truyền nhiễm nguy hiểm. Với gần 200 trung tâm tiêm chủng trên toàn quốc, VNVC có đầy đủ các loại vắc xin quan trọng cho trẻ em và người lớn, kể cả các loại thường xuyên khan hiếm như 5 trong 1, 6 trong 1, sởi,&nbsp; phế cầu, dại… với chi phí bình ổn. Đặc biệt, VNVC còn hỗ trợ tài chính cho các gia đình khó khăn, đông con, các đối tượng tiêm ngừa là học sinh, sinh viên, nhân viên văn phòng gặp rào cản về tài chính tiêm chủng bằng cách triển khai chương trình “Tiêm vắc xin trước, trả chi phí sau” không lãi suất, kỳ hạn thanh toán linh hoạt, kéo dài đến 12 tháng để người dân có thể yên tâm tiêm chủng vắc xin phòng bệnh đầy đủ, đúng lịch với chi phí tiết kiệm và linh hoạt.</p>
			<p style="text-align: justify;">Để đăng ký tiêm vắc xin cho trẻ đến trường tại Hệ thống Trung tâm tiêm chủng VNVC, Khách hàng có thể truy cập <a href="https://vax.vnvc.vn/vaccine" rel="nofollow noreferrer noopener" target="_blank"><b>TẠI ĐÂY</b></a>!</p>
			<p style="text-align: justify;">Để được tư vấn các thông tin xoay quanh vắc xin cho trẻ em và người lớn, đặt mua vắc xin, Quý khách vui lòng liên hệ <a href="https://vnvc.vn/"><strong>VNVC</strong></a> theo thông tin sau:</p>
			<ul style="text-align: justify;">
			<li>Hotline: 028 7102 6595;</li>
			<li>Fanpage: <a href="https://www.facebook.com/trungtamtiemchungvnvc" target="_blank" rel="nofollow noreferrer noopener">VNVC – Trung tâm Tiêm chủng Trẻ em và Người lớn</a>;</li>
			<li>Tra cứu trung tâm tiêm chủng VNVC gần nhất <a href="https://vnvc.vn/he-thong-trung-tam-tiem-chung/">tại đây</a>;</li>
			</ul>
			<p style="text-align: justify;">Để đặt mua vắc xin và tham khảo các sản phẩm vắc xin, Quý khách vui lòng truy cập: <a href="http://vax.vnvc.vn/" rel="nofollow noreferrer noopener" target="_blank">vax.vnvc.vn</a>.</p>
			<p style="text-align: justify;">Xem thêm những thông tin tiêm chủng hữu ích từ kênh <a href="https://www.tiktok.com/@vnvc.vn?_t=8okK5y8grsm&amp;_r=1" rel="nofollow noreferrer noopener" target="_blank">Tiktok Bác sĩ Tiêm chủng VNVC</a></p>
			<p style="text-align: justify;">Quý Khách hàng có thể tải VNVC Mobile App dễ dàng bằng 2 link sau:</p>
			<ul>
				<li>IOS (iPhone, iPad,…): <a href="https://bit.ly/VNVC_APPSTORE" target="_blank" rel="nofollow noreferrer noopener">https://bit.ly/VNVC_APPSTORE</a></li>
				<li style="text-align: justify;">Android (Oppo, Samsung, Sony,…): <a href="https://bit.ly/VNVC_GGPLAY" target="_blank" rel="nofollow noreferrer noopener">https://bit.ly/VNVC_GGPLAY</a></li>
			</ul>
		                                    				
		       <script>
		           jQuery(document).ready(function ($) {
		               var title='Sởi tăng nhanh, diễn biến nguy hiểm, chủ động phòng ngừa sớm!';
		               $('.div_detail_post img').each(function () {
		                   var $img = $(this);
		                   var alt = $img.attr("alt");
		                   if (typeof alt == typeof undefined || alt == false) {
		                       $img.attr("alt", title);
		                   }
		               });
		           });
		       </script>
		        <div class=" bg_xam pt_10 pb_10 pl_15 pr_15 mb_10  noleft_mb noright_mb box_detail_post">
				    <div class="row ">
				        <div class="col-xs-6 col-sm-6 pt_5"><i class="fa fa-calendar div_inline mr_5 ml_15" aria-hidden="true"></i> <span class="hidden-xs">Cập nhật lần cuối:</span> 10:05 22/08/2024</div>
				    </div>
				</div>
			</div>
		
		</section>
	</div>

	<!-- footer -->

	<div class="border-top py-4">
		<div class="row align-items-center">
			<div class="col-md-6">
				<span class="small text-muted">Copyright 2023 © Powered by
					LEHIEU.</span>
			</div>
			<div class="col-md-6">
				<ul class="list-inline text-md-end mb-0 small mt-3 mt-md-0">
					<li class="list-inline-item text-muted">Follow us on</li>
					<li class="list-inline-item me-1">
					<a href="#!"
						class="icon-shape icon-sm social-links"> 
						<svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
		                		<path	d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
		              </svg>
		              </a>
		            </li>
					<li class="list-inline-item me-1"><a href="#!"
						class="icon-shape icon-sm social-links"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                <path
									d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
              </svg></a></li>
					<li class="list-inline-item"><a href="#!"
						class="icon-shape icon-sm social-links"><svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-instagram"
								viewBox="0 0 16 16">
                <path
									d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
              </svg></a></li>
				</ul>
			</div>
		</div>

	</div>
	
	<!-- ======= JS ======= -->
	<jsp:include page="layout/jsLink.jsp" />
	<script>
	document.querySelectorAll('.toggle-button').forEach(function(button) {
	    button.addEventListener('click', function() {
	        const content = this.previousElementSibling; // Lấy phần tử <p> trước đó
	        
	        content.classList.toggle('expanded');
	        
	        if (content.classList.contains('expanded')) {
	           /*  this.textContent = "Thu gọn"; */
	        } else {
	            this.textContent = "Xem thêm";
	        }
	    });
	});



	</script>
</body>
</html>