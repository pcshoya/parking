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
<h2>차량조회</h2>
<table border="1">
	<tr>
		<td>차량번호를 입력하시오.</td>
		<td><input type="textbox"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="차량조회">
			<input type="button" value="홈으로">
		</td>
	</tr>	
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>