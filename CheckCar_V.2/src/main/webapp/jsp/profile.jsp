<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.model.MemberBean"%>
<%@page import="javax.swing.text.DefaultEditorKit.BeepAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@page import="com.example.model.CarBean"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
 <% CarBean bean = null;
 String result = "";
 MemberBean bean2 = null;

 %>
<%
 	bean = (CarBean) request.getSession().getAttribute("cardao");
    bean2 = (MemberBean) request.getSession().getAttribute("LoginMember");
	result = (String) request.getAttribute("messes");
%>
<body>
<%@include file = "Nav.jsp" %>
Profile
</body>
</html>