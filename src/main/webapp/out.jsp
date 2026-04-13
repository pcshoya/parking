<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>차량출차</h2>
		<form name="frm" onsubmit="return checkOut()">
			<table border="1">
				<tr>
					<td>차량번호</td>
					<td>
					<select>
						<option>차량번호</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>소유자이름</td>
					<td><input type="text" disabled></td>
				</tr>
		<tr>
			<td>출차시간</td>
			<td><input type="text" disabled></td>
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