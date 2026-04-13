<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>
<%

String carnum= request.getParameter("car_num");   // 사용자가 입력한 age 값 받기 (문자열)
String owner=request.getParameter("owner");
String in_time=request.getParameter("in_time");

out.println("차량번호: " + carnum);						// 결과 출력
out.println("<br>소유자 이름: " + owner);					// 결과 출력
out.println("<br>입차시간: " + in_time);					// 결과 출력
%>


</h2>
</body>
</html>