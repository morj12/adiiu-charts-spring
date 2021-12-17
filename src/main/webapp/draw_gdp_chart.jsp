<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="iso-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let pieChart;
    document.addEventListener('DOMContentLoaded', function () {
        pieChart = Highcharts.chart('container', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45
                }
            },
            title: {
                text: 'GDP (nominal) comparison'
            },
            subtitle: {
                text: 'Source: Wikipedia'
            },
            plotOptions: {
                pie: {
                    innerSize: 100,
                    depth: 45
                }
            },
            series: [{
                name: 'GDP',
                data: [
                    <c:forEach var="country" items="${countries}">
                    <%="[`"%>
                    ${country.name}
                    <%="`,"%>
                    ${country.gdp}
                    <%="],"%>
                    </c:forEach>
                ]
            }]
        })
    })
</script>