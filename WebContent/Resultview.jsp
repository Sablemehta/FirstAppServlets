<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@include file="Header.jsp" %>
    <h2 align="center">Result of MCQ's</h2>
   <hr/>
   <table cellpadding="10" bgcolor="wheat" style="margin:0px auto">
    <tr>
      <td>TotalMarks</td>
      <td><%=request.getAttribute("totalMarks")%>/<%=request.getAttribute("questions")%></td>
    </tr>
    <tr>
      <td>Percentage</td>
      <td><%=request.getAttribute("percentage")%></td>
    </tr>
    <tr>
      <td>Result</td>
      <td><%=request.getAttribute("message")%></td>
    </tr>
   
  </table>
</body>
</html>