<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mini Board</title>
</head>
<body>
웹 게시판<br>
<%
if(session.getAttribute("user") != null){
	// 
	Map<String, Object> user = (Map<String, Object>)session.getAttribute("user");
	out.println("Welcome, " + user.get("ui_name"));
	out.println("<br><a href=\"/views/user/logout\">Log Out</a>");
	out.println("<br><a href=\"/views/board/list\">게시판</a>");
} else {
%>
<a href="/views/user/login">LOGIN</a><br>
<a href="/views/user/signup">Sign Up</a>
<%
}
%>



</body>
</html>