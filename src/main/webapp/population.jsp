<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="template/head.jsp"></jsp:include>
    <script src="https://code.highcharts.com/maps/highmaps.js"></script>
    <script src="https://code.highcharts.com/maps/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/mapdata/custom/europe.js"></script>
    <script src="resources/js/population_map.js"></script>
    <title>Population map</title>
</head>
<body>
<div class="container py-3">
    <jsp:include page="template/nav.jsp"></jsp:include>
    <!--    start page content  -->

    <div class="container py-3" id="container"></div>
    <div>
        <h3 class="text-center">Chart description</h3>
        <p>This map allows us to see the population of each of our countries. The most populated countries are
            Germany, France and Spain, and the least populated are Slovenia, Estonia and Iceland. </p>
        <h5>Data source</h5>
        <p>The data was fetched from REST Countries api:</p>
        <a href="https://restcountries.com/">REST Countries</a>
    </div>

    <!--    end page content    -->
    <jsp:include page="template/footer.jsp"></jsp:include>
</div>
</body>
</html>
