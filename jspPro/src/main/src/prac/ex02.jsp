<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<title>2022. 6. 19.-오후 3:48:17</title>
</head>
<body>
<h3></h3>
<%
String contextPath=request.getContextPath();
%>
 <a href="http://localhost/jspPro/prac/now">NowServlet.java</a><br>
 <a href="<%= contextPath %>/prac/Ex01">days01/now</a><br>
 <a href="<%= contextPath %>/now">/now</a><br>
 <a href="<%= contextPath %>/servlet/sample.ss">/servlet/sample.ss</a><br>
</body>
</html>