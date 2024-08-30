<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Thêm Receptionist</title>
    <!-- ======= CSS ======= -->
    <jsp:include page="../layout/cssLink.jsp" />
    <style>
        label {
            font-weight: bold;
        }
    </style>
</head>

<body>
    <jsp:include page="../layout/header.jsp" />
    <jsp:include page="../layout/sidebar.jsp" />

    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Thêm Receptionist</h1>
        </div>

        <section class="section">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                        <!-- Hiển thị thông báo thành công -->
                            <c:if test="${not empty message}">
                                <div class="alert alert-success" role="alert">
                                    ${message}
                                </div>
                            </c:if>

                            <!-- Hiển thị thông báo lỗi -->
                            <c:if test="${not empty error}">
                                <div class="alert alert-danger" role="alert">
                                    ${error}
                                </div>
                            </c:if>
                            <form action="/vacxin-system/admin/receptionist/add" method="post" style="padding-top: 20px;">
                                <div class="row mb-3">
                                    <label for="userId" class="col-sm-2 col-form-label">Chọn lễ tân</label>
                                    <div class="col-sm-10">
                                        <select id="userId" name="userId" class="form-control" onchange="loadUserDetails(this.value)">
                                            <option value="" disabled selected>-- Chọn lễ tân --</option>
                                            <c:forEach var="user" items="${users}">
                                                <option value="${user.id}">${user.fullName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <!-- 
                                <div class="row mb-3">
                                    <label for="username" class="col-sm-2 col-form-label">Username</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="username" name="username" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="email" class="col-sm-2 col-form-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" id="email" name="email" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="phone" class="col-sm-2 col-form-label">Phone</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="phone" name="phone" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="address" class="col-sm-2 col-form-label">Address</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="address" name="address" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="birthday" class="col-sm-2 col-form-label">Birthday</label>
                                    <div class="col-sm-10">
                                        <input type="date" id="birthday" name="birthday" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="fullName" class="col-sm-2 col-form-label">Full Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="fullName" name="fullName" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="gender" class="col-sm-2 col-form-label">Gender</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="gender" name="gender" class="form-control" readonly>
                                    </div>
                                </div> -->
                                <div class="row mb-3">
                                    <label for="shift" class="col-sm-2 col-form-label">Shift</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="shift" name="shift" class="form-control" required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="language" class="col-sm-2 col-form-label">Language</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="language" name="language" class="form-control" required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="salary" class="col-sm-2 col-form-label">Salary</label>
                                    <div class="col-sm-10">
                                        <input type="number" step="0.01" id="salary" name="salary" class="form-control" required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="department" class="col-sm-2 col-form-label">Department</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="department" name="department" class="form-control" required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-10 offset-sm-2">
                                        <button type="submit" class="btn btn-primary">Thêm</button>
                                        <a href="/vacxin-system/admin/receptionist" class="btn btn-secondary">Hủy</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <jsp:include page="../layout/jsLink.jsp" />
    <jsp:include page="../layout/footer.jsp" />
    
    <script>
    function loadUserDetails(userId) {
        if (userId) {
            fetch(`/vacxin-system/admin/user/${userId}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then(user => {
                    document.getElementById('username').value = user.username || '';
                    document.getElementById('email').value = user.email || '';
                    document.getElementById('phone').value = user.phone || '';
                    document.getElementById('address').value = user.address || '';
                    document.getElementById('birthday').value = user.birthday || '';
                    document.getElementById('fullName').value = user.fullName || '';
                    document.getElementById('gender').value = user.gender || '';
                })
                .catch(error => console.error('Error fetching user details:', error));
        } else {
            // Clear the fields if no user is selected
            document.getElementById('username').value = '';
            document.getElementById('email').value = '';
            document.getElementById('phone').value = '';
            document.getElementById('address').value = '';
            document.getElementById('birthday').value = '';
            document.getElementById('fullName').value = '';
            document.getElementById('gender').value = '';
        }
    }
    </script>
</body>

</html>
