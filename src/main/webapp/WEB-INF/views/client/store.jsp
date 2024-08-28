<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="vi_VN" />
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
						<c:forEach var="quocgia" items="${ quocgias }">
							<!-- form check -->
							<div class="form-check mb-2">
								<!-- input -->
								<input class="form-check-input" type="checkbox"
									value="${ quocgia }" id="${ quocgia }" name="country">
								<label class="form-check-label" for="${ quocgia }"> ${ quocgia }
								</label>
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
								<input class="form-check-input" type="checkbox"
									value="${ loaibenh }" id="${ loaibenh }" name="disease">
								<label class="form-check-label" for="${ loaibenh }"> ${ loaibenh }
								</label>
							</div>
						</c:forEach>
					</div>
					<div class="py-4">

						<h5 class="mb-3">Sắp xếp theo giá</h5>
						<!-- form check -->
						<div class="form-check mb-2">
							<input class="form-check-input" type="radio" name="sort-price"
								value="price,default" id="price,default"> <label
								class="form-check-label" for="price,default"> Mặc định </label>
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
					<c:if test="${ message != null }">
						<div class="alert alert-danger alert-dismissible fade show"
							role="alert">
							${ message }
							<button type="button" class="btn-close" data-bs-dismiss="alert"
								aria-label="Close"></button>
						</div>
					</c:if>
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
											<c:if test="${ vaccine.quantity > 0 }">
												<span class="badge bg-success">Còn hàng : ${ vaccine.quantity }</span>
											</c:if>	
											<c:if test="${ vaccine.quantity == 0 }">
												<span class="badge bg-danger">Hết hàng</span>
											</c:if>	
											</div>
											<a href="#!"> <!-- img --> <img src="${ vaccine.image }"
												alt="${ vaccine.name }" class="mb-3 img-fluid"></a>
											<div class="card-product-action">
												<a href="#!" class="btn-action" data-bs-toggle="modal"
													data-bs-target="#data-${ vaccine.id }"><i
													class="bi bi-eye" data-bs-toggle="tooltip"
													data-bs-html="true" title="Quick View"></i></a>
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
												<span class="text-dark"><fmt:formatNumber
														value="${vaccine.price}" type="number" groupingUsed="true" />
													đ</span>
											</div>
											<!-- btn -->
											<div>
												<a href="dangkytiem/${ vaccine.id }"
													class="btn btn-primary btn-sm"> <svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														viewBox="0 0 24 24" fill="none" stroke="currentColor"
														stroke-width="2" stroke-linecap="round"
														stroke-linejoin="round" class="feather feather-plus">
                          <line x1="12" y1="5" x2="12" y2="19"></line>
                          <line x1="5" y1="12" x2="19" y2="12"></line>
                        </svg> Đăng ký
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="modal fade" id="data-${ vaccine.id }" tabindex="-1"
								aria-hidden="true">
								<div class="modal-dialog modal-xl modal-dialog-centered">
									<div class="modal-content">

										<div class="modal-body p-8">
											<div class="d-flex justify-content-end">
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="row">
												<div class="col-md-6">
													<!-- img slide -->
													<div class="product productModal" id="productModal">
														<div class="zoom" onmousemove="zoom(event)"
															style="background-image: url(${ vaccine.image })">
															<!-- img -->
															<img src="${ vaccine.image }" alt="">
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="ps-md-8">
														<a href="#!" class="mb-4 d-block">${ vaccine.country }</a>
														<h2 class="mb-1 h1">${ vaccine.name }</h2>
														<div class="mb-4">
															<small class="text-warning"> <i
																class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
																<i class="bi bi-star-fill"></i> <i
																class="bi bi-star-fill"></i> <i class="bi bi-star-half"></i></small><a
																href="#" class="ms-2">(30 reviews)</a>
														</div>
														<div class="fs-4">
															<span class="text-dark"><fmt:formatNumber
																	value="${vaccine.price}" type="number"
																	groupingUsed="true" /> đ</span>
														</div>
														<hr class="my-6">
														<div class="mt-5 d-flex justify-content-start">
															<div class="ms-2 col-6 d-grid">
																<a href="dangkytiem/${ vaccine.id }"
																	class="btn btn-primary"> <i
																	class="feather-icon icon-shopping-bag me-2"></i>Đăng ký
																	tiêm chủng
																</a>
															</div>
														</div>
														<hr class="my-6">
														<div>
															<table class="table table-borderless">

																<tbody>
																	<tr>
																		<td><b>Số lượng liều:</b></td>
																		<td>${ vaccine.quantity }</td>
																	</tr>
																	<tr>
																		<td><b>Bệnh:</b></td>
																		<td>${ vaccine.disease }</td>
																	</tr>
																	<tr>
																		<td><b>Mô tả:</b></td>

																	</tr>
																	<tr>
																		<td>${ vaccine.description }</td>

																	</tr>
																</tbody>
															</table>

														</div>
													</div>

												</div>
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