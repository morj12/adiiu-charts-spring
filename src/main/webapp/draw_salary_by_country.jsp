<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let barchart;
    document.addEventListener('DOMContentLoaded', function () {
        barchart = Highcharts.chart('column-by-country', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Salaries comparison'
            },
            xAxis: {
                categories: ['Gross salary', 'Net salary'],
            },
            yAxis: {
                title: {
                    text: 'Country'
                }
            },
            series: [
                <c:forEach var="country" items="${countries}">
                <c:out value="{name: ` ${country.name} `, data: [ ${country.grossWage} , ${country.netWage} ]}," />
                </c:forEach>
    ]

    })

    });

</script>
