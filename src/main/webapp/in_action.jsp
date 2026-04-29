<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- dbconnect.jsp 불러오기 -->
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- java.js 불러오기 -->
<script src="java.js"></script>
<!-- 파라미터 불러오기, 데이터베이스 쿼리 실행 -->
<%
String car_num= request.getParameter("car_num");
String area=request.getParameter("area");
String in_time=request.getParameter("in_time");

try{
	String sql = "INSERT INTO TBL_PARKING(CAR_NUMBER, LOCATION, ENTRANCE_TIME) VALUES(?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, car_num.trim());
	pstmt.setString(2, area.trim());
	pstmt.setString(3, in_time.trim());
	int result = pstmt.executeUpdate();
	if (result>0){
%>
		<script>
			alert("입력완료");
			location.href="index.jsp";
		</script>
<%
	}
	pstmt.close();
	conn.close();
}
catch(Exception e)
{
	out.print("DB 오류 :" + e.getMessage());
}
%>
</body>
</html>