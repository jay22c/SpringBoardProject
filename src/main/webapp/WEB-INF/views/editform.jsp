<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
 <%@page import="com.example.Board.BoardDAO, com.example.Board.BoardVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>
<%--<%--%>
<%--	BoardDAO boardDAO = new BoardDAO();--%>
<%--	String id=request.getParameter("seq");--%>
<%--	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));--%>
<%--%>--%>

<h1>Edit Form</h1>
<%--@elvariable id="BoardVO" type=""--%>
<%--@elvariable id="board" type=""--%>
<form:form modelAttribute="board" method="POST" action="../editok">
<form:hidden path="seq"/>
<table id="edit">
<tr><td>카테고리</td><td><form:input type="text" path="category"/></td></tr>
<tr><td>제목</td><td><form:input type="text" path="title"/></td></tr>
<tr><td>글쓴이</td><td><form:input type="text" path="writer"/></td></tr>
<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
</table>

	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history">
</form:form>

</body>
</html>