<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/resources/images/logo.png' />" />

  <!-- Libs CSS -->
  <link href="<c:url value='/resources/assets/libs/bootstrap-icons/font/bootstrap-icons.css' />" rel="stylesheet" />
  <link href="<c:url value='/resources/assets/libs/feather-webfont/dist/feather-icons.css' />" rel="stylesheet" />
  <link href="<c:url value='/resources/assets/libs/slick-carousel/slick/slick.css' />" rel="stylesheet" />
  <link href="<c:url value='/resources/assets/libs/slick-carousel/slick/slick-theme.css' />" rel="stylesheet" />
  <link href="<c:url value='/resources/assets/libs/simplebar/dist/simplebar.min.css' />" rel="stylesheet" />
  <link href="<c:url value='/resources/assets/libs/nouislider/dist/nouislider.min.css' />" rel="stylesheet" />
  <link href="<c:url value='/resources/assets/libs/tiny-slider/dist/tiny-slider.css' />" rel="stylesheet" />
  <link href="<c:url value='/resources/assets/libs/dropzone/dist/min/dropzone.min.css' />" rel="stylesheet" />
  <link href="<c:url value='/resources/assets/libs/prismjs/themes/prism-okaidia.min.css' />" rel="stylesheet" />
  
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


<!-- Theme CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/theme.min.css' />" />


<style>
::-webkit-scrollbar {
	width: 0px;
}

body {
	overflow-x: hidden;
}

#sidebar {
	overflow-y: auto;
	/* Ensure vertical scrolling is enabled if content exceeds height */
	scrollbar-width: none; /* Hide scrollbar for Firefox */
	-ms-overflow-style: none; /* Hide scrollbar for IE/Edge */
}

.shorten-text {
	text-align: left; /* Align text to the left for specific columns */
	white-space: nowrap; /* Prevent text from wrapping */
	overflow: hidden;
	text-overflow: ellipsis; /* Add ellipsis (...) for overflowed text */
	max-width: 150px; /* Set a maximum width */
}
</style>