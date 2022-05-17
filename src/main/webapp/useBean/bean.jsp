<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mm1" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="pid" param="pid" name="mm1"/>
<jsp:setProperty property="age" param="age" name="mm1"/>
<jsp:setProperty property="marriage" param="marriage" name="mm1"/>
<%// <jsp:setProperty property="tel" param="tel" name="mm1"/> setter가 없으면 사용 불가  %>

<jsp:useBean id="mm2" class="jdbc_p.MemberDTO" scope="request"/>
<jsp:setProperty property="pid" param="pid" name="mm2"/>


<jsp:useBean id="mm3" class="jdbc_p.MemberDTO" scope="session"/>
<jsp:setProperty property="pid" param="pid" name="mm3"/>
<jsp:setProperty property="age" value="29" name="mm3"/>

<jsp:useBean id="mm4" class="jdbc_p.MemberDTO" scope="application"/>
<jsp:setProperty property="pid" param="pid" name="mm4"/>
<jsp:setProperty property="marriage" value="false" name="mm4"/>

<jsp:useBean id="mm5" class="jdbc_p.MemberDTO" scope="application"/>
<jsp:setProperty property="*" name="mm5"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bean</title>
</head>
<body>
<h1>bean</h1>

mm1:<%=mm1 %><br>
Attribute:<%=request.getAttribute("mm1") %><br>
<br><br>
mm2:<%=mm2 %><br>
Attribute:<%=request.getAttribute("mm2") %><br>
<br><br>
mm3:<%=mm3 %><br>
Attribute:<%=request.getAttribute("mm3") %><br>
<br><br>
mm4:<%=mm4 %><br>
Attribute:<%=request.getAttribute("mm4") %><br>
<br><br>
mm5:<%=mm5 %><br>
Attribute:<%=request.getAttribute("mm5") %><br>

</body>
</html>