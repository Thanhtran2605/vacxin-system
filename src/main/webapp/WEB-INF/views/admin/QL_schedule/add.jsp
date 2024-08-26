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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
	rel="stylesheet" />

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

.form-container select {
	padding: 12px 20px;
	margin-bottom: 20px;
	border: 1px solid #ddd;
	border-radius: 4px;
	font-size: 18px;
	height: 50px;
	background-color: #f8f9fa;
	color: #333;
}

.form-container select:hover, .form-container select:focus {
	border-color: #007bff;
}

.select2-container .select2-selection--single {
	height: 50px;
	padding: 10px;
	font-size: 18px;
	border-radius: 4px;
	border: 1px solid #ddd;
}

.select2-container--default .select2-selection--single .select2-selection__rendered
	{
	line-height: 28px;
}

.select2-container--default .select2-selection--single .select2-selection__arrow
	{
	height: 50px;
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
						<div id="notification"
							style="display: none; color: #fff; background-color: #f44336; padding: 15px; border-radius: 5px; position: absolute; top: 20px; right: 20px; z-index: 1000;">
							<span id="notification-message"></span>
							<button
								onclick="document.getElementById('notification').style.display='none'"
								style="background: none; border: none; color: #fff; font-size: 16px; cursor: pointer;">&times;</button>
						</div>
						<div class="form-container">
							<h1>Thêm mới lịch tiêm chủng</h1>
							<form action="<c:url value='/admin/schedules/add'/>"
								method="post" class="form">
								<label for="doctorId">Bác sĩ:</label> <select id="doctorId"
									name="doctor.id" class="form-control" required>
									<option value="" disabled selected>-- Chọn bác sĩ --</option>
									<c:forEach var="doctor" items="${doctors}">
										<option value="${doctor.id}">${doctor.employee.user.fullName}</option>
									</c:forEach>
								</select> <br /> <label for="patientId">Bệnh nhân:</label> <select
									id="patientId" name="patient.id" class="form-control" required>
									<option value="" disabled selected>-- Chọn mã bệnh
										nhân --</option>
									<c:forEach var="patient" items="${patients}">
										<option value="${patient.id}">${patient.idCard} - ${patient.user.fullName}</option>
									</c:forEach>
								</select> <br /> <label for="vaccinationDate">Ngày tiêm:</label> <input
									type="date" id="vaccinationDate" name="vaccinationDate"
									class="form-control" required /> <br /> <label
									for="vaccinationTime">Giờ tiêm:</label> <input type="time"
									id="vaccinationTime" name="vaccinationTime"
									class="form-control" /> <br /> <label for="vaccineId">Vaccine:</label>
								<select id="vaccineId" name="vaccine.id" class="form-control"
									required>
									<option value="" disabled selected>-- Chọn vaccine --</option>
									<c:forEach var="vaccine" items="${vaccines}">
										<option value="${vaccine.id}">${vaccine.name} - Số lượng : ${vaccine.quantity}</option>
									</c:forEach>
								</select> <br /> <label for="locationId">Địa điểm tiêm:</label> <select
									id="locationId" name="location.id" class="form-control"
									required>
									<option value="" disabled selected>-- Chọn địa điểm
										tiêm --</option>
									<c:forEach var="location" items="${locations}">
										<option value="${location.id}">${location.address}</option>
									</c:forEach>
								</select> <br />
								<button type="submit" class="btn btn-primary">Thêm mới</button>
							</form>
							<a class="btn btn-secondary text-white"
								style="text-decoration: none;"
								href="<c:url value='/admin/schedules/'/>">Quay lại danh sách</a>

						</div>
					</div>
				</div>
			</div>
		</section>
	</main>


	<script
		src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#doctorId').select2({
				placeholder : "-- Chọn bác sĩ --",
				allowClear : true
			});
			$('#patientId').select2({
				placeholder : "-- Chọn mã bệnh nhân --",
				allowClear : true
			});
			$('#vaccineId').select2({
				placeholder : "-- Chọn vaccine --",
				allowClear : true
			});
			$('#locationId').select2({
				placeholder : "-- Chọn địa điểm tiêm --",
				allowClear : true
			});
			$('#status').select2({
				placeholder : "-- Chọn trạng thái --",
				allowClear : true,
				minimumResultsForSearch : Infinity
			});
	        
			// Function to show notification
			function showNotification(message) {
			    document.getElementById('notification-message').textContent = message;
			    document.getElementById('notification').style.display = 'block';
			}

			// Validate date input
			$('#vaccinationDate').on('change', function() {
			    var selectedDate = new Date($(this).val());
			    var day = selectedDate.getDay(); // 0: Sunday, 6: Saturday
			    
			    if (day === 0 || day === 6) {
			        showNotification('Bạn không thể chọn ngày Thứ 7 hoặc Chủ Nhật. Vui lòng chọn ngày khác.');
			        $(this).val(''); // Clear the input value
			    }
			});
			    
			// Validate time input
			$('#vaccinationTime').on('change', function() {
			    var selectedTime = $(this).val();
			    var selectedHour = parseInt(selectedTime.split(':')[0]);
			    var selectedMinute = parseInt(selectedTime.split(':')[1]);
			    
			    if ((selectedHour < 7 || (selectedHour >= 11 && selectedHour < 13) || selectedHour >= 16) || 
			        (selectedHour == 11 && selectedMinute > 0) || 
			        (selectedHour == 16 && selectedMinute > 0)) {
			        showNotification('Giờ tiêm chỉ được chọn từ 07:00 đến 11:00 và từ 13:00 đến 16:00.');
			        $(this).val(''); // Clear the input value
			    }
			});

		});
	</script>

	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>
</html>