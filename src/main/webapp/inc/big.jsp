<%@page import="bas.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("mem1", new MemberDTO("정우성",10,false));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>big</title>
</head>
<body>
<h1>big</h1>

big.jsp 입니다 <br>
<%= request.getParameter("pid") %>,
<%= request.getParameter("marriage") %><br>
<%= request.getAttribute("mem1") %><br>

<!--  이클립스가 이상해서 빨간줄이 뜰 뿐 잘 돌아간다-->
<jsp:include page="aaa.jsp?pname=aaa&age=37" >
	<jsp:param value="88" name="kor"/>
	<jsp:param value="78" name="eng"/>
	<jsp:param value="68" name="mat"/>
</jsp:include>
<br>

<%
	request.setAttribute("mem2", new MemberDTO("정좌성",20,false));

%>

<%= request.getAttribute("mem2") %><br>

<jsp:include page="bbb.jsp" />

<%= request.getAttribute("mem2") %><br>
</body>
</html>