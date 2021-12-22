<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>surveyForm.jsp</title>
</head>
<body>
<h3>설문조사</h3>
<form method="post">
<c:forEach items="${questions }" var="que" varStatus="cnt">
	<${cnt.count }번> ${que.title }<br>
	<c:forEach items="${que.options }" var="q" varStatus="cc">
		<%-- ${cc.count }. --%> <input type="radio" name="response[${cnt.index }]" value="${q }">${q }
	</c:forEach>
	<c:if test="${cnt.index == 2 }">
		<input type="text" name="response[${cnt.index }]">
	</c:if>
	<br>
</c:forEach>
나이:<input type="text" name="respondent.age" value=""><br>
위치:<input type="text" name="respondent.location" value=""><br>
<button>전송</button>
</form>
</body>
</html>