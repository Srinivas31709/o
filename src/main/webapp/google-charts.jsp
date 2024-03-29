<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html SYSTEM "http://www.thymeleaf.org/dtd/xhtml1-strict-thymeleaf-4.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Google Charts Example - Spring Boot</title>
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script type="text/javascript"
    src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
    <div align="center" style="width: 1000px;">
        <h2>Spring Boot Google Charts Example</h2>
        <div id="chart_div"></div>
        <div id="piechart" style="width: 900px; height: 500px;"></div>
    </div>
    <script th:inline="javascript">
        var real_data = /*[[${chartData}]]*/'noValue';
        $(document).ready(function() {
            google.charts.load('current', {
                packages : [ 'corechart', 'bar' ]
            });
            google.charts.setOnLoadCallback(drawColumnChart);
            google.charts.setOnLoadCallback(drawPieChart);
        });
        function drawColumnChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Year');
            data.addColumn('number', 'Views');
            Object.keys(real_data).forEach(function(key) {
                data.addRow([ key, real_data[key] ]);
            });
            var options = {
                title : 'Blog stats',
                hAxis : {
                    title : 'Years',
                },
                vAxis : {
                    title : 'View Count'
                }
            };
            var chart = new google.visualization.ColumnChart(document
                    .getElementById('chart_div'));
            chart.draw(data, options);
        }
        function drawPieChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Year');
            data.addColumn('number', 'Views');
            Object.keys(real_data).forEach(function(key) {
                data.addRow([ key, real_data[key] ]);
            });
            var options = {
                title : 'Blog stats'
            };
            var chart = new google.visualization.PieChart(document
                    .getElementById('piechart'));
            chart.draw(data, options);
        }
    </script>
</body>
</html>