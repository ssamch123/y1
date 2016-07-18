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


	request.setCharacterEncoding("utf-8");
	String itemname=request.getParameter("itemname");
	String itemprice=request.getParameter("itemprice");
	double rate=Double.parseDouble(request.getParameter("itemrate"));

	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/jjdevmail?useUnicode=true&characterEncoding=euckr";
	String dbUser = "root";
	String dbPw = "java0000";
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, dbUser, dbPw);

	PreparedStatement swm=conn.prepareStatement("insert into item(item_name,item_price,item_rate) values(?,?,?)");
	swm.setString(1, itemname);
	swm.setString(2, itemprice);
	swm.setDouble(3, rate);
	swm.executeUpdate();
%> 

</body>
</html>