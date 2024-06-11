<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<h2>request 영역의 속성값 삭제하기</h2>
	<%
		request.removeAttribute("requestString");
		request.removeAttribute("requestInteger"); // 없는 속성이지만 에러 없음
	%>
	<h2>request 영역의 속성값 읽기</h2>
	<%
		Person rPerson = (Person)(request.getAttribute("requestPerson"));
	%>
	<ul>
		<li>String : <%= request.getAttribute("requestString")%>;
		<li>Person : <%= rPerson.getName()%>, <%= rPerson.getAge()%>;
	</ul>
	<h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>

	<%
		request.getRequestDispatcher(
					"RequestForward.jsp?paramHan=한글&paramEng=English")
				.forward(request, response);
	 %>
</body>
</html>