<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>향후 24시간 온도</h2>
	<h3 class = "temp">24시간 평균 온도 : </h3>
	<h3></h3>
	<table border="1" width="300">
		<thead>
			<tr>
				<td>시간</td>
				<td>온도</td>
				
			</tr>
		</thead>
		<tbody>
		
		</tbody>
	</table>
	<h4></h4>
	 <input type="button" value="뒤로가기" onclick="history.back(-1);">

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script>
		$.getJSON('https://api.openweathermap.org/data/2.5/onecall?lat=37.5683&lon=126.9778&appid=0d074b68d217cdae24bb1815d7bc94ae&units=metric',
						function(result) {
							var avg = 0;
							for (var i = 1; i < 25; i++) {

								var ctime = result.hourly[i].dt;
								var ctemp = result.hourly[i].temp;
																
								function convertTime(t) {
									var time = new Date(t * 1000);
									var year = time.getFullYear();
									var month = time.getMonth() + 1;
									var dt = time.getDate();
									var h = time.getHours();

									return year +'년'+month + '월' +dt + '일' + h + '시';
								}
								var currentTime = convertTime(ctime);
								var tableHtml = '<tr>' + '<td>' + currentTime
										+ '</td>' + '<td>' + ctemp + '</td>'
										+ '</tr>';
								$('tbody').append(tableHtml);
								
								
							}
						
						});
	</script>
</body>
</html>

