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
							class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

							<div class="card mb-3">

								<div class="card-body">

									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Create an
											Account</h5>
										<p class="text-center small">Enter your personal details
											to create account</p>
									</div>

									<form:form method="post" action="/vacxin-system/register"
										modelAttribute="newUser" class="row g-3 needs-validation"
										novalidate="novalidate">
										<div class="col-12">
											<form:label for="yourEmail" path="email" class="form-label">Your Email</form:label>
											<form:input type="email" path="email" class="form-control"
												id="yourEmail" required="required" />
											<div class="invalid-feedback">Please enter a valid
												Email adddress!</div>
										</div>

										<div class="col-12">
											<form:label for="yourUsername" path="username"
												class="form-label">Username</form:label>
											<div class="input-group has-validation">
												<form:input type="text" path="username" class="form-control"
													id="yourUsername" required="required" />
												<div class="invalid-feedback">Please choose a
													username.</div>
											</div>
										</div>

										<div class="col-12">
											<form:label for="yourPassword" path="password"
												class="form-label">Password</form:label>
											<form:input type="password" path="password"
												class="form-control" id="yourPassword" required="required" />
											<div class="invalid-feedback">Please enter your
												password!</div>
										</div>

										<div class="col-12">
											<form:label for="yourPhone" path="phone" class="form-label">Phone</form:label>
											<form:input type="text" path="phone" class="form-control"
												id="yourPhone" required="required" />
											<div class="invalid-feedback">Please enter your phone!</div>
										</div>

										<div class="col-12">
											<form:label for="yourAddress" path="address"
												class="form-label">Address</form:label>
											<form:input type="text" path="address" class="form-control"
												id="yourAddress" required="required" />
											<div class="invalid-feedback">Please enter your
												address!</div>
										</div>						

										<div class="col-12">
											<form:label for="yourBirthday" path="birthday"
												class="form-label">Birthday</form:label>
											<form:input type="date" path="birthday" class="form-control"
												id="yourBirthday" required="required" />
											<div class="invalid-feedback">Please enter your
												birthday!</div>
										</div>

										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit">Create
												Account</button>
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