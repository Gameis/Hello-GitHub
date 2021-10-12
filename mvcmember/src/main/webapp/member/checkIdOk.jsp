<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/member.js"></script>
</head>
<body>
	<table>
		<tr>
			<th>아이디</th>
			<th>${param.id }</th>
			<th>사용</th>
			<th>가능</th>
		</tr>
		
		<tr>
			<td>
				<input type="button" value="사용하기" onclick="useId('${param.id }')"/>
			</td>
		</tr>
	</table>
</body>
</html>