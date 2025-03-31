<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position:fixed;height:100%;width:100%;background-color:lightgray;top:100px;left:0px">
<h2 style="text-align:center">차량입차</h2>
<form method = "post" action="i_action.jsp" name="frm" style=" display:flex; align-items: center; justify-content:center; text-align: center ">
<table border="1">
	<tr>
		<td>차량번호</td>
		<td><input type="text" name="carnum" value="">예) 2가 1111</td>
	</tr>
	
	<tr>
		<td>소유자이름</td>
		<td><input type="text" name="name">예) 박선수</td>
	</tr>
	
	<tr>
		<td>주차위치선택</td>
		<td>
			<input type="checkbox" id='A001' name="area">A001
			<input type="checkbox" id='A002' name="area">A002
			<input type="checkbox" id='A003' name="area">A003
			<input type="checkbox" id='A004' name="area">A004
			<input type="checkbox" id='A005' name="area">A005
		</td>
	</tr>
	
	<tr>
		<td>입차시간</td>
		<td><input type="text" name="start_time">예) 22:22</td>
	</tr>
	
	<tr>
		<td colspan="2">
		<input type="submit" value="입차등록" onclick="addCheck()"> &nbsp;
		<input type="reset" value="다시쓰기" onclick="res()">
		</td>
	</tr>
</table>

</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
