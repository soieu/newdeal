<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String chkVal = request.getParameter("inactiveToday");

if(chkVal != null && chkVal.equals("off")) {
	Cookie cookie = new Cookie("popupClose", "off");
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
	out.println("��Ű : �Ϸ絿�� ���� ���� ");
}
%>
