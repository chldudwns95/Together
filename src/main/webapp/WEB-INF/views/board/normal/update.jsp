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
						
			<div >
				<label>게시판번호:</label>
				<input type="number" name="boardId" value="${item.boardId}" readonly>
			</div>
			
			<div >
				<label>사용자번호:</label>
				<input type="number" name="usrId" value="${item.usrId}" readonly>
			</div>
			
			<div >
				<label>게시글제목:</label>
				<input type="text" name="boardTitle" value="${item.boardTitle}">
			</div>
			
			<div >
				<label>게시글분류:</label>
				<select name="boardSort" value="${item.boardSort}" >
					<option value=1>유기견정보</option>
					<option value=2>강아지정보</option>
				</select>						
			</div>
			
			<div >
				<label>게시일자:</label>
				<input type="Date" name="boardDate" value="${item.boardDate}">
			</div>
			
			<div >
				<label>게시글내용:</label>
				<input type="text" name="boardContent" value="${item.boardContent}">
			</div>
			
			<div >
				<label>수정일자:</label>
				<input type="Date" name="boardUpdate" value="${item.boardUpdate }" >
			</div>
			
			<div >
				<label>완료여부:</label>
				<select name="boardIng" value="${item.boardIng}" >
					<option value=1>완료</option>
					<option value=2>진행중</option>
				</select>						
			</div>
			<div >
				<input type="submit" value="등록" >
			</div>			
		</form>			
	</div>
</body>
</html>