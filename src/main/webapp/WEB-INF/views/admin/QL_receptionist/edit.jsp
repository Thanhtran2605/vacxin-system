<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Vacxin System - Quản lý Lễ tân</title>
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
            <h1>Chỉnh sửa thông tin lễ tân</h1>
        </div>

        <section class="section">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Chỉnh sửa lễ tân</h5>

                    <!-- General Form Elements -->
                    <form method="post" action="${pageContext.request.contextPath}/admin/receptionist/edit/${receptionist.employee.id}">
                        <div class="row mb-3">
                            <label for="fullName" class="col-sm-2 col-form-label">Full Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="fullName" value="${receptionist.employee.user.fullName}" readonly>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="shift" class="col-sm-2 col-form-label">Shift</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="shift" value="${receptionist.shift}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="languagesSpoken" class="col-sm-2 col-form-label">Languages Spoken</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="languagesSpoken" value="${receptionist.languagesSpoken}">
                            </div>
                        </div>

                        <div class="col-sm-10 text-center">
                            <button type="submit" class="btn btn-success">Chỉnh sửa</button>
                        </div>
                    </form>
                    <!-- End General Form Elements -->

                </div>
            </div>
        </section>

    </main>
    <!-- ======= JS ======= -->
    <jsp:include page="../layout/jsLink.jsp" />
    <jsp:include page="../layout/footer.jsp" />
</body>

</html>
