<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("memberid");
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/jjdevmail?useUnicode=true&characterEncoding=euckr";
	String dbUser = "root";
	String dbPw = "java0000";
	ResultSet rs=null;
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, dbUser, dbPw);
	String sql="select * from member";
	
	%>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>비번</td>
			<td>이름</td>
			<td>남녀</td>
			<td>나이</td>
		</tr>
		
	<% 
	PreparedStatement sw=conn.prepareStatement(sql);
	
	rs=sw.executeQuery();
	while(rs.next()){
	%><tr>
		<td><%=rs.getString("member_id") %></td>
		<td><%=rs.getString("member_pw") %></td>
		<td><%=rs.getString("member_name") %></td>
		<td><%=rs.getString("member_sex") %></td>
		<td><%=rs.getString("member_age") %></td>
	</tr>
	<% 	
	}
	%>
		
	</table>	
</body>
</html>