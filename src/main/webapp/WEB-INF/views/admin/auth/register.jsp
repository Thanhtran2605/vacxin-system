<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Vaccine System - Register</title>
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
							class="col-lg-6 col-md-6 d-flex flex-column align-items-center justify-content-center">

							<div class="card mb-3">

								<div class="card-body">

									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Create an
											Account</h5>
										<p class="text-center small">Enter your personal details
											to create account</p>
									</div>
 										 <c:if test="${ message != null }">
											<div class="alert alert-danger alert-dismissible fade show"
												role="alert">
												${ message }
												<button type="button" class="btn-close"
													data-bs-dismiss="alert" aria-label="Close"></button>
											</div>
										</c:if> 
									<form:form method="post" action="/vacxin-system/register"
										modelAttribute="newUser" class="row g-3 needs-validation">
										<div class="col-6">
											<form:label path="email" class="form-label">Email</form:label>
											<form:input type="email" path="email" class="form-control" />
											<form:errors path="email" cssClass="text-danger" />
										</div>

										<div class="col-6">
											<form:label path="username" class="form-label">Tên đăng nhập</form:label>
											<form:input type="text" path="username" class="form-control" />
											<form:errors path="username" cssClass="text-danger" />
										</div>

										<div class="col-6">
											<form:label path="password" class="form-label">Mật khẩu</form:label>
											<form:input type="password" path="password"
												class="form-control" />
											<form:errors path="password" cssClass="text-danger" />
										</div>

										<div class="col-6">
											<form:label path="phone" class="form-label">Số điện thoại</form:label>
											<form:input type="text" path="phone" class="form-control" />
											<form:errors path="phone" cssClass="text-danger" />
										</div>

										<div class="col-6">
											<form:label path="address" class="form-label">Địa chỉ</form:label>
											<form:input type="text" path="address" class="form-control" />
											<form:errors path="address" cssClass="text-danger" />
										</div>

										<div class="col-6">
											<form:label path="birthday" class="form-label">Ngày sinh</form:label>
											<form:input type="date" path="birthday" class="form-control" />
											<form:errors path="birthday" cssClass="text-danger" />											
										</div>

										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit">Tạo tài khoản</button>
										</div>
										<div class="col-12">
											<p class="small mb-0">
												Already have an account? <a href="/vacxin-system/login">Log
													in</a>
											</p>
										</div>
									</form:form>
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