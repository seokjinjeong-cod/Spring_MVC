<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시판</h3>
<form name="searchFrm">
	<select name="gubun">
		<option value="writer" <c:if test="${search.gubun == 'writer'}">selected</c:if>>작성자
		<option value="title" <c:if test="${search.gubun == 'title'}">selected</c:if>>제목
		<option value="contents" <c:if test="${search.gubun == 'contents'}">selected</c:if>>내용
	</select>
	<input name="keyword"><br>
	작성일자:<input name="from" type="date" value="${search.from }">
	<input name="to" type="date" value="${search.to }">
	<input type="hidden" name="page" value="1">
	<button>검색</button>
</form><br>
<form action="select">
<table border="1">
	<thead>
		<tr>
			<th>No</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Date</th>
			<th>ReplyCnt</th>
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