<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	<%
	ArrayList<String> al = (ArrayList<String>)(session.getAttribute("lists"));
	for(String str : al) 
		out.print(str + "<br/>");
	%>
</body>
</html>