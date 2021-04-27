<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정하기</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/normalbody.css" />">
</head>
<body>
<!-- 상단 고정바 -->
	<header>
	<u:isLogin>
	<span id="icon"><a href="list.do">메인으로</a></span>
		<span id="login_join">
				<a href="myInfo.do"><input	type="button" value="마이페이지"></a>
				<a href="logout.do"><input type="button" value="로그아웃"></a>
		</span>
		</u:isLogin>
	</header>
	
<!-- 실제 body -->
	<div id="b_contents">
	<form action="updateArticle.do" method="post">
			<table border="1"
				style="border-spacing: 0; padding: 0; margin: auto; width: 700px;">
				<tr>
					<td>글 번호</td>
					<td align="left">${article.article_no}</td>
				</tr>
				<tr>
					<td>글 제목</td>
					<td align="left"><input type="text" name="title" value="${article.title}"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td align="left">${article.writer_name}</td>
				</tr>
				<tr>
					<td>등록일</td>
					<td align="left">${article.article_regDate}</td>
				</tr>
				<tr>
					<td>글 내용</td>
					<td align="left"><textarea cols="30" rows="5" name="content">${article.content}</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="글 수정"></td>
			</table>
		</form>
	</div>
</body>
</html>