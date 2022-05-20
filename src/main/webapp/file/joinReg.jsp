<%@page import="java.util.regex.Pattern"%>
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
	//ff = "C:\\Users\\satae\\jsp_work\\jspProj\\src\\main\\webapp\\zzz";
	
	MultipartRequest mm = new MultipartRequest(
			request,
			ff, // 파일 저장 위치
			10*1024*1024, // 최대크기. 10MB 로 설정
			"UTF-8", // 인코딩 방식
			new DefaultFileRenamePolicy() // 파일 이름 중복 정책. 원래는 수동으로 만들어야 한다
			);
	
	String msg = "사진 파일이 아닙니다.";
	String goUrl = "joinForm.jsp";
	
	// image/ 그외 모든 타입 이 아니라면
	if(mm.getContentType("pic")!=null && Pattern.matches("image/.*", mm.getContentType("pic"))){ 
		msg = "가입되었습니다.";
		goUrl = "../index.jsp";
		
		MemberDTO dto = new MemberDTO();
		
	 	dto.setPid(mm.getParameter("pid"));
		dto.setPname(mm.getParameter("pname"));
		dto.setPw(mm.getParameter("pw"));
		dto.setAge(Integer.parseInt(mm.getParameter("age")));
		dto.setMarriage(Boolean.parseBoolean(mm.getParameter("marriage"))); 
		dto.setPic(mm.getFilesystemName("pic"));
		dto.setMyff(mm.getFilesystemName("myff"));
		
		new MemberDAO().insert2(dto);
		
		
		
	}else{
		if(mm.getFile("pic")!=null){
			mm.getFile("pic").delete();
		}
		if(mm.getFile("myff") != null){
			mm.getFile("myff").delete();
		}
	}


%>
	<script>

		aleret("<%=msg%>")
			/* 아니라면 돌아간다 */
		location.href="<%=goUrl%>"
	</script>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinReg</title>
</head>
<body>
<h1>joinReg</h1>
<br>

<script>
	alert("가입되었습니다");
	location.href="../";
</script>



</body>
</html>