<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<title>2022. 6. 15.-오후 4:06:34</title>
</head>
<body>
<h3></h3>
<pre>
p76 request 기본 객체의 요청 파라미터 메소드
표 3.4
getParameter(String name)
getParameterValues()
getParameterNames()
getParameterMap()

</pre>

<form action="ex07_ok.jsp"  method="get">
이름 : <input type="text" name="name"  placeholder=" 이름을 입력하세요"><br>
성별: <input type="radio" name="gender" value="m" checked="checked">남자
<input type="radio" name="gender" value="f">여자

좋아하는 동물:
<input type="checkbox" name="pet" value="puppy"/>개
 					<input type="checkbox" name="pet" value="pig"/>돼지
					<input type="checkbox" name="pet" value="cat"/>고양이
<input type="submit">
</form>
</body>
</html>