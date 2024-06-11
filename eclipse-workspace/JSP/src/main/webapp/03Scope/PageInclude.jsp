<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Include 페이지</h4>
	<%
	int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
	Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li>Integer : <%= pInteger2 %></li>
		<li>String : <%= pageContext.getAttribute("pageString") %></li>
		<li>Integer : <%= pPerson2.getName() %>, <%= pPerson2.getAge() %></li>
	</ul>
</body>
</html>