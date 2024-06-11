<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="common.Person" %>
<%
request.setAttribute("requestString", "request 영역의 문자열");
request.setAttribute("requestPerson", new Person("안중근", 31));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>포워드로 전달된 페이지</h2>
	<h4>RequestMain 파일의 리퀘스트 영역 속성 읽기</h4>
	<%
	Person pPerson = (Person)(request.getAttribute("requestPerson"));
	%>
	<ul>
		<li>String : <%=request.getAttribute("requestString") %></li>
		<li>Person : <%=pPerson.getName() %>, <%=pPerson.getAge() %>	
	</ul>
	<h4>매개변수로 전달된 값 출력하기</h4>
	<%
		request.setCharacterEncoding("UTF-8");
		out.println(request.getParameter("paramHan"));
		out.println(request.getParameter("paramEng"));
	%>
	

</body>
</html>