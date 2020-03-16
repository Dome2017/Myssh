<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统注册</title>
</head>
<script type="text/javascript">
    function checkForm(){
    	//alert(document.getElementById('user').value);
    	var user= document.getElementById('user').value;
        var pwd= document.getElementById('password').value;
        var mail=document.getElementById('user_email').value;
        var old=document.getElementById('old').value;
        if (user=="") {
        	window.location.href = "error.jsp?reason=用户名不能为空";
            return false;
        }
        if(pwd==""){
        	window.location.href = "error.jsp?reason=密码不能为空";
        	return false;
        }
        else if(pwd.length<6||pwd.length>16){
        	window.location.href = "error.jsp?reason=密码长度应该大于6位，且小于16位"
        	return false;
        }
        else if(old==""){
        	window.location.href = "error.jsp?reason=年龄信息不能为空";
        	return false;
        }
        else if(old<16){
        	window.location.href = "error.jsp?reason=未成年禁止注册该网站";
        	return false;
        }
        else if(mail==""){
        	window.location.href = "error.jsp?reason=邮箱信息不能为空";
        	return false;
        }
        else {
            //验证通过
            return true;
        }
    }
</script>
<body>
	<%@ include file = "dengLu.jsp" %>
</body>
</html>