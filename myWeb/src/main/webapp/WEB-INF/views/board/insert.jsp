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
<h1>게시글 등록</h1>
<form action="insert" method="post">
	제목:<input name="title"><br>
	작성자:<input name="writer"><br>
	내용:<textarea name="contents" rows="4" cols="40"></textarea>
	<button>등록</button>
</form>
</body>
</html>