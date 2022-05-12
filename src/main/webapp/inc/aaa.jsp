<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	int a = 10;
%>

<%
	int b = 20;
%>

<h2>aaa.jsp입니다</h2>
<%= request.getParameter("pid") %>,
<%= request.getParameter("marriage") %><br>
<%= request.getAttribute("mem1") %><br>

<%= request.getAttribute("mem2") %><br>

<%=a %>,<%=b %><br>
<%= request.getParameter("pname") %><br>
<%= request.getParameter("age") %><br>
<%= request.getParameter("kor") %><br>
<%= request.getParameter("eng") %><br>
<%= request.getParameter("mat") %><br>