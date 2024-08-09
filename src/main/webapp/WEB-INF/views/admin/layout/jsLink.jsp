<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="<c:url value="/resources/admin/vendor/apexcharts/apexcharts.min.js" />"></script>
  <script src="<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <script src="<c:url value="/resources/admin/vendor/chart.js/chart.umd.js" />"></script>
  <script src="<c:url value="/resources/admin/vendor/echarts/echarts.min.js" />"></script>
  <script src="<c:url value="/resources/admin/vendor/quill/quill.min.js" />"></script>
  <script src="<c:url value="/resources/admin/vendor/simple-datatables/simple-datatables.js" />"></script>
  <script src="<c:url value="/resources/admin/vendor/tinymce/tinymce.min.js" />"></script>
  <script src="<c:url value="/resources/admin/vendor/php-email-form/validate.js" />"></script>
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
  

  <!-- Template Main JS File -->
  <script src="<c:url value="/resources/admin/js/main.js" />"></script>
  <script>
  document.addEventListener("DOMContentLoaded", function() {
	    const shortenElements = document.querySelectorAll('.shorten-text');
	    const maxLength = 50; // Maximum length of characters before truncation

	    shortenElements.forEach(function(element) {
	        let originalText = element.textContent;
	        if (originalText.length > maxLength) {
	            element.textContent = originalText.substring(0, maxLength) + '...';
	        }
	    });
	});
  </script>