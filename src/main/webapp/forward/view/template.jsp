<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//String mainURL = "main/member.jsp";
	String main = (String)request.getAttribute("main");
	
	String mainURL = "main/"+main+".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/forward.css" />
<body>

<header>
	<jsp:include page="atop.jsp" />
</header>

<section>
	<h3><%=main %> 페이지</h3>
	<jsp:include page="<%=mainURL %>" />
</section>
<footer>
	<h2>바닥이다</h2>
</footer>
</body>
</html>