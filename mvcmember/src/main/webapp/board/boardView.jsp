<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.bean.BoardDTO" import="board.dao.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1" cellspacing="0" cellpadding="5" frame="hsides" rules="rows">
		<tr>
			<td colspan="3"><h3>${boardDTO.getSubject() }</h3></td>
		</tr>
		
		<tr>
			<td width="150">글번호 : ${boardDTO.getSeq() }</td>
			<td width="150">작성자 : ${boardDTO.getId() }</td>
			<td width="150">조회수 : ${boardDTO.getHit() }</td>
		</tr>
		
		<tr>
			<td colspan="3" width="250" height="200" valign="top">
				<pre style="white-space: pre-wrap;">${boardDTO.getContent() }</pre>
					

			</td>
		</tr>
	</table>
	<input type="button" value="목록" onclick="location.href='http://localhost:8080/mvcmember/board/boardList.do?pg=1'">
	
</body>
</html>