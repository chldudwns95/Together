<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<script>

	function checkNick(){
		const form = document.getElementById("form")

		const xhr = new XMLHttpRequest();
		xhr.open("GET","checkNick?id=" + form.usrNickname.value, true);
		
		xhr.onreadystatechange = function() { 	//xhr상태 변경되면 할일			
			if(xhr.readyState == XMLHttpRequest.DONE){ //readystate ==done 요청이 완료되면 할일				
				if(xhr.status == 200){ //성공					
					const result = xhr.responseText;
					if(result == "OK"){
						alert("사용 가능한 닉네임 입니다.");
						form.checkNick.value = form.usrNickname.value;
					} else
						alert("사용 불가능한 닉네임 입니다.");
				}
			}
		};

		xhr.send();
	}
	function checkID(){
		const form = document.getElementById("form");
		const xhr = new XMLHttpRequest();

		xhr.open("GET", "checkID?id=" + form.usrEmail.value, true);
		//언제올지 모르기 떄문에 오기전에 일을 시킨다 open send 사이

		xhr.onreadystatechange = function() { 	//xhr상태 변경되면 할일			
			if(xhr.readyState == XMLHttpRequest.DONE){ //readystate ==done 요청이 완료되면 할일				
				if(xhr.status == 200){ //성공					
					const result = xhr.responseText;
					if(result == "OK"){
						alert("사용 가능한 이메일 입니다.");
						form.checkID.value = form.usrEmail.value;
					} else
						alert("사용 불가능한 이메일 입니다.");
				}
			}
		};

		xhr.send();
	}

	
	
	function submit(){	//valudatation 검증
		// alert("submit()")
		
		let form = document.getElementById("form");
		
		//alert(signup.usrEmail.value);
		if(form.checkID.value ==""){
			alert("이메일 중복확인을 하셔야합니다")
		}
		
		//email 인증도 하셔야합니다.
		
		if(form.usrEmail.value == ""){			
			alert("이메일을 입력해주세요")
			form.usrEmail.focus();
			return;
		}
		if(form.usrPassword.value == ""){			
			alert("비밀번호를 입력해주세요")
			form.usrPassword.focus();
			return;
		}
		if(form.usrPassword.value.length < 4){
			alert("비밀번호의 길이는 4글자 이상으로 하셔야 합니다")
			form.usrPassword.focus();
			return;
		}
		if(form.usrNickname.value == ""){
			alert("닉네임을 입력해주세요")
			form.usrNickname.focus();
			return;
		if(form.checkNick.value ==""){
			alert("닉네임 중복확인을 하셔야합니다")
			}
			
		}
		if(form.usrName.value == ""){
			alert("이름을 입력해주세요")
			form.usrName.focus();
			return;
		}
		if(form.usrTell.value == ""){
			alert("연락처를 입력해주세요")
			form.usrTell.focus();
			return;
		}
		if(form.usrAddr.value == ""){
			alert("주소를 입력해주세요")
			form.usrAddr.focus();
			return;
		}
		if(form.usrCareer.value== ""){
			alert("경력사항을 선택해주세요")
			form.usrCareer.focus();
			return;
		}
		if(form.usrCirtificate.value== ""){
			alert("자격증을 입력해주세요")
			form.usrCirtificate.focus();
			return;
		}
		form.submit(); //등록해 주세욘 
	}
</script>
<body>
	<div>
		<div><h2>회원가입</h2></div>
	</div>
	<div>
		<form id="form" method="post">
		<input type="hidden" name="checkID" value="">
		<input type="hidden" name="checkNick" value="">
	<div>
		<input type="hidden" type="number" value="2" name="usrSort" >
	</div>		
			<div>
				<label>이메일</label>
				<input type="email" name="usrEmail" placeholder="example@example.com"> <a href="javascript:checkID()">중복확인</a> <!-- 자바스크립트의 checkID(function) 실행 -->		
			</div>
			<div>
				<label>비밀번호</label>
				<input type="password" name="usrPassword">
			</div>
			<div>
				<label>닉네임</label>
				<input type="text" name="usrNickname"> <a href="javascript:checkNick()">중복확인</a>
			</div>
			<div>
				<label>이름</label>
				<input type="text" name="usrName">
			</div>
			<div>
				<label>연락처</label>
				<input type="tel" name="usrTell">								
			</div>
			<div>
				<label>주소</label>
				<input type="text" name="usrAddr">
			</div>
			<div>
				<label>경력사항</label>
				<input type="text" name="usrCareer" >
			</div>
			<div>
				<label>자격증</label>
				<input type="text" name="usrCirtificate">
			</div>			
		</form>
		<div>				
			<button onclick="submit()">회원가입</button>
		</div>
	</div>
	
</body>
</html>