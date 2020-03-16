<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
    function checkForm(){
        var user= document.getElementById('user').value;
        var pwd= document.getElementById('password').value;
        var mail=document.getElementById('email').value;
        var old=document.getElementById('old').value;
        if (user==null) {
        	document.write("用户名不能为空");
            return false;
        } 
        else if(pwd==null){
        	document.write("密码不能为空");
        	return false;
        }
        else if(pwd<6||pwd>16){
        	document.write("密码长度应该大于6位，且小于16位")
        	return false;
        }
        else if(old==null){
        	document.write("年龄信息不能为空");
        	return false;
        }
        else if(old<16){
        	document.write("未成年禁止注册该网站");
        }
        else if(mail==null){
        	document.write("邮箱信息不能为空");
        }
        else {
            //验证通过
            return true;
        }
    }
</script>
<title>I123</title>
</head>
<body>
</body>
</html>