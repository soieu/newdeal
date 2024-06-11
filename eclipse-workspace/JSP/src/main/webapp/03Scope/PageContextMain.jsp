<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="common.Person" %>
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2>page영역의 속성값 읽기</h2>
	<%
	int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
	String pString = (String)(pageContext.getAttribute("pageString"));
	Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>

	<ul>
		<li>integer : <%=pInteger%></li>
		<li>string : <%=pString%></li>
		<li>person : <%=pPerson.getName()%>, <%=pPerson.getAge()%></li>
	</ul>	
	
	<h2>include된 파일에서 page 영역 읽어오기</h2>
	<%@ include file="PageInclude.jsp" %>
	
	<h2>페이지 이동 후 page 영역 읽어오기</h2>
	<a href="pageLocation.jsp">PageLocation.jsp 바로가기</a>

</body>
</html>