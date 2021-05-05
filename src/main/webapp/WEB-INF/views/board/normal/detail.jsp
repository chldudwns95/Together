<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
					<th>사용자번호</th>
					<th>제목</th>
					<th>분류</th>
					<th>날짜</th>
					<th>내용</th>
					<th>수정일자</th>
					<th>완료여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${item.boardId}</td>
					<td>${item.usrId}</td>
					<td>${item.boardTitle}</td>
					<td>${item.boardSort}</td>
					<td>${item.boardDate}</td>
					<td>${item.boardContent}</td>
					<td>${item.boardUpdate}</td>
					<td>${item.boardIng}</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>