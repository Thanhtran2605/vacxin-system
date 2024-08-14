<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-body-tertiary">
	<!-- Container wrapper -->
	<div class="container">
		<!-- Toggle button -->
		<button data-mdb-collapse-init class="navbar-toggler" type="button"
			data-mdb-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Collapsible wrapper -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!-- Navbar brand -->
			<a class="navbar-brand mt-2 mt-lg-0" href="/vacxin-system/"> <img
				src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
				height="15" alt="MDB Logo" loading="lazy" />
			</a>
			<!-- Left links -->
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="/vacxin-system/">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="/vacxin-system/about">About</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/vacxin-system/contact">Contact</a></li>
			</ul>
			<!-- Left links -->
		</div>
		<!-- Collapsible wrapper -->

		<!-- Right elements -->
		<div class="d-flex align-items-center">
					
			<!-- Avatar -->
			<div class="dropdown">
				<c:choose>
					<c:when test="${not empty sessionScope.username}">
						<a data-mdb-dropdown-init
							class="dropdown-toggle d-flex align-items-center hidden-arrow"
							href="#" id="navbarDropdownMenuAvatar" role="button"
							aria-expanded="false"> <img
							src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
							class="rounded-circle" height="25"
							alt="Black and White Portrait of a Man" />
						</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdownMenuAvatar">
							<li><a class="dropdown-item" href="info">My profile</a></li>
							<li><a class="dropdown-item" href="#">Settings</a></li>
							<li>
								<form action="/vacxin-system/logout" method="post">
									<button class="dropdown-item d-flex align-items-center"
										type="submit">
										<i class="bi bi-box-arrow-right"></i> Sign Out
									</button>
								</form>
							</li>
						</ul>
					</c:when>
					<c:otherwise>
						<a class="btn btn-primary" href="/vacxin-system/login">Login</a>
						<a class="btn btn-primary" href="/vacxin-system/register">Register</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<!-- Right elements -->
	</div>
	<!-- Container wrapper -->
</nav>
<!-- Navbar -->
