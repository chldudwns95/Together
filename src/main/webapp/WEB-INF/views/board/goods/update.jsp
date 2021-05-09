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
		<form method="post">
			<div>
				<label>상품번호:</label>
				<input type="number" name="goodsId" value="${item.goodsId}" readonly>				
			</div>
			
			<div >
				<label>사용자번호:</label>
				<input type="number" name="usrId" value="${item.usrId}">
			</div>
			
			<div >
				<label>상품명:</label>
				<input type="text" name="goodsName" value="${item.goodsName}">
			</div>
			
			<div >
				<label>사용게시일자:</label>
				<input type="Date" name="goodsDate" value="${item.goodsDate}" >
			</div>
			
			<div >
				<label>상품설명:</label>
				<input type="text" name="goodsContent" value="${item.goodsContent}" >
			</div>
			
			<div >
				<input type="submit" value="등록" >
			</div>			
		</form>			
	</div>

</body>
</html>