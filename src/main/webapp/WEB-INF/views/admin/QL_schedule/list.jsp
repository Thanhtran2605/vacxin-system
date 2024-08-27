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
			
				<!-- Lịch tiêm chủng hôm nay -->
					<div class="col-12">
						<h5 class="card-title"
							style="color: #ffffff; background-color: #76b5c5; padding: 19px; border-radius: 5px;">
							Lịch tiêm chủng chưa có bác sĩ tiếp nhận</h5>
						<div class="card">
							<div class="card-body">
								<div id="todaySchedules">
									<c:if test="${not empty schedulesWithoutDoctor}">
										<table class="table table-striped">
											<thead>
												<tr>
													<th class="text-center">STT</th>
													<th class="text-center">Mã bệnh nhân</th>
													<th class="text-center">Tên bệnh nhân</th>
													<th class="text-center">Tên bác sĩ</th>
													<th class="text-center">Ngày tiêm</th>
													<th class="text-center">Giờ tiêm</th>
													<th class="text-center">Vaccine</th>
													<th class="text-center">Địa điểm tiêm</th>
													<th class="text-center">Tên Receptionist</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${schedulesWithoutDoctor}"
													varStatus="status">
													<tr>
														<td class="text-center">${status.index + 1}</td>
														<td class="text-center">${item[0].patient.idCard}</td>
														<td class="text-center">${item[0].patient.user.fullName}</td>
														<td class="text-center">${item[0].doctor != null ? item[0].doctor.employee.user.fullName : 'Chưa có bác sĩ'}</td>
														<td class="text-center">${item[0].vaccinationDate}</td>
														<td class="text-center">${item[0].vaccinationTime}</td>
														<td class="text-center">${item[0].vaccine.name}</td>
														<td class="text-center">${item[0].location.address}</td>
														<td class="text-center">${item[1].receptionist.employee.user.fullName}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</c:if>
									<c:if test="${empty schedulesWithoutDoctor}">
										<p>Không có lịch tiêm chủng hôm nay.</p>
									</c:if>
								</div>
							</div>
						</div>
					</div>
			
				<!-- Lịch tiêm chủng hôm nay -->
				<div class="col-12">
					<h5 class="card-title"
						style="color: #ffffff; background-color: #004085; padding: 19px; border-radius: 5px;">
						Lịch tiêm chủng hôm nay</h5>
					<div class="card">
						<div class="card-body">
							<div id="todaySchedules">
								<c:if test="${not empty todaySchedules}">
									<table class="table table-striped">
										<thead>
											<tr>
												<th class="text-center">STT</th>
												<th class="text-center">Bác sĩ</th>
												<th class="text-center">Mã bệnh nhân</th>
												<th class="text-center">Tên bệnh nhân</th>
												<th class="text-center">Ngày tiêm</th>
												<th class="text-center">Giờ tiêm</th>
												<th class="text-center">Vaccine</th>
												<th class="text-center">Địa điểm tiêm</th>
												<!-- <th class="text-center">Trạng thái</th> -->
											</tr>
										</thead>
										<tbody>
											<c:set var="count" value="0" />
											<c:forEach var="schedule" items="${todaySchedules}">
												<tr>
													<td class="text-center"><c:out value="${count + 1}" /></td>
													<td class="text-center">${schedule.doctor.employee.user.fullName}</td>
													<td class="text-center">${schedule.patient.idCard}</td>
													<td class="text-center">${schedule.patient.user.fullName}</td>
													<td class="text-center">${schedule.vaccinationDate}</td>
													<td class="text-center">${schedule.vaccinationTime}</td>
													<td class="text-center">${schedule.vaccine.name}</td>
													<td class="text-center">${schedule.location.address}</td>
													
												</tr>
												<c:set var="count" value="${count + 1}" />
											</c:forEach>
										</tbody>
									</table>
								</c:if>
								<c:if test="${empty todaySchedules}">
									<p>Không có lịch tiêm chủng hôm nay.</p>
								</c:if>
							</div>
						</div>
					</div>
				</div>

				<!-- Form tìm kiếm và danh sách tiêm chủng -->
				<div class="col-12">
					<div class="card">
						<h5 class="card-title"
							style="color: #ffffff; background-color: #006680; padding: 19px; border-radius: 5px;">
							Tìm kiếm</h5>
						<div class="card-body">
							<!-- Form tìm kiếm -->
							<form action="<c:url value='/admin/schedules/search'/>"
								method="post">
								<div class="form-group">
									<select id="searchType" name="searchType" class="form-control"
										onchange="showSearchFields(this.value)">
										<option value="" selected>Chọn tiêu chí tìm kiếm</option>
										<option value="doctor">Theo bác sĩ</option>
										<option value="patient">Theo bệnh nhân</option>
										<option value="date">Theo ngày</option>
										<option value="vaccine">Theo vaccine</option>
										<option value="status">Theo trạng thái</option>
									</select>
								</div>
								<!-- Doctor Fields -->
								<div id="doctorFields" class="search-fields form-group"
									style="display: none;">
									<label for="doctorId">Bác sĩ: </label> <input type="checkbox"
										id="searchByDoctorId" name="searchByDoctorId"> Tìm
									theo ID <input type="number" id="doctorId" name="doctorId"
										class="form-control" style="display: none;" /> <input
										type="checkbox" id="searchByDoctorName"
										name="searchByDoctorName"> Tìm theo tên <input
										type="text" id="doctorName" name="doctorName"
										class="form-control" style="display: none;" />
								</div>

								<!-- Patient Fields -->
								<div id="patientFields" class="search-fields form-group"
									style="display: none;">
									<label for="patientIdCard">Bệnh nhân: </label> <input
										type="checkbox" id="searchByPatientIdCard"
										name="searchByPatientIdCard"> Tìm theo ID <input
										type="number" id="patientIdCard" name="patientIdCard"
										class="form-control" style="display: none;" /> <input
										type="checkbox" id="searchByPatientName"
										name="searchByPatientName"> Tìm theo tên <input
										type="text" id="patientName" name="patientName"
										class="form-control" style="display: none;" />
								</div>

								<!-- Date Fields -->
								<div id="dateFields" class="search-fields form-group"
									style="display: none;">
									<label for="vaccinationDate">Ngày: </label> <input
										type="checkbox" id="searchByDate" name="searchByDate">
									Tìm theo ngày <input type="date" id="vaccinationDate"
										name="vaccinationDate" class="form-control"
										style="display: none;" />
								</div>

								<!-- Vaccine Fields -->
								<div id="vaccineFields" class="search-fields form-group"
									style="display: none;">
									<label for="vaccineId">Vaccine: </label> <input type="checkbox"
										id="searchByVaccineName" name="searchByVaccineName">
									Tìm theo tên <input type="text" id="vaccineName"
										name="vaccineName" class="form-control" style="display: none;" />
								</div>

								<!-- Status Fields -->
								<div id="statusFields" class="search-fields form-group"
									style="display: none;">
									<label for="status">Trạng thái: </label> <input type="checkbox"
										id="searchByStatus" name="searchByStatus"> Tìm theo
									trạng thái <select id="status" name="status"
										class="form-control" style="display: none;">
										<option value="" selected>Chọn trạng thái</option>
										<option value="COMPLETED">Đã tiêm</option>
										<option value="NOT_DUE">Chưa tới lịch hẹn</option>
										<option value="CANCELLED">Hủy tiêm</option>
										<option value="LATE">Trễ hẹn</option>
									</select>
								</div>
								<button type="submit" class="btn btn-primary"
									style="margin: 15px 0;">Tìm kiếm</button>
							</form>
						</div>
					</div>

					<!-- Danh sách tiêm chủng -->
					<div class="card mt-4">
						<h5 class="card-title"
							style="color: #ffffff; background-color: #00b8e6; padding: 19px; border-radius: 5px;">
							Danh sách tiêm chủng</h5>
						<div class="card-body">
							<table class="table table-striped">
								<thead>
									<tr>
										<th class="text-center">STT</th>
										<th class="text-center">Bác sĩ</th>
										<th class="text-center">Mã bệnh nhân</th>
										<th class="text-center">Tên bệnh nhân</th>
										<th class="text-center">Ngày tiêm</th>
										<th class="text-center">Giờ tiêm</th>
										<th class="text-center">Vaccine</th>
										<th class="text-center">Địa điểm tiêm</th>
										<th class="text-center">Trạng thái</th>
										<th class="text-center">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="count" value="0" />
									<c:forEach var="schedule" items="${allSchedules}">
										<tr>
											<td class="text-center"><c:out value="${count + 1}" /></td>

											<td class="text-center">${schedule.doctor.employee.user.fullName }</td>
											<td class="text-center">${schedule.patient.idCard}</td>
											<td class="text-center">${schedule.patient.user.fullName}</td>
											<td class="text-center">${schedule.vaccinationDate}</td>
											<td class="text-center">${schedule.vaccinationTime}</td>
											<td class="text-center">${schedule.vaccine.name}</td>
											<td class="text-center">${schedule.location.address}</td>
											<td class="text-center"><c:choose>
													<c:when test="${schedule.status == 'COMPLETED'}">
														<i class="fas fa-check-circle text-success"
															title="Đã tiêm"></i> Đã tiêm
                                                </c:when>
													<c:when test="${schedule.status == 'NOT_DUE'}">
														<i class="fas fa-calendar-times text-warning"
															title="Chưa tới lịch hẹn"></i> Chưa tới lịch hẹn
                                                </c:when>
													<c:when test="${schedule.status == 'CANCELLED'}">
														<i class="fas fa-times-circle text-danger"
															title="Hủy tiêm"></i> Hủy tiêm
                                                </c:when>
													<c:when test="${schedule.status == 'LATE'}">
														<i class="fas fa-clock text-secondary" title="Trễ hẹn"></i> Trễ hẹn
                                                </c:when>
												</c:choose></td>
											<td class="text-center"><a
												class="btn btn-success btn-sm"
												href="<c:url value='/admin/schedules/view/${schedule.id}'/>">Xem</a>
												| <a class="btn btn-warning btn-sm text-white"
												href="<c:url value='/admin/schedules/edit/${schedule.id}'/>">Sửa</a>
												|
												<form
													action="<c:url value='/admin/schedules/delete/${schedule.id}'/>"
													method="post" style="display: inline;">
													<button type="submit" class="btn btn-danger btn-sm">Xóa</button>
												</form></td>
										</tr>
										<c:set var="count" value="${count + 1}" />
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>


	<script>
    function showSearchFields(value) {
        const fields = ['doctorFields', 'patientFields', 'dateFields', 'vaccineFields'];
        fields.forEach(field => document.getElementById(field).style.display = 'none');
        if (value) {
            document.getElementById(value + 'Fields').style.display = 'block';
        }
    } 
 s
