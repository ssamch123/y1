<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("memberid");
	String pw=request.getParameter("memberpw");
	String name=request.getParameter("membername");
	String sex=request.getParameter("membersex");
	String age=request.getParameter("memberage");
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/jjdevmail?useUnicode=true&characterEncoding=euckr";
	String dbUser = "root";
	String dbPw = "java0000";
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, dbUser, dbPw);

	PreparedStatement stmt1=conn.prepareStatement("insert into member(member_id,member_pw,member_name,member_sex,member_age) values(?,?,?,?,?)");
	stmt1.setString(1, id);
	stmt1.setString(2, pw);
	stmt1.setString(3, name);
	stmt1.setString(4, sex);
	stmt1.setString(5, age);
	stmt1.executeUpdate();
%>
</body>
</html>