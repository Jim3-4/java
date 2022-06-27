<%@page import="java.util.Iterator"%>
<%@page import="days02.DeptDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.DBconn"%>
<%@page import="java.sql.Connection"%><%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
ArrayList<DeptDTO> list=null;
Connection conn=DBconn.getConnection();
PreparedStatement pstmt=null;

String sql="SELECT deptno, dname, loc"+"FROM dept";
int deptno;
String dname,loc;

try{
	pstmt=conn.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	
	if(rs.next()){
		list=new ArrayList<DeptDTO>();
		do{
			deptno=rs.getInt("deptno");
			dname=rs.getString("dname");
			loc=rs.getString("loc");
			
			DeptDTO dto=new DeptDTO(deptno,dname,loc);
			list.add(dto);
		}while(rs.next());
	
	}
	
	pstmt.close();
	rs.close();
}catch(Exception e){
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<title>2022. 6. 15.-오후 3:19:28</title>
</head>
<body>
<h3></h3>
<select id="selDept" name="selDept">

 <%
    Iterator<DeptDTO> ir = list.iterator();
    while (ir.hasNext()) {
        DeptDTO dto = ir.next();
        %>
        <option value="<%=dto.getDeptno()%>"><%=dto.getDname() %></option>
        <%
    }
    %>
</select>
</body>
</html>