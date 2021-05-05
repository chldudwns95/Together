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
					<th>상품번호</th>
					<th>사용자번호</th>
					<th>상품명</th>
					<th>상품게시일자</th>
					<th>상품설명</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${item.goodsId}</td>
					<td>${item.usrId}</td>
					<td>${item.goodsName}</td>
					<td>${item.goodsDate}</td>
					<td>${item.goodsContent}</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>