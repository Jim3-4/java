<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<title>2022. 6. 17.-오후 4:35:48</title>
</head>
<body>
<h3>ex06_02.jsp</h3>
<%
application.setAttribute("name","admin");
session.setAttribute("age","20");
request.setAttribute("addr", "seoul");
pageContext.setAttribute("color","red");
%>
a name: <%= application.getAttribute("name") %><br>
a age: <%= application.getAttribute("age") %><br>
r addr: <%= application.getAttribute("addr") %><br>
p color: <%= application.getAttribute("color") %><br>

<br>

<a href="ex06_03.jsp">ex06_03.jsp</a>
페이지 이동
 color x
 adder x 
 age o
 name o
 
</body>
</html>