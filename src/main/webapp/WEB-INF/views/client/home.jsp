<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8" />
      <title>Vacxin System</title>
      <!-- ======= JS ======= -->
     <jsp:include page="layout/cssLink.jsp" />
    </head>

    <body>
     <!-- ======= Header ======= -->
     <jsp:include page="layout/header.jsp" /> 
     <div class="container">
      <h1>Home</h1>
      <a class="btn btn-primary" href="/vacxin-system/login">Login</a>
      <a class="btn btn-primary" href="/vacxin-system/register">Register</a>
     </div>
     <!-- ======= JS ======= -->
     <jsp:include page="layout/jsLink.jsp" />
    </body>

    </html>