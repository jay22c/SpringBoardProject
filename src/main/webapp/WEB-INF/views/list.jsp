<%--
  Created by IntelliJ IDEA.
  User: ijunjae
  Date: 2023/12/02
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
  <tr>
    <th>Id</th>
    <th>Category</th>
    <th>Title</th>
    <th>Writer</th>
    <th>Content</th>
    <th>Regdate</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>

  <c:forEach items="${list}" var="u">
  <tr>
    <td>${u.getSeq()}</td>
    <td>${u.getCategory()}</td>
    <td>${u.getTitle()}</td>
    <td>${u.getWriter()}</td>
    <td>${u.getContent()}</td>
    <td>${u.getRegdate()}</td>
    <td><a href="editform/${u.getSeq()}">글수정</a></td>
    <td><a href="javascript:delete_ok('${u.getSeq()}')">글삭제</a></td>
    <td><a href="view/${u.getSeq()}">자세히 보기</a></td>
  </tr>
  </c:forEach>
</table>

<script>
  function delete_ok(id) {
    var a = confirm("정말로 삭제하겠습니까?");
    if (a) location.href='deleteok/' + id;
  }
</script>


<button type="button" onclick="location.href='addpostform'">새글쓰기</button>
</body>
</html>
