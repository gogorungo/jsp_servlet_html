<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int start = (int)request.getAttribute("start");
	int end = (int)request.getAttribute("end");
%>
    
<div class="big">
<% for(int i=start; i<=end; i++){ %>
	<!-- URL 기준 이다. 실제 페이지 기준이 아니다 -->
	<img src="../fff/dog<%=i %>.jpg" alt="" />
<%} %>


</div>
<div class="bot">
	<% 	for(int i=1; i <= 5 ; i ++){ %>
		<a href="?pageNo=<%=i%>"><%=i %></a>
	<%
	}
	%>
</div>