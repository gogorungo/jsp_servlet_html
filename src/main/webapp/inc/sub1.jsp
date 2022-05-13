<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>sub1.jsp 입니다.</h2>
<%
	//int a = 2000; a가 두개가 되므로 에러
	int b = 1234;

%>
big2:<%= request.getParameter("pid") %>,
<%= request.getParameter("marriage") %>,
<%= b%>