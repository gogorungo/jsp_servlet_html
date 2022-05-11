<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ageForm</title>
</head>
<body>
<h1>ageForm</h1>
<%
	// 회원기본정보를 입력받아 회원가입 입력창으로 유도
	// 기본정보 - 이름, 주민번호
	// 회원종류 - 미성년자, 성인, 외국인
	// 미성년자 (만 15세 미만) - 이름, 부모 주민번호, 전화, 학교
	// 성인 - 이름, 전화, 회사
	// 외국인 - 이름, 전화, 국적
%>

<form action="ageReg.jsp">
	<table border="">
		<tr>
			<td>이름</td>
			<td><input type="text" name="pname" /></td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td><input type="text" name="pnum" /></td>
		</tr>
		<td colspan="2" align="center">
			<input type="radio" name="abc" value="in" checked="checked"/>한국인
			<input type="radio" name="abc" value="out" />외국인
		</td>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="입력" />
			</td>
		</tr>
	</table>
</form>


</body>
</html>