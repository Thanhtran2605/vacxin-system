<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="utf-8">
			<meta content="width=device-width, initial-scale=1.0" name="viewport">
			<title>Vacxin System - Dashboard</title>
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
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- User Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">           
                <div class="card-body">
                  <h5 class="card-title">Người dùng hệ thống</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ sizeUser } người</h6>               
                    </div>
                  </div>
                </div>

              </div>
            </div>
            
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Vaccines</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-bag-plus-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ sizeVaccine } loại</h6>                    
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">
              <div class="card info-card customers-card">
            
                <div class="card-body">
                  <h5 class="card-title">Lịch tiêm</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-bookmark-check-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ sizeSchedule } suất</h6>                     
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">          
                <div class="card-body">
                  <h5 class="card-title">Phân loại người dùng <span>| Today</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                      
                        <th scope="col">Phân Quyền</th>
                        <th scope="col">Số Lượng (người)</th>
                       
                      </tr>
                    </thead>
                    <tbody>
                     
                      <tr>
                        <th scope="row"><a href="#">Quản Trị Viên</a></th>
                        <td>${ numberADMIN }</td>                 
                      </tr>
                      
                       <tr>
                        <th scope="row"><a href="#">Bệnh Nhân</a></th>
                        <td>${ numberPATIENT }</td>                 
                      </tr>
                      
                       <tr>
                        <th scope="row"><a href="#">Bác Sĩ</a></th>
                        <td>${ numberDOCTOR }</td>                 
                      </tr>
                      
                       <tr>
                        <th scope="row"><a href="#">Lễ Tân</a></th>
                        <td>${ numberRECEPTIONIST }</td>                 
                      </tr>
                    
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->

          </div>
        </div><!-- End Left side columns -->

      </div>
    </section>

  </main><!-- End #main -->
			<!-- ======= JS ======= -->
			<jsp:include page="../layout/jsLink.jsp" />
			
			<jsp:include page="../layout/footer.jsp" />
		</body>

		</html>