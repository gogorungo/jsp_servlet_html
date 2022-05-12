<%@page import="bas.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
<h1>로그인 처리</h1>

<%
	//String id = "asdf", pw = "1234";
	String msg="로그인 실패";
	String[][] info = new String[][]{{"aa","1111","이효리"},{"bb","2222","삼효리"},
		{"cc","3333","사효리"},{"dd","4444","오효리"},{"ee","5555","육효리"}};

	for(int i = 0; i < info.length; i++){
		if(info[i][0].equals(request.getParameter("pid")) && info[i][1].equals(request.getParameter("pw"))){
			msg = "로그인 성공";
			application.setAttribute("inUser", new MemberDTO(info[i][0],info[i][2]));
		}
	}
%>

<script>
	alert("<%=msg%>");
	location.href = "main.jsp";
</script>

</body>
</html>