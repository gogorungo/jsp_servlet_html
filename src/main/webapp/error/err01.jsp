<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>err01</title>
</head>
<body>
<h1>err01</h1>


<%
	try{
		int a = 10/0;

		out.println("정상실행: "+ a);
	}catch(Exception e){
		out.println("에러가 발생했다: " + e.getMessage());
	}
	

%>
</body>
</html>