<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pid = URLEncoder.encode("아기상어","UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jspProj_jsp</h1>
<h2>basic</h2>
<a href="basic/01_first.jsp">01_first.jsp</a>
<a href="basic/02_sec.html">02_sec.html</a>
<a href="basic/03_lifeCycle.jsp">03_lifeCycle</a>
<a href="basic/04_diary.jsp">04_diary</a>
<a href="basic/05_out.jsp">05_out</a>
<h2>request</h2>
<a href="req/aaa.jsp?pid=<%=pid %>&no=1234&marriage=true">aaa</a>
<a href="req/joinForm.jsp">joinForm</a>
<a href="req/testScore.jsp">testScore</a>
<a href="req/examForm.jsp">examForm</a>

<h2>response</h2>
<a href="response/aaa.jsp">aaa</a>
<a href="response/ccc.jsp">ccc</a>
<a href="response/movieForm.jsp">movieForm</a>
<a href="response/ageForm.jsp">ageForm</a>

<h2>application</h2>
<a href="application/info.jsp">info</a>
<a href="application/set1.jsp">set1</a>
<a href="application/get.jsp">get</a>
<a href="application/set2.jsp">set2</a>
<a href="application/remove.jsp">remove</a>
<a href="application/login/main.jsp">로그인</a>

<h2>inc</h2>
<a href="inc/big.jsp?pid=zzz&marriage=true">include</a>
<a href="inc/home.jsp">home</a>
<a href="inc/bbang.jsp">빵집</a>
<a href="inc/big2.jsp?pid=qwer&marriage=false">include디렉티브</a>

<h2>forward</h2>
<a href="forward/aaa.jsp?pid=qaz&age=27&marriage=1">aaa</a>
<a href="forward/member.jsp">member</a>

<h2>Error</h2>
<a href="error/err01.jsp">error01</a>
<a href="error/err02.jsp">error02</a>
<a href="error/err03.jsp">error03</a>
<a href="error/err04.jsp">error04</a>
<a href="error/err369.jsp">error369</a>

<h2>Cookie</h2>
<a href="cookie/set1.jsp">set1</a>
<a href="cookie/view.jsp">view</a>
<a href="cookie/set2.jsp">set2</a>
<a href="cookie/delete.jsp">delete</a>
<a href="cookie/login/main.jsp">로그인</a>
</body>
</html>