<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시판</h3>
<c:forEach items="${list }" var="li">
	${li.title } : ${li.contents }<br>
</c:forEach>
<a href="insert">게시글작성</a>
</body>
</html>