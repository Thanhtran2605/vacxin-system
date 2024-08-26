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
.col-12 {
	margin: 30px 10px;
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

				<!-- Lịch tiêm chủng hôm nay -->
				<div class="col-12">
					<h5 class="card-title"
						style="color: #ffffff; background-color: #004085; padding: 19px; border-radius: 5px;">
						Lịch tiêm chủng của tôi</h5>
					<div class="card">
						<div class="card-body">
							<div id="todaySchedules">
								<c:if test="${not empty schedules}">
									<table class="table table-striped">
										<thead>
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
											<c:forEach var="schedule" items="${schedules}">
												<tr data-index="${count}">
													<td class="text-center"><c:out value="${count + 1}" /></td>
													<td class="text-center">${schedule.patient.idCard}</td>
													<td class="text-center">${schedule.patient.user.fullName}</td>
													<td class="text-center">${schedule.vaccinationDate}</td>
													<td class="text-center">${schedule.vaccinationTime}</td>
													<td class="text-center">${schedule.vaccine.name}</td>
													<td class="text-center">${schedule.location.address}</td>
													<td class="text-center">
														<button class="btn btn-primary"
															onclick="toggleStatus(this, '${schedule.status}')">
															${schedule.status == 'COMPLETED' ? 'Đã tiêm' :
                                            schedule.status == 'NOT_DUE' ? 'Chưa tới lịch hẹn' :
                                            schedule.status == 'CANCELLED' ? 'Hủy tiêm' : 
                                            'Trễ hẹn'}
														</button>
													</td>
												</tr>
												<c:set var="count" value="${count + 1}" />
											</c:forEach>
										</tbody>
									</table>
								</c:if>
								<c:if test="${empty schedules}">
									<p>Không có lịch tiêm chủng hôm nay.</p>
								</c:if>
							</div>
						</div>
					</div>
				</div>



			</div>
		</section>
	</main>


	<script>
		function toggleStatus(button, initialStatus) {
			const statuses = [ 'Chưa tới lịch tiêm', 'Đã tiêm', 'Trễ hẹn' ];
			let currentIndex = statuses.indexOf(button.textContent.trim());

			if (currentIndex === -1) {
				currentIndex = 0; // Nếu trạng thái hiện tại không thuộc danh sách, đặt lại mặc định
			}

			if (button.disabled) {
				// Nếu nút đã bị vô hiệu hóa, không thực hiện thay đổi
				return;
			}

			let newStatus;

			// Xác định trạng thái mới
			newStatus = statuses[(currentIndex + 1) % statuses.length];

			if (button.textContent.trim() === 'Chưa tới lịch tiêm'
					|| button.textContent.trim() === 'Đã tiêm'
					|| button.textContent.trim() === 'Trễ hẹn') {
				// Nếu trạng thái hiện tại là một trong các trạng thái cần xử lý, yêu cầu xác nhận
				let confirmed = confirm('Bạn có muốn giữ thay đổi?');
				if (confirmed) {
					button.disabled = true; // Vô hiệu hóa nút để không cho phép thay đổi thêm

					// Gửi yêu cầu AJAX để cập nhật trạng thái trong cơ sở dữ liệu
					const row = button.closest('tr');
					const id = row.getAttribute('data-index'); // Giả sử mỗi hàng có thuộc tính data-index để nhận diện

					const xhr = new XMLHttpRequest();
					xhr.open('POST', 'my-schedule', true);
					xhr.setRequestHeader('Content-Type',
							'application/x-www-form-urlencoded');
					xhr.onload = function() {
						if (xhr.status === 200) {
							console
									.log('Trạng thái đã được cập nhật thành công.');
							button.textContent = newStatus;
							button.className = newStatus === 'Chưa tới lịch tiêm' ? 'btn btn-primary'
									: newStatus === 'Trễ hẹn' ? 'btn btn-secondary'
											: 'btn btn-success';
						} else {
							console
									.error('Có lỗi xảy ra khi cập nhật trạng thái.');
						}
					};
					xhr.send('id=' + encodeURIComponent(id) + '&status='
							+ encodeURIComponent(newStatus));
				}
			} else {
				// Nếu trạng thái không phải một trong các trạng thái cần xử lý, chuyển đổi trạng thái tuần tự
				button.textContent = newStatus;
				button.className = newStatus === 'Chưa tới lịch tiêm' ? 'btn btn-primary'
						: newStatus === 'Trễ hẹn' ? 'btn btn-secondary'
								: 'btn btn-success';
			}
		}
	</script>




	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>
</html>