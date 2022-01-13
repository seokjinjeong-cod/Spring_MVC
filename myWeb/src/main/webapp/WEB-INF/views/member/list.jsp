<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/list</title>
</head>
<body>
<h3>멤버목록</h3><br>
<form action="select">
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>LoginID</th>
				<th>Password</th>
				<th>FullName</th>
				<th>DeptName</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="li">
				<tr>
					<td>${li.no }</td>
					<td>${li.title }</td>
					<td>${li.writer }</td>
					<td>${li.wdate }</td>
					<td>${li.replyCnt }</td>
					<td><button name="no" value="${li.no }">보기</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form>
<a href="insert" style="margin-left: 27%;">게시글작성</a>
<hr>
<my:paging paging="${paging}" jsFunc="goboard"></my:paging>
<script type="text/javascript">
	function goboard(p) {
		location.href = "list?page=" + p;
		searchFrm.page.value = p;
		searchFrm.submit();
	}
</script>
</body>
</html>