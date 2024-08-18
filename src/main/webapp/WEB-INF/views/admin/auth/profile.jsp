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
				<c:if test="${errorMessage == true}">
					<div class="alert alert-danger" role="alert">Mật khẩu cũ không đúng.</div>
				</c:if>
				<c:if test="${successMessage == true}">
					<div class="alert alert-success" role="alert">Mật khẩu đã được thay đổi thành công.</div>
				</c:if>
				<section class="section profile">

					<div class="card">
						<div class="card-body pt-3">

							<ul class="nav nav-tabs nav-tabs-bordered" role="tablist">

								<li class="nav-item" role="presentation">
									<button class="nav-link active" data-bs-toggle="tab"
										data-bs-target="#profile-overview" aria-selected="true"
										role="tab">Thông tin cá nhân</button>
								</li>

								<li class="nav-item" role="presentation">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-edit" aria-selected="false"
										tabindex="-1" role="tab">Thay đổi mật khẩu</button>
								</li>

							</ul>
							<div class="tab-content pt-2">

								<div class="tab-pane fade show active profile-overview"
									id="profile-overview" role="tabpanel">
									<h5 class="card-title">Thông tin người dùng</h5>
									<c:if test="${ currentUser.role.value == 'ADMIN' }">
										<div class="row">
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label ">Tên đăng nhập</div>
												<div class="col-lg-9 col-md-8">${ currentUser.username }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Email</div>
												<div class="col-lg-9 col-md-8">${ currentUser.email }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Số điện thoại</div>
												<div class="col-lg-9 col-md-8">${ currentUser.phone }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Họ tên</div>
												<div class="col-lg-9 col-md-8">${ currentUser.fullName }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Giới tính</div>
												<div class="col-lg-9 col-md-8">${ currentUser.gender }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Phân quyền</div>
												<div class="col-lg-9 col-md-8">${ currentUser.role.value }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Địa chỉ</div>
												<div class="col-lg-9 col-md-8">${ currentUser.address }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Trạng thái</div>
												<c:choose>
													<c:when test="${ currentUser.status == 0 }">
														<div class="col-lg-9 col-md-8">
															<span class="badge bg-success">Active</span>
														</div>
													</c:when>
													<c:otherwise>
														<div class="col-lg-9 col-md-8">
															<span class="badge bg-danger">Inactive</span>
														</div>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</c:if>
									<c:if
										test="${ currentEmployee.employee.user.role.value == 'DOCTOR' || currentEmployee.employee.user.role.value == 'RECEPTIONIST' }">
										<div class="row">
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label ">Tên đăng nhập</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.user.username }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Email</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.user.email }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Số điện thoại</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.user.phone }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Họ tên</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.user.fullName }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Giới tính</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.user.gender }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Phân quyền</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.user.role.value }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Địa chỉ</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.user.address }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Ngành</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.department }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Lương</div>
												<div class="col-lg-9 col-md-8">${ currentEmployee.employee.salary }</div>
											</div>
											<div class="col-lg-6 row">
												<div class="col-lg-3 col-md-4 label">Trạng thái</div>
												<c:choose>
													<c:when test="${ currentDoctor.employee.user.status == 0 }">
														<div class="col-lg-9 col-md-8">
															<span class="badge bg-success">Active</span>
														</div>
													</c:when>
													<c:otherwise>
														<div class="col-lg-9 col-md-8">
															<span class="badge bg-danger">Inactive</span>
														</div>
													</c:otherwise>
												</c:choose>
											</div>
											<c:choose>
												<c:when
													test="${ currentEmployee.employee.user.role.value == 'DOCTOR' }">
													<div class="col-lg-6 row">
														<div class="col-lg-3 col-md-4 label">LicenseNumber</div>
														<div class="col-lg-9 col-md-8">${ currentEmployee.licenseNumber }</div>
													</div>
													<div class="col-lg-6 row">
														<div class="col-lg-3 col-md-4 label">Specialization</div>
														<div class="col-lg-9 col-md-8">${ currentEmployee.specialization }</div>
													</div>
													<div class="col-lg-6 row">
														<div class="col-lg-3 col-md-4 label">Kinh nghiệm</div>
														<div class="col-lg-9 col-md-8">${ currentEmployee.yearsOfExperience }
															năm</div>
													</div>
												</c:when>
												<c:otherwise>
													<div class="col-lg-6 row">
														<div class="col-lg-3 col-md-4 label">Ngôn ngữ</div>
														<div class="col-lg-9 col-md-8">${ currentEmployee.languagesSpoken }</div>
													</div>
													<div class="col-lg-6 row">
														<div class="col-lg-3 col-md-4 label">Ca làm</div>
														<div class="col-lg-9 col-md-8">${ currentEmployee.shift }</div>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</c:if>

								</div>

								<div class="tab-pane fade profile-edit pt-3" id="profile-edit"
									role="tabpanel">
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-6">
											<form action="change-password" method="post">
												<div class="row mb-3">
													<label class="col-md-4 col-lg-3 col-form-label">Mật
														khẩu cũ</label>
													<div class="col-md-8 col-lg-9">
														<input name="oldPassword" type="text" class="form-control">
													</div>
												</div>
												<div class="row mb-3">
													<label class="col-md-4 col-lg-3 col-form-label">Mật
														khẩu mới</label>
													<div class="col-md-8 col-lg-9">
														<input name="newPassword" type="text" class="form-control">
													</div>
												</div>
												<div class="text-center">
													<button type="submit" class="btn btn-primary">Xác
														nhận</button>
												</div>
											</form>
										</div>
										<div class="col-md-3"></div>
									</div>
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