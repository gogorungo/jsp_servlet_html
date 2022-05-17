<%@page import="jdbc_p.MemberDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="jdbc_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="dto" class="jdbc_p.MemberDTO" />
<jsp:setProperty property="*" name="dto"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
<h1>로그인 처리</h1>

<%
	MemberDTO mmm = new MemberDAO().detail(dto);
	System.out.println("logReg:"+mmm);
	String msg="로그인 실패";
	
	if(mmm != null){
		msg = "로그인 성공";
		
		session.setAttribute("inUser", mmm);
	}
	
	
/* 	HashMap<String, MemberDTO> mems = new HashMap();
	mems.put("",new MemberDTO());
	
	mems.put("aaa",new MemberDTO("aaa","1111","장동건"));
	mems.put("bbb",new MemberDTO("bbb","2222","장서건"));
	mems.put("ccc",new MemberDTO("ccc","3333","장남건"));
	mems.put("ddd",new MemberDTO("ddd","4444","장중건"));
	mems.put("eee",new MemberDTO("eee","5555","북두신건"));
	
	String pid = request.getParameter("pid");
	Strimg msg = "로그인 실패";
	if(mems.containsKey(pid)){
		MemberDTO dto
	}



	//String id = "asdf", pw = "1234";
	String msg="로그인 실패";
	String[][] info = new String[][]{{"aa","1111","이효리"},{"bb","2222","삼효리"},
		{"cc","3333","사효리"},{"dd","4444","오효리"},{"ee","5555","육효리"}};

	for(int i = 0; i < info.length; i++){
		if(info[i][0].equals(request.getParameter("pid")) && info[i][1].equals(request.getParameter("pw"))){
			msg = "로그인 성공";
			session.setAttribute("inUser", new MemberDTO(info[i][0],info[i][2]));
		}
	} */
%>

<script>
	alert("<%=msg%>");
	location.href = "main.jsp";
</script>

</body>
</html>