</script>

	<script>
	function showSearchFields(value) {
	    document.querySelectorAll('.search-fields').forEach(field => field.style.display = 'none');
	    if (value) {
	        document.getElementById(value + 'Fields').style.display = 'block';
	    }
	}
</script>

	<script>
	function showSearchFields(value) {
	    const fields = ['doctorFields', 'patientFields', 'dateFields', 'vaccineFields'];
	    fields.forEach(field => document.getElementById(field).style.display = 'none');
	    if (value) {
	        document.getElementById(value + 'Fields').style.display = 'block';
	    }
	} 
	
	function toggleInputFields(idCheckboxId, inputFieldId) {
	    const checkbox = document.getElementById(idCheckboxId);
	    const inputField = document.getElementById(inputFieldId);
	    inputField.style.display = checkbox.checked ? 'block' : 'none';
	}
	
	document.addEventListener('DOMContentLoaded', function() {
	    document.getElementById('searchByDoctorId').addEventListener('change', function() {
	        toggleInputFields('searchByDoctorId', 'doctorId');
	    });
	    document.getElementById('searchByDoctorName').addEventListener('change', function() {
	        toggleInputFields('searchByDoctorName', 'doctorName');
	    });

	    document.getElementById('searchByPatientIdCard').addEventListener('change', function() {
	        document.getElementById('patientIdCard').style.display = this.checked ? 'block' : 'none';
	    });
	    
	    document.getElementById('searchByPatientName').addEventListener('change', function() {
	        toggleInputFields('searchByPatientName', 'patientName');
	    });

	    document.getElementById('searchByDate').addEventListener('change', function() {
	        toggleInputFields('searchByDate', 'vaccinationDate');
	    });
	    
	    document.getElementById('searchByVaccineName').addEventListener('change', function() {
	        toggleInputFields('searchByVaccineName', 'vaccineName');
	    });

	    document.getElementById('searchByStatus').addEventListener('change', function() {
	        toggleInputFields('searchByStatus', 'status');
	    });
	});

</script>

	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>
</html>