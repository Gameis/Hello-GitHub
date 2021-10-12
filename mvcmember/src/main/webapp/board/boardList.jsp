<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.bean.BoardDTO" import="board.dao.BoardDAO" import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th {
		font-size: 16px;
	}
	
	td {
		font-size: 13px;
	}
	
	a {
		text-decoration: none;
	}
	
	a:hover {
		color: green;
		text-decoration: underline;
	}
	
	span {
		text-color: red;
	}
	
	
</style>
</head>
<body>
	<hr>
	
	<table border="1" cellspacing="0" cellpadding="5" frame="hsides" rules="rows">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		
		<c:forEach var="boardDTO" items="${boardList }">
			<tr>
				<td align="center">${boardDTO.getSeq() }</td>
				<td align="center"><a href="http://localhost:8080/mvcmember/board/boardView.do?seq=${boardDTO.getSeq() }">${boardDTO.getSubject() }</a></td>
				<td align="center">${boardDTO.getName() }</td>
				<td align="center">${boardDTO.getHit() }</td>
				<td align="center">${boardDTO.getLogtime() }</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	
	<c:forEach var="i" begin="1" end="${totalP }" step="1">
		<c:if test="${pg == i} ">
			<a href="http://localhost:8080/mvcmember/board/boardList.do?pg=${i }"><span>${i }</span></a>
		</c:if>
		<c:if test="${pg != i }">
			<a href="http://localhost:8080/mvcmember/board/boardList.do?pg=${i }">${i }</a>
		</c:if>
	</c:forEach>
	
</body>
</html>