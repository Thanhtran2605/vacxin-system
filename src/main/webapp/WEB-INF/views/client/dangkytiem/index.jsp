<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>Vacxin System</title>
<!-- ======= CSS và Bootstrap ======= -->
<jsp:include page="../layout/cssLink.jsp" />
<style>
.form-container {
	padding: 20px;
	margin: 20px auto;
	max-width: 900px;
	border: 1px solid #e0e0e0;
	border-radius: 10px;
	background-color: #f8f9fa;
}

.form-title {
	color: #28a745;
	margin-bottom: 20px;
}

.form-section {
	margin-bottom: 30px;
}

.form-label {
	margin-bottom: 5px;
	font-weight: bold;
}

.form-check-inline {
	margin-right: 15px;
}
</style>
</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="../layout/header.jsp" />
		<jsp:include page="../layout/mega-menu.jsp" />
	</div>
	<form action="/vacxin-system/xacnhantiem" method="post">
		<div class="row" style="margin: 0 100px">
			<h1 class="mt-5">Xác nhận đơn tiêm chủng</h1>
			<div class="col-md-8">
				<section class="mt-5 form-container">
					<h3 class="form-title">Thông tin người tiêm</h3>
					<div class="row form-section">
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
							<label class="form-label">Mã bệnh nhân</label> <input type="text"
								name="" class="form-control" value="${ patient.idCard }"
								disabled="disabled">
						</div>
					</div>
					<h3 class="form-title">Thời gian đặt buổi tiêm</h3>

					<input type="hidden" name="patient.id" value="${ patient.id }" />
					<input type="hidden" name="vaccine.id" value="${ vaccine.id }" />
					<div class="row form-section">
						<div class="col-md-6 mb-3">
							<label class="form-label">Ngày tiêm</label> <input type="date"
								name="vaccinationDate" class="form-control">
						</div>
						<div class="col-md-6 mb-3">
							<label class="form-label">Giờ giấc tiêm</label> <input
								type="time" name="vaccinationTime" class="form-control">
						</div>
						<div class="col-md-12 mb-3">
							<select class="form-control" name="location.id">
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
				<section class="mt-5 form-container">
					<h3 class="form-title">Thông tin vaccine</h3>
					<div class="row form-section">

						<div class="col-md-12 mb-3">
							<label class="form-label">Tên vaccine</label> <input type="text"
								name="" class="form-control" value="${ vaccine.name }"
								disabled="disabled">
						</div>
						<div class="col-md-12 mb-3">
							<label class="form-label">Bệnh</label> <input type="text" name=""
								class="form-control" value="${ vaccine.disease }"
								disabled="disabled">
						</div>
						<div class="col-md-12 mb-3">
							<label class="form-label">Xuất sứ</label> <input type="text"
								name="" class="form-control" value="${ vaccine.country }"
								disabled="disabled">
						</div>
						<div class="col-md-12 mb-3">
							<label class="form-label">Giá tiền</label> <input type="text"
								name="" class="form-control" value="${ vaccine.price }"
								disabled="disabled">
						</div>
					</div>
					<h3 class="form-title">Thanh toán</h3>
					<div class="row form-section">
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

							<div id="payment-form row"
								style="display: none; margin-top: 15px">
								<label for="numberBank">Nhập số tài khoản ngân hàng</label>
								<input type="text" id="numberBank" name="numberBank"
									class="form-control mt-3"
									placeholder="Thông tin số tài khoản ngân hàng"> <label
									for="bankName" class="mt-3">Chọn ngân hàng</label> <select
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
	</form>
	<script type="text/javascript">
		document.getElementById('payment').addEventListener(
				'change',
				function() {
					var paymentForm = document
							.getElementById('payment-form row');
					if (this.value === 'PAY_ONLINE') {
						paymentForm.style.display = 'block';
					} else {
						paymentForm.style.display = 'none';
					}
				});
	</script>

	<!-- ======= FOOTER ======= -->
	<jsp:include page="../layout/footer.jsp" />

	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />


</body>

</html>
