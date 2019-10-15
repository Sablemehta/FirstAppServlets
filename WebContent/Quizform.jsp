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
<h2 align="center">Play Java Quiz</h2>
<hr/>
<div id= "div1">
<form action="quiz" method="post">
1.what is the size of int type<br/>
<input type="radio" name="ques1" value="1">1<br/>
<input type="radio" name="ques1" value="2">2<br/>
<input type="radio" name="ques1" value="4">4<br/>
<input type="radio" name="ques1" value="8">8<br/>
<hr/>
2.what is the size of short type<br/>
<input type="radio" name="ques2" value="1">1<br/>
<input type="radio" name="ques2" value="2">2<br/>
<input type="radio" name="ques2" value="4">4<br/>
<input type="radio" name="ques2" value="8">8<br/>
<hr/>
3.what is the size of byte type<br/>
<input type="radio" name="ques3" value="1">1<br/>
<input type="radio" name="ques3" value="2">2<br/>
<input type="radio" name="ques3" value="4">4<br/>
<input type="radio" name="ques3" value="8">8<br/>
<hr/>
4.what is the size of long type<br/>
<input type="radio" name="ques4" value="1">1<br/>
<input type="radio" name="ques4" value="2">2<br/>
<input type="radio" name="ques4" value="4">4<br/>
<input type="radio" name="ques4" value="8">8<br/>
<hr/>
5.what is the size of float type<br/>
<input type="radio" name="ques5" value="1">1<br/>
<input type="radio" name="ques5" value="2">2<br/>
<input type="radio" name="ques5" value="4">4<br/>
<input type="radio" name="ques5" value="8">8<br/>
<hr/>
6.what is the size of double type<br/>
<input type="radio" name="ques6" value="1">1<br/>
<input type="radio" name="ques6" value="2">2<br/>
<input type="radio" name="ques6" value="4">4<br/>
<input type="radio" name="ques6" value="8">8<br/>
<hr/>
<div align="center"><input type="submit" value="finish"/></div>
</form>
</div>

</body>
</html>
