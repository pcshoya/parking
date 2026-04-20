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
	Statement stmt = conn.createStatement();
	stmt.executeUpdate(
			"UPDATE TBL_PARKING_202301 "+ 
			"SET DEPARTURE_TIME='"+d_time+"' "+ 
			"WHERE CAR_NUMBER='"+car_num+"'"			
	);
	stmt.close();
	conn.close();
	}catch(Exception e){
		out.print("DB 오류 : " + e.getMessage());
	}
%>
	<script>
		alert("출차등록이 완료됐습니다.")
		location.href="index.jsp"
	</script>
</body>
</html>