<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="utils.CookieManager" %>
<%
String loginId = CookieManager.readCookie(request, "loginId");

String cookieCheck = "";
if(!loginId.equals("")) {
	cookieCheck = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>�α��� ������</h2>
	<form action="IdSaveProcess.jsp" method="post">
		���̵� : <input type="text" name="user_id" value="<%=loginId %>" />
		<input type="checkbox" name="save_check" value="Y" <%= cookieCheck %> />
		���̵� �����ϱ�
	<br/>
	�н����� : <input type="text" name="user_pw" />
	<br/>
	<input type="submit" value="�α����ϱ�" />
	</form>
</body>
</html>