<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="common.Person" %>
<%
request.setAttribute("requestString", "request ������ ���ڿ�");
request.setAttribute("requestPerson", new Person("���߱�", 31));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>request ������ �Ӽ��� �����ϱ�</h2>
	<%
		request.removeAttribute("requestString");
		request.removeAttribute("requestInteger"); // ���� �Ӽ������� ���� ����
	%>
	<h2>request ������ �Ӽ��� �б�</h2>
	<%
		Person rPerson = (Person)(request.getAttribute("requestPerson"));
	%>
	<ul>
		<li>String : <%= request.getAttribute("requestString")%>;
		<li>Person : <%= rPerson.getName()%>, <%= rPerson.getAge()%>;
	</ul>
	<h2>������� ���������� request ���� �Ӽ��� �б�</h2>

	<%
		request.getRequestDispatcher(
					"RequestForward.jsp?paramHan=�ѱ�&paramEng=English")
				.forward(request, response);
	 %>
</body>
</html>