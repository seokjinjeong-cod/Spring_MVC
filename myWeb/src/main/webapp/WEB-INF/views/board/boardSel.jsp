<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
게시글 상세보기
	<form name="frm" id="frm" action="" method="post">
		<input type="hidden" name="no" value="${board.no }"><br>
		제목:<input name="title" value="${board.title }"><br>
		작성자:<input name="writer" value="${board.writer }"><br>
		내용:<textarea name="contents" rows="4" cols="40">${board.contents }</textarea>
		<button onclick="call('E')">수정</button>		
		<button onclick="call('D')">삭제</button>
	</form>
<script type="text/javascript">
function call(e) {
	if(e == "E"){
		frm.action = "update";
	} else if(e == "D") {
		frm.action = "delete";
	}
	frm.submit();
}
</script>
</body>
</html>