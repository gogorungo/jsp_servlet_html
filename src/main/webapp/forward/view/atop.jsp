<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% // url 로 주소를 확인 %>
<%= request.getContextPath()%>
<c:url value="/forward/info.jsp" />

    
<ul>

<% //절대주소 하지만 위치가 바뀌면 다 바꿔줘야한다. 그래서 URL 사용한다 %>
	<li><a href="/jspProj/forward/info.jsp">회사소개</a></li>
	<li><a href="<%=request.getContextPath() %>/forward/member.jsp">회원</a></li>
	<li><a href="<c:url value="/forward/gall.jsp" />">갤러리</a></li>
	<li><a href="notice.jsp">공지사항</a></li>
	<li><a href="${pageContext.request.contextPath }/forward/mypage/cart.jsp">장바구니</a></li>
</ul>