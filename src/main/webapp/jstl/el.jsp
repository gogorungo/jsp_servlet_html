<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
<h1>EL</h1>

pid: <%=request.getParameter("pid") %>, ${param.pid }<br>
age: <%=request.getParameter("age")+10 %>, ${param.age+10 }<br>
marriage: <%-- <%=!request.getParameter("marriage") %>,  --%>
${!param.marriage }<br>

<%
	pageContext.setAttribute("aa", 100);
	request.setAttribute("bb", 200);
	session.setAttribute("cc", 300);
	application.setAttribute("dd", 400);
	
	//pageContext 는 범주가 넓어서 remove 가 잘안된다
	//pageContext.setAttribute("qqq", 1000);
	request.setAttribute("qqq", 2000);
	session.setAttribute("qqq", 3000);
	application.setAttribute("qqq", 4000);

%>
aa: <%=pageContext.getAttribute("aa") %>,${aa+1 }<br>
bb: <%=request.getAttribute("bb") %>,${bb+1 }<br>
cc: <%=session.getAttribute("cc") %>,${cc+1 }<br>
dd: <%=application.getAttribute("dd") %>,${dd+1 }<br>

-------------------------------------------<br>

pageContext: <%=pageContext.getAttribute("qqq") %>,${pageScope.qqq }<br>
request: <%=request.getAttribute("qqq") %>,${requestScope.qqq }<br>
session: <%=session.getAttribute("qqq") %>,${sessionScope.qqq }<br>
application: <%=application.getAttribute("qqq") %>,${applicationScope.qqq }<br>

-------------------------------------------<br>

<!-- remove는 request.session.application 순서로 지워진다  -->

${qqq }<br>
<%request.removeAttribute("qqq"); %>
${qqq }<br>
<%session.removeAttribute("qqq"); %>
${qqq }<br>
<%application.removeAttribute("qqq"); %>
${qqq }<br>

-------------------------------------------<br>

<!-- 연산도 가능 -->
\${15+7 } : ${15+7 }<br>
\${15-7 } : ${15-7 }<br>
\${15*7 } : ${15*7 }<br>
\${15/7 } : ${15/7 }<br>
\${15%7 } : ${15%7 }<br>
<br>
<!-- 비교연산 가능  -->
\${15>7 } : ${15>7 }<br>
\${15>=7 } : ${15>=7 }<br>
\${15<=7 } : ${15<=7 }<br>
\${15<7 } : ${15<7 }<br>
\${15==7 } : ${15==7 }<br>
\${15!=7 } : ${15!=7 }<br>

<br>
<!-- 문자열 비교연산 가능 자체적으로 CompareTo 기능 작동  -->
\${"장동건">"장서건"  } : ${"장동건">"장서건" }<br>
\${"장동건">="장서건"  } : ${"장동건">="장서건" }<br>
\${"장동건"<="장서건"  } : ${"장동건"<="장서건" }<br>
\${"장동건"<"장서건"  } : ${"장동건"<"장서건" }<br>
\${"장동건"=="장서건"  } : ${"장동건"=="장서건" }<br>
\${"장동건"!="장서건"  } : ${"장동건"!="장서건" }<br>

<br>
<!-- 논리연산자  -->
\${true&&true  } : ${true&&true }<br>
\${true&&false  } : ${true&&false }<br>
\${false&&false  } : ${false&&false }<br>
<br>
\${true||true  } : ${true||true }<br>
\${true||false  } : ${true||false }<br>
\${false||false  } : ${false||false }<br>
<br>
<%-- XOR 는 안된다
\${true^true  } : ${true^true }<br>
\${true^false  } : ${true^false }<br>
\${false^false  } : ${false^false }<br>--%>

 
 <br>
\${true? "참" : "거짓"  } : ${true? "참" : "거짓"  }<br>
 
</body>
</html>