<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<p>회원가입을 완료했습니다.</p>
가입정보<br>
이름 : ${user.name}<br>
이메일 : ${user.email}<br>
<a href="<c:url value='/main/' />">첫화면이동</a>

<%-- <c:url value='/main/' />
<c:url value="/main">
	<c:param name="p1" value="v1"></c:param>
</c:url> --%>