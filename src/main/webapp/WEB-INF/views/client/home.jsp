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
    <link rel="icon" href="<c:url value="/resources/images/logo.png" />" />
    <link rel="apple-touch-icon" href="<c:url value="/resources/images/logo.png" />" />
    <!-- Start of Fchat.vn -->
    <script type="text/javascript"
        src="https://cdn.fchat.vn/assets/embed/webchat.js?id=66c8f44615807c149a6e7945"
        async="async"></script>
    <!-- End of Fchat.vn -->
</head>

<body>
    <!-- ======= Header ======= -->
    <div class="border-bottom pb-5">
        <jsp:include page="layout/header.jsp" />
        <jsp:include page="layout/mega-menu.jsp" />
    </div>

    <!-- Carousel Section Start -->
    <div id="carouselExampleIndicators" class="container carousel slide mt-5">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide-to="0" class="active" aria-current="true"
                aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide-to="1" aria-label="Slide 2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<c:url value="/resources/assets/images/banner/banner2.png" />" width="1200px" height="628px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="<c:url value="/resources/assets/images/banner/banner1.png" />" width="1200px" height="628px" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button"
            data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
                class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button"
            data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span> <span
                class="visually-hidden">Next</span>
        </button>
    </div>
    <!-- Carousel Section End -->

    <!-- Giới thiệu ngắn về hệ thống -->
   
    <!-- Category Section Start-->
    <section class="mb-lg-10 mt-lg-14 my-8">
        <div class="container">
            <div class="row">
                <div class="col-12 mb-6">
                    <h3 class="mb-0">DANH MỤC VACXIN</h3>
                </div>
            </div>
            <div class="category-slider">
                <c:forEach var="item" items="${listVacxin}">
                    <div class="item">
                        <a href="#" class="text-decoration-none text-inherit">
                            <div class="card card-product mb-4">
                                <div class="card-body text-center py-8">
                                    <img src="${item.image}" class="mb-3" width="150">
                                    <div class="shorten-text">${item.name}</div>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>

    <!-- Hướng dẫn sử dụng -->
    <section class="container my-5">
        <h2>HƯỚNG DẪN SỬ DỤNG HỆ THỐNG</h2>
        <p>Để đăng ký tiêm vacxin, hãy làm theo các bước sau:</p>
        <ol>
            <li>Đăng nhập vào hệ thống bằng tài khoản của bạn.</li>
            <li>Chọn loại vacxin và lịch tiêm phù hợp với bạn.</li>
            <li>Điền thông tin cần thiết và xác nhận đăng ký.</li>
            <li>Đến trung tâm y tế vào ngày đã đăng ký để thực hiện tiêm chủng.</li>
        </ol>
        <p>Hệ thống sẽ tự động cập nhật lịch sử tiêm vacxin của bạn sau khi hoàn tất quá trình tiêm chủng.</p>
    </section>

    <!-- Đánh giá & cảm nhận -->
    <!-- Đánh giá & cảm nhận -->
<section class="container my-5">
    <h2>ĐÁNH GIÁ VÀ CẢM NHẬN</h2>
    <div class="row">
        <!-- Đánh giá 1 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Nguyễn Văn A</h5>
                    <p class="card-text">Hệ thống rất tiện lợi và dễ sử dụng. Tôi đã đăng ký tiêm chủng một cách nhanh chóng.</p>
                    <p class="text-muted">Đánh giá: 5/5</p>
                </div>
            </div>
        </div>
        
        <!-- Đánh giá 2 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Trần Thị B</h5>
                    <p class="card-text">Tôi rất hài lòng với dịch vụ của hệ thống. Quy trình đăng ký và tiêm chủng rất nhanh gọn.</p>
                    <p class="text-muted">Đánh giá: 4.5/5</p>
                </div>
            </div>
        </div>

        <!-- Đánh giá 3 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Lê Văn C</h5>
                    <p class="card-text">Hệ thống cần cải thiện một số tính năng, nhưng tổng quan vẫn rất tốt.</p>
                    <p class="text-muted">Đánh giá: 4/5</p>
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
