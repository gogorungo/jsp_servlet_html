<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<h1>게시판</h1>

<jsp:include page="top.jsp" />
<!-- el은 Attribute 에 있는 내용을 가져올 수 있다 -->
<jsp:include page="main/${mainUrl }.jsp" />
<jsp:include page="bottom.jsp" />


</body>
</html>