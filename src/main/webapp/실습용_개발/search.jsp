<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바스크립트 파일 연결 -->


<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>차량조회</h2>

<!-- onsubmit 자바스크립트 유효성 검사 및 action 추가 -->
<form name="frm">
<table border="1">
	<tr>
		<td>차량번호를 입력하시오.</td>
		<td><input type="text" name="car_num"></td>
	</tr>
	<tr>
		<td colspan="2" class="td-center">
			<input type="submit" value="차량조회">
			<input type="button" value="홈으로" onClick="location.href='index.jsp'">
		</td>
	</tr>	
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>