<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="header" class="header fixed-top d-flex align-items-center">

	<div class="d-flex align-items-center justify-content-between">
		<a href="/vacxin-system/admin/" class="logo d-flex align-items-center">
			<img src="<c:url value="/resources/images/logo.png" />" alt="">
			<span class="d-none d-lg-block">Vacxin</span>
		</a> <i class="bi bi-list toggle-sidebar-btn"></i>
	</div>

	<div class="search-bar">
		<form class="search-form d-flex align-items-center" method="POST"
			action="#">
			<input type="text" name="query" placeholder="Search"
				title="Enter search keyword">
			<button type="submit" title="Search">
				<i class="bi bi-search"></i>
			</button>
		</form>
	</div>

	<nav class="header-nav ms-auto">
		<ul class="d-flex align-items-center">

			<li class="nav-item d-block d-lg-none"><a
				class="nav-link nav-icon search-bar-toggle " href="#"> <i
					class="bi bi-search"></i>
			</a></li>

			<li class="nav-item dropdown pe-3"><a
				class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
				data-bs-toggle="dropdown"> <img
					src="<c:url value="/resources/images/user-default.jpg" />"
					alt="Profile" class="rounded-circle"> <span
					class="d-none d-md-block dropdown-toggle ps-2">ADMIN</span>
			</a>

				<ul
					class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">



					<li><a class="dropdown-item d-flex align-items-center"
						href="profile"> <i class="bi bi-person"></i> <span>My
								Profile</span>
					</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>
					<!-- <a class="dropdown-item d-flex align-items-center"
						href="#"> <i class="bi bi-box-arrow-right"></i> <span>Sign
								Out</span>
					
					</a> -->
					<li>
						<form action="/vacxin-system/logout" method="post">
							<button class="dropdown-item d-flex align-items-center"
								type="submit">
								<i class="bi bi-box-arrow-right"></i> <span>Sign Out
							</button>
						</form>
					</li>

				</ul></li>
		</ul>
	</nav>

</header>