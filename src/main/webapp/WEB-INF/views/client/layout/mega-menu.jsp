<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav
	class="navbar navbar-expand-lg navbar-light navbar-default pt-0 pb-0">
	<div class="container px-0 px-md-3">

		<div class="me-3 d-none d-lg-block">

			<a href="/vacxin-system/store" class="btn btn-primary px-6 " > 
			 Kho vắc xin
			</a>

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
					<li class="nav-item"><a class="nav-link"
						href="/vacxin-system/gioithieu" role="button"> Giới thiệu </a></li>
					<li class="nav-item "><a class="nav-link"
						href="/vacxin-system/news"> Tin tức </a></li>

					<li class="nav-item "><a class="nav-link"
						href="/vacxin-system/price_list" role="button"> Bảng giá </a></li>
						<li class="nav-item "><a class="nav-link"
						href="/vacxin-system/camnang" role="button"> Cẩm nang </a></li>
						


				</ul>
			</div>
		</div>
	</div>


</nav>
