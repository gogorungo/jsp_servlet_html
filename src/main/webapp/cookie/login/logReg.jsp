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

	Cookie cooID = new Cookie("pid",request.getParameter("pid"));
	Cookie cooPW = new Cookie("pw",request.getParameter("pw"));
	
	response.addCookie(cooID);
	response.addCookie(cooPW);
	
	String id, pw;
	
	Cookie[] cooArr = request.getCookies();
	
	for(Cookie coo : cooArr){
		id = coo.getName();
		pw = coo.getValue();
		out.println(id + ","+pw);
	}
	
		
	for(int i = 0; i < info.length; i++){
		
		if(info[i][0].equals("") && info[i][1].equals("")){
			
			msg = "로그인 성공";
			Cookie cooName = new Cookie("pname",info[i][2]);
			response.addCookie(cooName);
		}
	}
%>

<script>
	alert("<%=msg%>");
	location.href = "main.jsp";
</script>

</body>
</html>