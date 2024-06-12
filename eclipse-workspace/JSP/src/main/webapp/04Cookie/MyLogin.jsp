<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String idSave = "off";

Cookie[] cookies = request.getCookies();
if(cookies != null) {
	for(Cookie c : cookies) {
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		if(cookieName.equals("idSave")) {
			idSave = cookieValue;
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	$(function() {
		$('#')
	})
</script>
</head>
<body>
	<h2>로그인</h2>
	<form name="loginForm">
		<input type="text" id="id"/>
		<input type="password" id="pw"/>
		<input type="checkbox" id="idSave" />
		<input type="submit" />
	</form>
</body>
</html>