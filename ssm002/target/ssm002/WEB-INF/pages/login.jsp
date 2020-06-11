<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/path.jsp"%>


<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

    <meta charset="utf-8">
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel="stylesheet" href="${path}/static/assets/css/reset.css">
    <link rel="stylesheet" href="${path}/static/assets/css/supersized.css">
    <link rel="stylesheet" href="${path}/static/assets/css/style.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="${path}/http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

<div class="page-container">
    <h1>登录</h1>
    <form action="doLogin.do" method="post">
        <input type="text" name="username" class="username" placeholder="请输入用户名：">
        <input type="password" name="password" class="password" placeholder="请输入密码：">
        <%--<span>${mess}</span>--%>
        <%--<input type="submit" value="登录"><a href="register.do">注册</a>--%>

        <button class="submit" type="submit">登录</button><a href="register.do">注册</a>
        <%--<div class="error"><span>${mess}</span></div>--%>
    </form>
</div>

<!-- Javascript -->
<script src="${path}/static/assets/js/jquery-1.8.2.min.js"></script>
<script src="${path}/static/assets/js/supersized.3.2.7.min.js"></script>
<script src="${path}/static/assets/js/supersized-init.js"></script>
<script src="${path}/static/assets/js/scripts.js"></script>
<script>
    $(function () {
        $(".submit").on("click",function () {
            var username=$("input[name=username]").val();
            var password=$("input[name=password]").val();
            if (username==""){
                alert("用户名不能为空")
                return;
            }
            if (password==""){
                alert("密码不能为空")
                return;
            } else {
                $.ajax({
                    url:"/login.do",
                    type:"post",
                    dataType:"json",
                    data:{
                        username:username,
                        password:password
                    },
                    success:function (data) {
                        if (data.status()==1){
                            alert("用户没有权限")
                        } else {
                            window.location.href="/index.jsp"
                        }
                    }
                })
            }
        })
    })
</script>
</body>

</html>


<%--

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Loding font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,700" rel="stylesheet">

    <!-- Custom Styles -->
    <link rel="stylesheet" type="text/css" href="${path}/static/assets/css/styles.css">

    <title>Login</title>
</head>
<body>

<!-- Backgrounds -->

<div id="login-bg" class="container-fluid">

    <div class="bg-img"></div>
    <div class="bg-color"></div>
</div>

<!-- End Backgrounds -->

<div class="container" id="login">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="login">

                <h1>后台登录</h1>

                <!-- Loging form -->
                <form action="doLogin.do" method="post">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="请输入用户名：">

                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="请输入密码：">
                    </div>

                    <div class="form-check">

                        <label class="register" ><a href="register.do">注册</a></label>
                        &lt;%&ndash;for="exampleCheck1"&ndash;%&gt;

                        <label class="forgot-password"><a href="#">Forgot Password?</a></label>

                    </div>
                    <input type="submit" class="btn btn-lg btn-block btn-success" />
                    <div class="form-check">
                        ${mess}
                    </div>
                </form>
                <!-- End Loging form -->

            </div>
        </div>
    </div>
</div>


</body>
</html>--%>
