<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="template/head.jsp"></jsp:include>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/maps/modules/exporting.js"></script>
    <title>GDP chart</title>
</head>
<body>
<div class="container py-3">
    <jsp:include page="template/nav.jsp"></jsp:include>
    <!--    start page content  -->
    <jsp:include page="draw_gdp_chart.jsp"></jsp:include>

    <div class="my-3" id="container"></div>
    <div>
        <h3 class="text-center">Chart description</h3>
        <p>In this chart we can see the Gross domestic product of each of our countries. This indicator is the
            market value of all final good and services from a nation in 2021. We can see that there are two
            countries which GDP is much bigger than others' (Germany and France). This means that
            these two countries produce more goods. Also, we see that Croatia, Iceland, Slovenia and Estonia have very low
            GDPs. That's because these countries use imported goods from other countries. </p>
    </div>

    <!--    end page content    -->
    <jsp:include page="template/footer.jsp"></jsp:include>
</div>
</body>
</html>