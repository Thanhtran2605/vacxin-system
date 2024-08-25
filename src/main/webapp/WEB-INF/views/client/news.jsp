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
    position: relative;
    width: 100%;
    height: 350px;
    background-image: url(/vacxin-system/resources/assets/images/banner/banner3.jpg);
    background-size: cover;
    background-position: 20% 30%;
}


.backgroud .overlap {
    width: 100%;
    height: 100%;
    background-color: #00000059;
}

.backgroud .text-wrapper-6 {
    position: absolute;
    width: 100%;
    text-align: center;
    line-height: 300px;
    font-family: "Outfit", Helvetica;
    font-weight: 700;
    color: #ffffff;
    font-size: 60px;
    letter-spacing: 0;

}

 section{
	margin: 30px;
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





</style>

</head>

<body>
	<!-- ======= Header ======= -->
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
	
	<!-- navbar -->
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
	
	<!-- <section>
		
		<div class="backgroud">
	        <div class="overlap">
	          <div class="text-wrapper-6">Tin tức</div>
	          
	        </div>
	    </div>
	</section> -->
	
	
	<div class="container my-4">
        <div class="backgroud">
	        <div class="overlap">
	          <div class="text-wrapper-6">Tin tức</div>
	          
	        </div>
	    </div>
	    
	    <section > 
	
		<div class="card mb-3" style="width: 100%;">
		  <div class="row g-0">
		    <div class="col-md-6">
		      <img src="https://vnvc.vn/wp-content/uploads/2024/08/talkshow-benh-soi.jpg" class="img-fluid rounded-start" alt="..." style="height: 100%;">
		    </div>
		    <div class="col-md-6">
		      <div class="card-body">
		        <h5 class="card-title">
				    <a href="/vacxin-system/news_details" class="text-decoration-none">Sởi tăng nhanh, diễn biến nguy hiểm, chủ động phòng ngừa sớm!</a>
				</h5>
		        <p class="card-text">Tình hình dịch sởi đang diễn biến phức tạp và trở nên ngày càng nghiêm trọng tại nhiều địa phương. Theo Cục Y tế dự phòng, số ca mắc sởi đã tăng hơn 8 lần so với cùng kỳ năm trước. HCDC ghi nhận chỉ từ cuối tháng 5 cho đến nay, cả thành phố xuất hiện nhiều ca sốt phát ban nghi sởi, hàng trăm ca dương tính và đã có 3 trẻ không qua khỏi, hầu hết đều chưa tiêm vắc xin phòng sởi hoặc đã tiêm vắc xin nhưng chưa đầy đủ. Khảo sát mới nhất cho thấy chỉ có 86% trẻ em từ 9 tháng đến dưới 5 tuổi tại TP.HCM có kháng thể phòng sởi, thấp hơn nhiều so với ngưỡng 95% cần thiết để đạt miễn dịch cộng đồng.</p>
		        <p class="card-text">
		        	<small class="text-body-secondary">
		        		<i class="fa-solid fa-calendar-days"></i> 23/08/2024
		        	</small>
		        </p>
		      </div>
		    </div>
		  </div>
		</div>
	</section>

        <!-- Container để hiển thị tin tức -->
        <section>
            <div class="row row-cols-1 row-cols-md-3 g-8" id="news-container"></div>
        </section>

        <!-- Nút phân trang -->
        <div id="pagination" class="d-flex justify-content-center my-4">
            <button onclick="previousPage()" id="prev-btn" class="btn btn-primary mx-2" disabled>Previous</button>
            <span id="page-number" class="mx-2">1</span>
            <button onclick="nextPage()" id="next-btn" class="btn btn-primary mx-2">Next</button>
        </div>
    </div>
	
	 <script>
        // Dữ liệu tin tức (HTML block cho mỗi thẻ tin tức)
        const newsItems = [
        	`<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-benh-cho-be.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Bạch hầu vẫn diễn biến phức tạp</h5>
	                    <p class="card-text content">Nhiều ca bạch hầu xuất hiện tại các địa phương miền Bắc và miền Trung, chưa rõ nguồn lây, đã có trường hợp không qua khỏi cùng hàng trăm ca F1 được cách ly theo dõi. UBND tỉnh Thanh Hóa công bố dịch bạch hầu tại thị xã biên giới Mường Lát.</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-soi-cho-tre-nho.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Trẻ chưa đến tuổi tiêm vắc xin sởi cần làm gì để phòng bệnh?</h5>
	                    <p class="card-text content">TP.HCM đang đứng trước nguy cơ dịch sởi bùng phát khi số ca bệnh gia tăng nhanh chóng, đã có 3 ca tử vong, các ca mắc chủ yếu là trẻ chưa tiêm vắc xin và chưa đủ tuổi để tiêm vắc xin...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ben-trong-kho-lanh-cua-vnvc.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Trẻ sơ sinh, trẻ nhỏ có nên tiêm vắc xin phế cầu không?</h5>
	                    <p class="card-text content">Nhiễm phế cầu khuẩn là mối đe dọa đối với sức khỏe của cộng đồng, nhất là với người có hệ miễn dịch yếu kém như trẻ nhỏ và người cao tuổi...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tvtt-vac-xin-can-tiem-cho-tre-truoc-khi-di-hoc-lai.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Bảo vệ sức khỏe cho trẻ đến trường bằng vắc xin</h5>
	                    <p class="card-text content">Ho gà xuất hiện ở khu vực miền Bắc, sởi quay trở lại tại nhiều địa phương, các bệnh như bạch hầu, viêm màng não...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ghi-nhan-ca-benh-ho-ga-hiem-gap.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Liên tục ghi nhận nhiều ca mắc ho gà</h5>
	                    <p class="card-text content">Ho gà là một bệnh truyền nhiễm cấp tính có khả năng lây lan nhanh qua đường hô hấp. Mặc dù bệnh đã có thể phòng được bằng vắc xin...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/thai-phu-mac-bach-hau-o-thanh-hoa.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Một thai phụ vừa được xác định mắc bạch hầu</h5>
	                    <p class="card-text content">Sở Y tế tỉnh Thanh Hóa cho biết, địa bàn vừa ghi nhận một bệnh nhân mắc bệnh bạch hầu là thai phụ ở huyện vùng cao Mường Lát...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tvtt-vac-xin-can-tiem-cho-tre-truoc-khi-di-hoc-lai.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Bảo vệ sức khỏe cho trẻ đến trường bằng vắc xin</h5>
	                    <p class="card-text content">Ho gà xuất hiện ở khu vực miền Bắc, sởi quay trở lại tại nhiều địa phương, các bệnh như bạch hầu, viêm màng não...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ghi-nhan-ca-benh-ho-ga-hiem-gap.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Liên tục ghi nhận nhiều ca mắc ho gà</h5>
	                    <p class="card-text content">Ho gà là một bệnh truyền nhiễm cấp tính có khả năng lây lan nhanh qua đường hô hấp. Mặc dù bệnh đã có thể phòng được bằng vắc xin...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/thai-phu-mac-bach-hau-o-thanh-hoa.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Một thai phụ vừa được xác định mắc bạch hầu</h5>
	                    <p class="card-text content">Sở Y tế tỉnh Thanh Hóa cho biết, địa bàn vừa ghi nhận một bệnh nhân mắc bệnh bạch hầu là thai phụ ở huyện vùng cao Mường Lát...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
            `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-benh-cho-be.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Bạch hầu vẫn diễn biến phức tạp</h5>
	                    <p class="card-text content">Nhiều ca bạch hầu xuất hiện tại các địa phương miền Bắc và miền Trung, chưa rõ nguồn lây, đã có trường hợp không qua khỏi cùng hàng trăm ca F1 được cách ly theo dõi. UBND tỉnh Thanh Hóa công bố dịch bạch hầu tại thị xã biên giới Mường Lát.</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-soi-cho-tre-nho.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Trẻ chưa đến tuổi tiêm vắc xin sởi cần làm gì để phòng bệnh?</h5>
	                    <p class="card-text content">TP.HCM đang đứng trước nguy cơ dịch sởi bùng phát khi số ca bệnh gia tăng nhanh chóng, đã có 3 ca tử vong, các ca mắc chủ yếu là trẻ chưa tiêm vắc xin và chưa đủ tuổi để tiêm vắc xin...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ben-trong-kho-lanh-cua-vnvc.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Trẻ sơ sinh, trẻ nhỏ có nên tiêm vắc xin phế cầu không?</h5>
	                    <p class="card-text content">Nhiễm phế cầu khuẩn là mối đe dọa đối với sức khỏe của cộng đồng, nhất là với người có hệ miễn dịch yếu kém như trẻ nhỏ và người cao tuổi...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`
        ];

        // Số lượng tin tức mỗi trang
        const itemsPerPage = 6;
        let currentPage = 1;
        const totalPages = Math.ceil(newsItems.length / itemsPerPage);

        // Hiển thị tin tức dựa trên trang hiện tại
        function displayNews(page) {
            const start = (page - 1) * itemsPerPage;
            const end = start + itemsPerPage;
            const newsContainer = document.getElementById('news-container');
            newsContainer.innerHTML = newsItems.slice(start, end).join('');

            // Cập nhật số trang và trạng thái của các nút điều hướng
            document.getElementById('page-number').innerText = page;
            document.getElementById('prev-btn').disabled = page === 1;
            document.getElementById('next-btn').disabled = page === totalPages;
        }

        // Chuyển sang trang tiếp theo
        function nextPage() {
            if (currentPage < totalPages) {
                currentPage++;
                displayNews(currentPage);
            }
        }

        // Quay lại trang trước đó
        function previousPage() {
            if (currentPage > 1) {
                currentPage--;
                displayNews(currentPage);
            }
        }

        // Hiển thị tin tức đầu tiên khi trang tải
        displayNews(currentPage);
    </script>

	
	


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

</body>
</html>