<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//쿠키
	/* Cookie[] ar = request.getCookies();//모든 쿠키를 다 가져온다
	
	if(ar != null) {
		for(int i = 0; i < ar.length; i++) {
			if(ar[i].getName().equals("memName")) {
				ar[i].setMaxAge(0);
				response.addCookie(ar[i]);
			}
			
			if(ar[i].getName().equals("memId")) {
				ar[i].setMaxAge(0);
				response.addCookie(ar[i]);
			}

			System.out.println("쿠키명 = " + ar[i].getName());
			System.out.println("값 = " + ar[i].getValue());
		}
	} */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그아웃</h3>
	
<script type="text/javascript">
	window.onload = function() {
		alert('로그아웃');
		location.href = "../index.jsp"
	}
</script>
</body>
</html>