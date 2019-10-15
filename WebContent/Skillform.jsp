<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hexa App</title>
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
<h1>Select your skills</h1>
<hr/>
<div id="div1">
<form action="SkillView.jsp">
<input type="checkbox" name="chkskills" value="java"/>java<br/>
<input type="checkbox" name="chkskills" value="jee"/>jee<br/>
<input type="checkbox" name="chkskills" value="angular"/>angular<br/>
<input type="checkbox" name="chkskills" value="react"/>react<br/>
<input type="checkbox" name="chkskills" value="ejb"/>ejb<br/>
<input type="checkbox" name="chkskills" value="jsf"/>jsf<br/>
<input type="checkbox" name="chkskills" value="spring"/>spring<br/>
<input type="checkbox" name="chkskills" value="jpa"/>jpa<br/>
<div align="center"><input type="submit" value="finish"/></div>
</form>
</div>
</body>
</html>