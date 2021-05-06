<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<table border="1">
		<thead>
			<tr>
				<th>상품번호</th>
				<th>사용자번호</th>
				<th>상품명</th>
				<th>상품게시일자</th>
				<th>상품설명</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${list.size() < 1}">
				<tr>
					<td colspan="5">등록 된 리스트가 없습니다</td>
				</tr>
			</c:if>
			<c:forEach var="item" items="${list}">
				<tr>
					<td><a href="${item.goodsId}/detail">${item.goodsId}</a></td>
					<td>${item.usrId}</td>
					<td>${item.goodsName}</td>
					<td>${item.goodsDate}</td>
					<td>${item.goodsContent}</td>
					<td><a href="${item.goodsId}/delete">삭제</a> <a href="${item.goodsId}/update">변경</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<div><a href="add">등록</a> </div>
</body>
</html>