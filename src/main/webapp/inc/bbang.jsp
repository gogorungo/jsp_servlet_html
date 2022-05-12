<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String main = "info";

	if(request.getParameter("main") != null){
		main = request.getParameter("main");
	}

	String mainUrl = "menu/"+main+".jsp";

%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빵집</title>

<link rel="stylesheet" href="../css/in_bbang.css" />

</head>
<body>
<h1>빵집</h1>
<header>
<jsp:include page="bbang_top.jsp" />
</header>

<section>
	<jsp:include page="<%=mainUrl %>" />
</section>


</body>
</html>