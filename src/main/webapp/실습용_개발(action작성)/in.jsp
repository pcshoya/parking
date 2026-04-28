<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="java.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h2>차량입차</h2>
	<!-- 입력 유효성 검사, action 작성 -->
	<form name="frm">
			<table border="1">
				<tr>
					<td>차량번호</td>
					<td><input type="text" name="car_num">예)22가1111</td>
				</tr>
				<tr>
					<td>소유자이름</td>
					<td><input type="text" name="owner">예)박선수</td>
				</tr>
				<tr>
					<td>주차위치선택</td>
					<td><input type="radio" name="area" value="A001">A001
						<input type="radio" name="area" value="A002">A002 
						<input type="radio" name="area" value="A003">A003 
						<input type="radio" name="area" value="A004">A004 
						<input type="radio" name="area" value="A005">A005
					</td>
				</tr>
				<tr>
					<td>입차시간</td>
					<td><input type="text" name="in_time">예)22:22</td>
				</tr>
				<tr>
					<td colspan="2" class="td-center">
						<input type="submit" value="입차등록">
						<input type="reset" value="다시쓰기">
					</td>
				</tr>
			</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>