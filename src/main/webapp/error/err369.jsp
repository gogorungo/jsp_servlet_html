<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>369게임</title>
</head>
<body>
<h1>369게임</h1>

<%

	for(int i=1;i<=10;i++){
		int j;
		try{
			j = i%3;
			j=i/j;
			out.println(i + "<br>");
		}catch(Exception e){
			out.println("짝"+"<br>");
		}
	}

	for(int i=11;i<=20;i++){
		int j;
		try{
			j = i%13;
			j= i/j;
			
			j = i%16;
			j= i/j;
			
			j = i%19;
			j= i/j;
			out.println(i + "<br>");
		}catch(Exception e){
			out.println("짝"+"<br>");
		}
	}
	
	for(int i=1;i<=20;i++){
		int j;
		int k = i%10;
		try{
			j = k%3;
			j=k/j;
			out.println(i + "<br>");
		}catch(Exception e){
			try{
				j = i/k;
				out.println("짝"+"<br>");
			}catch(Exception e1){
				out.println(i+"<br>");
			}
		}
	}

 
%>

</body>
</html>