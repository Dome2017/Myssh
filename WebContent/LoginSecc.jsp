<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册成功</title>
</head>
<body>
	<img alt="hahah" src="/photo/书店.jpg"><br>
	<% 
		request.setCharacterEncoding("utf-8");
		String username=request.getParameter("user"); 
		out.print("欢迎你，"+username+",会员注册成功！！！");
	%> 
</body>
</html>