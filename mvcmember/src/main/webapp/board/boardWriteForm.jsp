<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="boardWriteForm" method="post" action="http://localhost:8080/mvcmember/board/boardWrite.do">
		<table border="1">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="subject" id="subject"/>
					<div id="subjectDiv"></div>
				</td>
				
			</tr>
			
			<tr>
				<td>내용</td>
				<td><textarea rows="4" cols="" name="content" id="content"></textarea>
				<div id="contentDiv"></div>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="button" id="write" value="글쓰기"/>
					<input type="reset" value="다시작성"/>
					<input type="button" id="list" value="목록" onclick=""/>
				</td>
			</tr>
		</table>
	</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/board.js"></script>
</body>
</html>