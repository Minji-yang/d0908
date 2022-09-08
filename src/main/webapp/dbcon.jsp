<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Connection conn=null;
String driver="com.mysql.cj.jdbc.Driver";
String url="jdbc:mysql://localhost/yanjung2?serverTimezon=UTC";
String user="root";
String pass="1234";
try{                //예외처리
Class.forName(driver);    // "com.mysql.cj.jdbc.Driver"; 직접 괄호안에 써줘도됨
conn=DriverManager.getConnection(url,user,pass);
System.out.println("연결성공");
}
catch(Exception e){
	System.out.println("database 에러");
	e.printStackTrace();}          //예외처리

%>

</body>
</html>