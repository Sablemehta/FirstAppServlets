<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hexaware App</title>
</head>
<body>

<%@include file="Header.jsp" %>
   <h2 align="center">Emi Calculation Result</h2>
   <hr/>
   <table cellpadding="10" bgcolor="wheat" style="margin:0px auto">
    <tr>
      <td>Name</td>
      <td><%=request.getParameter("txtname")%></td>
    </tr>
    <tr>
      <td>Loan Amount</td>
      <td><%=request.getParameter("txtamt")%></td>
    </tr>
    <tr>
      <td>Years</td>
      <td><%=request.getParameter("txtyears")%></td>
    </tr>
    <tr>
      <td>Compound Interest</td>
      <td><%=request.getAttribute("compint")%></td>
    </tr>
    <tr>
      <td>EMI</td>
      <td><%=request.getAttribute("emires")%></td>
    </tr>
  </table>
</body>
</html>