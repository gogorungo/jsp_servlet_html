<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String fName= request.getParameter("fName");
	String ffName = URLEncoder.encode(fName,"UTF-8");	
	response.setHeader("Content-Disposition", "attachment;filename="+ffName);

	out.clear();
	out = pageContext.pushBody();

	String path = request.getRealPath("fff");
	
	path = "C:\\Users\\satae\\jsp_work\\jspProj\\src\\main\\webapp\\fff";
	
	path += "\\"+fName;
	
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
    