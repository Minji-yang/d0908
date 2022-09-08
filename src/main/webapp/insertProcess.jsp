<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="dbcon.jsp" %>               

<%
request.setCharacterEncoding("utf-8");  //한글
String id=request.getParameter("id");  //폼에서 입력한 데이터를 가져옴- 무조건 스트링값으로 넘어옴 ; 
String password=request.getParameter("password");         //dbcon에 pass썼으므로 중복됨 password로 
String name=request.getParameter("name");   //숫자 계산하고 싶으면  형식바꿔줘야함 

String sql="insert into member(id,name,password) values(?,?,?)";
PreparedStatement pstmt=conn.prepareStatement(sql);  
pstmt.setString(1,id);          
pstmt.setString(2,password);
pstmt.setString(3,name);
pstmt.executeUpdate();
System.out.println("저장성공");

System.out.println("아이디 : "+id);
System.out.println("비밀번호 : " +password);
System.out.println("이름 :" +name);

%>

<h1>아이디:<%=id %></h1>
<h1>비밀번호:<%=password %></h1>
<h1>이름:<%=name %> </h1>
</body>
</html>