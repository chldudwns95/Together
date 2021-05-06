<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌봄 수정</title>

</head>
<body>
<div>
<h1>돌봄수정</h1>
	<form method="post"> <!-- action="../update" -->
	<div>
		<input type="hidden" type="number" value="1" name="serviceSortId" >
	</div>		
	
	<%-- <div>
		<label>작성자</label>
		<input type="number" name="usrId" readonly value="${item.usrId}">
	</div>		 --%>

	<div>
		<label>시작일</label><!-- 돌봄 -->
		<input type="Date" name="serviceStartDate" value="${item.serviceStartDate}">
	</div>
	
	<div>
		<label>종료일</label><!-- 돌봄 -->
		<input type="Date" name="ServiceEndDate" value="${item.serviceEndDate}">
	</div>
	
	<div>
		<label>주택종류</label><!-- 돌봄 -->
		<select name="serviceHouseSort" value="${item.serviceHouseSort}">
			<option value="아파트">아파트</option>
			<option value="빌라">빌라</option>
			<option value="단독주택">단독주택</option>
			<option value="다가구주택">다가구주택</option>
		</select>
	</div>
	<div>
		<label>주택크기</label><!-- 돌봄 -->
		<select name="serviceHouseSize" value="${item.serviceHouseSize}">
			<option value="10평 이하">10평이하</option>
			<option value="10평 ~ 20평">11평~19평</option>
			<option value="20평 ~ 30평">20평~29평</option>
			<option value="30평 ~ 40평">30평~39평</option>
			<option value="40평 이상">40평이상</option>
		</select>
	</div>
	<div>
		<label>마당유무</label><!-- 돌봄 -->
		<input type="radio" name="serviceHouseYard" value="1">마당있음
		<input type="radio" name="serviceHouseYard" value="2">마당없음
	</div>
	
	<div>
		<label>픽업가능여부</label><!-- 돌봄,산책 -->
		<input type="radio" name="servicePickup" value="1">픽업가능
		<input type="radio" name="servicePickup" value="2">픽업불가능
	</div>
	<div>
		<label>특이사항</label> <!-- 돌봄,산책 -->
		<input type="text" name="serviceEtc" value="${item.serviceEtc}">
	</div>
	<div>
		<label>가격</label>
		<input type="text" name="serviceSittingPrice" value="${item.serviceSittingPrice }">
	</div>
	<div>
		<input type="submit" value="등록">
	</div>
	
	</form>	
	</div>
	 
</body>
</html>