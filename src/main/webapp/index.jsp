<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="template/head.jsp"></jsp:include>
    <title>Home</title>
</head>
<body>
<div class="container py-3">
    <jsp:include page="template/nav.jsp"></jsp:include>
    <!--    start page content  -->

    <div class="container my-4 text-center">
        <h2>Countries comparison</h2>
    </div>
    <div class="container my-4 text-center">
        <p>This web application allows us to see some characteristics of some European
            countries. There are twelve countries: </p>

        <div class="container">
            <jsp:include page="countries.jsp"></jsp:include>
        </div>

    </div>

    <!--    end page content    -->
    <jsp:include page="template/footer.jsp"></jsp:include>
</div>
</body>
</html>