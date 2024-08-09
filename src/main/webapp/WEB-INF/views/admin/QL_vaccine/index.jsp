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
			<h1>Quản lý Vaccine</h1>
		</div>

		<section class="section">
			<div class="row">

				<div class="card">
					<div class="card-body">

						<table class="table table-striped ">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Hình ảnh</th>
									<th scope="col">Tên</th>
									<th scope="col">Giá</th>
									<th scope="col">Bệnh</th>
									<th scope="col">Sản xuất</th>									
									<th scope="col">Mô tả</th>
									
								</tr>
							</thead>
							<tbody>
						<c:forEach var="vaccine" items="${danhsachVaccine}">
								 <tr>		
								 	<td>${vaccine.id}</td>							
									<td><img src="${vaccine.image}" width="150px"/></td>
									<td>${vaccine.name}</td>
									<td>${vaccine.price}</td>
									<td>${vaccine.disease}</td>
									<td>${vaccine.country}</td>
									<td class="shorten-text">${vaccine.description}</td>						              																														
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