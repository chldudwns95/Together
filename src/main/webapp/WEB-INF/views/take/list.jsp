<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌봄목록</title>
</head>
<body>
	<div>
		<a href="list">돌봄</a> <a href="wklist">산책</a>
	</div>
	<a href="add">등록</a>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>작성자</th>
					<th>시작일</th>
					<th>종료일</th>
					<th>주택종류</th>
					<th>주택크기</th>
					<th>마당유무</th>
					<th>픽업 가능</th>
					<th>특이사항</th>
					<th>가격</th>		
					<th>관리</th>
				</tr>				
			</thead>
			
			<c:forEach var="item" items="${list}">	
			<c:if test="${item.serviceSortId ==1 }">
				<tr>					
					<td>${item.usrId}</td>
					<td>${item.serviceStartDate}</td>
					<td>${item.serviceEndDate}</td>
					<td>${item.serviceHouseSort}</td>
					<td>${item.serviceHouseSize}</td>
					<td>${item.serviceHouseYard}</td>
					<td>${item.servicePickup}</td>
					<td>${item.serviceEtc}</td>
					<td>${item.serviceSittingPrice}</td>
					<td><a href="${item.serviceId}/update">변경</a><a href="${item.serviceId}/delete">삭제</a></td>
				</tr>		
				</c:if>
			</c:forEach>	
		</table>
	</div>
</body>
</html>