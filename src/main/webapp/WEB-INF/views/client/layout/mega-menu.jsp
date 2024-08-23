<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav
	class="navbar navbar-expand-lg navbar-light navbar-default pt-0 pb-0">
	<div class="container px-0 px-md-3">

		<div class="dropdown me-3 d-none d-lg-block">
			<button class="btn btn-primary px-6 " type="button"
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
              </svg></span> All Departments
			</button>
			<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
				<li><a class="dropdown-item" href="pages/shop-grid.html">Dairy,
						Bread & Eggs</a></li>

			</ul>
		</div>



		<div class="offcanvas offcanvas-start p-4 p-lg-0" id="navbar-default">
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
						data-bs-toggle="dropdown" aria-expanded="false"> Vacxin Trẻ em
					</a>
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
							<li><a class="dropdown-item" href="pages/blog.html">1 củ</a></li>
							<li><a class="dropdown-item" href="pages/blog-single.html">2
									củ</a></li>

						</ul></li>
					<li class="nav-item "><a class="nav-link"
						href="docs/index.html"> Bệnh học</a></li>
					<li class="nav-item "><a class="nav-link"
						href="docs/index.html"> Tin tức </a></li>
					<li class="nav-item "><a class="nav-link"
						href="docs/index.html"> Đặt ký lịch tiêm </a>
					<li class="nav-item "><a class="nav-link"
						href="docs/index.html"> Tìm trung tâm VNVC </a></li>
					</li>




					<li class="nav-item dropdown dropdown-fullwidth"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Mega menu </a>
						<div class=" dropdown-menu pb-0">

							<div class="row p-2 p-lg-4">
								<div class="col-lg-3 col-6 mb-4 mb-lg-0">
									<h6 class="text-primary ps-3">Dairy, Bread & Eggs</h6>
									<a class="dropdown-item" href="pages/shop-grid.html">Butter</a>


								</div>
								<div class="col-lg-3 col-6 mb-4 mb-lg-0">
									<h6 class="text-primary ps-3">Breakfast & Instant Food</h6>
									<a class="dropdown-item" href="pages/shop-grid.html">Breakfast
										Cereal</a>

								</div>
								<div class="col-lg-3 col-12 mb-4 mb-lg-0">
									<h6 class="text-primary ps-3">Cold Drinks & Juices</h6>
									<a class="dropdown-item" href="pages/shop-grid.html">Soft
										Drinks</a>



								</div>
								<div class="col-lg-3 col-12 mb-4 mb-lg-0">
									<div class="card border-0">
										<img
											src="<c:url value='/resources/assets/images/banner/menu-banner.jpg' />"
											alt="eCommerce HTML Template" class="img-fluid rounded-3">
										<div class="position-absolute ps-6 mt-8">
											<h5 class=" mb-0 ">
												Dont miss this <br>offer today.
											</h5>
											<a href="#" class="btn btn-primary btn-sm mt-3">Shop Now</a>
										</div>
									</div>
								</div>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
	</div>

</nav>
