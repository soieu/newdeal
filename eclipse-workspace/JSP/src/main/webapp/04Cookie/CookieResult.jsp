<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��Ű�� Ȯ���ϱ�(��Ű�� ������ ������ ������)</h2>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i = 0; i < cookies.length; i++) {
			String cookieName = cookies[i].getName();
			String cookieValue = cookies[i].getValue();
			out.println(String.format("��Ű�� : %s - ��Ű�� : %s<br/>", cookieName, cookieValue));
		}
	}
	%>
</body>
</html>