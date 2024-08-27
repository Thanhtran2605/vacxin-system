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
		<div class="d-flex align-items-center justify-content-between">
			<div class="pagetitle">
				<h1>Quản lý Vaccine</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Home</a></li>
						<li class="breadcrumb-item">Pages</li>
						<li class="breadcrumb-item active">Vaccines</li>
					</ol>
				</nav>
			</div>
			<div class="d-flex gap-2 align-items-center">
				<div class="search-bar">
					<form class="search-form d-flex align-items-center" method="GET"
						action="/vacxin-system/admin/vaccines/">
						<input name="page" value="1" type="hidden"> <input
							type="text" name="name" class="mx-2"
							placeholder="Nhập tên vaccine" value="${param.name}"> <select
							class="form-select mx-2" name="disease"
							aria-label="Default select example">
							<option value="" ${empty param.disease ? 'selected' : ''}>Chọn
								loại bệnh</option>
							<c:forEach items="${danhsachLoaibenh}" var="loaibenh">
								<option value="${loaibenh}"
									${param.disease == loaibenh ? 'selected' : ''}>${loaibenh}</option>
							</c:forEach>
						</select> <select class="form-select" name="country"
							aria-label="Default select example">
							<option value="" ${empty param.country ? 'selected' : ''}>Chọn
								quốc gia</option>
							<c:forEach items="${danhsachQuocgia}" var="quocgia">
								<option value="${quocgia}"
									${param.country == quocgia ? 'selected' : ''}>${quocgia}</option>
							</c:forEach>
						</select>


						<button type="submit" class="btn btn-sm btn-success mx-2"
							title="Search">
							<i class="bi bi-search"></i>
						</button>
					</form>
				</div>
				<a class="btn btn-sm btn-success" href="/vacxin-system/admin/vaccines/create"><i
					class="bi bi-plus"></i> Thêm mới</a>
			</div>
		</div>


		<section class="section">
			<div class="row">

				<div class="card">
					<div class="card-body">

						<table class="table table-striped ">
							<thead>
								<tr>
									<th scope="col">Sắp Xếp [<a
										href="?page=1&sort=id,${param.sort eq 'id,asc' ? 'desc' : 'asc'}${queryString}">ID</a>]
									</th>
									<th scope="col">Hình ảnh</th>
									<th scope="col">Sắp Xếp [<a
										href="?page=1&sort=name,${param.sort eq 'name,asc' ? 'desc' : 'asc'}${queryString}">Tên</a>]
									</th>
									<th scope="col">Sắp Xếp [<a
										href="?page=1&sort=price,${param.sort eq 'price,asc' ? 'desc' : 'asc'}${queryString}">Giá</a>]
									</th>
									<th scope="col">Sắp Xếp [<a
										href="?page=1&sort=disease,${param.sort eq 'disease,asc' ? 'desc' : 'asc'}${queryString}">Bệnh</a>]
									</th>
									<th scope="col">Sắp Xếp [<a
										href="?page=1&sort=country,${param.sort eq 'country,asc' ? 'desc' : 'asc'}${queryString}">Sản
											xuất</a>]
									</th>
									<th scope="col">Sắp Xếp [<a
										href="?page=1&sort=quantity,${param.sort eq 'quantity,asc' ? 'desc' : 'asc'}${queryString}">Số
											lượng</a>]
									</th>
									<th scope="col">Mô tả</th>
									<th scope="col">Sửa</th>
									<th scope="col">Xóa</th>
								</tr>
							</thead>
							<tbody>

								<c:if test="${totalPages > 0}">
									<c:forEach var="vaccine" items="${danhsachVaccine}">
										<tr>
											<td>${vaccine.id}</td>
											<td><img src="${vaccine.image}" width="150px" /></td>
											<td class="shorten-text">${vaccine.name}</td>
											<td>${vaccine.price}00đ</td>
											<td class="shorten-text">${vaccine.disease}</td>
											<td>${vaccine.country}</td>
											<td>${vaccine.quantity}liều</td>
											<td class="shorten-text">${vaccine.description}</td>
											<td><a
												href="/vacxin-system/admin/vaccines/edit/${vaccine.id}"
												class="btn btn-success btn-sm"> <i
													class="bi bi-pencil-square"></i>
											</a></td>
											<td>
												<button type="button" class="btn btn-sm btn-danger"
													data-bs-toggle="modal"
													data-bs-target="#deleteVaccine${vaccine.id}">
													<i class="bi bi-trash"></i>
												</button>

												<div class="modal fade" id="deleteVaccine${vaccine.id}"
													tabindex="-1" aria-hidden="true" style="display: none;">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title">
																	Delete Vaccine : <span style="color: red">${vaccine.name}</span>
																</h5>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-bs-dismiss="modal">Close</button>
																<a href="/vacxin-system/admin/vaccines/delete/${ vaccine.id }"
																	class="btn btn-primary">Delete</a>
															</div>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${totalPages == 0}">
									<tr>
										<td colspan="10" class="text-center">
											<h3>Không tìm thấy loại vaccine nào</h3>
										</td>
									</tr>
								</c:if>
							</tbody>

						</table>
						<c:if test="${totalPages > 0}">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a
										class="${1 eq currentPage ? 'disabled page-link' : 'page-link'}"
										href="/vacxin-system/admin/vaccines/?page=${currentPage - 1}${queryString}"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
										<li class="page-item"><a
											class="${(loop.index + 1) eq currentPage ? 'active page-link' : 'page-link'}"
											href="/vacxin-system/admin/vaccines/?page=${loop.index + 1}${queryString}">
												${loop.index + 1} </a></li>
									</c:forEach>
									<li class="page-item"><a
										class="${totalPages eq currentPage ? 'disabled page-link' : 'page-link'}"
										href="/vacxin-system/admin/vaccines/?page=${currentPage + 1}${queryString}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>

								</ul>
							</nav>
						</c:if>
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