<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String car_num = request.getParameter("car_num");
	String d_time= request.getParameter("d_time");

	try{
	String sql = "UPDATE TBL_PARKING SET DEPARTURE_TIME=? WHERE TRIM(CAR_NUMBER)=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,d_time);
	pstmt.setString(2,car_num);
	int result=pstmt.executeUpdate();
	if(result>0){
		response.sendRedirect("index.jsp");
	}
	pstmt.close();
	conn.close();
	}catch(Exception e){
		out.print("DB 오류 : " + e.getMessage());
	}
%>
</body>
</html>