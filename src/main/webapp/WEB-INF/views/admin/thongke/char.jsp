<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Vaccination Statistics</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
</head>
<body>
    <div class="container mt-4">
        <h1>Vaccination Statistics</h1>
        <canvas id="vaccinationChart"></canvas>
        <table class="table table-striped mt-4">
            <thead>
                <tr>
                    <th>Location</th>
                    <th>Total Vaccinations</th>
                </tr>
            </thead>
            <tbody>
                <tr th:each="stat : ${vaccinationStats}">
                    <td th:text="${stat.locationName}">Location</td>
                    <td th:text="${stat.totalVaccinations}">Total Vaccinations</td>
                </tr>
            </tbody>
        </table>
    </div>

    <script>
    var vaccinationStats = /*[[${vaccinationStats}]]*/;
    var labels = vaccinationStats.map(stat => stat.locationName);
    var data = vaccinationStats.map(stat => stat.totalVaccinations);

    var ctx = document.getElementById('vaccinationChart').getContext('2d');
    var vaccinationChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Total Vaccinations',
                data: data,
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                x: {
                    beginAtZero: true
                }
            }
        }
    });
</script>

</body>
</html>
