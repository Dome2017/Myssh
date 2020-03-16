<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form  action="LoginSecc.jsp" method="post" onSubmit= "return checkForm();">
	<p align="center">
		<img src="/photo/书店.jpg" weight="300" height="250" >
		</br><font face="楷体_GB3231",size="3">绿叶书店会员系统注册</font>
		<p align="center">
			用户名：<input type="text" name="user" id="user"/><br>
			密&nbsp&nbsp&nbsp&nbsp码：<input type="password" name="password" id="password"/><br>
			年&nbsp&nbsp&nbsp&nbsp龄：<input name="old" id="old" oninput="value=value.replace(/[^\d]/g,'')"/><br>
			电&nbsp&nbsp&nbsp&nbsp邮：<input type="email" name="user_email" id="user_email"/><br>
			<button type="submit" class="button">注册</button>
		</p>
</form>
</p>
