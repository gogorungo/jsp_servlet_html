<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testScore</title>
<link rel="stylesheet" type="text/css" href="../css/testScore.css">
</head>
<body>
<h1>testScore</h1>
<form action="insertScore.jsp" method="post">
	<div>이름<input type="text" name="pname" placeholder="이름을 써달라" /></div>
	<div>국어<input type="text" name="kor" /></div>
	<div>영어<input type="text" name="eng" /></div>
	<div>수학<input type="text" name="mat" /></div>
	<input type="submit" value="입력" />
</form>


</body>
</html>