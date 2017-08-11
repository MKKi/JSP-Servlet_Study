<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	function check(){
		if(document.reg_frm.name.value.length == 0){
			alert("이름을 입력");
			reg_frm.name.focus();
			return false;
		}
		if(document.reg_frm.pwd.value != document.reg_frm.pwd2.value){
			alert("비밀번호가 다릅니다.")
			reg_frm.pwd2.focus();
			return false;
		}
		
		return true;
	}
</script>

</head>
<body>
	<form method="get" action="JoinServlet" name="reg_frm">
		<label for="name"> 이름  </label>
		<input type="text" name="name" id="name"><br>
		
		<label for="code"> 주민등록번호	</label>
		<input type="text" name="code" id="code"> -
		<input type="password" name="code2" id="code"><br>
		
		<label for="id"> 아이디 </label>
		<input type="text" name="id" id="id"><br>
		
		<label for="pwd"> 비밀번호 </label>
		<input type="password" name="pwd" id="pwd"><br>
		<label for="pwd2"> 비밀번호 확인 </label>
		<input type="password" name="pwd2" id="pwd2"><br>
		
		<label for="email"> 이메일 </label>
		<input type="text" name="email" id="email"> @ 
		<input type="text" name="email2" id="email">
		<select id="email" name="email3">
			<option value="nate.com">nate.com</option>
			<option value="naver.com" selected="selected"> naver.com </option>
		</select><br>
		
		<label for="addr"> 주소  </label>
		<input type="text" name="addr" id="addr">
		<input type="text" name="addr2" id="addr"><br>
		
		<label for="phone"> 핸드폰 번호 </label>
		<input type="text" name="phone" id="phone"><br>
		
		<label for="job"> 직업 </label>
		<select id="job" name="job" size="3">
			<option value="학생"> 학생 </option>
			<option value="공무원" selected="selected">공무원</option> 
	       <option value="군인">군인</option> 
	       <option value="서비스업">서비스업</option> 
	       <option value="교육">교육</option>
		</select><br>
		
		<label for="agree"> 메일/SMS 정보 수신</label>
		<input type="radio" name="agree" id="agree" checked>수신
		<input type="radio" name="agree" id="agree"> 수신거부<br>
		
		<label for="favor"> 관심분야 </label>
		<input type="checkbox" name="favor" value="생두" id="favor"> 생두
		<input type="checkbox" name="favor" value="원두" id="favor" checked> 생두
		<br><br>
		<div>
			<input type="submit" value="회원가입" onclick="return check()">
			<input type="reset" value="취소">
		</div>
	</form>
</body>
</html>