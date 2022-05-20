<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//request.setCharacterEncoding("UTF-8");

	// 가상서버의 zzz에 저장
	String ff = request.getRealPath("zzz");
	// \\ 를 쓰거나 / 를 쓴다. \는 서식문자로 인식
	ff = "C:\\Users\\satae\\jsp_work\\jspProj\\src\\main\\webapp\\zzz";
	
	MultipartRequest mm = new MultipartRequest(
			request,
			ff, // 파일 저장 위치
			10*1024*1024, // 최대크기. 10MB 로 설정
			"UTF-8", // 인코딩 방식
			new DefaultFileRenamePolicy() // 파일 이름 중복 정책. 원래는 수동으로 만들어야 한다
			);

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadReg</title>
</head>
<body>
<h1>uploadReg</h1>


	<table border="">
		<tr>
		<!-- multipart/form-data이기 때문 -->
			<td>이름</td>
			<td><%=mm.getParameter("pname") %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=mm.getParameter("age") %></td>
		</tr>
		<tr>
			<td>파일1</td>
			<!-- 오리지널 파일 명을 알게 해준다  -->
			<td><%=mm.getOriginalFileName("upff1") %>,
			<!-- 어떤 이름으로 받아졌는지 알게 해준다 -->
			<%=mm.getFilesystemName("upff1") %>,
			<!-- 파일의 타입을 알려준다 -->
			<%=mm.getContentType("upff1") %>,
			<!-- 파일에 해당하는 클래스를 알려줌 -->
			<%=mm.getFile("upff1") %>,
			<!-- 파일이 올라오자마자 삭제 -->
			<%=mm.getFile("upff1").delete() %>
			</td>
		</tr>
		<tr>
			<td>파일2</td>
			<td><%=mm.getParameter("upff2") %>,
			<%=mm.getFilesystemName("upff2") %>,
			<%=mm.getContentType("upff2") %>
			</td>
		</tr>
	</table>


</body>
</html>