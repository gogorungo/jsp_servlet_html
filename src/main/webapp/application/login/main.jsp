<%@page import="bas.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 메인</title>
</head>
<body>
<h1>메인 페이지입니다</h1>
<%
	if(application.getAttribute("inUser")!=null){
		MemberDTO dto = (MemberDTO) application.getAttribute("inUser");
%>
	<%=dto.getPname() %>님 안녕하세요
	<a href="logout.jsp">로그아웃</a>
<%
	}else{
%>

<form action="logReg.jsp">
	아이디<input type="text" name="pid" />
	암호<input type="text" name="pw" />
	<input type="submit" value="로그인" />
</form>
<%} %>

</body>
</html>