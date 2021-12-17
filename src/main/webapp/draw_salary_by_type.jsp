<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let chart;
    document.addEventListener('DOMContentLoaded', function () {
        chart = Highcharts.chart('column-by-salary-type', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Salaries comparison'
            },
            subtitle: {
                text: 'Source: Wikipedia'
            },
            xAxis: {
                categories: [
                    <c:forEach var="country" items="${countries}">
                    <c:out value="` ${country.name} `,"/>
                    </c:forEach>
                ]
            },
            yAxis: {
                title: {
                    text: 'Country'
                }
            },
            series: [{
                name: 'Gross salary',
                data: [
                    <c:forEach var="country" items="${countries}">
                    <c:out value="${country.grossWage}," />
                    </c:forEach>
                ]
            },
                {
                    name: 'Net salary',
                    data: [
                        <c:forEach var="country" items="${countries}">
                        <c:out value="${country.netWage}," />
                        </c:forEach>
                    ]
                }
            ]
        })
    });
</script>
