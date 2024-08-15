<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Thêm Cơ Sở Y Tế</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <!-- CSS -->
    <jsp:include page="../layout/cssLink.jsp" />
</head>

<body>
    <!-- Header -->
    <jsp:include page="../layout/header.jsp" />

    <!-- Sidebar -->
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
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Thêm mới thông tin cơ sở y tế</h5>

                    <!-- Form -->
                    <form method="post" action="/vacxin-system/admin/qlvaccinelocation/add">
                        <div class="row mb-3">
                            <label for="nameLocation" class="col-sm-2 col-form-label">Tên</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="nameLocation" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="address" class="col-sm-2 col-form-label">Địa chỉ</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="address" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="phone" class="col-sm-2 col-form-label">Điện thoại</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="phone" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" name="email" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="website" class="col-sm-2 col-form-label">Website</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="website">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="fanpage" class="col-sm-2 col-form-label">Fanpage</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="fanpage">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="imageLink" class="col-sm-2 col-form-label">Link hình ảnh</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="imageLink">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="openingHours" class="col-sm-2 col-form-label">Giờ mở cửa</label>
                            <div class="col-sm-10">
                                <input type="time" class="form-control" name="openingHours" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="closingHours" class="col-sm-2 col-form-label">Giờ đóng cửa</label>
                            <div class="col-sm-10">
                                <input type="time" class="form-control" name="closingHours" required>
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

    <!-- Footer -->
    <jsp:include page="../layout/footer.jsp" />
</body>
</html>
