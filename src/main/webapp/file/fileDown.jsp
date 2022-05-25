<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 파일 다운만 하면 되기 때문에 화면에 보여줄 필요가 없다 -->    
    
<%

	// 크롬문제로 다운이 안되는 경우 해당 인코딩을 해주면 가능해진다
/* 	String fName = URLEncoder.encode("한글한글.docx","UTF-8");	
	response.setHeader("Content-Disposition", "attachment;filename=zzz.docx"); */

	// 파일을 다운받는다
	// Content-Disposition, 파일을 붙인다;받을 파일이름
	response.setHeader("Content-Disposition", "attachment;filename=zzz.docx");
	
	// 반드시 out을 비워줘야한다. 비워주지 않으면 outputStream 이 이미 있다고 에러가 난다
	out.clear();
	out = pageContext.pushBody();
	
	
	// 이렇게만 쓰면 가상주소가 주어진다
	String path = request.getRealPath("fff");
	
	//그러므로 경로 지정 필요
	// 해당주소의 파일을 위에 setHeader 파일명으로 보내준다
	path = "C:\\Users\\satae\\jsp_work\\jspProj\\src\\main\\webapp\\fff";

	path += "\\asdf.docx";
	
	FileInputStream fis = new FileInputStream(path);
	ServletOutputStream sos = response.getOutputStream();
	
	byte [] buf = new byte[1024];
	
	while(fis.available() >0){
		int len = fis.read(buf);
		sos.write(buf,0,len);
	}
	
	sos.close();
	fis.close();



%>