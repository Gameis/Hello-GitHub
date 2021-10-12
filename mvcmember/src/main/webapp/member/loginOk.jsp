<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//쿠키
	/* Cookie[] ar = request.getCookies();//모든 쿠키를 다 가져온다
	
	if(ar != null) {
		for(int i = 0; i < ar.length; i++) {
			String cookieName = ar[i].getName();	//쿠키 명
			String cookieValue = ar[i].getValue();	//값
		
			System.out.println("쿠키명 = " + cookieName);
			System.out.println("값 = " + cookieValue);
			
			if(cookieName.equals("memName")) name = cookieValue;
			if(cookieName.equals("memId")) id = cookieValue;
		}
	} */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img {
		width: 50px;
		height: 50px;
		cursor: pointer;
	}
</style>
</head>
<body>
<%-- <%= name %> --%>
	<img src="../img/img1.PNG" onclick=""/>
	${sessionScope.memName }님 로그인
<br><br>

<input type="button" value="로그아웃" onclick="location.href='/mvcmember/member/logout.do'">
</body>
</html>