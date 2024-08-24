<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>Vacxin System</title>
<!-- ======= JS ======= -->
<jsp:include page="layout/cssLink.jsp" />
</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="layout/header.jsp" />
		<jsp:include page="layout/mega-menu.jsp" />
	</div>

	<!-- section -->
	<section class=" mt-8 mb-lg-14 mb-8">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row gx-10">
				<!-- col -->
				<div class="col-lg-3 col-md-4 mb-6 mb-md-0">
					<div class="py-4" id="countryFilter">
						<!-- title -->
						<h5 class="mb-3">Nơi sản xuất</h5>
						<c:forEach var="quocgia" items="${ danhsachQuocgia }">						
						<!-- form check -->
						<div class="form-check mb-2">
							<!-- input -->
							<input class="form-check-input" type="checkbox" value="${ quocgia }"
								id="${ quocgia }" name="country"> <label
								class="form-check-label" for="${ quocgia }"> ${ quocgia } </label>
						</div>
						</c:forEach>
					</div>
					<div class="py-4" id="diseaseFilter">
						<!-- title -->
						<h5 class="mb-3">Loại bệnh</h5>
						<c:forEach var="loaibenh" items="${ danhsachLoaibenh }">						
						<!-- form check -->
						<div class="form-check mb-2">
							<!-- input -->
							<input class="form-check-input" type="checkbox" value="${ loaibenh }"
								id="${ loaibenh }" name="disease"> <label
								class="form-check-label" for="${ loaibenh }"> ${ loaibenh } </label>
						</div>
						</c:forEach>
					</div>
					<div class="py-4">

						<h5 class="mb-3">Sắp xếp theo giá</h5>
						<!-- form check -->
						<div class="form-check mb-2">
							<input class="form-check-input" type="radio" name="sort-price"
								value="price,default" id="price,default"> <label
								class="form-check-label" for="price,default"> Mặc định
							</label>
						</div>
						<!-- form check -->
						<div class="form-check mb-2">
							<!-- input -->
							<input class="form-check-input" type="radio" name="sort-price"
								value="price,desc" id="price,desc"> <label
								class="form-check-label" for="price,desc"> Cao đến thấp
							</label>
						</div>
						<div class="form-check mb-2">
							<!-- input -->
							<input class="form-check-input" type="radio" name="sort-price"
								value="price,asc" id="price,asc"> <label
								class="form-check-label" for="price,asc"> Thấp đến cao </label>
						</div>
					</div>
					<button class="btn btn-primary" id="btnFilter">Lọc sản
						phẩm</button>
				</div>

				<div class="col-lg-9 col-md-8">
					<!-- card -->
					<div class="card mb-4 bg-light border-0">
						<!-- card body -->
						<div class=" card-body p-9">
							<h1 class="mb-0">Danh sách vaccine tiêm chủng</h1>
							<p class="mb-3 mb-md-0">
								<span class="text-dark">${ soluongVaccine }</span> loại vaccine
							</p>
						</div>
					</div>

					<!-- row -->
					<div
						class="row g-4 row-cols-xl-4 row-cols-lg-3 row-cols-2 row-cols-md-2 mt-2">
						<c:forEach var="vaccine" items="${danhsachVaccine}">
							<!-- col -->
							<div class="col">
								<!-- card -->
								<div class="card card-product">
									<div class="card-body">

										<!-- badge -->
										<div class="text-center position-relative ">
											<div class=" position-absolute top-0 start-0">
												<span class="badge bg-success">Còn hàng : ${ vaccine.quantity }</span>
											</div>
											<a href="#!"> <!-- img --> <img src="${ vaccine.image }"
												alt="${ vaccine.name }" class="mb-3 img-fluid"></a>
											<!-- action btn -->
											<div class="card-product-action">
												<a href="#!" class="btn-action" data-bs-toggle="modal"
													data-bs-target="#quickViewModal"><i class="bi bi-eye"
													data-bs-toggle="tooltip" data-bs-html="true"
													title="Quick View"></i></a> <a href="shop-wishlist.html"
													class="btn-action" data-bs-toggle="tooltip"
													data-bs-html="true" title="Wishlist"><i
													class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
													data-bs-toggle="tooltip" data-bs-html="true"
													title="Compare"><i class="bi bi-arrow-left-right"></i></a>
											</div>
										</div>
										<!-- heading -->
										<div class="text-small mb-1">
											<a href="#!" class="text-decoration-none text-muted"><small>${ vaccine.country }</small></a>
										</div>
										<h2 class="fs-6">
											<a href="#!" class="text-inherit text-decoration-none">
												<p class="shorten-text">${ vaccine.name }</p>
											</a>
										</h2>

										<!-- price -->
										<div
											class="d-flex justify-content-between align-items-center mt-3">
											<div>
												<span class="text-dark">${ vaccine.price } đ</span>
											</div>
											<!-- btn -->
											<div>
												<a href="#!" class="btn btn-primary btn-sm"> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														viewBox="0 0 24 24" fill="none" stroke="currentColor"
														stroke-width="2" stroke-linecap="round"
														stroke-linejoin="round" class="feather feather-plus">
                          <line x1="12" y1="5" x2="12" y2="19"></line>
                          <line x1="5" y1="12" x2="19" y2="12"></line>
                        </svg> Chọn
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>

					<div class="col">
						<!-- nav -->
						<nav class="mt-3">
							<ul class="pagination">
								<li
									class="${1 eq currentPage ? 'page-item disabled' : 'page-item'}"><a
									class="page-link  mx-1 rounded-3 "
									href="/vacxin-system/store?page=${currentPage - 1}${queryString}"
									aria-label="Previous"> <i
										class="feather-icon icon-chevron-left"></i>
								</a></li>


								<c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">

									<li class="page-item "><a
										class="${(loop.index + 1) eq currentPage ? 'page-link mx-1 rounded-3 active' : 'page-link mx-1 rounded-3'}"
										href="/vacxin-system/store?page=${loop.index + 1}${queryString}">${loop.index + 1}
									</a></li>

								</c:forEach>
								<li
									class="${totalPages eq currentPage ? 'page-item disabled' : 'page-item'}"><a
									class="page-link mx-1 rounded-3 text-body"
									href="/vacxin-system/store?page=${currentPage + 1}${queryString}"
									aria-label="Next"> <i
										class="feather-icon icon-chevron-right"></i>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- ======= FOOTER ======= -->
	<jsp:include page="layout/footer.jsp" />

	<!-- ======= JS ======= -->
	<jsp:include page="layout/jsLink.jsp" />

</body>
</html>