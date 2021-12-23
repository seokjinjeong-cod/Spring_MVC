<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="items" required="true" type="java.util.List" %>
<select>
	<c:forEach items="${items}" var="op">
		<option>${op}
	</c:forEach>
</select>