<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
      // Scriptlet 
      // JSP 기본 객체 - 요청(request),  응답(response), session 등등
      // String getParameter() 메서드 
      /* 
      String name = request.getParameter("name");
      int age = Integer.parseInt( request.getParameter("age")  );
       */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 14. - 오후 2:47:53</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02_ok.jsp</h3>
name:${param.name }<br>
age:${param.age }<br> 
<pre>
jsp  == Java Server Page
자바 웹 기술 - 서블릿(Servlet), JSP

ms사     asp
   .net   aspx
            php
            등등
            
      http://localhost/jspPro/days01/ex02_ok.jsp
      ?  쿼리스트링(QueryString)
      name=%ED%99%8D%EA%B8%B8%EB%8F%99   한글 -> %16진수 변경
      &
      age=20      
</pre>


</body>
</html>




