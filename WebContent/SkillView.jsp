<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Selected Skills</title>
<style>
  #div1{
    background-color: wheat;
    padding:10px;
    width:250px;
    margin:0px auto;
  }
</style>
</head>
<body>

<%@include file="Header.jsp" %>
    <h2>You selected</h2>
    <ul>
    <%
    String [] arr = request.getParameterValues("chkskills");
    for(String ar: arr) {
    	out.println("<li>"  + ar + "</li>");
    }
    %>
    </ul>
</body>
</html>