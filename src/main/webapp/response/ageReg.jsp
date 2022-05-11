<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String pname = request.getParameter("pname");

	String pabc = request.getParameter("abc");

	String pnum = request.getParameter("pnum");
	
	String pyear = pnum.substring(0,2);
	
	String mw = pnum.substring(7,8);

	int year = Integer.parseInt(pyear);
	
	int first = Integer.parseInt(mw);

	String sungin = "";
	
	if(pabc.equals("in")){
		if(first == 1 || first == 2){
			sungin = "sungin";
		}else if(first == 3 || first == 4){
			if(year<=7){
				sungin = "sungin";
			}else if(year>7){
				sungin = "misungin";
			}
		}
	}else if(pabc.equals("out")){
		sungin = "ankor";
	}
	
	response.sendRedirect("choice/" + sungin + ".jsp?pname="+pname);
	


%>