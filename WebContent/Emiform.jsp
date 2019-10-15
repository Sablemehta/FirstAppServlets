<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMI Calculation</title>
</head>
<body>
<%@include file="Header.jsp" %>
<h2 align="center">Emi Calculation</h2>
<hr/>
<form action="emi">
  <table cellpadding="10" bgcolor="wheat" style="margin:0px auto">
    <tr>
      <td>Name</td>
      <td><input type="text" name="txtname" required pattern="[a-z][A-Z]{3-15}"/></td>
    </tr>
    <tr>
      <td>Loan Amount</td>
      <td><input type="number" name="txtamt" required min="100000"/></td>
    </tr>
    <tr>
      <td>Duration (in years)</td>
      <td><input type="number" name="txtyears" required min="3" max="20"/></td>
    </tr>
    <tr>
     <td colspan="2" align="center"><input type="submit" value="Calculate Emi" name="submit"/></td>
    </tr>
  </table>
  
</form>
</body>
</html>