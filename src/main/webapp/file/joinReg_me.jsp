<%@page import="jdbc_p.MemberDTO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="jdbc_p.MemberDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("UTF-8"); 

	String ff = request.getRealPath("zzz");
	ff = "C:\\Users\\satae\\jsp_work\\jspProj\\src\\main\\webapp\\zzz";
	
	MultipartRequest mm = new MultipartRequest(
			request,
			ff, // 파일 저장 위치
			10*1024*1024, // 최대크기. 10MB 로 설정
			"UTF-8", // 인코딩 방식
			new DefaultFileRenamePolicy() // 파일 이름 중복 정책. 원래는 수동으로 만들어야 한다
			);

%>
<jsp:useBean id="mm1" class="jdbc_p.MemberDTO" />
<jsp:setProperty property="*" name="mm1"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinReg</title>
</head>
<body>
<h1>joinReg</h1>
<%=mm1 %>
<br>
<%
	
	MemberDTO dto = new MemberDTO();

	int no = new MemberDAO().insert_pic(mm1);
	
 	dto.setPid(mm.getParameter("pid"));
	dto.setPname(mm.getParameter("pname"));
	dto.setPw(mm.getParameter("pw"));
	dto.setAge(Integer.parseInt(mm.getParameter("age")));
	dto.setMarriage_string(mm.getParameter("marriage")); 
	
	
	new MemberDAO().insert_pic(dto);
	
%>



<script>
	alert("가입되었습니다");
	location.href="../";
</script>



</body>
</html>