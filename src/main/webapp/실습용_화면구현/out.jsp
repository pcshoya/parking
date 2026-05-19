<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<form name="frm">
			<table border="1">
				<tr>
					<td>차량번호</td>
					<td>
					<select name="car_num">
						<option disabled selected>차량번호</option>
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
	</form>	
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>