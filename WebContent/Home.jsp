<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hexa App</title>
<style>
   .btn{
   padding:10px;
   text-align:center;
   margin:50px;
   background-color:orange;
   color:black;
   border-radius:5px;
   box-shadow:5px 5px 5px black;
   font-weight:bold;
   }
   .btn:hover{
     background-color:#cef0d7;
     color:#32a852;
   }
   nav a{
   text-decoration :none;
   
   }
</style>
</head>
<body>
<%@include file="Header.jsp" %>
<h2 align="center">Home Page</h2>
<hr/>
<nav style="width:250px; margin:0px auto">


<a  href="Taxform.jsp"><div class="btn"">Calculate Tax</div></a>
<a  href="Emiform.jsp"><div class="btn"">Calculate EMI</div></a>
<a  href="Quizform.jsp"><div class="btn"">Play java Quiz</div></a>
<a  href="Skillform.jsp"><div class="btn"">Update Your Skills</div></a>
<a  href="download"><div class="btn"">Download OS</div></a>
<a href=""></a></div>
</nav>
</body>
</html>