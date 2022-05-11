<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungin</title>
</head>
<body>
<h1>sungin</h1>

<%
	// 이름 전화 회사
	String pname = request.getParameter("pname");
%>

<form action="">
	<table border="">
		<tr>
			<td>이름</td>
			<td><input type="text" name="pname" value="<%=pname %>" /></td>
		</tr>
		<tr>
			<td>전화</td>
			<td><input type="text" name="" /></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><input type="text" name="" /></td>
		</tr>
		<tr>
			<td>
				<input type="submit" name="확인" />
			</td>
		</tr>
	</table>
</form>



</body>
</html>