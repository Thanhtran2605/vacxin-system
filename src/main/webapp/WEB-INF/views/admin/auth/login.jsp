<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Vaccine System - Login</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- ======= CSS ======= -->
<jsp:include page="../layout/cssLink.jsp" />
</head>

<body>
	<main>
		<div class="container">

			<section
				class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div
							class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
							<div class="card mb-3">
								<div class="card-body">
									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Login to
											Your Account</h5>
										<p class="text-center small">Enter your username &
											password to login</p>
									</div>
									<div class="col-12">
											<c:if test="${param.error eq 'true'}">
												<div class="alert alert-danger" role="alert">Tên đăng nhập và mật khẩu không đúng.</div>
											</c:if>
											<c:if test="${param.logout eq 'true'}">
												<div class="alert alert-success" role="alert">Đăng xuất thành công.</div>
											</c:if>
										</div>
									<form class="row g-3 needs-validation" novalidate
										action="/vacxin-system/login" method="post">
										<div class="col-12">
											<label class="form-label">Tên đăng nhập</label> <input
												type="text" name="username" class="form-control" required>
										</div>
										<div class="col-12">
											<label class="form-label">Mật khẩu</label> <input
												type="password" name="password" class="form-control"
												required>
										</div>
										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit">Login</button>
										</div>
										<div class="col-12">
											<p class="small mb-0">
												Don't have an account? <a href="/vacxin-system/register">Create
													an account</a>
											</p>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />
</body>

</html>