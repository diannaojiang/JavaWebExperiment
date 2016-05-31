<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="showMessage.jsp" method="post">
	<table border="1" rules="rows">
		<tr height="30">
			<td>留言标题：</td>
			<td><input type="text" name="title" size="35"></td>
		</tr>
		<tr>
			<td>留言内容：</td>
			<td><textarea name="content" rows="8" cols="34"></textarea></td>
		</tr>
		<tr align="center" height="30">
			<td colspan="2">
				<input type="submit" value="提交">
				<input type="reset" value="重置">
			</td>
	</table>
</form>

</body>
</html>