<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Vacxin System - Dashboard</title>

<!-- ======= CSS ======= -->
<jsp:include page="../layout/cssLink.jsp" />

<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<!-- ======= Header ======= -->
	<jsp:include page="../layout/header.jsp" />

	<!-- ======= SideBar ======= -->
	<jsp:include page="../layout/sidebar.jsp" />

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Lịch tiêm chủng cá nhân của bác sĩ ${ sessionScope.fullname }</h1>
		</div>

		<section class="section">
			<div class="row">
				<h5 class="card-title text-white p-3 rounded"
					style="background-color: #004085">Lịch tiêm chủng của tôi</h5>
				<div class="card">
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead class="thead-dark">
								<tr>
									<th class="text-center">STT</th>
									<th class="text-center">Mã bệnh nhân</th>
									<th class="text-center">Tên bệnh nhân</th>
									<th class="text-center">Ngày tiêm</th>
									<th class="text-center">Giờ tiêm</th>
									<th class="text-center">Vaccine</th>
									<th class="text-center">Địa điểm tiêm</th>
									<th class="text-center">Trạng thái</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="count" value="0" />
								<c:if test="${ not empty schedules}">
									<c:forEach var="schedule" items="${schedules}">
										<c:if test="${schedule.status == 'NOT_DUE'}">
											<tr>
												<td class="text-center"><c:out value="${count + 1}" /></td>
												<td class="text-center">${schedule.patient.idCard}</td>
												<td class="text-center">${schedule.patient.user.fullName}</td>
												<td class="text-center">${schedule.vaccinationDate}</td>
												<td class="text-center">${schedule.vaccinationTime}</td>
												<td class="text-center">${schedule.vaccine.name}</td>
												<td class="text-center">${schedule.location.address}</td>
												<td class="text-center"><a
													class="btn btn-success btn-sm"
													href='my-schedule/${schedule.id}?status=COMPLETED'>Đã
														tiêm</a> <a class="btn btn-warning btn-sm"
													href='my-schedule/${schedule.id}?status=LATE'>Trễ hẹn</a></td>
											</tr>
											<c:set var="count" value="${count + 1}" />
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${ empty schedules }">
									<tr>
										<td colspan="8" class="text-center">Không có lịch tiêm
											chủng hôm nay.</td>
									</tr>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="row">
				<h5 class="card-title text-white p-3 rounded"
					style="background-color: #00AB72">Lịch tiêm chủng đã tiêm</h5>
				<div class="card">
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead class="thead-dark">
								<tr>
									<th class="text-center">STT</th>
									<th class="text-center">Mã bệnh nhân</th>
									<th class="text-center">Tên bệnh nhân</th>
									<th class="text-center">Ngày tiêm</th>
									<th class="text-center">Giờ tiêm</th>
									<th class="text-center">Vaccine</th>
									<th class="text-center">Địa điểm tiêm</th>
									<th class="text-center">Trạng thái</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="count" value="0" />
								<c:if test="${ not empty schedules}">
									<c:forEach var="schedule" items="${schedules}">
										<c:if test="${schedule.status == 'COMPLETED'}">
											<tr>
												<td class="text-center"><c:out value="${count + 1}" /></td>
												<td class="text-center">${schedule.patient.idCard}</td>
												<td class="text-center">${schedule.patient.user.fullName}</td>
												<td class="text-center">${schedule.vaccinationDate}</td>
												<td class="text-center">${schedule.vaccinationTime}</td>
												<td class="text-center">${schedule.vaccine.name}</td>
												<td class="text-center">${schedule.location.address}</td>
												<td class="text-center"><i
													class="fas fa-check-circle text-success" title="Đã tiêm"></i>
													Đã tiêm</td>
											</tr>
											<c:set var="count" value="${count + 1}" />
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${ empty schedules }">
									<tr>
										<td colspan="8" class="text-center">Không có lịch tiêm
											chủng hôm nay.</td>
									</tr>
								</c:if>
							</tbody>
						</table>

					</div>
				</div>
			</div>

			<div class="row">
				<h5 class="card-title text-white p-3 rounded"
					style="background-color: #ff3333">Lịch tiêm trễ hẹn</h5>
				<div class="card">
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead class="thead-dark">
								<tr>
									<th class="text-center">STT</th>
									<th class="text-center">Mã bệnh nhân</th>
									<th class="text-center">Tên bệnh nhân</th>
									<th class="text-center">Ngày tiêm</th>
									<th class="text-center">Giờ tiêm</th>
									<th class="text-center">Vaccine</th>
									<th class="text-center">Địa điểm tiêm</th>
									<th class="text-center">Trạng thái</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="count" value="0" />
								<c:if test="${ not empty schedules}">
									<c:forEach var="schedule" items="${schedules}">
										<c:if test="${schedule.status == 'LATE'}">
											<tr>
												<td class="text-center"><c:out value="${count + 1}" /></td>
												<td class="text-center">${schedule.patient.idCard}</td>
												<td class="text-center">${schedule.patient.user.fullName}</td>
												<td class="text-center">${schedule.vaccinationDate}</td>
												<td class="text-center">${schedule.vaccinationTime}</td>
												<td class="text-center">${schedule.vaccine.name}</td>
												<td class="text-center">${schedule.location.address}</td>
												<td class="text-center"><i
													class="fas fa-clock text-secondary" title="Trễ hẹn"></i>
													Trễ hẹn</td>
											</tr>
											<c:set var="count" value="${count + 1}" />
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${ empty schedules }">
									<tr>
										<td colspan="8" class="text-center">Không có lịch tiêm
											chủng hôm nay.</td>
									</tr>
								</c:if>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<jsp:include page="../layout/footer.jsp" />
</body>
</html>
