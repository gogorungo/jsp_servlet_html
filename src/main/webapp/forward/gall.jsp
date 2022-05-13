<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int pageNo = 1;

	if(request.getParameter("pageNo")!=null){
		pageNo = Integer.parseInt(request.getParameter("pageNo"));
	}

	int cnt = 5;
	//한페이지에 이미지 5개 2페이지는  6번부터
	int start = (pageNo - 1) * cnt + 1;
	
	int end = pageNo * cnt;
	

	request.setAttribute("start", start);
	request.setAttribute("end", end);
	request.setAttribute("main", "gall");
%>

<jsp:forward page="view/template.jsp" />