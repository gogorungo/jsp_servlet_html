<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDetail</title>
</head>
<body>
<h1>memberDetail</h1>

<table border="">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>나이</td>
		<td>결혼</td>
		<td>가입일</td>
	</tr>
	<tr>
		<td>${nn.pid }</td>
		<td>	${nn.pname }</td>
		<td>${nn.age }</td>
		<td>${nn.marriage }</td>
		<td>${nn.reg_date }</td>
	</tr>
</table>



</body>
</html>