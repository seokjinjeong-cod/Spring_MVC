<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<h3>게시글 상세보기</h3>
	<form name="frm" id="frm" action="" method="post">
		<input type="hidden" name="no" value="${board.no }"><br>
		제목:<input name="title" value="${board.title }"><br>
		작성자:<input name="writer" value="${board.writer }" readonly="readonly"><br>
		내용:<textarea name="contents" rows="4" cols="40">${board.contents }</textarea>
		<button onclick="call('E')">수정</button>
		<button onclick="call('D')">삭제</button>
	</form><br>
	<hr>
	<!-- 댓글 등록 -->
	<h5>댓글</h5>
	<div>
		<form id="commentsFrm" action="">
			<input type="hidden" name="boardNo" value="${board.no }">
			이름:<input name="name"><br>
			내용:<input name="content">
			<button type="button" id="btnComments">댓글등록</button>
		</form>
	</div><br>

	<!-- 댓글 목록 -->
	<div id="commentsList">

	</div>
	<div style="display: none;">
		<div class="row">
			<div class="cname col">홍길동</div>
			<div class="ccontent col">댓글내용</div>
			<div class="cregdate col">2020-12-12 10분전</div>
			<div class="col">
				<button type="button" class="btnCommentsUpdate">수정</button>
				<button type="button" class="btnCommentsDelete">삭제</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		commentsList();
		commentsUpdate();
		commentsDelete(event);

		$("#btnComments").on("click", function () {
			let cmt = $('#commentsFrm').serialize()
			$.ajax({
				url: "../comments",
				type: "post",
				data: cmt,
				/* {name:$('input[name=name]').val(),
				content:$('input[name=content]').val(),
				boardNo:$('input[name=no]').val()}, */
				dataType: "json"
			}).done(function (data) {
				let str = `<div class="row">
							<div class="cname col">\${data.name}</div>
							<div class="ccontent col">\${data.content}</div>
							<div class="cregdate col">\${data.regdate}</div>
							<div class="col">
								<button type="button" class="btnCommentsUpdate">수정</button>
								<button type="button" class="btnCommentsDelete">삭제</button>
							</div>
					   </div>`
				$("#commentsList").append(str);
			});
		})

		function call(e) {
			if (e == "E") {
				frm.action = "update";
			} else if (e == "D") {
				frm.action = "delete";
			}
			frm.submit();
		}

		function commentsList() {
			$.ajax({
				url: "../comments/${board.no}",
				dataType: "json"
			}).done(function (datas) {
				for (comment of datas) {
					let str = `<div class="row" data-no="\${comment.no}">
								<div class="cname col">\${comment.name}</div>
								<div class="ccontent col">\${comment.content}</div>
								<div class="cregdate col">\${comment.regdate}</div>
								<div class="col">`
					if (comment.name == '석진') {
						str += `
								<button type="button" class="btnCommentsUpdate">수정</button>
								<button type="button" class="btnCommentsDelete">삭제</button>
							`
					}
					str += "</div></div>"
					$("#commentsList").append(str);
				}
			});
		}

		function commentsUpdate() {

		}

		function commentsDelete() {
			$(".btnCommentsDelete").on("click", function (event) {
				console.log(event.target);
				$.ajax({
					/* url : "../comments/" + ,
					dataType : "json" */
				}).done(function (data) {
					// let row = $('#row').attr('data-no');
				});
			})
		}
	</script>
</body>

</html>