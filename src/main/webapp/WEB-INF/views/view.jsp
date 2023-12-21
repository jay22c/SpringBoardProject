<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
  <title>View Post</title>
</head>
<body>
<h1>${u.title}</h1>
<p>글쓴이: ${u.writer}</p>
<p>카테고리: ${u.category}</p>
<p>내용: ${u.content}</p>
<p>작성일: ${u.regdate}</p>

<button type="button" onclick="location.href='${path}/board/list'">목록으로 돌아가기</button>
</body>
</html>
