<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Patient Statistic By Age And Gender</title>
<meta content="" name="description">
<meta content="" name="keywords">

<style type="text/css">
#dateForm {
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 0 auto;
	margin: 20px 0;
	padding: 15px;
	background-color: #fff;
	width: 100%;
	max-width: 100%;
}

#dateForm label {
	margin-right: 15px;
	font-weight: bold;
}

#dateForm input[type="date"] {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	width: auto;
	min-width: 500px;
	margin-right: 15px;
}

#dateForm button {
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	background-color: #007bff;
	color: white;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

#dateForm button:hover {
	background-color: #0056b3;
}
</style>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>

<!-- ======= CSS ======= -->
<jsp:include page="../layout/cssLink.jsp" />

<!-- ======= SideBar ======= -->
<jsp:include page="../layout/sidebar.jsp" />

</head>
<body>

	<!-- ======= Header ======= -->
	<jsp:include page="../layout/header.jsp" />

	<!-- ======= SideBar ======= -->
	<jsp:include page="../layout/sidebar.jsp" />

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Thống kê lịch tiêm chủng</h1>
		</div>

		<section class="section">
			<div class="row">
				<div class="card">
					<div class="card-body">
						<div class="form-container">
							<h5 class="card-title">
								<span> Thống kê số lượng </span> lịch tiêm chủng
							</h5>
						</div>
						<form id="dateForm"
							action="${pageContext.request.contextPath}/admin/api/statistic/by-date"
							method="get">
							<label for="date">Ngày:</label> <input type="date" id="date"
								name="date" required>
							<button type="submit">Xem thống kê</button>
						</form>

						<c:if
							test="${not empty labelsDay || not empty labelsMonth || not empty labelsYear}">
							<div id="chartsContainer">
								<!-- Card for day -->
								<%-- <c:if test="${not empty labelsDay}"> --%>

								<!-- Customers Card -->

								<section class="section dashboard">
									<div class="row">

										<!-- Left side columns -->
										<div class="col-lg-12">
											<div class="row">
												<div class="col-xxl-12 col-xl-12">
													<div class="card info-card customers-card">
														<div class="card-body">
															<h5 class="card-title">
																<span> Thống kê </span> theo ngày
															</h5>
															<div class="d-flex align-items-center">
																<div
																	class="card-icon rounded-circle d-flex align-items-center justify-content-center">
																	<i class="bi bi-people"></i>
																</div>
																<div class="ps-3">
																	<h6>Số lượng - ${countsDay[0] != null ? countsDay[0] : 0}</h6>
																	Ngày : <span class="text-danger small pt-1 fw-bold">${selectedDate}</span>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
								<%-- </c:if> --%>

								<!-- Table for month -->
								<%-- <c:if test="${not empty labelsMonth}"> --%>
								<h5 class="card-title">
									<span> Thống kê </span> theo tháng
								</h5>
								<%-- <table>
											<thead>
												<tr>
													<th>Ngày</th>
													<th>Số lượng</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${labelsMonth}"
													varStatus="status">
													<tr>
														<td>${item}</td>
														<td>${countsMonth[status.index]}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table> --%>
								<canvas id="chartMonth"></canvas>
								<%-- </c:if> --%>

								<!-- Chart for year -->
								<%-- <c:if test="${not empty labelsYear}"> --%>
								<div class="card">
									<div class="card-body">
										<h5 class="card-title">
											<span> Thống kê </span> theo năm
										</h5>
										<canvas id="chartYear"></canvas>
									</div>
								</div>
								<%-- </c:if> --%>

								<!-- Chart for status -->
								<div
									style="display: flex; justify-content: center; align-items: center; height: 100vh;">
									<div style="width: 50%">
										<h5 class="card-title">
											<span> Thống kê tỷ lệ các </span> trạng thái
										</h5>
										<canvas id="statusChart"></canvas>
									</div>
								</div>

								<script>
                                    $(document).ready(function() {
                                        var labelsDay = ${labelsDay};
                                        var countsDay = ${countsDay};

                                        var labelsMonth = ${labelsMonth};
                                        var countsMonth = ${countsMonth};

                                        var labelsYear = ${labelsYear};
                                        var countsYear = ${countsYear};

                                     // Chart for month
                                       /*  if (labelsMonth.length > 0) { */
                                            new Chart(document.getElementById('chartMonth').getContext('2d'), {
                                                type: 'bar',
                                                data: {
                                                    labels: labelsMonth,
                                                    datasets: [{
                                                        label: 'Số lượng theo ngày trong tháng',
                                                        data: countsMonth,
                                                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                                        borderColor: 'rgba(75, 192, 192, 1)',
                                                        borderWidth: 1
                                                    },
                                                    {
                                                        label: 'Số lượng tiêm chủng (Đường)',
                                                        data: countsMonth,
                                                        type: 'line',
                                                        borderColor: 'rgba(255, 99, 132, 1)',
                                                        backgroundColor: 'rgba(255, 99, 132, 0.2)',
                                                        borderWidth: 2,
                                                        fill: false,
                                                        tension: 0.3 
                                                    }]
                                                },
                                                options: {
                                                    responsive: true,
                                                    scales: {
                                                        x: {
                                                            beginAtZero: true,
                                                            title: {
                                                                display: true,
                                                                text: 'Ngày trong tháng'
                                                            }
                                                        },
                                                        y: {
                                                            beginAtZero: true,
                                                            title: {
                                                                display: true,
                                                                text: 'Số lượng'
                                                            },
                                                            ticks: {
                                                                stepSize: 1 
                                                            }
                                                        }
                                                    }
                                                }
                                            });
                                        /* } */

                                     // Chart for year
                                        /* if (labelsYear.length > 0) { */
                                            new Chart(document.getElementById('chartYear').getContext('2d'), {
                                                type: 'bar',
                                                data: {
                                                    labels: labelsYear,
                                                    datasets: [{
                                                        label: 'Số lượng theo tháng trong năm',
                                                        data: countsYear,
                                                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                                        borderColor: 'rgba(75, 192, 192, 1)',
                                                        borderWidth: 1
                                                    },
                                                    {
                                                        label: 'Số lượng tháng (Đường)',
                                                        data: countsYear,  
                                                        type: 'line',
                                                        borderColor: 'rgba(255, 205, 86, 1)',  
                                                        backgroundColor: 'rgba(255, 205, 86, 0.2)',  
                                                        borderWidth: 2,
                                                        fill: false,
                                                        tension: 0.3
                                                    }]
                                                },
                                                options: {
                                                    responsive: true,
                                                    scales: {
                                                        x: {
                                                            beginAtZero: true,
                                                            title: {
                                                                display: true,
                                                                text: 'Tháng'
                                                            }
                                                        },
                                                        y: {
                                                            beginAtZero: true,
                                                            title: {
                                                                display: true,
                                                                text: 'Số lượng'
                                                            }
                                                        }
                                                    }
                                                }
                                            });
                                        /* } */
                                     
                                     	// Chart for status
                                        var statusLabels = JSON.parse('${statusLabels}');
                                        var statusPercentages = JSON.parse('${statusPercentages}');

                                        if (statusLabels && statusPercentages) {
                                            new Chart(document.getElementById('statusChart').getContext('2d'), {
                                                type: 'pie',
                                                data: {
                                                    labels: statusLabels,
                                                    datasets: [{
                                                        data: statusPercentages,
                                                        backgroundColor: ['#36a2eb', '#ff6384', '#ffce56', '#4bc0c0']
                                                    }]
                                                },
                                                options: {
                                                    responsive: true,
                                                    plugins: {
                                                        legend: {
                                                            position: 'top',
                                                        },
                                                        tooltip: {
                                                            callbacks: {
                                                                label: function(tooltipItem) {
                                                                    var label = tooltipItem.label || '';
                                                                    if (label) {
                                                                        label += ': ';
                                                                    }
                                                                    label += tooltipItem.raw.toFixed(2) + '%'; 
                                                                    return label;
                                                                }
                                                            }
                                                        },
                                                        datalabels: {
                                                            display: true,
                                                            color: '#fff',
                                                            formatter: (value) => {
                                                                return value.toFixed(2) + '%';
                                                            }
                                                        }
                                                    }
                                                },
                                                plugins: [ChartDataLabels] 
                                            });
                                        }

                                    });
                                    </script>
							</div>
						</c:if>
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
