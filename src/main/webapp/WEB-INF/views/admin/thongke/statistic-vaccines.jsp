<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Patient Statistic By Age And Gender</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <!-- ======= CSS ======= -->
    <jsp:include page="../layout/cssLink.jsp" />
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
    <style>
    	.form-inline {
		    display: flex;
		    align-items: center;
		}
		
		.form-inline .form-group {
		    margin-right: 10px;
		    width:70%;
		    padding:20px;
		}
    		
    </style>
</head>

<body>
    <!-- ======= Header ======= -->
    <jsp:include page="../layout/header.jsp" />

    <!-- ======= SideBar ======= -->
    <jsp:include page="../layout/sidebar.jsp" />

    <main id="main" class="main">
        <section class="section">
            <div class="row">
                <div class="card" style="overflow-x:auto;">
                    <div class="card-body">
                        <div class="container">
                            <div class="pagetitle" style="padding: 30px;">
                                <h1>Thống kê số lượng bệnh nhân theo loại Vaccine</h1>
                            </div>
                    
                            <!-- Table to display the statistics -->
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Vaccine Name</th>
                                        <th>Number of Patients</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="entry" items="${vaccineStats}">
                                        <tr>
                                            <td>${entry.key}</td>
                                            <td>${entry.value}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                    
                            <!-- Chart to display the statistics -->
                            <div class="chart-container">
                                <canvas id="vaccineChart"></canvas>
                            </div>
                        </div>
                    </div>
            	</div>
            </div>
            
            
            <div class="row">
            	 <div class="card" style="overflow-x:auto;">
                        <div class="card-body">
                            <div class="container">
                                <div class="pagetitle" style="padding: 30px;">
                                    <h1>Thống kê số lượng tiêm chủng theo địa điểm</h1>
                                </div>
                    
                                <!-- Table to display the statistics -->
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Location Name</th>
                                            <th>Number of Vaccinations</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="entry" items="${locationStats}">
                                            <tr>
                                                <td>${entry.key}</td>
                                                <td>${entry.value}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                    
                                <!-- Chart to display the statistics -->
                                <div class="chart-container" id="locationChart-container" style="width: 80%">
                                    <canvas id="locationChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="row">
                <div class="card" style="overflow-x:auto;">
                    <div class="card-body">
                        <div class="container">
                            <div class="pagetitle" style="padding: 30px;">
                                <h1>Thống kê tỷ lệ tiêm chủng bệnh nhân đã tiêm theo nhóm tuổi</h1>
                            </div>
                    
                            <form action="/vacxin-system/admin/statistic/statistic-by-vaccine" method="get" class="form-inline">
							    <div class="form-group">
							        <select id="vaccineId" name="vaccineId" class="form-control">
							            <option value="" disabled selected>-- Chọn vaccine --</option>
							            <c:forEach var="vaccine" items="${vaccines}">
							                <option value="${vaccine.id}">${vaccine.name}</option>
							            </c:forEach>
							        </select>
							    </div>
							    <button type="submit" class="btn btn-primary">Thống kê</button>
							</form>

                            
                            <!-- Biểu đồ -->
			                <div class="chart-container">
			                    <canvas id="ageGroupChart"></canvas>
			                </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- ======= JS ======= -->
    <jsp:include page="../layout/jsLink.jsp" />
    
    <jsp:include page="../layout/footer.jsp" />

    <script>
		 // Chart for Vaccine Statistics
		    const vaccineCtx = document.getElementById('vaccineChart').getContext('2d');
		    const vaccineData = {
		        labels: [<c:forEach var="entry" items="${vaccineStats}" varStatus="status">
		                    "<c:out value="${entry.key}" />"<c:if test="${status.index < fn:length(vaccineStats) - 1}">,</c:if>
		                </c:forEach>],
		        datasets: [{
		            label: 'Number of Patients',
		            data: [<c:forEach var="entry" items="${vaccineStats}" varStatus="status">
		                    "${entry.value}"<c:if test="${status.index < fn:length(vaccineStats) - 1}">,</c:if>
		                </c:forEach>],
		            backgroundColor: 'rgba(75, 192, 192, 0.2)',
		            borderColor: 'rgba(75, 192, 192, 1)',
		            borderWidth: 1
		        }]
		    };
		
		    const vaccineChart = new Chart(vaccineCtx, {
		        type: 'bar',
		        data: vaccineData,
		        options: {
		            plugins: {
		                legend: {
		                    display: false // Ẩn chú thích màu sắc
		                }
		            },
		            scales: {
		                x: {
		                    beginAtZero: true,
		                    title: {
		                        display: true,
		                        text: 'Vaccine Name' // Tên trục x
		                    }
		                },
		                y: {
		                    beginAtZero: true,
		                    title: {
		                        display: true,
		                        text: 'Number of Patients' // Tên trục y
		                    }
		                }
		            }
		        }
		    });

        // Chart for Location Statistics
        const locationCtx = document.getElementById('locationChart').getContext('2d');
        const locationData = {
            labels: [<c:forEach var="entry" items="${locationStats}" varStatus="status">
                        "<c:out value="${entry.key}" />"<c:if test="${status.index < fn:length(locationStats) - 1}">,</c:if>
                    </c:forEach>],
            datasets: [{
                label: 'Number of Vaccinations',
                data: [<c:forEach var="entry" items="${locationStats}" varStatus="status">
                        "${entry.value}"<c:if test="${status.index < fn:length(locationStats) - 1}">,</c:if>
                    </c:forEach>],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        };

        const locationChart = new Chart(locationCtx, {
            type: 'pie',
            data: locationData,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'left', // Align legend to the left
                        labels: {
                            boxWidth: 20, // Adjust box width as needed
                            padding: 20
                        }
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw + ' tiêm chủng';
                            }
                        }
                    }
                }
            }
        });
        
        
        // Biểu đồ thống kê theo nhóm tuổi
        const ageGroupCtx = document.getElementById('ageGroupChart').getContext('2d');
        const ageGroups = ['0-9', '10-19', '20-29', '30-39', '40-49', '50-59', '60+']; // All possible age groups

        // Create a map for fast lookup
        const ageGroupMap = {};
        <c:forEach var="entry" items="${statistics}">
            ageGroupMap['${entry.age_group}'] = ${entry.patient_count};
        </c:forEach>

        // Prepare data
        const ageGroupData = {
            labels: ageGroups,
            datasets: [{
                label: 'Number of Patients',
                data: ageGroups.map(group => ageGroupMap[group] || 0), 
                backgroundColor: 'rgba(153, 102, 255, 0.2)',
                borderColor: 'rgba(153, 102, 255, 1)',
                borderWidth: 1
            }]
        };

        const ageGroupChart = new Chart(ageGroupCtx, {
            type: 'bar',
            data: ageGroupData,
            options: {
                plugins: {
                    legend: {
                        display: false 
                    }
                },
                scales: {
                    x: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: 'Age Group' 
                        }
                    },
                    y: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: 'Number of Patients'
                        }
                    }
                }
            }
        });
        
        
    </script>
</body>

</html>
