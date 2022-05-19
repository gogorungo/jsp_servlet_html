<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body>
<h1>foreach</h1>
<%
	String [] arr = {"정우성","정좌성","정남성","정중성","북두신성","정성"};

%>
<c:forEach var="i" begin="3" end="20" step="2" varStatus="no">
${i } - ${no.index }<br>
</c:forEach>

-------------------------------------------<br>
<c:forEach var="tt" items="<%=arr %>" varStatus="no">
${no.index } - ${tt }<br>

</c:forEach>
-------------------------------------------<br>
11,45,32,67,88,93,25,89,23  총합<br>
<% 
	int [] arr1 = {11,45,32,67,88,93,25,89,23};
%>
<c:set var="tot" value="0" />
<c:forEach var="numm" items="<%=arr1 %>" varStatus="no">
<c:set var="tot" value="${tot+numm }" />
</c:forEach>
총 합 : ${tot }<br>

-------------------------------------------<br>

<c:set var="tot" value="0" />
<c:forEach var="numm" items="<%=arr1 %>" varStatus="no">
	<c:choose>
		<c:when test="${numm % 2 == 0}" >
			<c:set var="tot" value="${tot+numm }" />	
		</c:when>
	</c:choose>
</c:forEach>

${tot }<br>

-------------------------------------------<br>

<c:forTokens items="현빈,원빈,,,,,투빈,골빈_자바빈.장희빈,젤리빈_커피빈" delims=",_." var="tt" varStatus="no">
	${no.index }-${tt }<br>
</c:forTokens>

-------------------------------------------<br>
<c:forTokens items="11,45,32,67,88,93,25,89,23" delims="," var="tt" varStatus="no">
	${no.index } - ${tt }, ${tt%2 } <br>
</c:forTokens>
-------------------------------------------<br>
"a_강대준_78,b_김강규_98,a_김민수_72,b_김승화_65,a_김지현_94,b_김진솔_88"<br>

a, b : 반<br>

반별 최고 점수의 학생 이름을 출력하시오<br>

<c:set var="aa" value="" />
<c:set var="bb" value="" />
<c:set var="aaVV" value="0" />
<c:set var="bbVV" value="0" />
<c:forTokens items="a_강대준_78,b_김강규_98,a_김민수_72,b_김승화_65,a_김지현_94,b_김진솔_88" delims="," var="tt" varStatus="no">
	<c:set var="ban" value="" />
	<c:set var="jum" value="0" />
	<c:set var="name" value="" />
	<c:forTokens items="${tt }" delims="_" var="dd" varStatus="no">
		<c:choose>
			<c:when test="${no.index==0 }">
				<c:set var="ban" value="${dd }" />
			</c:when>
			<c:when test="${no.index==1 }">
				<c:set var="name" value="${dd }" />
			</c:when>
			<c:when test="${no.index==2 }">
				<c:set var="jum" value="${dd }" />
			</c:when>
		</c:choose>
	</c:forTokens>
	<c:choose>
		<c:when test="${ban=='a' && aaVV < jum }">
			<c:set var="aa" value="${name }" />
			<c:set var="aaVV" value="${jum }" />
		</c:when>
		<c:when test="${ban=='b' && aaVV < jum }">
			<c:set var="bb" value="${name }" />
			<c:set var="bbVV" value="${jum }" />
		</c:when>
	</c:choose>
</c:forTokens>

-------------------------------------------<br>
${aa }:${aaVV },${bb }:${bbVV }<br>

</body>
</html>