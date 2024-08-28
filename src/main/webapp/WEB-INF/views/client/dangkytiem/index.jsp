<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi_VN" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>Vacxin System</title>
<!-- ======= CSS và Bootstrap ======= -->
<jsp:include page="../layout/cssLink.jsp" />


</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="../layout/header.jsp" />
		<jsp:include page="../layout/mega-menu.jsp" />
	</div>
	<form id="vaccination-form" action="/vacxin-system/xacnhantiem"
		method="post">
		<div class="container my-5">
			<h1 class="mt-5">Xác nhận đơn tiêm chủng</h1>
			<div id="alert-container"></div>
			<div class="row">
				<div class="col-md-8">
					<section class="mt-5 p-4 bg-light border rounded">
						<h3 class="text-success mb-4">Thông tin người tiêm</h3>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label class="form-label">Họ tên người tiêm</label> <input
									type="text" name="" class="form-control"
									value="${ patient.user.fullName }" disabled="disabled">
							</div>
							<div class="col-md-6 mb-3">
								<label class="form-label">Email</label> <input type="text"
									name="" class="form-control" value="${ patient.user.email }"
									disabled="disabled">
							</div>
							<div class="col-md-4 mb-3">
								<label class="form-label">Số điện thoại</label> <input
									type="text" name="" class="form-control"
									value="${ patient.user.phone }" disabled="disabled">
							</div>
							<div class="col-md-4 mb-3">
								<label class="form-label">Giới tính</label> <input type="text"
									name="" class="form-control" value="${ patient.user.gender }"
									disabled="disabled">
							</div>
							<div class="col-md-4 mb-3">
								<label class="form-label">Ngày sinh</label> <input type="date"
									class="form-control" value="${ patient.user.birthday }"
									disabled="disabled">
							</div>
							<div class="col-md-6 mb-3">
								<label class="form-label">Địa chỉ</label> <input type="text"
									name="" class="form-control" value="${ patient.user.address }"
									disabled="disabled">
							</div>
							<div class="col-md-6 mb-3">
								<label class="form-label">Mã bệnh nhân</label> <input
									type="text" name="" class="form-control"
									value="${ patient.idCard }" disabled="disabled">
							</div>
						</div>
						<h3 class="text-success mb-4">Thời gian đặt buổi tiêm</h3>
						<input type="hidden" name="patient.id" value="${ patient.id }" />
						<input type="hidden" name="vaccine.id" value="${ vaccine.id }" />
						<div class="row">
							<div class="col-md-6 mb-3">
								<label class="form-label">Ngày tiêm</label> <input type="date"
									id="vaccinationDate" name="vaccinationDate"
									class="form-control">
							</div>
							<div class="col-md-6 mb-3">
								<label class="form-label">Giờ giấc tiêm</label> <input
									type="time" id="vaccinationTime" name="vaccinationTime"
									class="form-control">
							</div>
							<div class="col-md-12 mb-3">
								<label class="form-label">Địa điểm tiêm chủng</label> <select
									class="form-control" name="location.id">
									<option value="default">Vui lòng chọn địa điểm tiêm
										chủng</option>
									<c:forEach var="location" items="${locations}">
										<option value="${location.id}">${location.address}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-12 text-end">
								<button class="btn btn-primary" type="submit">Xác nhận
									tiêm chủng</button>
							</div>
						</div>
					</section>
				</div>
				<div class="col-md-4">
					<section class="mt-5 p-4 bg-light border rounded">
						<h3 class="text-success mb-4">Thông tin vaccine</h3>
						<div class="mb-3">
							<label class="form-label">Tên vaccine</label> <input type="text"
								name="" class="form-control" value="${ vaccine.name }"
								disabled="disabled">
						</div>
						<div class="mb-3">
							<label class="form-label">Bệnh</label> <input type="text" name=""
								class="form-control" value="${ vaccine.disease }"
								disabled="disabled">
						</div>
						<div class="mb-3">
							<label class="form-label">Xuất sứ</label> <input type="text"
								name="" class="form-control" value="${ vaccine.country }"
								disabled="disabled">
						</div>
						<div class="mb-3">
							<label class="form-label">Giá tiền</label> <input type="text"
								name="" class="form-control" value="<fmt:formatNumber value="${vaccine.price}" type="number" groupingUsed="true" /> đ"
								disabled="disabled">
						</div>
						<h3 class="text-success mb-4">Thanh toán</h3>
						<div class="py-4">
							<h5 class="mb-3">Phương thức thanh toán</h5>
							<div class="form-group">
								<select id="payment" name="paymentMethod" class="form-control">
									<option value="default">Vui lòng chọn phương thức
										thanh toán</option>
									<option value="PAY-LATER">Thanh toán sau khi tiêm</option>
									<option value="PAY_ONLINE">Thanh toán qua tài khoản
										ngân hàng</option>
								</select>
							</div>
							<div id="payment-form" class="row"
								style="display: none; margin-top: 15px;">
								<div class="col-md-12">
									<label for="numberBank">Nhập số tài khoản ngân hàng</label> <input
										type="text" id="numberBank" name="numberBank"
										class="form-control mt-3"
										placeholder="Thông tin số tài khoản ngân hàng">
								</div>
								<div class="col-md-12">
									<label for="bankName" class="mt-3">Chọn ngân hàng</label> <select
										id="bankName" name="bankName" class="form-control mt-3">
										<option value="default">Vui lòng chọn ngân hàng</option>
										<option value="MB_BANK">MB Bank</option>
										<option value="VIET_BANK">VietinBank</option>
									</select>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</form>
	<script>
		document
				.addEventListener(
						'DOMContentLoaded',											
						function() {
							var today = new Date();
							var yyyy = today.getFullYear();
							var mm = today.getMonth() + 1;
							var dd = today.getDate();
							var hh = today.getHours();
							var min = today.getMinutes();

							if (mm < 10) {
								mm = '0' + mm;
							}

							if (dd < 10) {
								dd = '0' + dd;
							}

							if (hh < 10) {
								hh = '0' + hh;
							}

							if (min < 10) {
								min = '0' + min;
							}

							var currentDate = yyyy + '-' + mm + '-' + dd;
							var currentTime = hh + ':' + min;

							document.getElementById('vaccinationDate')
									.setAttribute('min', currentDate);

							var dateInput = document
									.getElementById('vaccinationDate');
							var timeInput = document
									.getElementById('vaccinationTime');
							var locationSelect = document
									.querySelector('[name="location.id"]');
							var paymentSelect = document
									.getElementById('payment');
							var bankNameSelect = document
									.getElementById('bankName');
							var alertContainer = document
									.getElementById('alert-container');

							timeInput.disabled = true;
							
							timeInput.addEventListener('input', function() {
						        var selectedTime = timeInput.value;
						        
						        // Chuyển đổi giờ phút thành số phút trong ngày
						        var timeParts = selectedTime.split(':');
						        var minutes = parseInt(timeParts[0]) * 60 + parseInt(timeParts[1]);

						        // Giới hạn khoảng thời gian từ 7:00 đến 11:00 và từ 13:00 đến 16:00
						        var isValid = (
						            (minutes >= 7 * 60 && minutes <= 11 * 60) || // 7:00 - 11:00
						            (minutes >= 13 * 60 && minutes <= 16 * 60)   // 13:00 - 16:00
						        );

						        if (!isValid) {
						            // Hiển thị cảnh báo và đặt lại thời gian nếu không hợp lệ
						            showAlert('Chỉ được chọn giờ từ 7:00 đến 11:00 sáng hoặc từ 13:00 đến 16:00 tối.');
						            timeInput.value = '';
						        }
						    });

							dateInput
									.addEventListener(
											'change',
											function() {
												var selectedDate = dateInput.value;
												var date = new Date(
														selectedDate);

												clearAlert();

												if (date.getDay() === 6
														|| date.getDay() === 0) {
													showAlert('Không làm việc vào ngày thứ 7 hoặc Chủ nhật!');
													dateInput.value = '';
													timeInput.value = '';
													timeInput.disabled = true;
												} else {
													timeInput.disabled = false;
												}
											});

							timeInput
									.addEventListener(
											'change',
											function() {
												var selectedDate = dateInput.value;
												var selectedTime = timeInput.value;

												clearAlert();

												if (selectedDate === currentDate
														&& selectedTime < currentTime) {
													showAlert('Giờ không được chọn thời gian trong quá khứ!');
													timeInput.value = '';
												}
											});

							paymentSelect
									.addEventListener(
											'change',
											function() {
												var paymentForm = document
														.getElementById('payment-form');
												if (this.value === 'PAY_ONLINE') {
													paymentForm.style.display = 'block';
												} else {
													paymentForm.style.display = 'none';
												}
											});

							document.getElementById('vaccination-form')
									.addEventListener('submit',
											function(event) {
												clearAlert();

												if (!validateForm()) {
													event.preventDefault();
												}
											});

							function validateForm() {
								let valid = true;

								if (!dateInput.value) {
									showAlert("Vui lòng chọn ngày tiêm.");
									valid = false;
								} else if (!timeInput.value) {
									showAlert("Vui lòng chọn giờ tiêm.");
									valid = false;
								} else if (locationSelect.value === "default") {
									showAlert("Vui lòng chọn địa điểm tiêm chủng.");
									valid = false;
								} else if (paymentSelect.value === "default") {
									showAlert("Vui lòng chọn phương thức thanh toán.");
									valid = false;
								} else if(paymentSelect.value === "PAY_ONLINE") {
									if (bankNameSelect.value === "default") {
										showAlert("Vui lòng chọn ngân hàng thanh toán.");
										valid = false;
									}
								}
								return valid;
							}

							function showAlert(message) {

								var alertDiv = document.createElement('div');
								alertDiv.className = 'alert alert-warning alert-dismissible fade show';
								alertDiv.role = 'alert';
								alertDiv.innerHTML = '<strong>'
										+ message
										+ '</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
								alertContainer.innerHTML = '';
								alertContainer.appendChild(alertDiv);
							}

							function clearAlert() {
								alertContainer.innerHTML = '';
							}
						});
	</script>


	<!-- ======= FOOTER ======= -->
	<jsp:include page="../layout/footer.jsp" />

	<!-- ======= JS và Bootstrap ======= -->
	<jsp:include page="../layout/jsLink.jsp" />
</body>

</html>
