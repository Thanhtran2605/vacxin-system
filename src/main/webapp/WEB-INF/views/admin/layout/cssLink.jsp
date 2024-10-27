<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <style type="text/css">
.search-form {
	width: 100%;
}

.search-form input {
	border: 0;
	font-size: 14px;
	color: #012970;
	border: 1px solid rgba(1, 41, 112, 0.2);
	padding: 7px 38px 7px 8px;
	border-radius: 3px;
	transition: 0.3s;
	width: 100%;
}

.search-form input:focus, .search-form input:hover {
	outline: none;
	box-shadow: 0 0 10px 0 rgba(1, 41, 112, 0.15);
	border: 1px solid rgba(1, 41, 112, 0.3);
}

 .shorten-text {
        text-align: left; /* Align text to the left for specific columns */
        white-space: nowrap; /* Prevent text from wrapping */
        overflow: hidden;
        text-overflow: ellipsis; /* Add ellipsis (...) for overflowed text */
        max-width: 150px; /* Set a maximum width */
    }
</style>
  
  <!-- Favicons -->
  <link rel="icon" href="<c:url value="/resources/images/logo2.png" />" />

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link rel="stylesheet" href="<c:url value="/resources/admin/vendor/bootstrap/css/bootstrap.min.css" />" />
  <link rel="stylesheet" href="<c:url value="/resources/admin/vendor/bootstrap-icons/bootstrap-icons.css" />" />

  <!-- Template Main CSS File -->
  <link rel="stylesheet" href="<c:url value="/resources/admin/css/style.css" />" >