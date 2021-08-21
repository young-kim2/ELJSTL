﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>


    <h3>JSP Way</h3>
	<%
	if( "1".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: red">빨강</span>
	<%
	} else if( "2".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: green">녹색</span>
	<%
	} else if( "3".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: blue">파랑</span>
	<%
	}
	%>
	
	<h3>JSTL Way</h3>
	<!-- c:choose ~ c:when ~ c:otherwise -->
	<c:choose>
	<c:when test="${param.color==1}">
	<!-- if -->
	<span style="color: red">빨강</span>
	</c:when>
	<c:when test="${param.color==2}">
	<!-- else if -->
	<span style="color: green">녹색</span>
	</c:when>
	<c:otherwise>
	<span style="color: blue">파랑</span>
	</c:otherwise>
	</c:choose>


	




	
</body>
</html>