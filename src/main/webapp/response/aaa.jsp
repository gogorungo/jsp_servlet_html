<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>aaa</title>
</head>
<body>
<h1>aaa</h1>

본문

본문본문

본문본문본문

<script>
	//alert("aaa 페이지다 <br> ?");
	// 자바스크립트는 구동방식은 다르지만 자바언어를 차용해서 쓴다. html 코드 불가
	alert("aaa 페이지다 \n ?");
</script>

</body>
</html>

<%

	//response.sendRedirect("bbb.jsp");
	response.sendRedirect("bbb.jsp?pid=asdf&age=34");

%>