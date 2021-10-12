<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/member.js"></script>
</head>
<body>
	<form name="loginForm" method="post" action="http://localhost:8080/mvcmember/member/login.do">
		<table border="1" cellspacing="0" cellpadding="5">
			<tr>
				<td width="100" align="center">아이디</td>
				<td>
					<input type="text" name="id" id="id" placeholder="아이디 입력">
					<div id= "idDiv"></div>
				</td>	
			</tr>
			
			<tr>
				<td width="100" align="center">비밀번호</td>
				<td>
					<input type="password" name="pwd" id="pwd" placeholder="비밀번호 입력">
					<div id= "pwdDiv"></div>
				</td>	
			</tr>
			
			<tr>
				<td colspan="2" >
					<input type="button" id="login" value="로그인" onclick="checkLogin()">
					<input type="button" id="write" value="회원가입" onclick="'">
				</td>
			</tr>
		</table>
	</form>
	

</body>
</html>