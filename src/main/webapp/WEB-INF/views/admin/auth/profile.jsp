<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Profile</title>

<jsp:include page="../layout/cssLink.jsp" />
</head>

<body>

	<!-- ======= Header ======= -->
	<jsp:include page="../layout/header.jsp" />

	<!-- ======= Sidebar ======= -->
	<jsp:include page="../layout/sidebar.jsp" />

	<!-- ======= Main ======= -->
	<main id="main" class="main">
		<section class="section dashboard">
			<div class="row">
				<section class="section profile">

					<div class="card">
						<div class="card-body pt-3">

							<ul class="nav nav-tabs nav-tabs-bordered" role="tablist">

								<li class="nav-item" role="presentation">
									<button class="nav-link active" data-bs-toggle="tab"
										data-bs-target="#profile-overview" aria-selected="true"
										role="tab">Overview</button>
								</li>

								<li class="nav-item" role="presentation">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-edit" aria-selected="false"
										tabindex="-1" role="tab">Edit Profile</button>
								</li>

							</ul>
							<div class="tab-content pt-2">

								<div class="tab-pane fade show active profile-overview"
									id="profile-overview" role="tabpanel">

									<h5 class="card-title">Profile Details</h5>

									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Full Name</div>
										<div class="col-lg-9 col-md-8">${ sessionScope.username }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Last Name</div>
										<div class="col-lg-9 col-md-8">${ sessionScope.email }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">id</div>
										<div class="col-lg-9 col-md-8">${ sessionScope.id }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Phone</div>
										<div class="col-lg-9 col-md-8">${ sessionScope.role }</div>
									</div>

									
								</div>

								<div class="tab-pane fade profile-edit pt-3" id="profile-edit"
									role="tabpanel">

									<form action="profile" method="post">

										<div class="row mb-3">
											<label for="firstname"
												class="col-md-4 col-lg-3 col-form-label">First Name</label>
											<div class="col-md-8 col-lg-9">
												<input name="firstname" type="text" class="form-control"
													id="firstname" value="${ profile.firstname }">
											</div>
										</div>

										<div class="row mb-3">
											<label for="lastname"
												class="col-md-4 col-lg-3 col-form-label">Last Name</label>
											<div class="col-md-8 col-lg-9">
												<input name="lastname" type="text" class="form-control"
													id="lastname" value="${ profile.lastname }">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
											<div class="col-md-8 col-lg-9">
												<input name="email" type="email" class="form-control"
													id="Email" value="${ profile.email }">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
											<div class="col-md-8 col-lg-9">
												<input name="phone" type="text" class="form-control"
													id="Phone" value="${ profile.phone }">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
											<div class="col-md-8 col-lg-9">
												<input name="address" type="text" class="form-control"
													id="Address" value="${ profile.address }">
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Save
												Changes</button>
										</div>
									</form>

								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</section>
	</main>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />
</body>

</html>