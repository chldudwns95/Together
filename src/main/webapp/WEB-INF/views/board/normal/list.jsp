<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
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
				<th>게시판번호</th>		
				<th>분류</th>		
				<th>제목</th>	
				<th>내용</th>			
				<th>날짜</th>				
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
					<td><a href="${item.boardId}/detail">${item.boardId}</a></td>				
					<td>${item.boardSort}</td>		
					<td>${item.boardTitle}</td>				
					<td>${item.boardContent}</td>
					<td>${item.boardDate}</td>										
					<td><a href="${item.boardId}/delete">삭제</a> <a href="${item.boardId}/update">변경</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<div><a href="add">등록</a> </div>
</body>
</html>