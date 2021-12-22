<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${not empty msg}">
	<script>
		alert("${msg}")
	</script>
</c:if>
<form action="step3" method="post">
	name:<input type="text" name="name"><br>
	email:<input type="text" name="email"><br>
	password:<input type="text" name="password"><br>
	checkPassword:<input type="text" name="checkPassword"><br>
	<button>다음단계</button>
</form>