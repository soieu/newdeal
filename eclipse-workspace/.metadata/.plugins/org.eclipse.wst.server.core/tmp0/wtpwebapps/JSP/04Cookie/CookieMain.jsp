<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>1. ��Ű ����</h2>
	<%
	Cookie cookie = new Cookie("myCookie", "��Ű������");
	cookie.setPath(request.getContextPath()); // ���ؽ�Ʈ ��Ʈ
	cookie.setMaxAge(3600);
	response.addCookie(cookie); // ���� ����� ��Ű �߰�
	%>
	<h2>2. ��Ű ���� ���� ��Ű�� Ȯ���ϱ�</h2>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null) {
			for(Cookie c : cookies) {
				String cookieName = c.getName();
				String cookieValue = c.getValue();
				out.println(String.format("%s:%s<br/>", cookieName, cookieValue));
		}
	}
	%>
	
	<h2>3.������ �̵� �� ��Ű�� Ȯ���ϱ�</h2>
	<a href="CookieResult.jsp">
		���� ���������� ��Ű�� Ȯ���ϱ�
	</a>
</body>
</html>