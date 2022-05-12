<%@page import="bas.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int c = 300;
%>

<%
	int d = 400;
%>


<h2>bbb.jsp입니다</h2>
<%= request.getParameter("pid") %>,
<%= request.getParameter("marriage") %><br>
<%= request.getAttribute("mem1") %><br>

<%= request.getAttribute("mem2") %><br>



<%=c %>,<%=d %>
<%= request.getParameter("pname") %><br>
<%= request.getParameter("age") %><br>
<%= request.getParameter("kor") %><br>
<%= request.getParameter("eng") %><br>
<%= request.getParameter("mat") %><br>

<%
	request.setAttribute("mem2", new MemberDTO("정남성",30,true));

%>