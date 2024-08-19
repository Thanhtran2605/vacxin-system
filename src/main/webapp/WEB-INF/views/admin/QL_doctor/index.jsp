<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Quản lý Doctor - Dashboard</title>
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

        <div class="pagetitle d-flex justify-content-between align-items-center mb-3">
            <h1>Danh sách Bác sĩ</h1>
            <a href="/vacxin-system/admin/doctor/add" class="btn btn-primary">Thêm mới</a>
        </div>

		<section class="section">
			<div class="row">

				<div class="card" style="overflow-x:auto;">
					<div class="card-body">
						<!-- Search Form -->
                		<form style="padding-top: 20px;" action="/vacxin-system/admin/doctor" method="get"
							class="row mb-3">
							<div class="col-9 col-sm-10">
								<input type="text" class="form-control" name="search"
									placeholder="Tìm kiếm theo ID hoặc tên bác sĩ..."
									value="${param.search}">
							</div>
							<div class="col-3 col-sm-2 text-end">
								<button type="submit" class="btn btn-primary w-100">Tìm
									kiếm</button>
							</div>
						</form>

						<table class="table table-striped ">
							<thead>
								<tr>
									<th scope="col">IDEmployee</th>
									<th scope="col">Fullname</th>
									<th scope="col">Phone</th>
									<th scope="col">Gender</th>
									<th scope="col">Birthday</th>									
									<th scope="col">Address</th>
									<th scope="col">Department</th>
									<th scope="col">Salary</th>
									<th scope="col">License Number</th>
									<th scope="col">Specialization</th>
									<th scope="col">yearsOfExperience</th>
									<th scope="col">Edit</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="doctor" items="${doctors}">
									<tr>
										<th scope="row">${doctor.employee.id}</th>
										<td>${doctor.employee.user.fullName}</td>
										<td>${doctor.employee.user.phone}</td>
										<td>${doctor.employee.user.gender}</td>
										<td>${doctor.employee.user.birthday}</td>
										<td>${doctor.employee.user.address}</td>
										<td>${doctor.employee.department}</td>
										<td>${doctor.employee.salary}</td>
										<td>${doctor.licenseNumber}</td>
										<td>${doctor.specialization}</td>
										<td>${doctor.yearsOfExperience}</td>
										<td class="text-center">
											<a href="/vacxin-system/admin/doctor/edit/${doctor.employee.id}" class="btn btn-success btn-sm">
												<i class="bi bi-pencil-square"></i>
											</a>
										</td>
										<td class="text-center">
											<form action="/vacxin-system/admin/doctor/delete" method="post" style="display:inline;">
												<input type="hidden" name="doctorId" value="${doctor.id}" />
												<button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this doctor?');">
													<i class="bi bi-trash"></i>
												</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

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