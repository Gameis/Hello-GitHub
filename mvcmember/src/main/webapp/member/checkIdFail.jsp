<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8080/mvcmember/member/checkId.do">
		<table>
			<tr>
				<th>아이디</th>
				<th>${param.id }</th>
				<th>사용</th>
				<th>불가능</th>
			</tr>
			
			<tr>
				<td>아이디</td>
				<td colspan="2">
					<input type="text" id="id" name="id">
				</td>
				<td>
					<input type="submit" value="중복체크"/>
				</td>
			</tr>
		</table>
	</form>
<script type="text/javascript" src="../js/member.js"></script>
</body>
</html>