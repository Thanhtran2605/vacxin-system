<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Vacxin System - Dashboard</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- ======= CSS ======= -->
<jsp:include page="../layout/cssLink.jsp" />

<style>
h1 {
	text-align: center;
	color: #022b59;
	font-size: 20px;
	padding: 10px;
}

.form-container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 8px;
}

.form-container form {
	display: flex;
	flex-direction: column;
}

.form-container label {
	margin-bottom: 8px;
	font-weight: bold;
	color: #333;
}

.form-container select, .form-container input[type="date"] {
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ddd;
	border-radius: 4px;
	font-size: 16px;
}

.form-container button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 4px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.form-container button:hover {
	background-color: #0056b3;
}

.form-container a {
	display: inline-block;
	margin-top: 20px;
	text-decoration: none;
	color: #007bff;
	font-size: 16px;
}

.form-container a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>


	<!-- ======= Header ======= -->
	<jsp:include page="../layout/header.jsp" />

	<!-- ======= SideBar ======= -->
	<jsp:include page="../layout/sidebar.jsp" />

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Quản lý tiêm chủng</h1>
		</div>

		<section class="section">
			<div class="row">

				<div class="card">
					<div class="card-body">
						<div class="form-container">
							<h1>Thêm mới lịch tiêm chủng</h1>
							<form action="<c:url value='/admin/schedules/add'/>"
								method="post">

								<label for="doctorId">Bác sĩ:</label> <select id="doctorId"
									name="doctor.id">
									<!-- Thay đổi theo dữ liệu từ bác sĩ -->
									<option value="" disabled selected>-- Chọn bác sĩ</option>
									<c:forEach var="doctor" items="${doctors}">
										<option value="${doctor.id}">${doctor.employee.user.fullName}</option>
									</c:forEach>

								</select> <br /> <label for="patientId">Bệnh nhân:</label> <select
									id="patientId" name="patient.id">
									<!-- Thay đổi theo dữ liệu từ bệnh nhân -->
									<option value="" disabled selected>-- Chọn bệnh nhân</option>
									<c:forEach var="patient" items="${patients}">
										<option value="${patient.id}">${patient.user.fullName}</option>
									</c:forEach>

								</select> <br /> <label for="date">Ngày tiêm:</label> <input type="date"
									id="date" name="vaccinationDate" /> <br /> <label
									for="vaccineId">Vaccine:</label> <select id="vaccineId"
									name="vaccine.id">
									<!-- Thay đổi theo dữ liệu từ vaccine -->
									<option value="" disabled selected>-- Chọn vaccine</option>
									<c:forEach var="vaccine" items="${vaccines}">
										<option value="${vaccine.id}">${vaccine.name}</option>
									</c:forEach>

								</select> <br /> <label for="locationId">Địa điểm tiêm:</label> <select
									id="locationId" name="location.id">
									<option value="" disabled selected>-- Chọn địa điểm
										tiêm</option>
									<c:forEach var="location" items="${locations}">
										<option value="${location.id}">${location.address}</option>
									</c:forEach>
								</select> <br />

								<button type="submit">Thêm mới</button>
							</form>
							<a class="btn btn-primary text-white"
								style="text-decoration: none;"
								href="<c:url value='/admin/schedules/'/>">Quay lại danh sách</a>
						</div>
					</div>
				</div>
			</div>

		</section>

	</main>

	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>
</html>