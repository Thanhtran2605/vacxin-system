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
				<div class="card">
					<div class="card-body">
						<!-- Form tìm kiếm -->
						<form action="<c:url value='/admin/schedules/search'/>"
							method="post">
							<div class="form-group">
								<label for="searchType" style="margin: 15px 0;">Chọn
									tiêu chí tìm kiếm:</label> <select id="searchType" name="searchType"
									class="form-control" onchange="showSearchFields(this.value)">
									<option value="" selected>Chọn tiêu chí tìm kiếm</option>
									<option value="doctor">Theo bác sĩ</option>
									<option value="patient">Theo bệnh nhân</option>
									<option value="date">Theo ngày</option>
									<option value="vaccine">Theo vaccine</option>
									<option value="status">Theo trạng thái</option>
								</select>
							</div>
							<div id="doctorFields" class="search-fields form-group"
								style="display: none;">
								<label for="doctorId">Bác sĩ ID:</label> <input type="number"
									id="doctorId" name="doctorId" class="form-control"
									value="${param.doctorId}" /> <label for="doctorName">Tên
									bác sĩ:</label> <input type="text" id="doctorName" name="doctorName"
									class="form-control" value="${param.doctorName}" />
							</div>
							<div id="patientFields" class="search-fields form-group"
								style="display: none;">
								<label for="patientId">Bệnh nhân ID:</label> <input
									type="number" id="patientId" name="patientId"
									class="form-control" value="${param.patientId}" /> <label
									for="patientName">Tên bệnh nhân:</label> <input type="text"
									id="patientName" name="patientName" class="form-control"
									value="${param.patientName}" />
							</div>
							<div id="dateFields" class="search-fields form-group"
								style="display: none;">
								<label for="vaccinationDate">Ngày:</label> <input type="date"
									id="vaccinationDate" name="vaccinationDate"
									class="form-control" value="${param.vaccinationDate}" />
							</div>
							<div id="vaccineFields" class="search-fields form-group"
								style="display: none;">
								<label for="vaccineId">Vaccine ID:</label> <input type="number"
									id="vaccineId" name="vaccineId" class="form-control"
									value="${param.vaccineId}" /> <label for="vaccineName">Tên
									Vaccine:</label> <input type="text" id="vaccineName" name="vaccineName"
									class="form-control" value="${param.vaccineName}" />
							</div>
							<div id="statusFields" class="search-fields form-group"
								style="display: none;">
								<label for="status">Trạng thái:</label> <select id="status"
									name="status" class="form-control">
									<option value="" selected>Chọn trạng thái</option>
									<option value="completed">Đã tiêm</option>
									<option value="not_due">Chưa tới lịch hẹn</option>
									<option value="cancelled">Hủy tiêm</option>
									<option value="late">Trễ hẹn</option>
								</select>
							</div>
							<button type="submit" class="btn btn-primary"
								style="margin: 15px 0;">Tìm kiếm</button>
						</form>

						<!-- Danh sách tiêm chủng -->
						<div class="pagetitle">
							<h2 style="font-size: 20px;">Danh sách tiêm chủng</h2>
						</div>

						<table class="table table-striped">
							<thead>
								<tr>
									<th class="text-center">STT</th>
									<th class="text-center">Bác sĩ</th>
									<th class="text-center">Bệnh nhân</th>
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
								<c:forEach var="schedule" items="${schedules}">
            <tr>
                <td class="text-center"><c:out value="${count + 1}"/></td>
                <td class="text-center">${schedule.doctor.employee.user.fullName}</td>
                <td class="text-center">${schedule.patient.user.fullName}</td>
                <td class="text-center">${schedule.vaccinationDate}</td>
                <td class="text-center">${schedule.vaccinationTime}</td>
                <td class="text-center">${schedule.vaccine.name}</td>
                <td class="text-center">${schedule.location.address}</td>
                <td class="text-center">
                    <c:choose>
                        <c:when test="${schedule.status == 'COMPLETED'}">
                            <i class="fas fa-check-circle text-success" title="Đã tiêm"></i> Đã tiêm
                        </c:when>
                        <c:when test="${schedule.status == 'NOT_DUE'}">
                            <i class="fas fa-calendar-times text-warning" title="Chưa tới lịch hẹn"></i> Chưa tới lịch hẹn
                        </c:when>
                        <c:when test="${schedule.status == 'CANCELLED'}">
                            <i class="fas fa-times-circle text-danger" title="Hủy tiêm"></i> Hủy tiêm
                        </c:when>
                        <c:when test="${schedule.status == 'LATE'}">
                            <i class="fas fa-clock text-secondary" title="Trễ hẹn"></i> Trễ hẹn
                        </c:when>
                        <c:otherwise>
                            <i class="fas fa-question-circle text-muted" title="Không xác định"></i> Không xác định
                        </c:otherwise>
                    </c:choose>
                </td>
                <td class="text-center">
                    <a class="btn btn-success btn-sm" href="<c:url value='/admin/schedules/view/${schedule.id}'/>">Xem</a>
                    | <a class="btn btn-warning btn-sm text-white" href="<c:url value='/admin/schedules/edit/${schedule.id}'/>">Sửa</a>
                    |
                    <form action="<c:url value='/admin/schedules/delete/${schedule.id}'/>" method="post" style="display: inline;">
                        <button type="submit" class="btn btn-danger btn-sm">Xóa</button>
                    </form>
                </td>
            </tr>
            <c:set var="count" value="${count + 1}"/>
        </c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- 	<script>
    document.addEventListener('DOMContentLoaded', function() {
        const searchTypeDropdown = document.getElementById('searchType');
        const searchFields = document.querySelectorAll('.search-fields');

        function showRelevantFields() {
            const selectedType = searchTypeDropdown.value;

            searchFields.forEach(field => {
                if (selectedType && field.id.endsWith('Fields') && field.id.startsWith(selectedType)) {
                    field.style.display = 'block';
                } else {
                    field.style.display = 'none';
                }
            });
        }

        searchTypeDropdown.addEventListener('change', showRelevantFields);

        showRelevantFields();
    });
</script> -->

	<script>
    function showSearchFields(value) {
        const fields = ['doctorFields', 'patientFields', 'dateFields', 'vaccineFields'];
        fields.forEach(field => document.getElementById(field).style.display = 'none');
        if (value) {
            document.getElementById(value + 'Fields').style.display = 'block';
        }
    }
</script>

	<script>
function showSearchFields(value) {
    document.querySelectorAll('.search-fields').forEach(field => field.style.display = 'none');
    if (value) {
        document.getElementById(value + 'Fields').style.display = 'block';
    }
}
</script>



	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>
</html>