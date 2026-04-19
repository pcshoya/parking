<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- sql 라이브러리 불러오기 -->

<!-- dbconnect.jsp 불러오기 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jsp, 파라미터 불러오기, 데이터베이스 쿼리 실행 -->
<%

String carnum= request.getParameter("car_num");
String area=request.getParameter("area");
String in_time=request.getParameter("in_time");

try{
	Statement stmt = conn.createStatement();
	int result = stmt.executeUpdate(
		    "INSERT INTO TBL_PARKING_202301(CAR_NUMBER, LOCATION, ENTRANCE_TIME) " +
		    "VALUES('" + carnum + "', '" +area+ "', '" + in_time + "')"
	);
	if (result>0){
%>
		<script>
			alert("입력완료");
			location.href="index.jsp";
		</script>
<%
	}
	stmt.close();
	conn.close();
}
catch(Exception e)
{
	out.print("DB 오류 :" + e.getMessage());
}

%>

</h2>
</body>
</html>