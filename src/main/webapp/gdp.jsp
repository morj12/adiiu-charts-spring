<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="template/head.jsp"></jsp:include>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/maps/modules/exporting.js"></script>
    <title>Salary chart</title>
</head>
<body>
<div class="container py-3">
    <jsp:include page="template/nav.jsp"></jsp:include>
    <!--    start page content  -->
<%--    <jsp:include page="draw_salary_by_country.jsp"></jsp:include>--%>
<%--    <jsp:include page="draw_salary_by_type.jsp"></jsp:include>--%>
    <jsp:include page="draw_gdp_chart.jsp"></jsp:include>
    <div class="my-3" id="container"></div>
    <div class="row">
        <div id="column-by-country" class="col-6"></div>
        <div id="column-by-salary-type" class="col-6"></div>
    </div>
    <div>
        <h3 class="text-center">Chart description</h3>
        <p>In these charts we can see gross and net wage of some European countries. The first chart allows us
            to compare between countries meanwhile the second one allows us to compare between types of wage.
            We see that the best countries in these are Denmark and Switzerland and the worst ones are
            Croatia and Spain. In and Belgium there is the biggest difference between gross and net salaries,
            because taxes there are extremely high.</p>
    </div>

    <!--    end page content    -->
    <jsp:include page="template/footer.jsp"></jsp:include>
</div>
</body>
</html>
