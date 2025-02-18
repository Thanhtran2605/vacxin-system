<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, 
                                    initial-scale=1.0" />
    <title>404 Error</title>
    <link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
        rel="stylesheet" />
    <style>
        body,
        html {
            height: 100%;
        }
    </style>
</head>

<body class="d-flex justify-content-center 
                align-items-center">
    <div class="col-md-12 text-center">
        <h1>404</h1>
        <h2>Không tìm thấy địa chỉ truy cập</h2>
        <p>
            Sorry, the page you are looking
            for does not exist.
        </p>
	 <button class="btn btn-primary" onclick="goBack()">Quay lại trang trước</button>
    </div>
     <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>

</html>
