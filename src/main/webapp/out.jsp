<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량출차</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position:fixed;height:100%;width:100%;background-color:lightgray;top:100px;left:0px">
<h2 style="text-align:center">차량출차</h2>
<form method = "post" action="i_action.jsp" name="frm" style=" display:flex; align-items: center; justify-content:center; text-align: center ">
<table border="1">
	<tr>
		<td>차량번호</td>
		<td align="left">
			<select>
				<option>00가0000</option>
				<option>00가0001</option>
				<option>00가0002</option>								
			</select>
		</td>
	</tr>
	
	<tr>
		<td>소유자이름</td>
		<td align="left"><input type="text" name="name"></td>
	</tr>
	
	<tr>
		<td>출차시간</td>
		<td align="left"><input type="text" name="end_time">예) 22:22</td>
	</tr>
	
	<tr>
		<td colspan="2">
		<input type="submit" value="출차등록" onclick="addCheck()"> &nbsp;
		<input type="reset" value="다시쓰기" onclick="res()">
		</td>
	</tr>
</table>

</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
