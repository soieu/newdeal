<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>안녕하세요~</h2>
	<hr>
	<p>오늘 날짜는 <%=java.time.LocalDateTime.now()  %>입니다.</p>
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
	<%-- 주석문 --%>
	<hr>
	<%
	%>
</body>
</html>