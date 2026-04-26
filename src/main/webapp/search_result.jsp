<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 데이터베이스 접속 -->    
<%@ include file="dbconnect.jsp" %>
<!-- java sql 라이브러리 사용 -->
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량조회 결과</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>차량조회</h2>
<!-- car_num 파라미터 값 확인 -->
<%
	String car_num = request.getParameter("car_num");	/* car_num을 파라미터로 받아오기 */
	
	try {
		String sql = "SELECT * FROM TBL_CAR C JOIN TBL_PARKING P ON C.CAR_NUMBER = P.CAR_NUMBER WHERE C.CAR_NUMBER='"+car_num+"'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
%>
		<table border="1">
			<tr>
				<th>차량번호</th>
				<th>차량종류</th>
				<th>소유자이름</th>
				<th>주차위치</th>
				<th>입차시간</th>
				<th>출차시간</th>
			</tr>
			<%
			if(rs.next()){
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
			</tr>
<%
	}
		rs.close();
		pstmt.close();
		conn.close();

	}catch(Exception e){
		e.printStackTrace();
		out.println("DB조회 오류 : " + e.getMessage());
	}
%>
		</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>