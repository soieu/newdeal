<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>�̵� �� page������ �Ӽ� �� �б�</h2>
	<%
	Object pInteger = (pageContext.getAttribute("pageInteger"));
	Object pString = (pageContext.getAttribute("pageString"));
	Object pPerson = (pageContext.getAttribute("pagePerson"));
	%>
</body>
<ul>
	<li>Integer : <%= (pInteger == null) ? "�� ����" : pInteger %></li>
</ul>
</html>