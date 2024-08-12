<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<h1>Quản lý địa điểm tiêm</h1>
		</div>

		<section class="section">
			<div class="row">
				<div class="card">
					<div class="card-body">
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Tên</th>
									<th scope="col">Địa chỉ</th>
									<th scope="col">Điện thoại</th>
									<th scope="col">Email</th>
									<th scope="col">Website</th>
									<th scope="col">Fanpage</th>
									<th scope="col">Hình ảnh</th>
									<th scope="col">Giờ mở cửa</th>
									<th scope="col">Giờ đóng cửa</th>
									<th scope="col">Chỉnh sửa</th>
									<th scope="col">Xóa</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="location" items="${danhsachvaccineLocation}">
									<tr>
										<td>${location.id}</td>
										<td>${location.nameLocation}</td>
										<td>${location.address}</td>
										<td>${location.phone}</td>
										<td>${location.email}</td>
										<td>${location.website}</td>
										<td>${location.fanpage}</td>
										<td><img src="${location.imageLink}" width="150px" /></td>
										<td>${location.openingHours}</td>
										<td>${location.closingHours}</td>
										<td class="text-center">
											<a href="/vacxin-system/admin/vacloc/edit/${location.id}" class="btn btn-success btn-sm">
												<i class="bi bi-pencil-square"></i>
											</a>
										</td>
										<td class="text-center">
											<form action="/vacxin-system/admin/vacloc/delete" method="post" style="display:inline;">
												<input type="hidden" name="locationId" value="${location.id}" />
												<button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">
													<i class="bi bi-trash"></i>
												</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<a href="/vacxin-system/admin/vacloc/add" class="btn btn-primary">Thêm mới</a>
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
