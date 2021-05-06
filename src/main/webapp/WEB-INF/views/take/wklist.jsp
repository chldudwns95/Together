<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산책목록</title>
</head>
<body>

	<div>
		<a href="list">돌봄</a> <a href="wklist">산책</a>
	</div>

	<a href="wkadd">등록</a>

	<div>
		<table border="1">
			<thead>
				<tr>
					<th>작성자</th>
					<th>산책필요한 날짜</th>					
					<th>산책시간</th>
					<th>픽업 여부</th>			
					<th>특이사항</th>
					<th>가격</th>
					<th>관리</th>		
				</tr>				
			</thead>
			
			<c:forEach var="item" items="${list}">
			<c:if test="${item.serviceSortId == 2}">					
				<tr>					
					<td>${item.usrId}</td>
					<td>${item.serviceStartDate}</td>					
					<td>${item.serviceWalkingTime}</td>
					<td>${item.servicePickup}</td>
					<td>${item.serviceEtc}</td>				
					<td>${item.serviceWalkingPrice}</td>
					<td><a href="${item.serviceId}/wkupdate">변경</a><a href="${item.serviceId}/delete">삭제</a></td>
				</tr>			
				</c:if>
			</c:forEach>	
		</table>
	</div>
</body>
</html>