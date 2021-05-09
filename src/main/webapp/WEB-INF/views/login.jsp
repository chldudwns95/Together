<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
		<div>
			<form action="login" method="post">
				<div>
					<label>이메일:</label>
					<input type="email" name="usrEmail">
				</div>
				<div>
					<label>비밀번호</label>
					<input type="password" name="usrPassword">
				</div>
				<input type="submit" value="login">
			</form>
		</div>
</body>
</html>