<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>Vacxin System</title>
<!-- ======= CSS và Bootstrap ======= -->
<jsp:include page="./layout/cssLink.jsp" />

</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="./layout/header.jsp" />
		<jsp:include page="./layout/mega-menu.jsp" />
	</div>

	<section class="mt-5">
		<div class="offset-lg-1 col-lg-10">
			<div class="mb-8">
				<!-- heading -->
				<h3 class="mb-1">Lịch sử tiêm</h3>

			</div>
			<div>
				<!-- table -->
				<div class="table-responsive">
					<table class="table text-nowrap">
						<thead class="table-light">
							<tr>
								<th>#</th>
								<th>Ngày Tiêm Chủng</th>
								<th>Bác Sĩ</th>
								<th>Địa điểm</th>
								<th>Bệnh nhân</th>
								<th>Vacxin</th>
								<th>Status</th>
								<c:forEach var="schedule" items="${schedules}">
								<c:if test="${schedule.status == 'NOT_DUE'}">
                <th>Hủy lịch</th>
            </c:if> </c:forEach>
							</tr>
						</thead>
						<tbody>
							<c:set var="counter" value="1" />
							<c:forEach var="schedule" items="${schedules}">
								<tr>
									<!-- Hiển thị số tự động tăng -->
									<td class="align-middle">${counter}</td>

									<td class="align-middle">${schedule.vaccinationTime}</td>
									<td class="align-middle">${schedule.doctor.employee.user.fullName}</td>
									<td class="align-middle">${schedule.location.nameLocation}</td>
									<td class="align-middle">${schedule.patient.user.fullName}</td>
									<td class="align-middle">${schedule.vaccine.name}</td>
									<td class="align-middle"><span
										class="badge ${schedule.status == 'COMPLETED' ? 'bg-success' : 
                                        schedule.status == 'LATE' ? 'bg-danger' : 
                                        schedule.status == 'NOT_DUE' ? 'bg-warning' : 
                                        'bg-secondary'}">
											${schedule.status} </span></td>
											
									 <td class="align-middle">
                    <!-- Thêm nút Cancel nếu trạng thái là NOT_DUE -->
                    <c:if test="${schedule.status == 'NOT_DUE'}">
                        <form action="${pageContext.request.contextPath}/lichsutiem/cancel" method="post" style="display:inline;">
                            <input type="hidden" name="scheduleId" value="${schedule.id}" />
                            <button type="submit" class="btn btn-secondary">Hủy lịch</button>
                        </form>
                    </c:if>
                </td>
								</tr>
								<!-- Cập nhật biến đếm -->
								<c:set var="counter" value="${counter + 1}" />
							</c:forEach>
						</tbody>
					</table>

				</div>


			</div>
		</div>
	</section>

	<!-- ======= FOOTER ======= -->
	<jsp:include page="./layout/footer.jsp" />

	<!-- ======= JS ======= -->
	<jsp:include page="./layout/jsLink.jsp" />
</body>

</html>
