<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Vacxin System - Add Vaccine</title>
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
			<h1>Thêm mới Vaccine</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Pages</li>
					<li class="breadcrumb-item">Vaccines</li>
					<li class="breadcrumb-item active">Create</li>
				</ol>
			</nav>
		</div>
	<a class="btn btn-sm btn-danger" href="/vacxin-system/admin/vaccines"><i class="bi bi-backspace"></i></a>
	</div>
		
		<section class="section dashboard">
      <div class="row">
        
        <div class="card">
          <div class="card-body">
          
            <form class="row g-3 mt-3">
              <div class="col-md-12">
                <label for="inputName5" class="form-label">Your Name</label>
                <input type="text" class="form-control" id="inputName5">
              </div>
              <div class="col-md-6">
                <label for="inputEmail5" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail5">
              </div>
              <div class="col-md-6">
                <label for="inputPassword5" class="form-label">Password</label>
                <input type="password" class="form-control" id="inputPassword5">
              </div>
              <div class="col-12">
                <label for="inputAddress5" class="form-label">Address</label>
                <input type="text" class="form-control" id="inputAddres5s" placeholder="1234 Main St">
              </div>
              <div class="col-12">
                <label for="inputAddress2" class="form-label">Address 2</label>
                <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
              </div>
              <div class="col-md-6">
                <label for="inputCity" class="form-label">City</label>
                <input type="text" class="form-control" id="inputCity">
              </div>
              <div class="col-md-4">
                <label for="inputState" class="form-label">State</label>
                <select id="inputState" class="form-select">
                  <option selected="">Choose...</option>
                  <option>...</option>
                </select>
              </div>
              <div class="col-md-2">
                <label for="inputZip" class="form-label">Zip</label>
                <input type="text" class="form-control" id="inputZip">
              </div>
              <div class="col-12">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="gridCheck">
                  <label class="form-check-label" for="gridCheck">
                    Check me out
                  </label>
                </div>
              </div>
              <div class="text-center">
                <button type="submit" class="btn btn-sm btn-primary">Submit</button>
                <button type="reset" class="btn btn-sm btn-secondary">Reset</button>
              </div>
            </form>
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