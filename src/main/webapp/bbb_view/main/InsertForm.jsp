<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<h2>글 작성 폼</h2>

<form action="InsertReg" method="post" enctype="multipart/form-data">
	<table border="">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="제목" /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="pname" value="회원" /></td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="text" name="pw" value="1111" /></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="upfile" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="30" rows="5" >남기실말</textarea></td>
		</tr>
		<tr>
			<td></td>
			<td colspan="2" align="center">
				<a href="<c:url value="/board/List"/>">목록으로</a>
				<input type="submit" value="취소" />
				<input type="submit" value="작성" />
			</td>
		</tr>
	</table>
</form>