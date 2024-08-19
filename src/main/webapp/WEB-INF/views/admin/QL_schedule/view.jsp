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
						<h1 style="font-size: 20px; padding: 10px; color: #022b59;">Chi
							tiết lịch tiêm chủng</h1>

						<div class="details">
							<p>
								<strong>ID:</strong> ${schedule.id}
							</p>
							<p>
								<strong>Bác sĩ:</strong>
								${schedule.doctor.employee.user.fullName}
							</p>
							<p>
								<strong>Bệnh nhân:</strong> ${schedule.patient.user.fullName}
							</p>
							<p>
								<strong>Ngày tiêm:</strong> ${schedule.vaccinationDate}
							</p>
							<p>
								<strong>Giờ tiêm:</strong> ${schedule.vaccinationTime}
							</p>
							<p>
								<strong>Vaccine:</strong> ${schedule.vaccine.name}
							</p>
							<p>
								<strong>Địa điểm tiêm:</strong> ${schedule.location.address}
							</p>
							<p>
								<strong>Trạng thái:</strong>
								<c:choose>
									<c:when test="${schedule.status == 'NOT_DUE'}">Chưa tới lịch hẹn</c:when>
									<c:when test="${schedule.status == 'COMPLETED'}">Đã tiêm</c:when>
									<c:when test="${schedule.status == 'CANCELLED'}">Hủy tiêm</c:when>
									<c:when test="${schedule.status == 'LATE'}">Trễ hẹn</c:when>
								</c:choose>
							</p>
						</div>

						<div class="actions">
							<a class="btn btn-primary text-white"
								style="text-decoration: none;"
								href="<c:url value='/admin/schedules/edit/${schedule.id}'/>">Sửa</a>
							<form
								action="<c:url value='/admin/schedules/delete/${schedule.id}'/>"
								method="post" style="display: inline;">
								<button type="submit" class="btn btn-danger">Xóa</button>
							</form>
							<a class="btn btn-secondary text-white"
								style="text-decoration: none;"
								href="<c:url value='/admin/schedules'/>">Quay lại danh sách</a>
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