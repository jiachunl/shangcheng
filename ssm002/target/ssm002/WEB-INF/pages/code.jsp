<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/path.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <title>登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="${path}/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/css/animate.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/css/login.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/css/theme.css">

    <script type="text/javascript" src="${path}/static/assets/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${path}/static/js/bootstrap.min.js"></script>
</head>

<body>

<div class="container">
    <div class="login-box">
        <div class="title"><h3>后台登录</h3></div>
        <div class="progress hidden" id="login-progress">
            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                Log In...
            </div>
        </div>
        <div class="alert alert-success hidden" id="login-message" role="alert">
            <i class="fa fa-check"></i> Login Success. Please wait for loading.
        </div>
        <div class="box">
            <form action="kaptcha.do" id="login-form" method="post">


                <div class="control">
                    <div class="label">请输入用户名：</div>
                    <input type="text" name="uname" class="form-control" id="uname"/>
                </div>
                <div class="control">
                    <div class="label">请输入密码：</div>
                    <input type="password" name="pwd" class="form-control"/>
                </div>

                <div class="control">
                    <div  class="label">请输入验证码：</div><span>
                    <%--<input id="checks" class="form-control" type="text" value="验证码:" style="width:150px;" />
                    <img id="imgVerify" src="" alt="点击更换验证码" /><a href="" rel="nofollow">看不清，换一张</a>--%>
                    <img href="code.do" height="80" width="200" id="img"></span>
                    <input id="checks" type="text" name="" class="form-control"/>
                </div>
                <div class="login-button">
                    <input type="submit" class="btn btn-orange" value="登录"></button>
                </div>
                <span style="color: #000;text-align: center">${mess}</span>
            </form>
        </div>
        <div class="info-box">
            <span class="text-left"><a href="register.do">注册</a></span>
            <span class="text-right"><a href="#">忘记密码</a></span>
            <div class="clear-both"></div>
        </div>
    </div>
</div>
<%--<script>
    $(function () {
        $("#uname").blur(function () {
            if(uname==null){
                alert("用户名不允许为空");
            }
        })
    })
<%--</script>--%>
<script>
    $(function () {
        var str = $("#img").attr("src");
        $("#img").click(function () {
            var date = new Date();
            $("#img").attr("src",str+"?date="+date.getTime());
        })
    });

</script>
</body>

</html>
