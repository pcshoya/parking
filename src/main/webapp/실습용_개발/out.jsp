<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- sql 라이브러리 불러오기 -->

<!-- dbconnect.jsp 불러오기 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량출차</title>
</head>
<body>
	<script src="java.js"></script>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>차량출차</h2>
<!-- onsubmit 버튼 클릭 시 유효성 검사, out_action.jsp로 action 연결 -->
		<form name="frm">
			<table border="1">
				<tr>
					<td>차량번호</td>
					<td>
					<select name="car_num">
<!-- 차량번호 선택불가 옵션 추가 -->
						<option>차량번호</option>
<%
try{
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from TBL_PARKING");
	
	while(rs.next()){
		%>
						<option><%=rs.getString("CAR_NUMBER") %></option>
		<% 
		} 
		%>
					</select>
					</td>
				</tr>
	
				<tr>
					<td>소유자이름</td>
					<td><input type="text" name="owner"></td>
				</tr>
		<tr>
			<td>출차시간</td>
			<td><input type="text" name="d_time">22:03</td>
		</tr>
		<tr>
			<td colspan="2" class="td-center">
				<input type="submit" value="출차등록">
				<input type="reset" value="다시쓰기">
			</td>
			
		</tr>
	</table>
<!-- 	table 태그안에 아래 코드를 넣으면 경고 발생 -->
	<%
	rs.close();
	stmt.close();
	conn.close();
	
}catch(Exception e){
	out.print("DB오류 : "+ e.getMessage());
}
%>	
	</form>	
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>