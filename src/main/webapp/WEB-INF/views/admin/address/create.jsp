<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Thêm mới User</title>
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
				<h1>Thêm mới User</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Home</a></li>
						<li class="breadcrumb-item">Pages</li>
						<li class="breadcrumb-item">Users</li>
						<li class="breadcrumb-item active">Thêm</li>
					</ol>
				</nav>
			</div>
			<a class="btn btn-sm btn-danger" href="/vacxin-system/admin/qluser/"><i
				class="bi bi-backspace"></i> Trở về</a>
		</div>

		<section class="section dashboard">
			<div class="row">

				<div class="card">
    <div class="card-body">
        <form:form class="row g-3 mt-3" modelAttribute="newUser"
            action="/vacxin-system/admin/qluser/add" method="post">
            
            <div class="col-md-6">
                <form:label path="username" class="form-label">Tên đăng nhập</form:label>
                <form:input type="text" path="username" class="form-control" />
                <form:errors path="username" cssClass="text-danger" />
            </div>
            
            <div class="col-md-6">
                <form:label path="email" class="form-label">Email</form:label>
                <form:input type="email" path="email" class="form-control" />
                <form:errors path="email" cssClass="text-danger" />
            </div>

            <div class="col-md-6">
                <form:label path="phone" class="form-label">Số điện thoại</form:label>
                <form:input type="text" path="phone" class="form-control" />
                <form:errors path="phone" cssClass="text-danger" />
            </div>
            
            <div class="col-md-6">
                <form:label path="fullName" class="form-label">Họ và tên</form:label>
                <form:input type="text" path="fullName" class="form-control" />
                <form:errors path="fullName" cssClass="text-danger" />
            </div>
            
            <div class="col-md-6">
                <form:label path="gender" class="form-label">Giới tính</form:label>
                <div class="form-check">
                   <input name="gender" type="radio" value="Nam" id="genderMale" class="form-check-input" />
                    <label class="form-check-label"  for="genderMale">Nam</label>
                </div>
                <div class="form-check">
                    <input name="gender" value="Nữ" type="radio" id="genderFemale" class="form-check-input" />
                    <label class="form-check-label" for="genderFemale">Nữ</label>
                </div>
                <form:errors path="gender" cssClass="text-danger" />
            </div>
            
            <div class="col-md-6">
                <form:label path="password" class="form-label">Mật khẩu</form:label>
                <form:input type="password" path="password" class="form-control" />
                <form:errors path="password" cssClass="text-danger" />
            </div>
            
            <div class="col-md-6">
                <form:label path="address" class="form-label">Địa chỉ</form:label>
                <form:input type="text" path="address" class="form-control" />
                <form:errors path="address" cssClass="text-danger" />
            </div>
          

            <div class="col-md-6">
                <form:label path="birthday" class="form-label">Ngày sinh</form:label>
                <form:input type="date" path="birthday" class="form-control" />
                <form:errors path="birthday" cssClass="text-danger" />
            </div>

            <div class="col-md-6">
                <form:label path="role" class="form-label">Chọn vai trò</form:label>
                <select id="roleSelect" name="role" class="form-control">
                    <c:forEach var="role" items="${roles}">
                        <option value="${role.id}">${role.value}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-sm btn-primary">Gửi</button>
                <button type="reset" class="btn btn-sm btn-secondary">Nhập lại</button>
            </div>
        </form:form>
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
