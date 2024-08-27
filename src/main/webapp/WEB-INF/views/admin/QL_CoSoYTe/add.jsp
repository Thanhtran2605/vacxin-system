<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Thêm mới vaccine</title>
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
            <h1>Thêm Cơ Sở Y Tế</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Pages</li>
                    <li class="breadcrumb-item active">Thêm Cơ Sở Y Tế</li>
                </ol>
            </nav>
        </div>

     <section class="section">
    <div class="card"> <br>
        <div class="card-body">
            <!-- Form -->
            <form method="post" action="/vacxin-system/admin/qlvaccinelocation/add">
                <div class="row mb-3">
                    <div class="col-sm-6">
                        <label for="nameLocation" class="form-label">Tên</label>
                        <input type="text" id="nameLocation" class="form-control" name="nameLocation" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="address" class="form-label">Địa chỉ</label>
                        <input type="text" id="address" class="form-control" name="address" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-6">
                        <label for="phone" class="form-label">Điện thoại</label>
                        <input type="text" id="phone" class="form-control" name="phone" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" id="email" class="form-control" name="email" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-6">
                        <label for="website" class="form-label">Website</label>
                        <input type="text" id="website" class="form-control" name="website">
                    </div>
                    <div class="col-sm-6">
                        <label for="fanpage" class="form-label">Fanpage</label>
                        <input type="text" id="fanpage" class="form-control" name="fanpage">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-6">
                        <label for="closingHours" class="form-label">Giờ đóng cửa</label>
                        <input type="time" id="closingHours" class="form-control" name="closingHours" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="openingHours" class="form-label">Giờ mở cửa</label>
                        <input type="time" id="openingHours" class="form-control" name="openingHours" required>
                    </div>
                </div>
                <div class="row mb-3">
                   
                    
                     <div class="row">
                        <label for="imageLink" class="form-label">Link hình ảnh</label>
                        <input type="text" id="imageLink" class="form-control" name="imageLink">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-10 offset-sm-2">
                        <button type="submit" class="btn btn-primary">Thêm</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>


    </main>
	<!-- ======= JS ======= -->
	<jsp:include page="../layout/jsLink.jsp" />

	<jsp:include page="../layout/footer.jsp" />
</body>

</html>