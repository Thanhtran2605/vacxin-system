<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Vacxin System</title>
    <!-- ======= CSS và Bootstrap ======= -->
    <jsp:include page="../layout/cssLink.jsp" />
    <style>
        .form-container {
            padding: 20px;
            margin: 20px auto;
            max-width: 900px;
            border: 1px solid #e0e0e0;
            border-radius: 10px;
            background-color: #f8f9fa;
        }

        .form-title {
            color: #28a745;
            margin-bottom: 20px;
        }

        .form-section {
            margin-bottom: 30px;
        }

        .form-label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-check-inline {
            margin-right: 15px;
        }
    </style>
</head>

<body>
    <!-- ======= Header ======= -->
    <div class="border-bottom pb-5">
        <jsp:include page="../layout/header.jsp" />
        <jsp:include page="../layout/mega-menu.jsp" />
    </div>

    <section class="mt-5">
        <div class="container form-container">
            <!-- Thông tin người tiêm -->
            <h3 class="form-title">Thông tin người tiêm</h3>
            <div class="row form-section">
                <!-- Họ tên người tiêm và Ngày sinh người tiêm trên cùng một hàng -->
                <div class="col-md-6 mb-3">
                    <input type="text" class="form-control" placeholder="Họ tên người tiêm" required>
                </div>
                <div class="col-md-6 mb-3">
                    <input type="date" class="form-control" placeholder="Ngày sinh người tiêm">
                </div>

                <!-- Giới tính và Mã khách hàng VNVC trên cùng một hàng -->
                <div class="col-md-6 mb-3">
                    <label class="form-label">Giới tính:</label>
                    <div class="d-flex align-items-center">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="male" value="male" required>
                            <label class="form-check-label" for="male">Nam</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="female" value="female" required>
                            <label class="form-check-label" for="female">Nữ</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <input type="text" class="form-control" placeholder="Mã khách hàng VNVC (nếu có)">
                </div>

                <!-- Tỉnh thành, Quận huyện, và Phường xã trên cùng một hàng -->
                <div class="col-md-4 mb-3">
                    <select class="form-select">
                        <option selected>--Tỉnh Thành--</option>
                        <option value="1">Quảng Nam</option>
                        <option value="2">Đà Nẵng</option>
                        <option value="3">Huế</option>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <select class="form-select">
                        <option selected>--Quận huyện--</option>
                        <option value="1">Thăng Bình</option>
                        <option value="2">Lạt Đà</option>
                        <option value="3">Huế Mộng Mơ</option>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <select class="form-select">
                        <option selected>--Phường xã--</option>
                        <option value="1">Xã 1</option>
                        <option value="2">Long Châu</option>
                        <option value="3">Huế Mộng Mơ</option>
                    </select>
                </div>

                <!-- Số nhà, tên đường -->
                <div class="col-12 mb-3">
                    <input type="text" class="form-control" placeholder="Số nhà, tên đường">
                </div>
            </div>

            <!-- Thông tin liên hệ -->
            <h3 class="form-title">Thông tin liên hệ</h3>
            <div class="row form-section">
                <!-- Họ tên người liên hệ và Mối quan hệ với người tiêm trên cùng một hàng -->
                <div class="col-md-6 mb-3">
                    <input type="text" class="form-control" placeholder="Họ tên người liên hệ">
                </div>
                <div class="col-md-6 mb-3">
                    <select class="form-select">
                        <option selected>--Mối quan hệ với người tiêm--</option>
                        <option value="1">Bố mẹ</option>
                        <option value="2">Anh chị em</option>
                        <option value="3">Người thân</option>
                    </select>
                </div>

                <!-- Số điện thoại người liên hệ -->
                <div class="col-12 mb-3">
                    <input type="text" class="form-control" placeholder="Số điện thoại người liên hệ">
                </div>
            </div>

            <!-- Thông tin dịch vụ -->
            <h3 class="form-title">Thông tin dịch vụ</h3>
            <div class="row form-section">
                <!-- Loại vắc xin muốn đăng ký và Trung tâm VNVC mong muốn tiêm trên cùng một hàng -->
                <div class="col-md-6 mb-3">
                    <label class="form-label">Loại vắc xin muốn đăng ký:</label>
                    <div class="d-flex align-items-center">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="vaccineType" id="package" value="package" required>
                            <label class="form-check-label" for="package">Vacxin gói</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="vaccineType" id="single" value="single" required>
                            <label class="form-check-label" for="single">Vacxin lẻ</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <input type="text" class="form-control" placeholder="Trung tâm VNVC mong muốn tiêm">
                </div>

                <!-- Ngày mong muốn tiêm -->
                <div class="col-12 mb-3">
                    <input type="date" class="form-control" placeholder="Ngày mong muốn tiêm">
                </div>
            </div>

            <!-- Nút Đăng ký -->
            <div class="row">
                <div class="col-12 text-end">
                    <button type="button" class="btn btn-outline-secondary me-2">Cancel</button>
                    <button class="btn btn-primary" type="button">Đăng ký tiêm chủng</button>
                </div>
            </div>
        </div>
    </section>

    <!-- ======= FOOTER ======= -->
    <jsp:include page="../layout/footer.jsp" />

    <!-- ======= JS ======= -->
    <jsp:include page="../layout/jsLink.jsp" />
</body>

</html>
