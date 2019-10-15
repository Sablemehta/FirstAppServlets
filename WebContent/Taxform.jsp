<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deutche Banking App</title>
</head>
<body>

<%@include file="Header.jsp"%>
<%!
   public void jspInit(){
	System.out.println("Taxform jsp init.");
}
%>

<%!
   public void jspDestroy(){
	System.out.println("Taxform jsp destroy.");
}
%>
<h2 align="center">Tax Calculation</h2>
<hr/>
<form action="tax">
  <table cellpadding="10" bgcolor="wheat" style="margin:0px auto">
    <tr>
      <td>Name</td>
      <td><input type="text" name="txtname" required pattern="[a-z][A-Z]{3-15}"/></td>
    </tr>
    <tr>
      <td>Income</td>
      <td><input type="text" name="txtincome" required min="100000"/></td>
    </tr>
    <tr>
     <td colspan="2" align="center"><input type="submit" value="Calculate" name="submit"/></td>
    </tr>
  </table>
  
</form>
</body>
</html>