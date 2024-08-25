<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-light py-lg-5 pt-3 px-0 pb-0">
	<div class="container">
		<div class="row w-100 align-items-center g-3">
			<div class="col-md-2 col-lg-3">
				<a class="navbar-brand d-none d-lg-block" href="/vacxin-system/home">
					<img src="<c:url value='/resources/images/logo.png' />" width="60"
					alt="eCommerce HTML Template">
				</a>
			</div>
			<div class="col-md-6 col-lg-5 d-none d-lg-block">
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
			<div class="col-md-2 col-lg-3 d-none d-lg-block">
				<!-- Button trigger modal -->
				<a href="/vacxin-system/location"
					class="btn btn-outline-gray-400 text-muted"> <i
					class="feather-icon icon-map-pin me-2"></i>Location
				</a>


			</div>

			<c:choose>
				<c:when test="${not empty sessionScope.username}">
					<div class="col-md-2 col-lg-1 text-end d-none d-lg-block">
						<div class="list-inline">
							<div class="list-inline-item">
								<div class="dropdown">
									<a data-bs-toggle="dropdown" aria-expanded="false"> <svg
											xmlns="http://www.w3.org/2000/svg" width="20" height="20"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-user">
                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                    <circle cx="12" cy="7" r="4"></circle>
                  </svg>
									</a>
									<ul class="dropdown-menu">

										<li><a class="dropdown-item"
											href="/vacxin-system/profile"><i class="bi bi-box-person"></i>Profile</a></li>
										<li>
											<form action="/vacxin-system/logout" method="post">
												<button class="dropdown-item d-flex align-items-center"
													type="submit">Logout</button>
											</form>
										</li>
									</ul>
								</div>
							</div>
							<div class="list-inline-item">

								<span class="d-none d-md-block dropdown-toggle ps-2">${ sessionScope.username }</span>

							</div>

						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-md-2 col-lg-1 d-flex">
						<a class="btn btn-primary mx-2" href="/vacxin-system/login">Login</a>
						<a class="btn btn-primary" href="/vacxin-system/register">Register</a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>
