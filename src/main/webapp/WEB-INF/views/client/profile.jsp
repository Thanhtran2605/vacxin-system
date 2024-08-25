<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8" />
<title>Vacxin System</title>
<!-- ======= CSS và Bootstrap ======= -->
<jsp:include page="./layout/cssLink.jsp" />

<!-- Custom CSS for additional styling -->
<style>
    .profile .card {
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .nav-tabs .nav-link {
        border-radius: 15px;
        margin-right: 5px;
    }
    .nav-tabs .nav-link.active {
        background-color: #007bff;
        color: #fff;
    }
    .form-label {
        font-weight: 600;
    }
</style>
</head>

<body>
    <!-- ======= Header ======= -->
    <div class="border-bottom mb-4">
        <jsp:include page="./layout/header.jsp" />
        <jsp:include page="./layout/mega-menu.jsp" />
    </div>

    <section class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-lg-8">

                <!-- Thông báo lỗi hoặc thành công -->
                <c:if test="${errorMessage == true}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Lỗi!</strong> Mật khẩu cũ không đúng.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </c:if>
                <c:if test="${successMessage == true}">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Thành công!</strong> Mật khẩu đã được thay đổi thành công.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </c:if>

                <!-- Profile Section -->
                <section class="profile">
                    <div class="card">
                        <div class="card-body">
                            <ul class="nav nav-tabs" id="profile-tabs" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" id="profile-overview-tab" data-bs-toggle="tab"
                                        href="#profile-overview" role="tab" aria-controls="profile-overview" aria-selected="true">
                                        Thông tin cá nhân
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="profile-edit-tab" data-bs-toggle="tab"
                                        href="#profile-edit" role="tab" aria-controls="profile-edit" aria-selected="false">
                                        Thay đổi mật khẩu
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content pt-3" id="profile-tabs-content">
                                <!-- Tab thông tin người dùng -->
                                <div class="tab-pane fade show active" id="profile-overview" role="tabpanel" aria-labelledby="profile-overview-tab">
                                    <h5 class="card-title mb-4">Thông tin người dùng</h5>
                                    <c:if test="${currentUser != null}">
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label class="form-label">Tên đăng nhập:</label>
                                                <div>${currentUser.username}</div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Email:</label>
                                                <div>${currentUser.email}</div>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label class="form-label">Số điện thoại:</label>
                                                <div>${currentUser.phone}</div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Họ tên:</label>
                                                <div>${currentUser.fullName}</div>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label class="form-label">Giới tính:</label>
                                                <div>${currentUser.gender}</div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Phân quyền:</label>
                                                <div>${currentUser.role.value}</div>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label class="form-label">Địa chỉ:</label>
                                                <div>${currentUser.address}</div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Trạng thái:</label>
                                                <c:choose>
                                                    <c:when test="${currentUser.status == 0}">
                                                        <span class="badge bg-success">Active</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="badge bg-danger">Inactive</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </div>
                                    </c:if>

                                    <!-- Logic cho nhân viên -->
                                    <c:if test="${currentEmployee != null}">
                                        <c:choose>
                                            <c:when test="${currentEmployee.user.role.value == 'DOCTOR'}">
                                                <div class="row mb-3">
                                                    <div class="col-md-6">
                                                        <label class="form-label">License Number:</label>
                                                        <div>${currentEmployee.licenseNumber}</div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Specialization:</label>
                                                        <div>${currentEmployee.specialization}</div>
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-md-6">
                                                        <label class="form-label">Kinh nghiệm:</label>
                                                        <div>${currentEmployee.yearsOfExperience} năm</div>
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="row mb-3">
                                                    <div class="col-md-6">
                                                        <label class="form-label">Ngôn ngữ:</label>
                                                        <div>${currentEmployee.languagesSpoken}</div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="form-label">Ca làm:</label>
                                                        <div>${currentEmployee.shift}</div>
                                                    </div>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:if>

                                    <!-- Logic cho bệnh nhân -->
                                    <c:if test="${currentPatient != null}">
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label class="form-label">Số thẻ bệnh nhân:</label>
                                                <div>${currentPatient.idCard}</div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Ghi chú:</label>
                                                <div>${currentPatient.note}</div>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>

                                <!-- Tab thay đổi mật khẩu -->
                                <div class="tab-pane fade" id="profile-edit" role="tabpanel" aria-labelledby="profile-edit-tab">
                                    <form action="changePassword" method="post">
                                        <div class="row mb-3">
                                            <label for="current-password" class="col-md-4 col-form-label">Mật khẩu hiện tại</label>
                                            <div class="col-md-8">
                                                <input type="password" name="currentPassword" class="form-control" id="current-password" required />
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="new-password" class="col-md-4 col-form-label">Mật khẩu mới</label>
                                            <div class="col-md-8">
                                                <input type="password" name="newPassword" class="form-control" id="new-password" required />
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="confirm-new-password" class="col-md-4 col-form-label">Xác nhận mật khẩu mới</label>
                                            <div class="col-md-8">
                                                <input type="password" name="confirmNewPassword" class="form-control" id="confirm-new-password" required />
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Thay đổi mật khẩu</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section> <br>

    <!-- ======= Footer ======= -->
    <jsp:include page="./layout/footer.jsp" />

    <!-- ======= JS và Bootstrap ======= -->
    <jsp:include page="./layout/jsLink.jsp" />
</body>

</html>
