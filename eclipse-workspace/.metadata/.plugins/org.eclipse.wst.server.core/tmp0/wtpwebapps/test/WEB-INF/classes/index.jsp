<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>�ȳ��ϼ���~</h2>
	<hr>
	<p>���� ��¥�� <%=java.time.LocalDateTime.now()  %>�Դϴ�.</p>
	<hr>
	<h2>
		scripting tag
	</h2>
	<%! 
	int count=3; 
	
	String makeItLower(String data) {
		return data.toLowerCase();
	}	
	%>
	<%
	for(int i = 1; i <= count; i++) {
		out.println("Java Page" + i + "<br>");
	}
	%>
	<%=
	makeItLower("Hello World")
	%>
	<%-- �ּ��� --%>
	<hr>
	<%
	%>
</body>
</html>