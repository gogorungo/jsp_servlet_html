<%@page import="bas.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<h1>로그아웃</h1>

<%
	MemberDTO dto = (MemberDTO) application.getAttribute("inUser");
	String msg = dto.getPname()+"님 로그아웃 되었습니다";
	
	application.removeAttribute("inUser");
%>




<script>
	alert("<%=msg %>");
	location.href = "main.jsp";
</script>

</body>
</html>