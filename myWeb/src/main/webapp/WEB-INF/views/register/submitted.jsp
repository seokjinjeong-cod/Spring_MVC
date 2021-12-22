<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>submitted.jsp</title>
</head>
<body>
<h3>응답 결과</h3>
<c:forEach items="${svy.response}" var="res" varStatus="q">
	${q.count}번 : ${res}<br>
</c:forEach><hr>
나이 : ${svy.respondent.age}<br>
위치 : ${svy.respondent.location}
</body>
</html>