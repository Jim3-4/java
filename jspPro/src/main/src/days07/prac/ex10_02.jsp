<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="com.util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<title>2022. 6. 24.-오전 6:32:07</title>
</head>
<body>
<h3></h3>
<%
Cookies cookies=new Cookies(request);
Set<Entry<String,Cookie>>set=cookies.cookieMap.entrySet();
Iterator<Entry<String, Cookie>> ir= set.iterator();
while(ir.hasNext()){
	Entry<String , Cookie> entry=ir.next();
	String cname=entry.getKey();
	String cvalue=entry. getValue().getValue();
%>
<li><%=cname %>-<%=cvalue %></li>
<%} %>

id:${cookie.id.value }<br>
user:${cookie.user.value }<br>
age: ${cookie.age.value }<br>
<hr>
<c:forEach items="${cookie }"  var="entry">
<li>${entry.key }-${entry.value.value }</li>
</c:forEach>.
</body>
</html>