<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산책 추가</title>

</head>
<body>
<div>
<h1>산책 추가</h1>
	<form method="post" action="../take/add">
	<div>
		<input type="hidden" type="number" value="2" name="serviceSortId" >
	</div>		
	
	<div>
		<label>작성자</label>
		<input type="number" name="usrId">
	</div>	
		
	<div>
		<label>산책이 필요한 날짜</label><!-- 돌봄 -->
		<input type="Date" name="serviceStartDate">
	</div>
	<div>
		<label>산책시간</label>
		<select name="serviceWalkingTime">
		<option value="30분">30분</option>
		<option value="1시간">1시간</option>
		<option value="1시간 30분">1시간 30분</option>
		<option value="2시간">2시간</option>
		</select>
	</div>

	<div>
		<label>픽업가능여부</label><!-- 돌봄,산책 -->
		<input type="radio" name="servicePickup" value="1">픽업가능
		<input type="radio" name="servicePickup" value="2">픽업불가능
	</div>
	<div>
		<label>특이사항</label> <!-- 돌봄,산책 -->
		<input type="text" name="serviceEtc">
	</div>
	<div>
		<label>산책 가격</label>
		<input type="text" name="serviceWalkingPrice">
	</div>	
	
	
	<div>
		<input type="submit" value="등록">
	</div>
	
	</form>	
	</div>
	 
</body>
</html>